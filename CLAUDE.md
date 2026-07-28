# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repository is

This is a **Mu Online private server distribution (Season 19.1.2, DV-Team build)**. It is not source code. It is a deployable server package containing:

* Pre-built Windows executables (`.exe` + DLLs, OpenSSL 1.1, libcurl)
* Text configuration (`.conf`, `.ini`)
* Game data (XML)
* Lua bridge scripts (`Data/LuaBridge/`)
* MySQL schema dumps (`DataBase/`) and migration snippets (`DB/`)
* A .NET desktop editor (`Edit/DV-TeamEditors.exe`, DevExpress 22.2, MySqlConnector)

There is no build step and no test suite. Work in this repo means editing configs / XML / Lua / SQL, or running the shipped binaries. Any Bash tooling under macOS/Linux (this checkout is on Darwin) cannot execute the `.exe` files directly; they run under Windows (or Wine).

## Server topology

The distribution ships five server processes plus a link daemon. Ports and roles come from the shipped `.conf` files and `Data/ServerMap.xml`.

| Process | Directory | Default port | Purpose |
|---------|-----------|--------------|---------|
| ConnectServer | `ConnectServer/` | 44405 (client), 44419 (CS) | First hop for game clients; serves server list |
| LoginServer | `LoginServer/` | 44417 | Account authentication |
| ServerLink | `ServerLink/` | 55555 | Inter process link between components |
| GameServer (Regular) | `GameServer/` | 55901, Code=0, ServerType=0 (PVP) | Main game world |
| GameServer_ArkaWar | `GameServer_ArkaWar/` | 55917, Code=17, ServerType=3 | Arka War event world |
| GameServer_Event | `GameServer_Event/` | 55918, Code=18, ServerType=2 | Event world |
| GameServer_Siege | `GameServer_Siege/` | 55919, Code=19, ServerType=1 | Castle siege world |

`ServerType` values (documented in `Data/ServerMap.xml`): `0` PVP, `1` No PVP, `2` Golden PVP, `3` Golden No PVP.

`GameServer.Code` in each `GameServer.conf` is what selects the world identity; the four `GameServer_*` directories share the same `GameServer.exe` and diverge only via `.conf`. When cloning a new event/siege variant, copy the directory, keep the DLLs, and change `GameServer.Code`, `ServerType`, `ConsoleTitle`, and any bind ports.

Client connection order: client → ConnectServer (server list) → chosen GameServer. GameServer talks to LoginServer for auth and to ServerLink for cross server state. All server processes reach MySQL directly.

## Startup order (Windows)

Launch the executables in this order (each opens a console window and stays running):

1. `ServerLink\ServerLink.exe`
2. `LoginServer\LoginServer.exe`
3. `ConnectServer\ConnectServer.exe`
4. Each `GameServer*\GameServer.exe` (Regular first, then event/siege variants as needed)

`.conf_<timestamp>_<pid>.dmp` files scattered next to each `.conf` are crash dumps left by earlier runs. They are safe to delete but preserve them if debugging a crash.

## Database

Two MySQL databases, both `utf8mb4_general_ci`. Connection strings live in `Data/game_common.conf` and each server's own `.conf` (semicolon separated: `host;port;user;password;db`).

* **`muonline`** (`DataBase/muonline.sql`, 100+ tables): accounts, characters, warehouses, guild, castle siege, cash shop, event state.
* **`log`** (`DataBase/log.sql`): audit trail (item drops, resets, PVP, cash shop, boss kills, etc.). Ships separate so it can rotate independently.

Full restore:

```bash
mysql -uroot -p < DataBase/muonline.sql
mysql -uroot -p < DataBase/log.sql
```

Incremental migrations sit in `DB/`. Apply against the `muonline` (or `log`) database whose CREATE line matches:

* `DB/daily_reset.sql` creates `daily_reset_data` in the character schema.
* `DB/warehouse_update.sql` is a destructive `RENAME`/`DROP` migration: it renames `account_warehouse` to `account_warehouse_old`, recreates the table with new columns, and reinserts from the old table joined with `account_data`. Back up before running; do not re run against an already migrated database.

Default credentials in the shipped configs are `root` / `loulxgame` against `127.0.0.1:3306`. Change these before any real deployment.

## Data layout (what to edit and where)

