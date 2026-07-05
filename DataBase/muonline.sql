CREATE DATABASE  IF NOT EXISTS `muonline` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `muonline`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: muonline
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_buff`
--

DROP TABLE IF EXISTS `account_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_buff` (
  `account_id` int(10) unsigned NOT NULL,
  `buff` smallint(5) unsigned NOT NULL,
  `effect_1` tinyint(3) unsigned NOT NULL,
  `value_1` int(11) NOT NULL,
  `effect_2` tinyint(3) unsigned NOT NULL,
  `value_2` int(11) NOT NULL,
  `effect_3` tinyint(3) unsigned NOT NULL,
  `value_3` int(11) NOT NULL,
  `duration` bigint(20) NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`buff`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_cash_shop_gift`
--

DROP TABLE IF EXISTS `account_cash_shop_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_cash_shop_gift` (
  `account_id` int(10) unsigned NOT NULL,
  `product` int(10) unsigned NOT NULL,
  `option` int(10) unsigned NOT NULL,
  `serial` int(10) unsigned NOT NULL,
  `serial_cash_shop` int(10) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_cash_shop_item`
--

DROP TABLE IF EXISTS `account_cash_shop_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_cash_shop_item` (
  `account_id` int(10) unsigned NOT NULL,
  `product` int(10) unsigned NOT NULL,
  `option` int(10) unsigned NOT NULL,
  `serial` int(10) unsigned NOT NULL,
  `serial_cash_shop` int(10) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  `gift` tinyint(3) unsigned NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_data`
--

DROP TABLE IF EXISTS `account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_data` (
  `account_id` int(10) unsigned NOT NULL,
  `vip_status` int(11) DEFAULT '-1',
  `vip_duration` bigint(20) DEFAULT NULL,
  `expanded_warehouse` tinyint(3) unsigned DEFAULT NULL,
  `expanded_warehouse_time` bigint(20) DEFAULT NULL,
  `special_character` smallint(5) unsigned DEFAULT NULL,
  `credits` int(10) unsigned DEFAULT NULL,
  `web_credits` int(10) unsigned DEFAULT NULL,
  `current_character` int(10) unsigned DEFAULT NULL,
  `current_type` tinyint(3) unsigned DEFAULT NULL,
  `current_ip` varchar(16) DEFAULT NULL,
  `current_mac` varchar(50) DEFAULT NULL,
  `current_diskserial` int(10) unsigned DEFAULT NULL,
  `current_server` smallint(5) unsigned DEFAULT NULL,
  `cash_shop_discount_wc` tinyint(3) unsigned DEFAULT NULL,
  `cash_shop_discount_gp` tinyint(3) unsigned DEFAULT NULL,
  `cash_shop_discount_date` bigint(20) DEFAULT NULL,
  `goblin_points` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_warehouse`
--

DROP TABLE IF EXISTS `account_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_warehouse` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL,
  `warehouse_id` tinyint(4) DEFAULT '0',
  `money` bigint(20) DEFAULT NULL,
  `password` bigint(20) unsigned DEFAULT NULL,
  `expanded` tinyint(4) DEFAULT '0',
  `expandedtime` bigint(20) DEFAULT '0',
  `inventory` varbinary(55000) DEFAULT NULL,
  `gremory_case_acc` varbinary(10000) DEFAULT NULL,
  `wingcoreinventory` text,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `account_warehouse_unique` (`account_id`,`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blocked` tinyint(3) unsigned DEFAULT '0',
  `security_code` varchar(255) DEFAULT '0',
  `golden_channel` bigint(20) DEFAULT '1500434821',
  `facebook_status` tinyint(3) unsigned DEFAULT '0',
  `secured` tinyint(3) unsigned DEFAULT '1',
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `web_admin` int(11) DEFAULT '0',
  `deletion_token` varchar(40) NOT NULL DEFAULT '0',
  `passlost_token` varchar(40) NOT NULL DEFAULT '0',
  `email_token` varchar(40) NOT NULL DEFAULT '0',
  `new_email` varchar(64) NOT NULL DEFAULT '0',
  `social_id` varchar(13) NOT NULL DEFAULT '0',
  `activated` int(11) DEFAULT '0',
  `DiscordDiscriminator` int(11) DEFAULT NULL,
  `DiscordAvatar` varchar(255) DEFAULT NULL,
  `DiscordId` int(11) DEFAULT NULL,
  `DiscordUsername` varchar(255) DEFAULT NULL,
  `DiscordEmail` varchar(255) DEFAULT NULL,
  `DiscordLogin` int(11) DEFAULT '0',
  `token` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `registration_token` varchar(40) DEFAULT NULL,
  `lock_token` varchar(40) DEFAULT NULL,
  `ban_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `creation_counter` smallint(6) DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_allowed`
--

DROP TABLE IF EXISTS `accounts_allowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_allowed` (
  `account_id` int(10) unsigned NOT NULL,
  `guid` int(10) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_banned`
--

DROP TABLE IF EXISTS `accounts_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_banned` (
  `account_id` int(10) unsigned NOT NULL,
  `guid` int(10) unsigned DEFAULT NULL,
  `unban_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_disconnect`
--

DROP TABLE IF EXISTS `accounts_disconnect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_disconnect` (
  `account_id` int(10) unsigned NOT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `masive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_security`
--

DROP TABLE IF EXISTS `accounts_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_security` (
  `account_id` int(10) unsigned NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_status`
--

DROP TABLE IF EXISTS `accounts_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_status` (
  `account_id` int(10) unsigned NOT NULL,
  `server_group` smallint(5) unsigned DEFAULT NULL,
  `current_server` smallint(5) unsigned DEFAULT NULL,
  `start_server` smallint(5) unsigned DEFAULT NULL,
  `dest_server` smallint(6) DEFAULT NULL,
  `dest_world` smallint(6) DEFAULT NULL,
  `dest_x` smallint(6) DEFAULT NULL,
  `dest_y` smallint(6) DEFAULT NULL,
  `warp_time` int(10) unsigned DEFAULT NULL,
  `warp_auth_1` int(10) unsigned DEFAULT NULL,
  `warp_auth_2` int(10) unsigned DEFAULT NULL,
  `warp_auth_3` int(10) unsigned DEFAULT NULL,
  `warp_auth_4` int(10) unsigned DEFAULT NULL,
  `last_ip` varchar(16) DEFAULT NULL,
  `last_mac` varchar(50) DEFAULT NULL,
  `last_online` varchar(255) DEFAULT NULL,
  `online` tinyint(4) DEFAULT NULL,
  `disk_serial` int(10) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_validation`
--

DROP TABLE IF EXISTS `accounts_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_validation` (
  `account_id` int(10) unsigned NOT NULL,
  `disk_serial` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_warning`
--

DROP TABLE IF EXISTS `accounts_warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_warning` (
  `account_id` int(10) unsigned NOT NULL,
  `disk_serial` int(10) unsigned DEFAULT NULL,
  `block_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `arka_war_data`
--

DROP TABLE IF EXISTS `arka_war_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arka_war_data` (
  `id` tinyint(3) unsigned NOT NULL,
  `guild` int(10) unsigned NOT NULL,
  `attribute` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`guild`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_diskserial`
--

DROP TABLE IF EXISTS `block_diskserial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_diskserial` (
  `disk_serial` int(10) unsigned NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_ip`
--

DROP TABLE IF EXISTS `block_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_ip` (
  `ip` varchar(16) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block_mac`
--

DROP TABLE IF EXISTS `block_mac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_mac` (
  `mac` varchar(50) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mac`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `castle_siege_data`
--

DROP TABLE IF EXISTS `castle_siege_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_data` (
  `owner` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `tax_hunt` int(11) DEFAULT NULL,
  `tax_chaos` tinyint(3) unsigned DEFAULT NULL,
  `tax_store` tinyint(3) unsigned DEFAULT NULL,
  `hunt_allowed` tinyint(4) DEFAULT NULL,
  `money` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `castle_siege_guild`
--

DROP TABLE IF EXISTS `castle_siege_guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_guild` (
  `guild` int(10) unsigned NOT NULL,
  `side` tinyint(3) unsigned NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`guild`,`side`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `castle_siege_npc`
--

DROP TABLE IF EXISTS `castle_siege_npc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_npc` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` smallint(6) DEFAULT NULL,
  `defense_level` smallint(6) DEFAULT NULL,
  `regen_level` smallint(6) DEFAULT NULL,
  `life_level` smallint(6) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `npc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `castle_siege_registered_guild`
--

DROP TABLE IF EXISTS `castle_siege_registered_guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castle_siege_registered_guild` (
  `guild` int(10) unsigned NOT NULL,
  `marks` int(10) unsigned DEFAULT NULL,
  `register_id` int(10) unsigned DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `level_master` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`guild`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chaos_castle_survival_hall_of_fame`
--

DROP TABLE IF EXISTS `chaos_castle_survival_hall_of_fame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaos_castle_survival_hall_of_fame` (
  `char_id` int(10) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chaos_castle_survival_ranking`
--

DROP TABLE IF EXISTS `chaos_castle_survival_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chaos_castle_survival_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_add_stat`
--

DROP TABLE IF EXISTS `character_add_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_add_stat` (
  `GUID` int(11) DEFAULT NULL,
  `Strenght` int(11) NOT NULL DEFAULT '0',
  `Agility` int(11) NOT NULL DEFAULT '0',
  `Vitality` int(11) NOT NULL DEFAULT '0',
  `Energy` int(11) NOT NULL DEFAULT '0',
  `Leadership` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_buff`
--

DROP TABLE IF EXISTS `character_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_buff` (
  `char_id` int(10) unsigned NOT NULL,
  `buff` smallint(5) unsigned NOT NULL,
  `effect_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` tinyint(3) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `flags` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`buff`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_chat_block`
--

DROP TABLE IF EXISTS `character_chat_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_chat_block` (
  `char_id` int(10) unsigned NOT NULL,
  `blocked` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_date`
--

DROP TABLE IF EXISTS `character_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_date` (
  `char_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_deleted`
--

DROP TABLE IF EXISTS `character_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_deleted` (
  `account_id` int(10) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_event_count`
--

DROP TABLE IF EXISTS `character_event_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_event_count` (
  `char_id` int(10) unsigned NOT NULL,
  `event_id` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  `day` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`event_id`,`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_friend`
--

DROP TABLE IF EXISTS `character_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_friend` (
  `char_id` int(10) unsigned NOT NULL,
  `friend_name` varchar(255) NOT NULL,
  PRIMARY KEY (`char_id`,`friend_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_gameoption`
--

DROP TABLE IF EXISTS `character_gameoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gameoption` (
  `char_id` int(10) unsigned NOT NULL,
  `game_option` tinyint(3) unsigned DEFAULT NULL,
  `chat_window` tinyint(3) unsigned DEFAULT NULL,
  `q_key` tinyint(3) unsigned DEFAULT NULL,
  `w_key` tinyint(3) unsigned DEFAULT NULL,
  `e_key` tinyint(3) unsigned DEFAULT NULL,
  `r_key` tinyint(3) unsigned DEFAULT NULL,
  `qwer_level` int(11) DEFAULT NULL,
  `skill_bind_0` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_1` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_2` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_3` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_4` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_5` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_6` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_7` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_8` smallint(5) unsigned DEFAULT NULL,
  `skill_bind_9` smallint(5) unsigned DEFAULT NULL,
  `extra_data` bigint(20) unsigned DEFAULT NULL,
  `change_skin` tinyint(3) unsigned DEFAULT NULL,
  `additional_options` smallint(5) unsigned DEFAULT NULL,
  `button_bind_1` tinyint(3) unsigned DEFAULT NULL,
  `button_bind_2` tinyint(3) unsigned DEFAULT NULL,
  `button_bind_3` tinyint(3) unsigned DEFAULT NULL,
  `button_bind_4` tinyint(3) unsigned DEFAULT NULL,
  `button_bind_5` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_gens`
--

DROP TABLE IF EXISTS `character_gens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gens` (
  `char_id` int(10) unsigned NOT NULL,
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `contribution` int(11) DEFAULT NULL,
  `reward_date` bigint(20) DEFAULT NULL,
  `join_date` bigint(20) DEFAULT NULL,
  `left_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`family`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_gens_kill`
--

DROP TABLE IF EXISTS `character_gens_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gens_kill` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `killed_id` int(10) unsigned DEFAULT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_gremory_case`
--

DROP TABLE IF EXISTS `character_gremory_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gremory_case` (
  `guid` int(11) NOT NULL,
  `gremory_case_char` varbinary(20000) DEFAULT NULL,
  `gremory_case_mobile` varbinary(20000) DEFAULT NULL,
  `gremory_case_ps` varbinary(20000) DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_helper`
--

DROP TABLE IF EXISTS `character_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_helper` (
  `char_id` int(10) unsigned NOT NULL,
  `option_flag_1` int(10) unsigned DEFAULT NULL,
  `option_flag_2` int(10) unsigned DEFAULT NULL,
  `item_pick_flag` tinyint(3) unsigned DEFAULT NULL,
  `hunting_range` tinyint(3) unsigned DEFAULT NULL,
  `item_pick_range` tinyint(3) unsigned DEFAULT NULL,
  `distance` smallint(5) unsigned DEFAULT NULL,
  `attack_skill_1` smallint(5) unsigned DEFAULT NULL,
  `attack_sec_skill_1` smallint(5) unsigned DEFAULT NULL,
  `attack_sec_skill_2` smallint(5) unsigned DEFAULT NULL,
  `attack_sec_delay_1` smallint(5) unsigned DEFAULT NULL,
  `attack_sec_delay_2` smallint(5) unsigned DEFAULT NULL,
  `buff_skill_1` smallint(5) unsigned DEFAULT NULL,
  `buff_skill_2` smallint(5) unsigned DEFAULT NULL,
  `buff_skill_3` smallint(5) unsigned DEFAULT NULL,
  `time_space_casting` smallint(5) unsigned DEFAULT NULL,
  `percent_autopot` tinyint(3) unsigned DEFAULT NULL,
  `percent_autoheal` tinyint(3) unsigned DEFAULT NULL,
  `percent_partyheal` tinyint(3) unsigned DEFAULT NULL,
  `percent_drainlife` tinyint(3) unsigned DEFAULT NULL,
  `item_list` varchar(255) DEFAULT NULL,
  `buff_item_1` smallint(5) unsigned DEFAULT NULL,
  `buff_item_2` smallint(5) unsigned DEFAULT NULL,
  `buff_item_3` smallint(5) unsigned DEFAULT NULL,
  `buff_skill_4` smallint(5) unsigned DEFAULT '0',
  `buff_skill_5` smallint(5) unsigned DEFAULT '0',
  `buff_skill_6` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_hunting_record`
--

DROP TABLE IF EXISTS `character_hunting_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_hunting_record` (
  `char_id` int(10) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `year` smallint(5) unsigned DEFAULT NULL,
  `month` tinyint(3) unsigned DEFAULT NULL,
  `day` tinyint(3) unsigned DEFAULT NULL,
  `level` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `damage` bigint(20) unsigned DEFAULT NULL,
  `elemental_damage` bigint(20) unsigned DEFAULT NULL,
  `healing` int(10) unsigned DEFAULT NULL,
  `killed_count` int(10) unsigned DEFAULT NULL,
  `earned_experience` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`world`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_info`
--

DROP TABLE IF EXISTS `character_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_info` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned DEFAULT NULL,
  `authority` tinyint(3) unsigned DEFAULT '0',
  `race` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint(4) DEFAULT '1',
  `level` smallint(6) DEFAULT '0',
  `level_master` smallint(6) DEFAULT '0',
  `level_majestic` smallint(6) DEFAULT '0',
  `experience` bigint(20) DEFAULT '0',
  `experience_master` bigint(20) DEFAULT '0',
  `experience_majestic` bigint(20) DEFAULT '0',
  `points` int(11) DEFAULT '0',
  `points_master` int(11) DEFAULT '0',
  `points_majestic` int(11) DEFAULT '0',
  `strength` int(10) unsigned DEFAULT '0',
  `agility` int(10) unsigned DEFAULT '0',
  `vitality` int(10) unsigned DEFAULT '0',
  `energy` int(10) unsigned DEFAULT '0',
  `leadership` int(10) unsigned DEFAULT '0',
  `world` smallint(5) unsigned DEFAULT '0',
  `world_x` smallint(6) DEFAULT '0',
  `world_y` smallint(6) DEFAULT '0',
  `direction` tinyint(3) unsigned DEFAULT '0',
  `money` int(10) unsigned DEFAULT '0',
  `life` int(11) DEFAULT '0',
  `mana` int(11) DEFAULT '0',
  `shield` int(11) DEFAULT '0',
  `stamina` int(11) DEFAULT '0',
  `add_fruit_points` int(11) DEFAULT '0',
  `dec_fruit_points` int(11) DEFAULT '0',
  `expanded_inventory` tinyint(3) unsigned DEFAULT '0',
  `mute_time` bigint(20) DEFAULT '0',
  `admin_flags` int(10) unsigned DEFAULT '0',
  `pk_level` tinyint(3) unsigned DEFAULT '3',
  `pk_count` int(11) DEFAULT '0',
  `pk_points` int(11) DEFAULT '0',
  `first_time` tinyint(3) unsigned DEFAULT '1',
  `santa_claus_gift` bigint(20) DEFAULT '0',
  `personal_store_name` varchar(255) DEFAULT '0',
  `personal_store_open` tinyint(4) DEFAULT '0',
  `last_use` bigint(20) DEFAULT '0',
  `kick_time` bigint(20) DEFAULT '0',
  `post_count` int(11) DEFAULT '0',
  `post_day` tinyint(3) unsigned DEFAULT '0',
  `post_month` tinyint(3) unsigned DEFAULT '0',
  `ruud_money` int(10) unsigned DEFAULT '0',
  `hunting_log_visible` tinyint(3) unsigned DEFAULT '0',
  `create_date` bigint(20) DEFAULT '0',
  `online` tinyint(4) DEFAULT '0',
  `server_code` smallint(5) unsigned DEFAULT '3',
  `reset` int(10) unsigned DEFAULT '0',
  `monster_soul_purchase` int(11) DEFAULT '0',
  `lastserver` int(11) DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_item_delay`
--

DROP TABLE IF EXISTS `character_item_delay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item_delay` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_item_inventory`
--

DROP TABLE IF EXISTS `character_item_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item_inventory` (
  `GUID` int(11) NOT NULL,
  `InventoryData` varbinary(65525) DEFAULT NULL,
  PRIMARY KEY (`GUID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_item_pentagram`
--

DROP TABLE IF EXISTS `character_item_pentagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_item_pentagram` (
  `GUID` int(11) NOT NULL,
  `PentagramInventoryData` varbinary(65525) DEFAULT NULL,
  `INV_TYPE` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`GUID`,`INV_TYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_jewel_bingo`
--

DROP TABLE IF EXISTS `character_jewel_bingo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_jewel_bingo` (
  `char_id` int(10) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `box` tinyint(3) unsigned DEFAULT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  `jewel` tinyint(3) unsigned DEFAULT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_jewel_bingo_grid`
--

DROP TABLE IF EXISTS `character_jewel_bingo_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_jewel_bingo_grid` (
  `char_id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `value` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_kick`
--

DROP TABLE IF EXISTS `character_kick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_kick` (
  `char_id` int(10) unsigned NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_labyrinth`
--

DROP TABLE IF EXISTS `character_labyrinth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_labyrinth` (
  `char_id` int(10) unsigned NOT NULL,
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `id` tinyint(3) unsigned DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` bigint(20) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `goblin_state` tinyint(3) unsigned DEFAULT NULL,
  `day_first` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_labyrinth_level`
--

DROP TABLE IF EXISTS `character_labyrinth_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_labyrinth_level` (
  `char_id` int(10) unsigned NOT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_labyrinth_zone`
--

DROP TABLE IF EXISTS `character_labyrinth_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_labyrinth_zone` (
  `char_id` int(10) unsigned NOT NULL,
  `idx` tinyint(3) unsigned NOT NULL,
  `subidx` tinyint(3) unsigned NOT NULL,
  `mission_id_1` tinyint(3) unsigned DEFAULT NULL,
  `mission_id_2` tinyint(3) unsigned DEFAULT NULL,
  `mission_id_3` tinyint(3) unsigned DEFAULT NULL,
  `mission_id_4` tinyint(3) unsigned DEFAULT NULL,
  `mission_id_5` tinyint(3) unsigned DEFAULT NULL,
  `mission_count_1` int(11) DEFAULT NULL,
  `mission_count_2` int(11) DEFAULT NULL,
  `mission_count_3` int(11) DEFAULT NULL,
  `mission_count_4` int(11) DEFAULT NULL,
  `mission_count_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`idx`,`subidx`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_mail`
--

DROP TABLE IF EXISTS `character_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mail` (
  `id` int(10) unsigned NOT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `direction` tinyint(3) unsigned DEFAULT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `window_guid` int(10) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `opened` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_majestic_stats`
--

DROP TABLE IF EXISTS `character_majestic_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_majestic_stats` (
  `char_id` int(10) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_majestic_tree`
--

DROP TABLE IF EXISTS `character_majestic_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_majestic_tree` (
  `char_id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `section` tinyint(3) unsigned DEFAULT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_mini_bomb`
--

DROP TABLE IF EXISTS `character_mini_bomb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mini_bomb` (
  `char_id` int(10) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `score` smallint(5) unsigned DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `cdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_mini_bomb_grid`
--

DROP TABLE IF EXISTS `character_mini_bomb_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mini_bomb_grid` (
  `char_id` int(10) unsigned NOT NULL,
  `cell` tinyint(3) unsigned DEFAULT NULL,
  `value` tinyint(3) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_monster_soul`
--

DROP TABLE IF EXISTS `character_monster_soul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_monster_soul` (
  `char_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_mu_roomy`
--

DROP TABLE IF EXISTS `character_mu_roomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mu_roomy` (
  `char_id` int(10) unsigned NOT NULL,
  `playing` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `score` smallint(5) unsigned DEFAULT NULL,
  `card_count` tinyint(3) unsigned DEFAULT NULL,
  `special_card_count` tinyint(3) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_mu_roomy_deck`
--

DROP TABLE IF EXISTS `character_mu_roomy_deck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mu_roomy_deck` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `color` tinyint(3) unsigned DEFAULT NULL,
  `number` tinyint(3) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `play_slot` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_mupass`
--

DROP TABLE IF EXISTS `character_mupass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_mupass` (
  `guid` bigint(20) NOT NULL AUTO_INCREMENT,
  `character_id` bigint(20) DEFAULT NULL,
  `pass_level` int(11) DEFAULT NULL,
  `pass_exp` bigint(20) DEFAULT NULL,
  `gold_enabled` tinyint(1) DEFAULT NULL,
  `premiun_enabled` tinyint(1) DEFAULT NULL,
  `MuRevardEnabled` tinyint(1) DEFAULT NULL,
  `MuRevardGoldEnabled` tinyint(1) DEFAULT NULL,
  `MuRevardPremiumEnabled` tinyint(1) DEFAULT NULL,
  `TodayMuPassExp` int(11) DEFAULT NULL,
  `pass_data` varbinary(30000) DEFAULT NULL,
  `pass_reward_data` varbinary(30000) DEFAULT NULL,
  `ticketCount` bigint(20) DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24014 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_notification`
--

DROP TABLE IF EXISTS `character_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_notification` (
  `server_group` smallint(5) unsigned NOT NULL,
  `char_name` varchar(45) DEFAULT NULL,
  `facebook_id` varchar(45) DEFAULT NULL,
  `notification_id` varchar(45) DEFAULT NULL,
  `notification_data` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`server_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_numeric_baseball`
--

DROP TABLE IF EXISTS `character_numeric_baseball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_numeric_baseball` (
  `char_id` int(10) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `number_1` tinyint(3) unsigned DEFAULT NULL,
  `number_2` tinyint(3) unsigned DEFAULT NULL,
  `number_3` tinyint(3) unsigned DEFAULT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `strikes` varchar(255) DEFAULT NULL,
  `balls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_quest_evo`
--

DROP TABLE IF EXISTS `character_quest_evo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest_evo` (
  `char_id` int(10) unsigned NOT NULL,
  `id` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `kill_count_1` int(11) DEFAULT NULL,
  `kill_count_2` int(11) DEFAULT NULL,
  `kill_count_3` int(11) DEFAULT NULL,
  `kill_count_4` int(11) DEFAULT NULL,
  `kill_count_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_quest_guided`
--

DROP TABLE IF EXISTS `character_quest_guided`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest_guided` (
  `char_id` int(10) unsigned NOT NULL,
  `quest` smallint(5) unsigned NOT NULL,
  `count` int(11) DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`quest`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_quest_mu`
--

DROP TABLE IF EXISTS `character_quest_mu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_quest_mu` (
  `char_id` int(10) unsigned NOT NULL,
  `quest_id` smallint(5) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `objective` smallint(5) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`quest_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_restriction`
--

DROP TABLE IF EXISTS `character_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_restriction` (
  `char_id` int(10) unsigned NOT NULL,
  `restriction` int(10) unsigned DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_score`
--

DROP TABLE IF EXISTS `character_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_score` (
  `char_id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skill` (
  `char_id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned NOT NULL,
  `skill_level` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`type`,`skill`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_statistics`
--

DROP TABLE IF EXISTS `character_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_statistics` (
  `char_id` int(10) unsigned NOT NULL,
  `statistic_id` int(10) unsigned NOT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`statistic_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_warp_favorite_list`
--

DROP TABLE IF EXISTS `character_warp_favorite_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_warp_favorite_list` (
  `char_id` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `data` smallint(5) unsigned DEFAULT NULL,
  `warp_id` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crywolf_data`
--

DROP TABLE IF EXISTS `crywolf_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crywolf_data` (
  `state` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_reset_data`
--

DROP TABLE IF EXISTS `daily_reset_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_reset_data` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `character_id` bigint(20) NOT NULL,
  `reset_count` int(11) DEFAULT NULL,
  `last_reset` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `daily_reset_data_unique` (`character_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_arka_war_kill`
--

DROP TABLE IF EXISTS `event_arka_war_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_arka_war_kill` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(3) unsigned DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(10) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(10) unsigned DEFAULT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(3) unsigned DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(10) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_arka_war_ranking`
--

DROP TABLE IF EXISTS `event_arka_war_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_arka_war_ranking` (
  `guild_id_01` int(10) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `guild_id_02` int(10) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `character_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_castle_siege_kill`
--

DROP TABLE IF EXISTS `event_castle_siege_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_castle_siege_kill` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(3) unsigned DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(10) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(10) unsigned DEFAULT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(3) unsigned DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(10) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_castle_siege_ranking`
--

DROP TABLE IF EXISTS `event_castle_siege_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_castle_siege_ranking` (
  `guild_id` int(10) unsigned NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `character_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_castle_siege_time`
--

DROP TABLE IF EXISTS `event_castle_siege_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_castle_siege_time` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(3) unsigned DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `guild_id` int(10) unsigned DEFAULT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_dungeon_instance`
--

DROP TABLE IF EXISTS `event_dungeon_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_dungeon_instance` (
  `char_id` int(10) unsigned NOT NULL,
  `id` tinyint(3) unsigned DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_jewel_bingo_ranking`
--

DROP TABLE IF EXISTS `event_jewel_bingo_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_jewel_bingo_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_labyrinth_league`
--

DROP TABLE IF EXISTS `event_labyrinth_league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_league` (
  `category` tinyint(3) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_class` tinyint(3) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `league_score` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`category`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_labyrinth_schedule`
--

DROP TABLE IF EXISTS `event_labyrinth_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_schedule` (
  `server` smallint(5) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`server`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_labyrinth_settings`
--

DROP TABLE IF EXISTS `event_labyrinth_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_labyrinth_settings` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `monster_element` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_mini_bomb_ranking`
--

DROP TABLE IF EXISTS `event_mini_bomb_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mini_bomb_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `state` tinyint(3) unsigned DEFAULT NULL,
  `score` smallint(5) unsigned DEFAULT NULL,
  `bombs_founded` tinyint(3) unsigned DEFAULT NULL,
  `bombs_failed` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_mu_roomy_ranking`
--

DROP TABLE IF EXISTS `event_mu_roomy_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_mu_roomy_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `score` smallint(5) unsigned DEFAULT NULL,
  `remain_card` tinyint(3) unsigned DEFAULT NULL,
  `remain_special_card` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_numeric_baseball_ranking`
--

DROP TABLE IF EXISTS `event_numeric_baseball_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_numeric_baseball_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_race_ranking`
--

DROP TABLE IF EXISTS `event_race_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_race_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `race` varchar(255) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`race`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_ranking`
--

DROP TABLE IF EXISTS `event_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_ranking` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned DEFAULT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_ranking_labyrinth`
--

DROP TABLE IF EXISTS `event_ranking_labyrinth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_ranking_labyrinth` (
  `char_id` int(10) unsigned NOT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `index` tinyint(3) unsigned DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` bigint(20) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_scramble_ranking`
--

DROP TABLE IF EXISTS `event_scramble_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_scramble_ranking` (
  `char_id` int(10) unsigned NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `shuffle_word` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_stage`
--

DROP TABLE IF EXISTS `event_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_stage` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gen_ranking`
--

DROP TABLE IF EXISTS `gen_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_ranking` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `char_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`family`,`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giant_mount_settings`
--

DROP TABLE IF EXISTS `giant_mount_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giant_mount_settings` (
  `character_id` bigint(20) NOT NULL,
  `giant_model` smallint(6) NOT NULL,
  `giant_status` smallint(6) NOT NULL,
  PRIMARY KEY (`character_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guild_list`
--

DROP TABLE IF EXISTS `guild_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_list` (
  `guid` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `emblem` varchar(255) DEFAULT NULL,
  `hostil` int(10) unsigned DEFAULT NULL,
  `alliance` int(10) unsigned DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guild_matching`
--

DROP TABLE IF EXISTS `guild_matching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_matching` (
  `guild_id` int(10) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `interest_type` tinyint(3) unsigned DEFAULT NULL,
  `level_range` tinyint(3) unsigned DEFAULT NULL,
  `class_type` smallint(5) unsigned DEFAULT NULL,
  `board_number` int(10) unsigned DEFAULT NULL,
  `introduction_text` varchar(255) DEFAULT NULL,
  `MinLevel` int(11) DEFAULT NULL,
  `MaxLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guild_members`
--

DROP TABLE IF EXISTS `guild_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_members` (
  `guild_id` int(10) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `id` tinyint(3) unsigned DEFAULT NULL,
  `ranking` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`guild_id`,`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guild_score`
--

DROP TABLE IF EXISTS `guild_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_score` (
  `guild_id` int(10) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `item_recovery`
--

DROP TABLE IF EXISTS `item_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_recovery` (
  `char_id` int(10) unsigned NOT NULL,
  `item` smallint(5) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `harmony` tinyint(3) unsigned DEFAULT NULL,
  `option_380` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(3) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `serial_server` smallint(5) unsigned DEFAULT NULL,
  `serial` int(10) unsigned DEFAULT NULL,
  `serial_cash_shop` int(10) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`item`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `item_serial`
--

DROP TABLE IF EXISTS `item_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_serial` (
  `server` int(11) NOT NULL,
  `serial` bigint(20) NOT NULL,
  `serial_shop` bigint(20) NOT NULL,
  PRIMARY KEY (`server`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lo_de`
--

DROP TABLE IF EXISTS `lo_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lo_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `bet_number` int(11) NOT NULL,
  `bet_type` int(11) NOT NULL,
  `bet_item` int(11) NOT NULL,
  `bet_value` int(11) NOT NULL,
  `bet_time` datetime(6) NOT NULL,
  `reward_value_x` int(11) NOT NULL,
  `reward_status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `master_pc`
--

DROP TABLE IF EXISTS `master_pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_pc` (
  `disk_serial` int(10) unsigned NOT NULL,
  `mac` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monster_respawn`
--

DROP TABLE IF EXISTS `monster_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_respawn` (
  `server` smallint(5) unsigned NOT NULL,
  `guid` smallint(5) unsigned NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`server`,`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `guid` smallint(5) unsigned NOT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `party_member`
--

DROP TABLE IF EXISTS `party_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_member` (
  `member` int(10) unsigned NOT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `party` smallint(5) unsigned DEFAULT NULL,
  `position` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`member`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serial_check`
--

DROP TABLE IF EXISTS `serial_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial_check` (
  `server` smallint(5) unsigned NOT NULL,
  `serial` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `server_monster_soul_reset`
--

DROP TABLE IF EXISTS `server_monster_soul_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_monster_soul_reset` (
  `monster_soul_reset` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `server_ranking`
--

DROP TABLE IF EXISTS `server_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_ranking` (
  `guid` int(11) NOT NULL,
  `race` int(11) DEFAULT NULL,
  `level_normal` int(11) DEFAULT NULL,
  `level_master` int(11) DEFAULT NULL,
  `level_majestic` int(11) DEFAULT NULL,
  `reset` int(11) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `server_signal`
--

DROP TABLE IF EXISTS `server_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_signal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` smallint(5) unsigned DEFAULT NULL,
  `signal` smallint(5) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tormented_square_survival_hall_of_fame`
--

DROP TABLE IF EXISTS `tormented_square_survival_hall_of_fame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tormented_square_survival_hall_of_fame` (
  `char_id_1` int(10) unsigned NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(10) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id_1`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tormented_square_survival_ranking`
--

DROP TABLE IF EXISTS `tormented_square_survival_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tormented_square_survival_ranking` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `char_id_1` int(10) unsigned DEFAULT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(10) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tormented_square_survival_team`
--

DROP TABLE IF EXISTS `tormented_square_survival_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tormented_square_survival_team` (
  `char_id_1` int(10) unsigned DEFAULT NULL,
  `char_id_2` int(10) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `enter_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_account_country`
--

DROP TABLE IF EXISTS `webengine_account_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_account_country` (
  `account` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lastchange` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_ban_log`
--

DROP TABLE IF EXISTS `webengine_ban_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_ban_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `banned_by` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ban_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ban_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ban_days` int(11) DEFAULT NULL,
  `ban_reason` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_bans`
--

DROP TABLE IF EXISTS `webengine_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `banned_by` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ban_date` int(11) NOT NULL,
  `ban_days` int(11) NOT NULL,
  `ban_reason` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_blocked_ip`
--

DROP TABLE IF EXISTS `webengine_blocked_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_blocked_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `block_by` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `block_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_credits_config`
--

DROP TABLE IF EXISTS `webengine_credits_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_credits_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_title` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `config_database` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `config_table` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `config_credits_col` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `config_user_col` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `config_user_col_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `config_checkonline` tinyint(3) unsigned NOT NULL,
  `config_display` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_credits_logs`
--

DROP TABLE IF EXISTS `webengine_credits_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_credits_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_config` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_identifier` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_credits` int(11) NOT NULL,
  `log_transaction` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_inadmincp` tinyint(3) unsigned DEFAULT NULL,
  `log_module` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_cron`
--

DROP TABLE IF EXISTS `webengine_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `cron_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cron_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `cron_file_run` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cron_run_time` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cron_last_run` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cron_status` int(11) NOT NULL,
  `cron_protected` int(11) NOT NULL,
  `cron_file_md5` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`cron_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_downloads`
--

DROP TABLE IF EXISTS `webengine_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_downloads` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `download_title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `download_description` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `download_link` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `download_size` double DEFAULT NULL,
  `download_type` int(11) NOT NULL,
  PRIMARY KEY (`download_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_fla`
--

DROP TABLE IF EXISTS `webengine_fla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_fla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `unlock_timestamp` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_attempts` int(11) NOT NULL,
  `timestamp` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_news`
--

DROP TABLE IF EXISTS `webengine_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `news_author` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `news_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `news_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `allow_comments` int(11) NOT NULL,
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_news_translations`
--

DROP TABLE IF EXISTS `webengine_news_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_news_translations` (
  `news_id` int(11) NOT NULL,
  `news_language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `news_title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `news_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_passchange_request`
--

DROP TABLE IF EXISTS `webengine_passchange_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_passchange_request` (
  `user_id` int(11) NOT NULL,
  `new_password` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `auth_code` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `request_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_paypal_transactions`
--

DROP TABLE IF EXISTS `webengine_paypal_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_paypal_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_amount` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `paypal_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `transaction_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `transaction_status` int(11) NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_plugins`
--

DROP TABLE IF EXISTS `webengine_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `compatibility` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `folder` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `files` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  `install_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `installed_by` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_redeemcode`
--

DROP TABLE IF EXISTS `webengine_redeemcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_redeemcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redeem_code` varchar(50) NOT NULL,
  `redeem_type` varchar(50) NOT NULL,
  `redeem_limit` int(11) DEFAULT NULL,
  `redeem_user` varchar(50) DEFAULT NULL,
  `redeem_credit_config_id` int(11) NOT NULL,
  `redeem_credit_amount` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_redeemcode_logs`
--

DROP TABLE IF EXISTS `webengine_redeemcode_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_redeemcode_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_id` int(11) NOT NULL,
  `date_redeemed` datetime NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_identifier` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_register_account`
--

DROP TABLE IF EXISTS `webengine_register_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_register_account` (
  `registration_account` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `registration_password` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `registration_email` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `registration_date` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `registration_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `registration_key` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`registration_account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_vote_logs`
--

DROP TABLE IF EXISTS `webengine_vote_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_vote_logs` (
  `user_id` int(11) NOT NULL,
  `votesite_id` int(11) NOT NULL,
  `timestamp` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_vote_sites`
--

DROP TABLE IF EXISTS `webengine_vote_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_vote_sites` (
  `votesite_id` int(11) NOT NULL AUTO_INCREMENT,
  `votesite_title` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `votesite_link` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `votesite_reward` int(11) NOT NULL,
  `votesite_time` int(11) NOT NULL,
  PRIMARY KEY (`votesite_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webengine_votes`
--

DROP TABLE IF EXISTS `webengine_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webengine_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vote_site_id` int(11) NOT NULL,
  `timestamp` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'muonline'
--

--
-- Dumping routines for database 'muonline'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-18 21:38:11
