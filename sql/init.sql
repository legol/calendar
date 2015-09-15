DROP TABLE IF EXISTS `account`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `account` (
  `UID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `self_describe` text,
  `registered_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint DEFAULT 0,
  PRIMARY KEY (`UID`),
  UNIQUE KEY `UID` (`UID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `display_name` (`display_name`),
  KEY `mobile_number` (`mobile_number`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;


DROP TABLE IF EXISTS `article`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `article` (
  `UID` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_at` bigint(20) DEFAULT NULL,
  `comment_at_directly` bigint(20) DEFAULT NULL, -- for speeding up, we can use this column to get all comments of a certain article
  `parts` mediumtext DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint DEFAULT 0,
  PRIMARY KEY (`article_id`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;


DROP TABLE IF EXISTS `part`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `part` (
  `UID` bigint(20) NOT NULL,
  `part_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `part_type` varchar(256) NOT NULL,
  `content` mediumtext NOT NULL,
  `location` point DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint DEFAULT 0,
  PRIMARY KEY (`part_id`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;


