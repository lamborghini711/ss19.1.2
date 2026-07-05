CREATE DATABASE  IF NOT EXISTS `log` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `log`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: log
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
-- Table structure for table `antihack`
--

DROP TABLE IF EXISTS `antihack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antihack` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(1000) DEFAULT NULL,
  `player_location` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `item_bag_serial`
--

DROP TABLE IF EXISTS `item_bag_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_bag_serial` (
  `serial` int(10) unsigned DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_boss_kill`
--

DROP TABLE IF EXISTS `log_boss_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_boss_kill` (
  `boss_index` smallint(5) unsigned DEFAULT NULL,
  `boss_name` varchar(255) DEFAULT NULL,
  `boss_id` tinyint(3) unsigned DEFAULT NULL,
  `character_id` int(10) unsigned DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `damage` bigint(20) DEFAULT NULL,
  `damage_reflect` bigint(20) DEFAULT NULL,
  `damage_debuff` bigint(20) DEFAULT NULL,
  `damage_elemental` bigint(20) DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `first_hit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_cash_shop`
--

DROP TABLE IF EXISTS `log_cash_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_cash_shop` (
  `server_id` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(1000) DEFAULT NULL,
  `dest_char` varchar(255) DEFAULT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `option_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price_type` tinyint(3) unsigned DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `gift` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_duel_bet`
--

DROP TABLE IF EXISTS `log_duel_bet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_duel_bet` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `char_id_1` int(255) NOT NULL,
  `char_name_1` varchar(30) NOT NULL,
  `char_id_2` int(255) NOT NULL,
  `char_name_2` varchar(30) NOT NULL,
  `bet_type` varchar(255) NOT NULL,
  `bet_count` int(255) NOT NULL,
  `player_win` varchar(30) DEFAULT NULL,
  `duel_start_time` datetime(6) NOT NULL,
  `duel_end_time` datetime(6) DEFAULT NULL,
  `duel_status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_errtel_pentagram`
--

DROP TABLE IF EXISTS `log_errtel_pentagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_errtel_pentagram` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(1000) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `blessing_spirit` tinyint(3) unsigned DEFAULT NULL,
  `result` tinyint(3) unsigned DEFAULT NULL,
  `pentagram_data` varchar(1000) DEFAULT NULL,
  `errtel_data` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_item_buy`
--

DROP TABLE IF EXISTS `log_item_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_buy` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(1000) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_item_create`
--

DROP TABLE IF EXISTS `log_item_create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_create` (
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `interface_id` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `serial` int(10) unsigned DEFAULT NULL,
  `serial_shop` int(10) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_item_drop`
--

DROP TABLE IF EXISTS `log_item_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_drop` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(1000) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_item_loot`
--

DROP TABLE IF EXISTS `log_item_loot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_loot` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(1000) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_item_sell`
--

DROP TABLE IF EXISTS `log_item_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_item_sell` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(1000) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_jewel_drop`
--

DROP TABLE IF EXISTS `log_jewel_drop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_jewel_drop` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `jewel_type` tinyint(3) unsigned DEFAULT NULL,
  `jewel_index` smallint(5) unsigned DEFAULT NULL,
  `jewel_name` varchar(255) DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_jewel_mix`
--

DROP TABLE IF EXISTS `log_jewel_mix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_jewel_mix` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `server` smallint(5) unsigned DEFAULT NULL,
  `mix_type` tinyint(3) unsigned DEFAULT NULL,
  `mix_id` tinyint(3) unsigned DEFAULT NULL,
  `mix_level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_level_up`
--

DROP TABLE IF EXISTS `log_level_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_level_up` (
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `level_normal` smallint(5) unsigned DEFAULT NULL,
  `level_master` smallint(5) unsigned DEFAULT NULL,
  `level_majestic` smallint(5) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `event_ground` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_mix`
--

DROP TABLE IF EXISTS `log_mix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_mix` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `mix_id` smallint(5) unsigned DEFAULT NULL,
  `mix_name` varchar(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `result` tinyint(3) unsigned DEFAULT NULL,
  `item_data_before` varchar(15000) DEFAULT NULL,
  `item_data_after` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_personal_store`
--

DROP TABLE IF EXISTS `log_personal_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_personal_store` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id_01` int(10) unsigned DEFAULT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int(10) unsigned DEFAULT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int(10) unsigned DEFAULT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int(10) unsigned DEFAULT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `offstore` tinyint(3) unsigned DEFAULT NULL,
  `item_data` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_pvp`
--

DROP TABLE IF EXISTS `log_pvp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pvp` (
  `char_id_1` int(10) unsigned DEFAULT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_class_1` tinyint(3) unsigned DEFAULT NULL,
  `char_stat_1` varchar(255) DEFAULT NULL,
  `char_set_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(10) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `char_class_2` tinyint(3) unsigned DEFAULT NULL,
  `char_stat_2` varchar(255) DEFAULT NULL,
  `char_set_2` varchar(255) DEFAULT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL,
  `hp_damage` int(11) DEFAULT NULL,
  `sd_damage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_reset`
--

DROP TABLE IF EXISTS `log_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_reset` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `char_id` int(255) NOT NULL,
  `char_name` varchar(255) NOT NULL,
  `old_rs` int(255) NOT NULL,
  `new_rs` int(255) NOT NULL,
  `time_rs` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_trade`
--

DROP TABLE IF EXISTS `log_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_trade` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id_01` int(10) unsigned DEFAULT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int(10) unsigned DEFAULT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(1000) DEFAULT NULL,
  `account_id_02` int(10) unsigned DEFAULT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int(10) unsigned DEFAULT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(1000) DEFAULT NULL,
  `money` int(10) unsigned DEFAULT NULL,
  `item_data` varchar(18000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mix_recovery`
--

DROP TABLE IF EXISTS `mix_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mix_recovery` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `item_data` varchar(9999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reward_dungeon`
--

DROP TABLE IF EXISTS `reward_dungeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_dungeon` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reward_labyrinth_of_dimensions`
--

DROP TABLE IF EXISTS `reward_labyrinth_of_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_labyrinth_of_dimensions` (
  `server` smallint(5) unsigned DEFAULT NULL,
  `char_id` int(10) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `category` tinyint(3) unsigned DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `item_data` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'log'
--

--
-- Dumping routines for database 'log'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-05  0:05:05
