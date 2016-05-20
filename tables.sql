-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: esportsh_site2
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activityId` int(5) NOT NULL AUTO_INCREMENT,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `userId` int(5) NOT NULL DEFAULT '0',
  `activityType` int(2) NOT NULL,
  `activityTitle` text NOT NULL,
  `activityDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipAddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2721 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_username` varchar(255) NOT NULL,
  `adm_password` varchar(255) NOT NULL,
  `adm_email` varchar(255) NOT NULL,
  `adm_last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adm_group_id` int(11) DEFAULT NULL,
  `adm_user_type` varchar(100) DEFAULT NULL,
  `adm_expiry_date` date DEFAULT NULL,
  `adm_status` tinyint(1) NOT NULL,
  `terms` blob NOT NULL,
  `adm_country` varchar(255) NOT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `admin_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `adminId` int(5) NOT NULL AUTO_INCREMENT,
  `adminEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `envatoUsername` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `avatarImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'adminDefault.png',
  `recEmails` int(1) NOT NULL DEFAULT '1',
  `lastVisited` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hash` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `isAdmin` int(5) NOT NULL DEFAULT '0',
  `adminRole` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `isActive` int(1) NOT NULL DEFAULT '1',
  `isArchived` int(5) NOT NULL DEFAULT '0',
  `archiveDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `advertise_banner`
--

DROP TABLE IF EXISTS `advertise_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertise_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_text` text NOT NULL,
  `banner_expiry` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `location` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment` int(11) NOT NULL DEFAULT '0',
  `qty_click` int(11) NOT NULL,
  `qty_imp` int(11) NOT NULL,
  `sub_type` int(11) NOT NULL,
  `ad_click` int(11) NOT NULL,
  `ad_imp` int(11) NOT NULL,
  `dis_sort` int(11) NOT NULL,
  PRIMARY KEY (`banner_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `appauth`
--