`Data/` is the game content tree, shared by all GameServer instances. Almost every gameplay change is a data edit here, not a binary change. Key roots:

* `Data/Character/` character stats, exp table, bonuses, skill assignments, specialization, stat fruit.
* `Data/Item/` items, drops, sockets, wings, pentagram, harmony, mastery, legendary, monster soul, guardian, earrings. `ItemList.xml` is the master item registry.
* `Data/Monster/` monster list, spawns, respawn locations, AI, equipment, skills.
* `Data/Skill/` skill registry, learn requirements, skill trees (including Majestic), attack timing.
* `Data/Event/` per event configuration (Blood Castle, Chaos Castle, Devil Square, Kanturu, Crywolf, Doppelganger, Arka War, Castle Siege, Illusion Temple, etc.). Each event has its own directory.
* `Data/World/` map templates, terrain, teleport gates, area restrictions, PK/exp modifiers.
* `Data/CashShop/` cash shop categories, packages, products. `IBS*.txt` are the client facing exports.
* `Data/Quest/`, `Data/Gens/`, `Data/ExpSystem/`, `Data/Mix/`, `Data/Muun/`, `Data/Artifact/`, `Data/5Class/` domain specific tables.
* `Data/Commands/Commands.xml`, `Data/Commands/LuaCommands.xml` in game slash command registry (each has an `Authority` field for GM level).
* `Data/Lang/` localized strings. `English.xml` is the canonical text, `LangBase.xml` and `ClientTexts.xml` back it.
* `Data/Plugin/` optional feature modules (currently `NoticeSystem.xml`, `OfflineAttack/`).
* `Data/Scripts/` `.rar` archive of gameplay scripts plus per category folders (`Character/`, `Item/`, `Skills/`).

XML files use the header banner `POWERED BY DV-Team`; preserve it and the surrounding comments when editing (they document enum values, e.g. `ServerType`).

### Lua bridge

`Data/LuaBridge/ScriptMain.lua` is the entry point; it `require`s `System\ScriptCore.lua`, which registers callbacks by name. Bridge hooks exposed by the engine include: `OnReadScript`, `OnShutScript`, `OnTimerThread`, `OnCommandManager`, `OnCharacterEntry`, `OnCharacterClose`, `OnNpcTalk`, `OnMonsterDie`, `OnUserDie` (see `ScriptCore.lua` for the full table). Register new logic with `BridgeFunctionAttach("<hook>", "<function>")` in a script loaded from `ScriptMain.lua`.

## The Edit tool (`Edit/`)

`Edit/DV-TeamEditors.exe` is a Windows .NET application (DevExpress 22.2 based, MySqlConnector) for editing game data with a GUI. `Edit/config.xml` holds its settings: `DataFolder` (points at a `Data` directory to edit), plus MySQL creds. When editing configs by hand, prefer keeping Edit closed; when using Edit, close text editors that hold XMLs open.

`Edit/Data/` contains binary side files (`item.img`, `CashShopData.dat`, `Item.txt`, `ItemSocket.txt`) the editor packages for the client.

## Working conventions

* `*log` is the only ignored pattern in `.gitignore`; server runtime writes `.log` files next to the binaries during operation. Do not commit them.
* `.dmp` files next to each `.conf` are minidumps written when a server crashes with that config. They are named `<confname>_<yyyymmdd>_<hhmmss>_<pid>.dmp`. Not needed for normal work.
* All GameServer variants share the same DLLs (`libcrypto-1_1-x64.dll`, `libssl-1_1-x64.dll`, `libcurl.dll`). When updating binaries, update every server directory to match.
* `Data/ServerMap.xml` must list every world the ConnectServer should advertise. Adding a new GameServer variant means (1) new directory with edited `.conf`, (2) new `<Server>` entry in `ServerMap.xml`, (3) matching `ServerCode` on both sides.
* Bind IPs vary across shipped configs (`127.0.0.1` for loopback services, `192.168.1.234` for LAN facing ConnectServer and world entries in `ServerMap.xml`). Update all three (the world's `.conf`, the ConnectServer `.conf`, and `ServerMap.xml`) together when changing hosts.

## Things that are not here

There are no C++ sources, no Visual Studio solution, no makefiles, no CI, no test runner, and no package manager. Requests like "build the server" or "run the tests" cannot be satisfied from this checkout; the binaries were built elsewhere.