DROP TABLE IF EXISTS `appauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appauth` (
  `appauthId` int(5) NOT NULL AUTO_INCREMENT,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `authFlag` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `authDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`appauthId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authdesc`
--

DROP TABLE IF EXISTS `authdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authdesc` (
  `authFlag` varchar(10) COLLATE utf8_bin NOT NULL,
  `flagDesc` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`authFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bannedips`
--

DROP TABLE IF EXISTS `bannedips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannedips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddr` varchar(50) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `timeadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_address_book`
--

DROP TABLE IF EXISTS `customer_address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `website` varchar(255) NOT NULL,
  `cimage` varchar(255) NOT NULL,
  `postpos` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `suburb` varchar(32) DEFAULT NULL,
  `postcode` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`address_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_chat`
--

DROP TABLE IF EXISTS `customer_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `chat_msg` text NOT NULL,
  `timeadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_status` int(11) NOT NULL,
  `chat_bar` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`),
  KEY `chat_id` (`chat_id`),
  KEY `cuc_idx` (`friend_id`,`customer_id`),
  KEY `cuc_idx2` (`chat_bar`,`friend_id`,`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9787 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_connected`
--

DROP TABLE IF EXISTS `customer_connected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_connected` (
  `connect_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `f_customer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `added_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`connect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1467 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game`
--

DROP TABLE IF EXISTS `customer_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) NOT NULL,
  `entry_fee` double NOT NULL,
  `game_type` int(11) NOT NULL,
  `game_player` int(11) NOT NULL,
  `game_region` int(11) NOT NULL,
  `game_format` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `game_addeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `start_status` int(11) NOT NULL,
  `winner_team` int(11) NOT NULL,
  `game_date` datetime NOT NULL,
  `game_sector` varchar(255) NOT NULL,
  `dispute` int(11) NOT NULL,
  `game_full` int(11) NOT NULL,
  `winner_status` int(11) NOT NULL,
  `leave_user` int(11) NOT NULL,
  `start_notify` int(11) NOT NULL,
  `watched` int(11) NOT NULL,
  `start_game_datetime` datetime NOT NULL,
  `game_date_update` datetime NOT NULL,
  `game_formats` varchar(255) NOT NULL,
  `team_game` int(11) NOT NULL,
  `game_cancel_date` datetime NOT NULL,
  `game_winner_reason` text NOT NULL,
  `match_round` int(11) NOT NULL,
  `select_stage` varchar(255) NOT NULL,
  `game_tournament` tinyint(1) NOT NULL,
  `tournament_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`game_id`),
  KEY `cug_idx` (`game_sector`,`winner_team`,`game_full`,`game_date`,`customer_id`,`game_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57261 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_dispute`
--

DROP TABLE IF EXISTS `customer_game_dispute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_dispute` (
  `dispute_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `dispute_details` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `winner_id` int(11) NOT NULL,
  `stage` int(11) NOT NULL,
  `resolve` int(11) NOT NULL,
  `image_name` text NOT NULL,
  PRIMARY KEY (`dispute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_dispute_files`
--

DROP TABLE IF EXISTS `customer_game_dispute_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_dispute_files` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `dispute_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `added_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_dispute_image`
--

DROP TABLE IF EXISTS `customer_game_dispute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_dispute_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dispute_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_dispute_message`
--

DROP TABLE IF EXISTS `customer_game_dispute_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_dispute_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `dispute_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_queue`
--

DROP TABLE IF EXISTS `customer_game_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_queue` (
  `queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_game` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `join_game` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `game_region` int(11) NOT NULL,
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9349 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_team`
--

DROP TABLE IF EXISTS `customer_game_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  `team_image` varchar(255) NOT NULL,
  `team_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_id` int(11) NOT NULL,
  `team_bio` text NOT NULL,
  `website` varchar(50) NOT NULL,
  `country` int(11) NOT NULL,
  `sponsors` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `looking_for` varchar(255) NOT NULL,
  `wins` double NOT NULL,
  `earnings` double NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_team_users`
--

DROP TABLE IF EXISTS `customer_game_team_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_team_users` (
  `team_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  PRIMARY KEY (`team_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_tournament_payout`
--

DROP TABLE IF EXISTS `customer_game_tournament_payout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_tournament_payout` (
  `payout_id` int(11) NOT NULL AUTO_INCREMENT,
  `tournament_id` int(11) NOT NULL DEFAULT '0',
  `player` int(11) NOT NULL DEFAULT '0',
  `payout` float(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`payout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_tournament_queue`
--

DROP TABLE IF EXISTS `customer_game_tournament_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_tournament_queue` (
  `queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_game` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `join_game` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `game_region` int(11) NOT NULL,
  `game_player` int(11) NOT NULL,
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_tournament_rounds_date`
--

DROP TABLE IF EXISTS `customer_game_tournament_rounds_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_tournament_rounds_date` (
  `date_id` int(11) NOT NULL AUTO_INCREMENT,
  `tournament_id` int(11) NOT NULL DEFAULT '0',
  `round_no` int(11) NOT NULL DEFAULT '0',
  `round_date` datetime DEFAULT NULL,
  PRIMARY KEY (`date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_tournament_user`
--

DROP TABLE IF EXISTS `customer_game_tournament_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_tournament_user` (
  `game_join_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `join_status` int(11) NOT NULL,
  `game_team` int(11) NOT NULL,
  `winner_team` int(11) NOT NULL,
  `start_game` int(11) NOT NULL,
  `game_leader` int(11) NOT NULL,
  `auto_join` int(11) NOT NULL,
  `leave` int(11) NOT NULL,
  `match_round` int(11) NOT NULL,
  `game_no_id` int(11) NOT NULL,
  `video_code` text NOT NULL,
  `deck` varchar(255) NOT NULL,
  `credit_click` int(11) NOT NULL,
  `deck_added` datetime NOT NULL,
  `dis_ord` int(11) NOT NULL,
  PRIMARY KEY (`game_join_id`)
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_tournaments`
--

DROP TABLE IF EXISTS `customer_game_tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_tournaments` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) NOT NULL,
  `entry_fee` double NOT NULL,
  `game_type` int(11) NOT NULL,
  `game_player` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `game_addeddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `start_status` int(11) NOT NULL,
  `winner_team` int(11) NOT NULL,
  `game_date` datetime NOT NULL,
  `dispute` int(11) NOT NULL,
  `game_full` int(11) NOT NULL,
  `winner_status` int(11) NOT NULL,
  `start_game_datetime` datetime NOT NULL,
  `game_date_update` datetime NOT NULL,
  `game_formats` varchar(255) NOT NULL,
  `game_rounds` int(11) NOT NULL,
  `game_region` int(11) NOT NULL,
  `admin_approve` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `game_payout` int(11) NOT NULL DEFAULT '0',
  `game_format` int(11) NOT NULL DEFAULT '0',
  `game_format_final` int(11) NOT NULL DEFAULT '0',
  `game_logo` varchar(255) DEFAULT NULL,
  `game_details` blob,
  `game_rules` blob,
  `game_privacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for public, 1 for private',
  `game_playing` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for no, 1 for yes',
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52048 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_user`
--

DROP TABLE IF EXISTS `customer_game_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_user` (
  `game_join_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `join_status` int(11) NOT NULL,
  `game_team` int(11) NOT NULL,
  `winner_team` int(11) NOT NULL,
  `start_game` int(11) NOT NULL,
  `game_leader` int(11) NOT NULL,
  `auto_join` int(11) NOT NULL,
  `leave` int(11) NOT NULL,
  `video_code` text NOT NULL,
  `deck` varchar(255) NOT NULL,
  `credit_click` int(11) NOT NULL,
  `deck_added` datetime NOT NULL,
  `game_leader_id` int(11) NOT NULL,
  `game_team_id` int(11) NOT NULL,
  `guide_popup` int(11) NOT NULL,
  `game_winner_reason` varbinary(255) NOT NULL,
  `user_char` varchar(255) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`game_join_id`),
  KEY `cgu_idx` (`customer_id`,`join_date`,`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13959 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_game_user_matches`
--

DROP TABLE IF EXISTS `customer_game_user_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_game_user_matches` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `user_char` varchar(255) NOT NULL,
  `winner_team` int(11) NOT NULL,
  `match_round` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `stage` int(11) NOT NULL,
  `choose_stage` int(11) NOT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_group_chat`
--

DROP TABLE IF EXISTS `customer_group_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `chat_msg` text NOT NULL,
  `timeadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_status` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_newsfeed`
--

DROP TABLE IF EXISTS `customer_newsfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_newsfeed` (
  `newsfeed_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `newsfeed` text NOT NULL,
  `added_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `newsfeed_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 for community chat, 1 for game, 2 for tournament',
  PRIMARY KEY (`newsfeed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9348 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_newsfeed_comments`
--

DROP TABLE IF EXISTS `customer_newsfeed_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_newsfeed_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `newsfeed` text NOT NULL,
  `added_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `newsfeed_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_newsfeed_likes`
--

DROP TABLE IF EXISTS `customer_newsfeed_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_newsfeed_likes` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsfeed_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_notification`
--

DROP TABLE IF EXISTS `customer_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_notification` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `notify_name` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_status` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `email_notify` int(11) NOT NULL,
  `game_notify` int(11) NOT NULL,
  PRIMARY KEY (`notify_id`),
  KEY `cn_idx` (`notify_name`,`customer_id`,`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=446916 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_order_products`
--

DROP TABLE IF EXISTS `customer_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order_products` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_model` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `final_price` float NOT NULL,
  `product_tax` float NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_order_status`
--

DROP TABLE IF EXISTS `customer_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_name` varchar(255) NOT NULL,
  `admin_flag` tinyint(1) DEFAULT NULL,
  `public_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`),
  KEY `order_status_name` (`order_status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_order_status_history`
--

DROP TABLE IF EXISTS `customer_order_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order_status_history` (
  `order_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `customer_notified` tinyint(1) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`order_status_history_id`),
  KEY `order_id` (`order_id`),
  KEY `order_status_id` (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_order_total`
--

DROP TABLE IF EXISTS `customer_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order_total` (
  `order_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `class` varchar(32) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`),
  KEY `title` (`title`),
  KEY `class` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_points`
--

DROP TABLE IF EXISTS `customer_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_points` (
  `customer_point_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `points` double NOT NULL,
  `p_m` int(1) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `typ` int(11) NOT NULL COMMENT '0 = order, 1 = admin fee, 2 = game fee, 3 = winner, 4 = product',
  `opid` int(11) NOT NULL,
  PRIMARY KEY (`customer_point_id`),
  KEY `customer_point_id` (`customer_point_id`),
  KEY `cp_idx` (`typ`,`opid`)
) ENGINE=InnoDB AUTO_INCREMENT=62178 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_points_withdraw`
--

DROP TABLE IF EXISTS `customer_points_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_points_withdraw` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `pay_amount` float NOT NULL,
  `pay_points` double NOT NULL,
  `admin_charge` float NOT NULL,
  `TransactionID` varchar(255) NOT NULL,
  `addedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `withdraw_type` varchar(255) NOT NULL,
  `withdraw_by` varchar(255) NOT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_subscription`
--

DROP TABLE IF EXISTS `customer_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_subscription` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `date_added` date DEFAULT NULL,
  `used_qty` int(11) NOT NULL,
  `start_dt` datetime NOT NULL,
  `end_dt` datetime NOT NULL,
  `typ` varchar(255) NOT NULL,
  `market` varchar(255) NOT NULL,
  `sub_market` int(11) NOT NULL,
  `typ_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `start_dt` (`start_dt`),
  KEY `end_dt` (`end_dt`),
  KEY `customers_id` (`customers_id`),
  KEY `typ_id` (`typ_id`),
  KEY `subscription_id` (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_subscription_basket`
--

DROP TABLE IF EXISTS `customer_subscription_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_subscription_basket` (
  `customer_subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `basketSession` varchar(50) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `subscription_price` float(9,2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_subscription_id`),
  KEY `basketSession` (`basketSession`),
  KEY `customers_id` (`customers_id`),
  KEY `subscription_id` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` enum('Male','Female') NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `newsletter` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `about_me` blob NOT NULL,
  `company` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `country` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `member_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `review_count` int(11) NOT NULL,
  `email_varify` int(11) NOT NULL,
  `sign_up_status` int(11) NOT NULL DEFAULT '1',
  `reset_pwd_link` text NOT NULL,
  `age` int(11) NOT NULL,
  `language` text NOT NULL,
  `collage` varchar(255) NOT NULL,
  `online_status` int(11) NOT NULL,
  `address` text NOT NULL,
  `timezone` int(11) NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `team_details` text NOT NULL,
  `profile_update` int(11) NOT NULL,
  `fav_game` int(11) NOT NULL,
  `email_notify` int(11) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `featured_gamer` int(11) NOT NULL,
  `gaming_profile` text NOT NULL,
  `battle_tag` varchar(255) NOT NULL,
  `summoner_name` varchar(255) NOT NULL,
  `steam_id` varchar(255) NOT NULL,
  `timezone_sort` varchar(255) NOT NULL,
  `earning` float NOT NULL,
  `payout_email` varchar(255) NOT NULL,
  `wins` int(11) NOT NULL,
  `lol_info` varchar(255) NOT NULL,
  `social_network` varchar(255) NOT NULL,
  `social_key` varchar(255) NOT NULL,
  `nintendo` varchar(255) NOT NULL,
  `payout_mode` int(11) NOT NULL,
  `twitch_stream` text NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `tournament_earning` double NOT NULL,
  `tournament_wins` int(11) NOT NULL DEFAULT '0',
  `logged` datetime NOT NULL,
  `xbox` varchar(50) NOT NULL,
  `PSN` varchar(50) NOT NULL,
  `liveid` varchar(50) NOT NULL,
  `wargaming` varchar(50) NOT NULL,
  `show_leaderboard` int(11) NOT NULL,
  `pwd_ret` int(11) NOT NULL,
  `lastupdate` int(32) NOT NULL,
  `users_loged` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `email` (`email`),
  KEY `customers_default_address_id` (`customers_default_address_id`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `c_idx` (`status`,`show_leaderboard`)
) ENGINE=InnoDB AUTO_INCREMENT=18733 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers_order`
--

DROP TABLE IF EXISTS `customers_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(100) NOT NULL DEFAULT '0',
  `customer_company` varchar(100) DEFAULT NULL,
  `customer_street_address` varchar(100) NOT NULL,
  `customer_suburb` varchar(100) DEFAULT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_postcode` varchar(20) NOT NULL,
  `customer_state` varchar(100) DEFAULT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_telephone` varchar(32) NOT NULL,
  `customer_email_address` varchar(100) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_company` varchar(100) DEFAULT NULL,
  `delivery_street_address` varchar(100) NOT NULL,
  `delivery_suburb` varchar(100) DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_postcode` varchar(20) NOT NULL,
  `delivery_state` varchar(100) DEFAULT NULL,
  `delivery_country` varchar(100) NOT NULL,
  `billing_name` varchar(100) NOT NULL,
  `billing_company` varchar(100) DEFAULT NULL,
  `billing_street_address` varchar(100) NOT NULL,
  `billing_suburb` varchar(100) DEFAULT NULL,
  `billing_city` varchar(100) NOT NULL,
  `billing_postcode` varchar(20) NOT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_country` varchar(100) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `published` enum('Yes','No') DEFAULT NULL,
  `admin_msg_body` text,
  `cust_msg_body` blob,
  `msg_body` text,
  `session_id` varchar(200) DEFAULT NULL,
  `transaction_id` varchar(200) DEFAULT NULL,
  `subscription_start` datetime NOT NULL,
  `subscription_end` datetime NOT NULL,
  `typ` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_amt` float NOT NULL,
  `RprofileId` varchar(255) NOT NULL,
  `RTransactionID` varchar(255) NOT NULL,
  `delivery_notes` text NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_purchased` (`date_purchased`),
  KEY `transaction_id` (`transaction_id`),
  KEY `co_idx` (`payment_method`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e_tmp_img`
--

DROP TABLE IF EXISTS `e_tmp_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_tmp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_alias` varchar(255) NOT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e_zip`
--

DROP TABLE IF EXISTS `e_zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_zip` (
  `zip_id` double NOT NULL AUTO_INCREMENT,
  `zip_country_id` int(11) NOT NULL,
  `zip_state_id` int(11) NOT NULL,
  `zip_city_id` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41320 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `envatoitems`
--

DROP TABLE IF EXISTS `envatoitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envatoitems` (
  `itemId` int(5) NOT NULL AUTO_INCREMENT,
  `envatoItemId` int(10) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `shortName` varchar(50) DEFAULT NULL,
  `itemUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `isActive` int(1) NOT NULL DEFAULT '1',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forums` (
  `forumId` int(5) NOT NULL AUTO_INCREMENT,
  `forumName` varchar(255) DEFAULT NULL,
  `shortName` varchar(50) DEFAULT NULL,
  `forumUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `isActive` int(1) NOT NULL DEFAULT '1',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dis_order` int(11) NOT NULL,
  PRIMARY KEY (`forumId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forumviews`
--

DROP TABLE IF EXISTS `forumviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumviews` (
  `viewId` int(5) NOT NULL AUTO_INCREMENT,
  `forumId` int(5) NOT NULL DEFAULT '0',
  `viewDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewIp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`viewId`)
) ENGINE=InnoDB AUTO_INCREMENT=1137 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendships` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `id_user_1` int(8) NOT NULL,
  `id_user_2` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_format`
--

DROP TABLE IF EXISTS `game_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_format` (
  `main_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_type_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`main_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_groups`
--

DROP TABLE IF EXISTS `game_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_groups` (
  `game_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) NOT NULL,
  `game_player` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `big_image` varchar(255) NOT NULL,
  `game_format` text NOT NULL,
  `guide_image` varchar(255) NOT NULL,
  `games_ids` int(11) NOT NULL,
  `back_image` varchar(255) NOT NULL,
  `rules_image` varchar(255) NOT NULL,
  `is_nintendo` enum('0','1') NOT NULL DEFAULT '0',
  `is_steam` enum('0','1') NOT NULL DEFAULT '0',
  `is_bettlenet` enum('0','1') NOT NULL DEFAULT '0',
  `is_summoner` enum('0','1') NOT NULL DEFAULT '0',
  `is_xbox` enum('0','1') NOT NULL DEFAULT '0',
  `is_psn` enum('0','1') NOT NULL DEFAULT '0',
  `is_wargaming` enum('0','1') NOT NULL DEFAULT '0',
  `is_live` enum('0','1') NOT NULL DEFAULT '0',
  `select_game` varchar(255) NOT NULL,
  PRIMARY KEY (`game_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_groups_tournament`
--

DROP TABLE IF EXISTS `game_groups_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_groups_tournament` (
  `game_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `big_image` varchar(255) NOT NULL,
  `game_format` text NOT NULL,
  PRIMARY KEY (`game_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_groups_type`
--

DROP TABLE IF EXISTS `game_groups_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_groups_type` (
  `game_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` varchar(255) NOT NULL,
  `game_player` int(11) NOT NULL,
  PRIMARY KEY (`game_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_server`
--

DROP TABLE IF EXISTS `game_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_server` (
  `main_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_type_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`main_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `general_page_description`
--

DROP TABLE IF EXISTS `general_page_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_page_description` (
  `page_id` bigint(20) NOT NULL,
  `languages_id` bigint(20) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_description` text NOT NULL,
  UNIQUE KEY `page_id` (`page_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `general_pages`
--

DROP TABLE IF EXISTS `general_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_location` varchar(255) DEFAULT 'general',
  `page_title` varchar(255) NOT NULL,
  `page_alias` varchar(255) NOT NULL,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text,
  `page_description` text,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`page_id`),
  KEY `page_alias` (`page_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_city`
--

DROP TABLE IF EXISTS `location_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_city` (
  `city_id` double NOT NULL AUTO_INCREMENT,
  `city_country_id` int(11) NOT NULL,
  `city_state_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `timeZone` varchar(255) NOT NULL,
  `city_code` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47910 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_countries`
--

DROP TABLE IF EXISTS `location_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `ISO2` varchar(255) NOT NULL,
  `ISO3` varchar(255) NOT NULL,
  `ISON` varchar(255) NOT NULL,
  `Internet` varchar(255) NOT NULL,
  `Capital` varchar(255) NOT NULL,
  `Currency` varchar(255) NOT NULL,
  `CurrencyCode` varchar(255) NOT NULL,
  `countries_name` varchar(255) NOT NULL,
  `isBlacklisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_courses`
--

DROP TABLE IF EXISTS `location_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_states`
--

DROP TABLE IF EXISTS `location_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_country_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `state_code` varchar(255) NOT NULL,
  `ADM1Code` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `isBlacklisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5400 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(8) NOT NULL,
  `to_user_id` int(8) NOT NULL,
  `message` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_timestamp` int(32) DEFAULT NULL,
  `read` int(1) DEFAULT NULL,
  `read_timestamp` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8595 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `noteId` int(5) NOT NULL AUTO_INCREMENT,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `noteText` longtext NOT NULL,
  `noteDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pagecontent`
--

DROP TABLE IF EXISTS `pagecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagecontent` (
  `contentId` int(5) NOT NULL AUTO_INCREMENT,
  `pageId` int(2) NOT NULL DEFAULT '0' COMMENT '1 - Home, 2 - Forums, 3 - Tickets',
  `contentName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pageContent` longtext CHARACTER SET utf8 NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`contentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_color_type`
--

DROP TABLE IF EXISTS `product_color_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_color_type` (
  `main_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_type_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`main_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_main_type`
--

DROP TABLE IF EXISTS `product_main_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_main_type` (
  `main_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_type_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`main_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_options` (
  `main_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_type_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`main_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_options_data`
--

DROP TABLE IF EXISTS `product_options_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_options_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `options_id` varchar(255) NOT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_options_value`
--

DROP TABLE IF EXISTS `product_options_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_options_value` (
  `sub_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_type_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `main_type_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_size_type`
--

DROP TABLE IF EXISTS `product_size_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size_type` (
  `main_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_type_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`main_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_description` blob NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_size` int(11) NOT NULL,
  `product_color` int(11) NOT NULL,
  `product_main_type` int(11) NOT NULL,
  `product_points` double NOT NULL,
  `status` int(11) NOT NULL,
  `shipping_fee` float NOT NULL,
  `other_image1` varchar(255) NOT NULL,
  `other_image2` varchar(255) NOT NULL,
  `other_image3` varchar(255) NOT NULL,
  `other_image4` varchar(255) NOT NULL,
  `shipping_fee_other` int(11) NOT NULL,
  `good_type` int(11) NOT NULL,
  `p_order` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `replyId` int(5) NOT NULL AUTO_INCREMENT,
  `topicId` int(5) NOT NULL,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `userId` int(5) NOT NULL DEFAULT '0',
  `replyText` longtext NOT NULL,
  `replyDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `replyIp` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`replyId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sa_users_social`
--

DROP TABLE IF EXISTS `sa_users_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sa_users_social` (
  `social_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `webSiteURL` varchar(250) DEFAULT NULL,
  `profileURL` varchar(250) DEFAULT NULL,
  `photoURL` varchar(250) DEFAULT NULL,
  `displayName` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `birthDay` varchar(5) DEFAULT NULL,
  `birthMonth` varchar(5) DEFAULT NULL,
  `birthYear` varchar(5) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `emailVerified` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `network_name` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_admin_fee`
--

DROP TABLE IF EXISTS `site_admin_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_admin_fee` (
  `fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_fee` float NOT NULL,
  `end_fee` float NOT NULL,
  `admin_fee` float NOT NULL,
  PRIMARY KEY (`fees_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_blog_comments`
--

DROP TABLE IF EXISTS `site_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_blog_comments` (
  `comment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment_text` blob NOT NULL,
  `commnet_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_blogs`
--

DROP TABLE IF EXISTS `site_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_details` blob NOT NULL,
  `blog_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `blog_sort` text NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_currencies`
--

DROP TABLE IF EXISTS `site_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(20) DEFAULT NULL,
  `symbol_right` varchar(20) DEFAULT NULL,
  `decimal_point` varchar(1) DEFAULT NULL,
  `thousands_point` varchar(10) DEFAULT NULL,
  `decimal_places` int(2) DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  PRIMARY KEY (`currencies_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_languages`
--

DROP TABLE IF EXISTS `site_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` char(2) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `directory` varchar(32) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_learning_center`
--

DROP TABLE IF EXISTS `site_learning_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_learning_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `video_code` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_mail_template`
--

DROP TABLE IF EXISTS `site_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_mail_template` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_title` varchar(255) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_message` text NOT NULL,
  `mail_fields` text,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_menu_master`
--

DROP TABLE IF EXISTS `site_menu_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_menu_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(10) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `sub_module_name` varchar(200) DEFAULT NULL,
  `module_title` varchar(255) NOT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  `adm_user_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_metatag`
--

DROP TABLE IF EXISTS `site_metatag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_metatag` (
  `meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text,
  `page` varchar(255) NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_newsletter_emails`
--

DROP TABLE IF EXISTS `site_newsletter_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_newsletter_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_settings` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_title` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  `config_desc` text,
  `set_function` varchar(255) DEFAULT NULL,
  `use_function` varchar(255) DEFAULT NULL,
  `input_type` varchar(100) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_ticker`
--

DROP TABLE IF EXISTS `site_ticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_ticker` (
  `ticker_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticker_title` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ticker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_time_zone`
--

DROP TABLE IF EXISTS `site_time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_time_zone` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_traking`
--

DROP TABLE IF EXISTS `site_traking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_traking` (
  `tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_code` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `register` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`tracking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site_traking_entry`
--

DROP TABLE IF EXISTS `site_traking_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_traking_entry` (
  `entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_id` int(11) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `tracking_code` varchar(255) NOT NULL,
  `dateadded` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sitealerts`
--

DROP TABLE IF EXISTS `sitealerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitealerts` (
  `alertId` int(5) NOT NULL AUTO_INCREMENT,
  `adminId` int(5) NOT NULL,
  `isActive` int(5) NOT NULL DEFAULT '0',
  `alertTitle` varchar(255) NOT NULL,
  `alertText` longtext NOT NULL,
  `alertDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alertStart` timestamp NULL DEFAULT NULL,
  `alertExpires` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`alertId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sitesettings`
--

DROP TABLE IF EXISTS `sitesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitesettings` (
  `installUrl` varchar(100) COLLATE utf8_bin NOT NULL,
  `siteName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `siteQuip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `siteEmail` varchar(255) CHARACTER SET utf8 NOT NULL,
  `localization` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'english',
  `envatoUsername` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `envatoAPI` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avatarFolder` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'avatars/',
  `avatarTypesAllowed` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'jpg,png',
  `uploadPath` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'uploads/',
  `fileTypesAllowed` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'jpg,png,gif,txt,pdf,xls,xlsx,doc,docx,zip,rar',
  `allowRegistrations` int(1) NOT NULL DEFAULT '1',
  `allowPosts` int(1) NOT NULL DEFAULT '0',
  `purchaseCodeRequired` int(1) NOT NULL DEFAULT '0',
  `paymentEmail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paymentAmount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `paymentDesc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paymentCompleteUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `analyticsCode` longtext CHARACTER SET utf8,
  PRIMARY KEY (`installUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_coupon`
--

DROP TABLE IF EXISTS `subscription_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) NOT NULL,
  `st_dt` date NOT NULL,
  `ed_dt` date NOT NULL,
  `add_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_qty` int(11) NOT NULL,
  `used_qty` int(11) NOT NULL,
  `coupon_typ` int(11) NOT NULL,
  `use_qty` int(11) NOT NULL,
  `amt` double NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_coupon_used`
--

DROP TABLE IF EXISTS `subscription_coupon_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_coupon_used` (
  `used_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `datetime_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`used_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1623 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_order`
--

DROP TABLE IF EXISTS `subscription_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_order` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `package_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(100) NOT NULL DEFAULT '0',
  `customer_company` varchar(100) DEFAULT NULL,
  `customer_street_address` varchar(100) NOT NULL,
  `customer_suburb` varchar(100) DEFAULT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_postcode` varchar(20) NOT NULL,
  `customer_state` varchar(100) DEFAULT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_telephone` varchar(32) NOT NULL,
  `customer_email_address` varchar(100) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_company` varchar(100) DEFAULT NULL,
  `delivery_street_address` varchar(100) NOT NULL,
  `delivery_suburb` varchar(100) DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_postcode` varchar(20) NOT NULL,
  `delivery_state` varchar(100) DEFAULT NULL,
  `delivery_country` varchar(100) NOT NULL,
  `billing_name` varchar(100) NOT NULL,
  `billing_company` varchar(100) DEFAULT NULL,
  `billing_street_address` varchar(100) NOT NULL,
  `billing_suburb` varchar(100) DEFAULT NULL,
  `billing_city` varchar(100) NOT NULL,
  `billing_postcode` varchar(20) NOT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_country` varchar(100) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `subscription_start` datetime DEFAULT NULL,
  `subscription_end` datetime DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `subscription_status` int(5) NOT NULL,
  `published` enum('Yes','No') DEFAULT NULL,
  `admin_msg_body` text,
  `cust_msg_body` text,
  `msg_body` text,
  `session_id` varchar(200) DEFAULT NULL,
  `transaction_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `customer_id` (`customer_id`),
  KEY `package_id` (`package_id`),
  KEY `subscription_end` (`subscription_end`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_order_total`
--

DROP TABLE IF EXISTS `subscription_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_order_total` (
  `subscription_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `class` varchar(32) NOT NULL,
  PRIMARY KEY (`subscription_total_id`),
  KEY `subscription_id` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_package`
--

DROP TABLE IF EXISTS `subscription_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_package` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_title` varchar(255) NOT NULL,
  `s_tag` varchar(255) NOT NULL,
  `s_detail` text NOT NULL,
  `s_price` float(10,4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `s_points` int(11) NOT NULL,
  `s_image` varchar(255) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblmenuitem`
--

DROP TABLE IF EXISTS `tblmenuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmenuitem` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menuAccess` int(11) NOT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticketassigned`
--

DROP TABLE IF EXISTS `ticketassigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketassigned` (
  `assignId` int(5) NOT NULL AUTO_INCREMENT,
  `ticketId` int(5) NOT NULL,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`assignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticketcategories`
--

DROP TABLE IF EXISTS `ticketcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketcategories` (
  `catId` int(5) NOT NULL AUTO_INCREMENT,
  `catTitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isActive` int(1) NOT NULL DEFAULT '1',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticketdisc`
--

DROP TABLE IF EXISTS `ticketdisc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketdisc` (
  `discId` int(5) NOT NULL AUTO_INCREMENT,
  `ticketId` int(5) NOT NULL,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `userId` int(5) NOT NULL DEFAULT '0',
  `discText` longtext NOT NULL,
  `discDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discIp` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`discId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticketnotes`
--

DROP TABLE IF EXISTS `ticketnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketnotes` (
  `noteId` int(5) NOT NULL AUTO_INCREMENT,
  `ticketId` int(5) NOT NULL,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `noteText` longtext NOT NULL,
  `noteDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `ticketId` int(5) NOT NULL AUTO_INCREMENT,
  `itemId` int(5) DEFAULT NULL,
  `supportCat` int(9) DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `purchaseCode` varchar(255) DEFAULT NULL,
  `purchaseDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `buyer` varchar(50) DEFAULT NULL,
  `licence` varchar(100) DEFAULT NULL,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `userId` int(5) NOT NULL DEFAULT '0',
  `assignedTo` int(5) NOT NULL DEFAULT '0',
  `ticketTitle` varchar(50) NOT NULL,
  `ticketDesc` longtext NOT NULL,
  `ticketPriority` varchar(255) NOT NULL DEFAULT 'Normal',
  `ticketStatus` varchar(255) NOT NULL DEFAULT 'New',
  `progress` varchar(50) DEFAULT NULL,
  `isPremium` int(1) NOT NULL DEFAULT '0',
  `ticketDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isClosed` int(1) NOT NULL DEFAULT '0',
  `dateClosed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ticketIp` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticketstatus`
--

DROP TABLE IF EXISTS `ticketstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketstatus` (
  `statusId` int(5) NOT NULL AUTO_INCREMENT,
  `statusTitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isActive` int(1) NOT NULL DEFAULT '1',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topicId` int(5) NOT NULL AUTO_INCREMENT,
  `hash` int(8) NOT NULL,
  `forumId` int(5) NOT NULL DEFAULT '0',
  `adminId` int(5) NOT NULL DEFAULT '0',
  `userId` int(5) NOT NULL DEFAULT '0',
  `sticky` int(1) NOT NULL DEFAULT '0',
  `discussionTitle` varchar(50) NOT NULL,
  `discussionText` longtext NOT NULL,
  `discussionDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topicIp` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`topicId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topicviews`
--

DROP TABLE IF EXISTS `topicviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topicviews` (
  `tviewId` int(5) NOT NULL AUTO_INCREMENT,
  `topicId` int(5) NOT NULL DEFAULT '0',
  `tviewDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tviewIp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`tviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploads` (
  `uploadId` int(5) NOT NULL AUTO_INCREMENT,
  `ticketId` int(5) NOT NULL,
  `adminId` int(5) NOT NULL DEFAULT '0',
  `userId` int(5) NOT NULL DEFAULT '0',
  `uploadUrl` varchar(255) NOT NULL,
  `uploadDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uploadIp` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uploadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastupdate` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsMessages`
--

DROP TABLE IF EXISTS `wsMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsMessages` (
  `name` varchar(20) NOT NULL,
  `msg` text NOT NULL,
  `posted` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-20 15:37:09
