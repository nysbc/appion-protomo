-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: leginondb
-- ------------------------------------------------------
-- Server version	5.1.73-log

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
-- Current Database: `leginondb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `leginondb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `leginondb`;

--
-- Table structure for table `AcquisitionImageData`
--

DROP TABLE IF EXISTS `AcquisitionImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `version` int(20) DEFAULT NULL,
  `tiltnumber` int(20) DEFAULT NULL,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|EMTargetData|emtarget` int(20) DEFAULT NULL,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|SpotWellMapData|spotmap` int(20) DEFAULT NULL,
  `REF|TiltSeriesData|tilt series` int(20) DEFAULT NULL,
  `REF|MoverParamsData|mover` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|EMTargetData|emtarget` (`REF|EMTargetData|emtarget`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|SpotWellMapData|spotmap` (`REF|SpotWellMapData|spotmap`),
  KEY `REF|TiltSeriesData|tilt series` (`REF|TiltSeriesData|tilt series`),
  KEY `REF|MoverParamsData|mover` (`REF|MoverParamsData|mover`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionImageData`
--

LOCK TABLES `AcquisitionImageData` WRITE;
/*!40000 ALTER TABLE `AcquisitionImageData` DISABLE KEYS */;
INSERT INTO `AcquisitionImageData` VALUES
( 1,'2016-06-30 15:08:31',1,1,1,1,'06jul12a_15gr_28sq_04hl_02em.mrc',NULL,NULL,'UploadImage','06jul12a_15gr_28sq_04hl_02em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 2,'2016-06-30 15:08:32',1,1,1,1,'06jul12a_15gr_28sq_11hl_03em.mrc',NULL,NULL,'UploadImage','06jul12a_15gr_28sq_11hl_03em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 3,'2016-06-30 15:08:33',1,1,1,1,'06jul12a_15gr_28sq_23hl_02em.mrc',NULL,NULL,'UploadImage','06jul12a_15gr_28sq_23hl_02em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 4,'2016-06-30 15:08:34',1,1,1,1,'06jul12a_15gr_28sq_23hl_04em.mrc',NULL,NULL,'UploadImage','06jul12a_15gr_28sq_23hl_04em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 5,'2016-06-30 15:08:35',1,1,1,1,'06jul12a_22gr_13sq_02hl_04em.mrc',NULL,NULL,'UploadImage','06jul12a_22gr_13sq_02hl_04em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 6,'2016-06-30 15:08:36',1,1,1,1,'06jul12a_22gr_13sq_03hl_05em.mrc',NULL,NULL,'UploadImage','06jul12a_22gr_13sq_03hl_05em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 7,'2016-06-30 15:08:37',1,1,1,1,'06jul12a_22gr_37sq_05hl_02em.mrc',NULL,NULL,'UploadImage','06jul12a_22gr_37sq_05hl_02em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 8,'2016-06-30 15:08:38',1,1,1,1,'06jul12a_22gr_37sq_05hl_05em.mrc',NULL,NULL,'UploadImage','06jul12a_22gr_37sq_05hl_05em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
( 9,'2016-06-30 15:08:39',1,1,1,1,'06jul12a_22gr_37sq_25hl_04em.mrc',NULL,NULL,'UploadImage','06jul12a_22gr_37sq_25hl_04em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'2016-06-30 15:08:40',1,1,1,1,'06jul12a_22gr_37sq_25hl_05em.mrc',NULL,NULL,'UploadImage','06jul12a_22gr_37sq_25hl_05em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'2016-06-30 15:08:41',1,1,1,1,'06jul12a_27gr_65sq_09hl_05em.mrc',NULL,NULL,'UploadImage','06jul12a_27gr_65sq_09hl_05em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,'2016-06-30 15:08:42',1,1,1,1,'06jul12a_35gr_63sq_12hl_04em.mrc',NULL,NULL,'UploadImage','06jul12a_35gr_63sq_12hl_04em',
NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `AcquisitionImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcquisitionSettingsData`
--

DROP TABLE IF EXISTS `AcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `correct image` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `move type` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AlignmentManagerSettingsData`
--

DROP TABLE IF EXISTS `AlignmentManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlignmentManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `reset a` tinyint(1) DEFAULT NULL,
  `reset z` tinyint(1) DEFAULT NULL,
  `reset xy` tinyint(1) DEFAULT NULL,
  `repeat time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApplicationData`
--

DROP TABLE IF EXISTS `ApplicationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApplicationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `version` int(20) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApplicationData`
--

LOCK TABLES `ApplicationData` WRITE;
/*!40000 ALTER TABLE `ApplicationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApplicationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamFixerSettingsData`
--

DROP TABLE IF EXISTS `BeamFixerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamFixerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` int(20) DEFAULT NULL,
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `override preset` int(20) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  `SEQ|correction presets` text,
  `shift step` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BeamTiltCalibratorSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `defocus beam tilt` double DEFAULT NULL,
  `first defocus` double DEFAULT NULL,
  `second defocus` double DEFAULT NULL,
  `stig beam tilt` double DEFAULT NULL,
  `stig delta` double DEFAULT NULL,
  `measure beam tilt` double DEFAULT NULL,
  `correct tilt` tinyint(1) DEFAULT NULL,
  `settling time` double DEFAULT NULL,
  `comafree beam tilt` double DEFAULT NULL,
  `comafree misalign` double DEFAULT NULL,
  `imageshift coma tilt` double DEFAULT NULL,
  `imageshift coma step` double DEFAULT NULL,
  `imageshift coma number` int(20) DEFAULT NULL,
  `imageshift coma repeat` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltCalibratorSettingsData`
--

LOCK TABLES `BeamTiltCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BeamTiltCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamTiltFixerSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltFixerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltFixerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `process target type` text,
  `park after list` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `correct image` tinyint(1) DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `save image` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `drift between` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT NULL,
  `save integer` tinyint(1) DEFAULT NULL,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `beam tilt` double DEFAULT NULL,
  `min threshold` double DEFAULT NULL,
  `max threshold` double DEFAULT NULL,
  `correct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltFixerSettingsData`
--

LOCK TABLES `BeamTiltFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltFixerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BeamTiltFixerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamTiltImagerSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltImagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltImagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `correct image` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `move type` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `beam tilt` double DEFAULT NULL,
  `beam tilt count` int(20) DEFAULT NULL,
  `sites` int(20) DEFAULT NULL,
  `startangle` double DEFAULT NULL,
  `tableau type` text,
  `tableau binning` int(20) DEFAULT NULL,
  `tableau split` int(20) DEFAULT NULL,
  `correlation type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BindingSpecData`
--

DROP TABLE IF EXISTS `BindingSpecData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BindingSpecData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event class string` text,
  `from node alias` text,
  `to node alias` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BindingSpecData`
--

LOCK TABLES `BindingSpecData` WRITE;
/*!40000 ALTER TABLE `BindingSpecData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BindingSpecData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlobFinderSettingsData`
--

DROP TABLE IF EXISTS `BlobFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlobFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `on` tinyint(1) DEFAULT NULL,
  `max` int(20) DEFAULT NULL,
  `min size` int(20) DEFAULT NULL,
  `max size` int(20) DEFAULT NULL,
  `min mean` double DEFAULT NULL,
  `min stdev` double DEFAULT NULL,
  `border` int(20) DEFAULT NULL,
  `max mean` double DEFAULT NULL,
  `max stdev` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CameraEMData`
--

DROP TABLE IF EXISTS `CameraEMData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CameraEMData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `system time` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `binned multiplier` double DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `exposure type` text,
  `exposure timestamp` double DEFAULT NULL,
  `inserted` tinyint(1) DEFAULT '0',
  `dump` tinyint(1) DEFAULT '0',
  `energy filtered` tinyint(1) DEFAULT '0',
  `energy filter` tinyint(1) DEFAULT '0',
  `energy filter width` double DEFAULT NULL,
  `nframes` int(20) DEFAULT NULL,
  `save frames` tinyint(1) DEFAULT '0',
  `align frames` tinyint(1) DEFAULT '0',
  `align filter` text,
  `frames name` text,
  `frame time` double DEFAULT NULL,
  `frame flip` tinyint(1) DEFAULT '0',
  `frame rotate` int(20) DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `temperature status` text,
  `readout delay` int(20) DEFAULT NULL,
  `gain index` int(20) DEFAULT NULL,
  `system corrected` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraEMData`
--

LOCK TABLES `CameraEMData` WRITE;
/*!40000 ALTER TABLE `CameraEMData` DISABLE KEYS */;
INSERT INTO `CameraEMData` VALUES (1,'2016-06-30 15:08:38',1,2,NULL,2048,2048,1,1,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `CameraEMData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CameraSettingsData`
--

DROP TABLE IF EXISTS `CameraSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CameraSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exposure time` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraSettingsData`
--

LOCK TABLES `CameraSettingsData` WRITE;
/*!40000 ALTER TABLE `CameraSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `CameraSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CenterTargetFilterSettingsData`
--

DROP TABLE IF EXISTS `CenterTargetFilterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CenterTargetFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `limit` int(20) DEFAULT NULL,
  `target type` text,
  `user check` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ClickTargetFinderSettingsData`
--

DROP TABLE IF EXISTS `ClickTargetFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClickTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wait for done` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `no resubmit` tinyint(1) DEFAULT NULL,
  `name` text,
  `queue` tinyint(1) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CorrectorSettingsData`
--

DROP TABLE IF EXISTS `CorrectorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorrectorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `despike size` int(20) DEFAULT NULL,
  `despike threshold` double DEFAULT NULL,
  `despike` tinyint(1) DEFAULT NULL,
  `n average` int(20) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `combine` text,
  `clip min` double DEFAULT NULL,
  `clip max` double DEFAULT NULL,
  `channels` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DTFinderSettingsData`
--

DROP TABLE IF EXISTS `DTFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DTFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` int(20) DEFAULT NULL,
  `wait for done` int(20) DEFAULT NULL,
  `ignore images` int(20) DEFAULT NULL,
  `queue` int(20) DEFAULT NULL,
  `user check` int(20) DEFAULT NULL,
  `queue drift` int(20) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  `image filename` text,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `edge` int(20) DEFAULT NULL,
  `edge type` text,
  `edge log size` int(20) DEFAULT NULL,
  `edge log sigma` double DEFAULT NULL,
  `edge absolute` int(20) DEFAULT NULL,
  `edge threshold` double DEFAULT NULL,
  `template type` text,
  `REF|LowPassFilterSettingsData|template lpf` int(20) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `threshold method` text,
  `blobs border` int(20) DEFAULT NULL,
  `blobs max` int(20) DEFAULT NULL,
  `blobs max size` int(20) DEFAULT NULL,
  `blobs min size` int(20) DEFAULT NULL,
  `lattice spacing` double DEFAULT NULL,
  `lattice tolerance` double DEFAULT NULL,
  `lattice hole radius` double DEFAULT NULL,
  `lattice zero thickness` double DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `ice max std` double DEFAULT NULL,
  `focus hole` text,
  `target template` int(20) DEFAULT NULL,
  `focus template thickness` int(20) DEFAULT NULL,
  `focus stats radius` int(20) DEFAULT NULL,
  `focus min mean thickness` double DEFAULT NULL,
  `focus max mean thickness` double DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `template diameter` int(20) DEFAULT NULL,
  `file diameter` int(20) DEFAULT NULL,
  `template filename` text,
  `template size` int(20) DEFAULT NULL,
  `correlation lpf` double DEFAULT NULL,
  `correlation type` text,
  `angle increment` double DEFAULT NULL,
  `rotate` int(20) DEFAULT NULL,
  `snr threshold` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DoseCalibratorSettingsData`
--

DROP TABLE IF EXISTS `DoseCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoseCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `beam diameter` double DEFAULT NULL,
  `scale factor` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoseCalibratorSettingsData`
--

LOCK TABLES `DoseCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `DoseCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DoseCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExposureFixerSettingsData`
--

DROP TABLE IF EXISTS `ExposureFixerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExposureFixerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEQ|correction presets` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `required dose` double DEFAULT NULL,
  `max exposure time` int(20) DEFAULT NULL,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `isdefault` (`isdefault`),
  KEY `override preset` (`override preset`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FocusSequenceData`
--

DROP TABLE IF EXISTS `FocusSequenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocusSequenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `node name` text,
  `SEQ|sequence` text,
  `isdefault` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FocusSettingData`
--

DROP TABLE IF EXISTS `FocusSettingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocusSettingData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `correlation type` text,
  `fit limit` double DEFAULT NULL,
  `focus method` text,
  `stig defocus min` double DEFAULT NULL,
  `drift threshold` double DEFAULT NULL,
  `stig correction` tinyint(1) DEFAULT NULL,
  `correction type` text,
  `check drift` tinyint(1) DEFAULT NULL,
  `preset name` text,
  `name` text,
  `stig defocus max` double DEFAULT NULL,
  `tilt` double DEFAULT NULL,
  `node name` text,
  `switch` tinyint(1) DEFAULT NULL,
  `delta min` double DEFAULT NULL,
  `delta max` double DEFAULT NULL,
  `reset defocus` tinyint(1) DEFAULT NULL,
  `isdefault` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FocuserSettingsData`
--

DROP TABLE IF EXISTS `FocuserSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocuserSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acquire final` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|preset order` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `melt time` double DEFAULT NULL,
  `name` text,
  `correct image` tinyint(1) DEFAULT NULL,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `wait for process` tinyint(1) DEFAULT NULL,
  `move type` text,
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `melt preset` text,
  `manual focus preset` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GonModelerSettingsData`
--

DROP TABLE IF EXISTS `GonModelerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GonModelerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `measure axis` text,
  `measure points` int(20) DEFAULT NULL,
  `measure interval` double DEFAULT NULL,
  `measure tolerance` double DEFAULT NULL,
  `model axis` text,
  `model magnification` int(20) DEFAULT NULL,
  `model terms` int(20) DEFAULT NULL,
  `model mag only` tinyint(1) DEFAULT NULL,
  `model tolerance` double DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GonModelerSettingsData`
--

LOCK TABLES `GonModelerSettingsData` WRITE;
/*!40000 ALTER TABLE `GonModelerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `GonModelerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridEntrySettingsData`
--

DROP TABLE IF EXISTS `GridEntrySettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridEntrySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `grid name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridEntrySettingsData`
--

LOCK TABLES `GridEntrySettingsData` WRITE;
/*!40000 ALTER TABLE `GridEntrySettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `GridEntrySettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupData`
--

DROP TABLE IF EXISTS `GroupData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `description` text,
  `REF|projectdata|privileges|privilege` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projectdata|privileges|privilege` (`REF|projectdata|privileges|privilege`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupData`
--

LOCK TABLES `GroupData` WRITE;
/*!40000 ALTER TABLE `GroupData` DISABLE KEYS */;
INSERT INTO `GroupData` VALUES
(1,'2015-09-28 19:56:33','administrators','Administrator Group - Have all the power on project and user management.',1),
(2,'2015-09-28 19:56:33','power users','Power User Group - view, edit, all the projects.',2),
(3,'2015-09-28 19:56:33','users','Normal User Group - view, edit all owned and shared projects.',3),
(4,'2015-09-28 19:56:33','guests','Guest Group - view own and share projects',4),
(5,'2015-09-28 19:56:33','disabled','Disabled Group - locked users',5);
/*!40000 ALTER TABLE `GroupData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HoleFinderSettingsData`
--

DROP TABLE IF EXISTS `HoleFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HoleFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lattice tolerance` double DEFAULT NULL,
  `blobs max` int(20) DEFAULT NULL,
  `lattice spacing` double DEFAULT NULL,
  `focus template thickness` tinyint(1) DEFAULT NULL,
  `skip` tinyint(1) DEFAULT NULL,
  `edge threshold` double DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|focus template` text,
  `edge log sigma` double DEFAULT NULL,
  `target template` tinyint(1) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `REF|LowPassFilterSettingsData|template lpf` int(20) DEFAULT NULL,
  `edge absolute` tinyint(1) DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `edge log size` int(20) DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `template type` text,
  `lattice hole radius` double DEFAULT NULL,
  `focus stats radius` int(20) DEFAULT NULL,
  `focus hole` text,
  `SEQ|acquisition template` text,
  `user check` tinyint(1) DEFAULT NULL,
  `edge type` text,
  `focus min mean thickness` double DEFAULT NULL,
  `blobs border` int(20) DEFAULT NULL,
  `SEQ|template rings` text,
  `ice max mean` double DEFAULT NULL,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `name` text,
  `focus max mean thickness` double DEFAULT NULL,
  `image filename` text,
  `ice max std` double DEFAULT NULL,
  `lattice zero thickness` double DEFAULT NULL,
  `blobs max size` int(20) DEFAULT NULL,
  `edge` tinyint(1) DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `queue` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `threshold method` text,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `blobs min size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ImageCommentData`
--

DROP TABLE IF EXISTS `ImageCommentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageCommentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageCommentData`
--

LOCK TABLES `ImageCommentData` WRITE;
/*!40000 ALTER TABLE `ImageCommentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageCommentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InstrumentData`
--

DROP TABLE IF EXISTS `InstrumentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InstrumentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `hostname` text,
  `type` text,
  `description` text,
  `scope` text,
  `camera` text,
  `camera size` int(11) DEFAULT NULL,
  `camera pixel size` double DEFAULT NULL,
  `cs` double DEFAULT NULL,
  `pixelmax` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InstrumentData`
--

LOCK TABLES `InstrumentData` WRITE;
/*!40000 ALTER TABLE `InstrumentData` DISABLE KEYS */;
INSERT INTO `InstrumentData` VALUES
(1,'2016-06-30 15:08:38','AppionTEM',   'appion',NULL,NULL,NULL,NULL,NULL,NULL,0.002,NULL,0),
(2,'2016-06-30 15:08:38','AppionCamera','appion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `InstrumentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JAHCFinderSettingsData`
--

DROP TABLE IF EXISTS `JAHCFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JAHCFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lattice tolerance` double DEFAULT NULL,
  `blobs max` int(20) DEFAULT NULL,
  `blobs border` int(20) DEFAULT NULL,
  `lattice spacing` double DEFAULT NULL,
  `focus template thickness` tinyint(1) DEFAULT NULL,
  `skip` tinyint(1) DEFAULT NULL,
  `edge threshold` double DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|focus template` text,
  `edge log sigma` double DEFAULT NULL,
  `target template` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `REF|LowPassFilterSettingsData|template lpf` int(20) DEFAULT NULL,
  `edge absolute` tinyint(1) DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `edge log size` int(20) DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `template type` text,
  `lattice hole radius` double DEFAULT NULL,
  `focus stats radius` int(20) DEFAULT NULL,
  `focus hole` text,
  `SEQ|acquisition template` text,
  `template diameter` int(20) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `edge type` text,
  `focus min mean thickness` double DEFAULT NULL,
  `file diameter` int(20) DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `name` text,
  `focus max mean thickness` double DEFAULT NULL,
  `image filename` text,
  `ice max std` double DEFAULT NULL,
  `lattice zero thickness` double DEFAULT NULL,
  `blobs max size` int(20) DEFAULT NULL,
  `queue` tinyint(1) DEFAULT NULL,
  `template filename` text,
  `edge` tinyint(1) DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `threshold method` text,
  `sort target` int(20) DEFAULT NULL,
  `blobs min size` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `lattice extend` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LaunchedApplicationData`
--

DROP TABLE IF EXISTS `LaunchedApplicationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LaunchedApplicationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  `SEQ|launchers` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LaunchedApplicationData`
--

LOCK TABLES `LaunchedApplicationData` WRITE;
/*!40000 ALTER TABLE `LaunchedApplicationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `LaunchedApplicationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LowPassFilterSettingsData`
--

DROP TABLE IF EXISTS `LowPassFilterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LowPassFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `on` tinyint(1) DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MatrixCalibratorSettingsData`
--

DROP TABLE IF EXISTS `MatrixCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MatrixCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `image shift tolerance` double DEFAULT NULL,
  `image shift shift fraction` double DEFAULT NULL,
  `image shift n average` int(20) DEFAULT NULL,
  `image shift interval` double DEFAULT NULL,
  `image shift current as base` tinyint(1) DEFAULT NULL,
  `SUBD|image shift base|x` double DEFAULT NULL,
  `SUBD|image shift base|y` double DEFAULT NULL,
  `beam shift tolerance` double DEFAULT NULL,
  `beam shift shift fraction` double DEFAULT NULL,
  `beam shift n average` int(20) DEFAULT NULL,
  `beam shift interval` double DEFAULT NULL,
  `beam shift current as base` tinyint(1) DEFAULT NULL,
  `SUBD|beam shift base|x` double DEFAULT NULL,
  `SUBD|beam shift base|y` double DEFAULT NULL,
  `stage position tolerance` double DEFAULT NULL,
  `stage position shift fraction` double DEFAULT NULL,
  `stage position n average` int(20) DEFAULT NULL,
  `stage position interval` double DEFAULT NULL,
  `stage position current as base` tinyint(1) DEFAULT NULL,
  `SUBD|stage position base|x` double DEFAULT NULL,
  `SUBD|stage position base|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MatrixCalibratorSettingsData`
--

LOCK TABLES `MatrixCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `MatrixCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MatrixCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicClickTargetFinderSettingsData`
--

DROP TABLE IF EXISTS `MosaicClickTargetFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicClickTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `mosaic image on tile change` tinyint(1) DEFAULT NULL,
  `REF|BlobFinderSettingsData|blobs` int(20) DEFAULT NULL,
  `no resubmit` tinyint(1) DEFAULT NULL,
  `name` text,
  `scale image` tinyint(1) DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `calibration parameter` text,
  `scale size` int(20) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `REF|LowPassFilterSettingsData|lpf` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `queue` tinyint(1) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `min region area` double DEFAULT NULL,
  `max region area` double DEFAULT NULL,
  `ve limit` double DEFAULT NULL,
  `raster spacing` double DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `watchdone` tinyint(1) DEFAULT NULL,
  `targetpreset` text,
  `raster overlap` double DEFAULT NULL,
  `min threshold` double DEFAULT NULL,
  `max threshold` double DEFAULT NULL,
  `raster calibration` text,
  `black on white` tinyint(1) DEFAULT NULL,
  `axis ratio` double DEFAULT NULL,
  `limit region in sections` tinyint(1) DEFAULT NULL,
  `section area` double DEFAULT NULL,
  ` max sections` int(20) DEFAULT NULL,
  `section display` tinyint(1) DEFAULT NULL,
  `max sections` int(20) DEFAULT NULL,
  `section axis ratio` double DEFAULT NULL,
  `find section options` text,
  `adjust section area` double DEFAULT NULL,
  `region from centers` tinyint(1) DEFAULT NULL,
  `create when done` tinyint(1) DEFAULT NULL,
  `create on tile change` text,
  `autofinder` tinyint(1) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|BlobFinderSettingsData|blobs` (`REF|BlobFinderSettingsData|blobs`),
  KEY `REF|LowPassFilterSettingsData|lpf` (`REF|LowPassFilterSettingsData|lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MosaicTargetMakerSettingsData`
--

DROP TABLE IF EXISTS `MosaicTargetMakerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicTargetMakerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `max targets` int(20) DEFAULT NULL,
  `name` text,
  `max size` int(20) DEFAULT NULL,
  `overlap` double DEFAULT NULL,
  `label` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `preset` text,
  `mosaic center` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ignore request` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NavigatorSettingsData`
--

DROP TABLE IF EXISTS `NavigatorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NavigatorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `move type` text,
  `check calibration` tinyint(1) DEFAULT NULL,
  `complete state` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `max error` double DEFAULT NULL,
  `cycle each` tinyint(1) DEFAULT NULL,
  `cycle after` tinyint(1) DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT NULL,
  `background readout` tinyint(1) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NavigatorSettingsData`
--

LOCK TABLES `NavigatorSettingsData` WRITE;
/*!40000 ALTER TABLE `NavigatorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `NavigatorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NodeSpecData`
--

DROP TABLE IF EXISTS `NodeSpecData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NodeSpecData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class string` text,
  `alias` text,
  `launcher alias` text,
  `SEQ|dependencies` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NodeSpecData`
--

LOCK TABLES `NodeSpecData` WRITE;
/*!40000 ALTER TABLE `NodeSpecData` DISABLE KEYS */;
/*!40000 ALTER TABLE `NodeSpecData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PixelSizeCalibrationData`
--

DROP TABLE IF EXISTS `PixelSizeCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PixelSizeCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PixelSizeCalibrationData`
--

LOCK TABLES `PixelSizeCalibrationData` WRITE;
/*!40000 ALTER TABLE `PixelSizeCalibrationData` DISABLE KEYS */;
INSERT INTO `PixelSizeCalibrationData` VALUES (1,'2016-06-30 15:08:01',1,1,2,50000,NULL,1.63e-10,'based on uploaded pixel size');
/*!40000 ALTER TABLE `PixelSizeCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PixelSizeCalibratorSettingsData`
--

DROP TABLE IF EXISTS `PixelSizeCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PixelSizeCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `correlation type` text,
  `lattice a` double DEFAULT NULL,
  `lattice b` double DEFAULT NULL,
  `lattice gamma` double DEFAULT NULL,
  `h1` int(20) DEFAULT NULL,
  `k1` int(20) DEFAULT NULL,
  `h2` int(20) DEFAULT NULL,
  `k2` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PixelSizeCalibratorSettingsData`
--

LOCK TABLES `PixelSizeCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `PixelSizeCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PixelSizeCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PresetData`
--

DROP TABLE IF EXISTS `PresetData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PresetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `name` text,
  `magnification` int(20) DEFAULT NULL,
  `spot size` int(20) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `defocus range min` double DEFAULT NULL,
  `defocus range max` double DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `removed` tinyint(1) DEFAULT '0',
  `hasref` tinyint(1) DEFAULT '0',
  `dose` double DEFAULT NULL,
  `film` tinyint(1) DEFAULT '0',
  `tem energy filter` tinyint(1) DEFAULT '0',
  `tem energy filter width` double DEFAULT NULL,
  `energy filter` tinyint(1) DEFAULT '0',
  `energy filter width` double DEFAULT NULL,
  `pre exposure` double DEFAULT NULL,
  `skip` tinyint(1) DEFAULT '0',
  `alt channel` tinyint(1) DEFAULT '0',
  `save frames` tinyint(1) DEFAULT '0',
  `frame time` double DEFAULT NULL,
  `align frames` tinyint(1) DEFAULT '0',
  `align filter` text,
  `readout delay` int(20) DEFAULT NULL,
  `probe mode` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PresetData`
--

LOCK TABLES `PresetData` WRITE;
/*!40000 ALTER TABLE `PresetData` DISABLE KEYS */;
INSERT INTO `PresetData` VALUES (1,'2016-06-30 15:08:38',1,1,2,NULL,'em',50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `PresetData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PresetsManagerSettingsData`
--

DROP TABLE IF EXISTS `PresetsManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PresetsManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `xy only` tinyint(1) DEFAULT NULL,
  `stage always` tinyint(1) DEFAULT NULL,
  `cycle` tinyint(1) DEFAULT NULL,
  `optimize cycle` tinyint(1) DEFAULT NULL,
  `mag only` tinyint(1) DEFAULT NULL,
  `apply offset` tinyint(1) DEFAULT NULL,
  `blank` tinyint(1) DEFAULT NULL,
  `smallsize` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RCTAcquisitionSettingsData`
--

DROP TABLE IF EXISTS `RCTAcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RCTAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wait time` double DEFAULT NULL,
  `SEQ|preset order` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `name` text,
  `correct image` tinyint(1) DEFAULT NULL,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `tilt2` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `tilt1` double DEFAULT NULL,
  `duplicate target type` text,
  `wait for process` tinyint(1) DEFAULT NULL,
  `move type` text,
  `minsize` double DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `maxsize` double DEFAULT NULL,
  `minstable` double DEFAULT NULL,
  `minperiod` double DEFAULT NULL,
  `stepsize` double DEFAULT NULL,
  `tilts` text,
  `process target type` text,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `blur` double DEFAULT NULL,
  `sharpen` double DEFAULT NULL,
  `drift threshold` double DEFAULT NULL,
  `drift preset` text,
  `save integer` int(20) DEFAULT NULL,
  `nsteps` int(20) DEFAULT NULL,
  `pause` double DEFAULT NULL,
  `medfilt` double DEFAULT NULL,
  `lowfilt` double DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RasterFinderSettingsData`
--

DROP TABLE IF EXISTS `RasterFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RasterFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `raster limit` int(20) DEFAULT NULL,
  `SEQ|acquisition constant template` text,
  `SEQ|focus constant template` text,
  `ice box size` double DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `focus convolve` tinyint(1) DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `name` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `acquisition convolve` tinyint(1) DEFAULT NULL,
  `image filename` text,
  `ice thickness` double DEFAULT NULL,
  `ice max std` double DEFAULT NULL,
  `SEQ|focus convolve template` text,
  `ice min mean` double DEFAULT NULL,
  `ice min std` double DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `raster spacing` int(20) DEFAULT NULL,
  `SEQ|acquisition convolve template` text,
  `queue` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `raster center on image` tinyint(1) DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `raster center x` int(20) DEFAULT NULL,
  `raster center y` int(20) DEFAULT NULL,
  `select polygon` tinyint(1) DEFAULT NULL,
  `publish polygon` tinyint(1) DEFAULT NULL,
  `raster spacing asymm` int(20) DEFAULT NULL,
  `raster limit asymm` int(20) DEFAULT NULL,
  `raster symmetric` int(20) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `raster preset` text,
  `raster movetype` text,
  `raster overlap` double DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RasterTargetFilterSettingsData`
--

DROP TABLE IF EXISTS `RasterTargetFilterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RasterTargetFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `raster spacing` double DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `raster preset` text,
  `raster movetype` text,
  `raster overlap` double DEFAULT NULL,
  `raster width` double DEFAULT NULL,
  `target type` text,
  `ellipse angle` double DEFAULT NULL,
  `ellipse a` double DEFAULT NULL,
  `ellipse b` double DEFAULT NULL,
  `user check` int(20) DEFAULT NULL,
  `raster offset` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RobotSettingsData`
--

DROP TABLE IF EXISTS `RobotSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RobotSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `column pressure threshold` double DEFAULT NULL,
  `default Z position` double DEFAULT NULL,
  `simulate` tinyint(1) DEFAULT NULL,
  `turbo on` tinyint(1) DEFAULT NULL,
  `grid clear wait` tinyint(1) DEFAULT NULL,
  `pause` tinyint(1) DEFAULT NULL,
  `grid tray` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RobotSettingsData`
--

LOCK TABLES `RobotSettingsData` WRITE;
/*!40000 ALTER TABLE `RobotSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `RobotSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScopeEMData`
--

DROP TABLE IF EXISTS `ScopeEMData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScopeEMData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `system time` double DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `spot size` int(20) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `focus` double DEFAULT NULL,
  `reset defocus` int(20) DEFAULT NULL,
  `screen current` double DEFAULT NULL,
  `beam blank` text,
  `corrected stage position` int(20) DEFAULT NULL,
  `SUBD|stage position|a` double DEFAULT NULL,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  `holder type` text,
  `holder status` text,
  `stage status` text,
  `vacuum status` text,
  `column valves` text,
  `column pressure` double DEFAULT NULL,
  `turbo pump` text,
  `high tension` int(20) DEFAULT NULL,
  `main screen position` text,
  `main screen magnification` int(20) DEFAULT NULL,
  `small screen position` text,
  `low dose` text,
  `low dose mode` text,
  `film stock` int(20) DEFAULT NULL,
  `film exposure number` int(20) DEFAULT NULL,
  `pre film exposure` tinyint(1) DEFAULT '0',
  `post film exposure` tinyint(1) DEFAULT '0',
  `film exposure` tinyint(1) DEFAULT '0',
  `film exposure type` text,
  `film exposure time` double DEFAULT NULL,
  `film manual exposure time` double DEFAULT NULL,
  `film automatic exposure time` double DEFAULT NULL,
  `film text` text,
  `film user code` text,
  `film date type` text,
  `objective current` double DEFAULT NULL,
  `exp wait time` double DEFAULT NULL,
  `tem energy filtered` tinyint(1) DEFAULT '0',
  `tem energy filter` tinyint(1) DEFAULT '0',
  `tem energy filter width` double DEFAULT NULL,
  `probe mode` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScopeEMData`
--

LOCK TABLES `ScopeEMData` WRITE;
/*!40000 ALTER TABLE `ScopeEMData` DISABLE KEYS */;
INSERT INTO `ScopeEMData` VALUES (1,'2016-06-30 15:08:38',1,1,NULL,50000,NULL,NULL,-1.8e-06,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,120000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ScopeEMData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SessionData`
--

DROP TABLE IF EXISTS `SessionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SessionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `REF|UserData|user` int(20) DEFAULT NULL,
  `image path` text,
  `comment` text,
  `hidden` tinyint(4) DEFAULT NULL,
  `REF|InstrumentData|instrument` int(20) DEFAULT NULL,
  `REF|GridHolderData|holder` int(20) DEFAULT NULL,
  `frame path` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|UserData|user` (`REF|UserData|user`),
  KEY `REF|GridHolderData|holder` (`REF|GridHolderData|holder`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionData`
--

LOCK TABLES `SessionData` WRITE;
/*!40000 ALTER TABLE `SessionData` DISABLE KEYS */;
INSERT INTO `SessionData` VALUES (1,'2016-06-30 15:08:38','06jul12a',NULL,'/emg/data/leginon/06jul12a/rawdata','06jul12a groEL magic data set',0,1,NULL,'/emg/data/frames/06jul12a/rawdata');
/*!40000 ALTER TABLE `SessionData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SetupWizardSettingsData`
--

DROP TABLE IF EXISTS `SetupWizardSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SetupWizardSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `session type` text,
  `selected session` text,
  `limit` tinyint(1) DEFAULT NULL,
  `n limit` int(20) DEFAULT NULL,
  `connect` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetupWizardSettingsData`
--

LOCK TABLES `SetupWizardSettingsData` WRITE;
/*!40000 ALTER TABLE `SetupWizardSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `SetupWizardSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltRotateSettingsData`
--

DROP TABLE IF EXISTS `TiltRotateSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltRotateSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `tilts` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltRotateSettingsData`
--

LOCK TABLES `TiltRotateSettingsData` WRITE;
/*!40000 ALTER TABLE `TiltRotateSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltRotateSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TomographySettingsData`
--

DROP TABLE IF EXISTS `TomographySettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TomographySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `display image` tinyint(1) DEFAULT NULL,
  `SEQ|registration preset order` text,
  `wait time` double DEFAULT NULL,
  `SEQ|preset order` text,
  `tilt max` double DEFAULT NULL,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `cosine exposure` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `tilt min` double DEFAULT NULL,
  `thickness value` double DEFAULT NULL,
  `run buffer cycle` tinyint(1) DEFAULT NULL,
  `correct image` tinyint(1) DEFAULT NULL,
  `move type` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `name` text,
  `align zero loss peak` tinyint(1) DEFAULT NULL,
  `xcf bin` int(20) DEFAULT NULL,
  `duplicate target type` text,
  `wait for process` tinyint(1) DEFAULT NULL,
  `tilt start` double DEFAULT NULL,
  `tilt step` double DEFAULT NULL,
  `dose` double DEFAULT NULL,
  `min exposure` double DEFAULT NULL,
  `max exposure` double DEFAULT NULL,
  `process target type` text,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `equally sloped` tinyint(1) DEFAULT NULL,
  `equally sloped n` int(20) DEFAULT NULL,
  `measure dose` tinyint(1) DEFAULT NULL,
  `mean threshold` double DEFAULT NULL,
  `collection threshold` double DEFAULT NULL,
  `tilt pause time` double DEFAULT NULL,
  `measure defocus` tinyint(1) DEFAULT NULL,
  `integer` tinyint(1) DEFAULT NULL,
  `intscale` double DEFAULT NULL,
  `pausegroup` tinyint(1) DEFAULT NULL,
  `save integer` int(20) DEFAULT NULL,
  `model mag` text,
  `z0 error` double DEFAULT NULL,
  `phi` double DEFAULT NULL,
  `offset` double DEFAULT NULL,
  `fixed model` int(20) DEFAULT NULL,
  `offset2` double DEFAULT NULL,
  `phi2` double DEFAULT NULL,
  `use lpf` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `use wiener` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wiener max tilt` double DEFAULT NULL,
  `use tilt` int(20) DEFAULT NULL,
  `fit data points` int(20) DEFAULT NULL,
  `taper size` int(20) DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `z0` double DEFAULT NULL,
  `use z0` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TomographySettingsData`
--

LOCK TABLES `TomographySettingsData` WRITE;
/*!40000 ALTER TABLE `TomographySettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TomographySettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransformManagerSettingsData`
--

DROP TABLE IF EXISTS `TransformManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransformManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `registration` text,
  `threshold` double DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `timeout` int(20) DEFAULT NULL,
  `min mag` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransformManagerSettingsData`
--

LOCK TABLES `TransformManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `TransformManagerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransformManagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserData`
--

DROP TABLE IF EXISTS `UserData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(24) DEFAULT NULL,
  `firstname` varchar(24) DEFAULT NULL,
  `lastname` varchar(24) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `REF|GroupData|group` int(20) DEFAULT NULL,
  `noleginon` tinyint(1) DEFAULT NULL,
  `advanced` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  UNIQUE KEY `username` (`username`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|GroupData|group` (`REF|GroupData|group`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserData`
--

LOCK TABLES `UserData` WRITE;
/*!40000 ALTER TABLE `UserData` DISABLE KEYS */;
INSERT INTO `UserData` VALUES (1,'2015-09-28 19:56:33','administrator','Appion-Leginon','Administrator','80692cde4cd41c7aeaac4d86a4ad90c3','vossman77@yahoo.com',1,NULL,NULL),(2,'2015-09-28 19:56:33','anonymous','Public','User','294de3557d9d00b3d2d8a1e6aab028cf','vossman77@yahoo.com',4,NULL,NULL);
/*!40000 ALTER TABLE `UserData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ViewerImageStatus`
--

DROP TABLE IF EXISTS `ViewerImageStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViewerImageStatus` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(11) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(11) DEFAULT NULL,
  `status` enum('hidden','visible','exemplar','trash') DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViewerImageStatus`
--

LOCK TABLES `ViewerImageStatus` WRITE;
/*!40000 ALTER TABLE `ViewerImageStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ViewerImageStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_cache`
--

DROP TABLE IF EXISTS `viewer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_cache` (
  `session` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_cache`
--

LOCK TABLES `viewer_cache` WRITE;
/*!40000 ALTER TABLE `viewer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_comment`
--

DROP TABLE IF EXISTS `viewer_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sessionId` int(11) DEFAULT NULL,
  `type` enum('rt','post') DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `name` text,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `sessionId` (`sessionId`),
  KEY `imageId` (`imageId`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_comment`
--

LOCK TABLES `viewer_comment` WRITE;
/*!40000 ALTER TABLE `viewer_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_del_image`
--

DROP TABLE IF EXISTS `viewer_del_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_del_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `status` enum('deleted','marked') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `username` (`username`),
  KEY `sessionId` (`sessionId`),
  KEY `imageId` (`imageId`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_del_image`
--

LOCK TABLES `viewer_del_image` WRITE;
/*!40000 ALTER TABLE `viewer_del_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_del_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_login`
--

DROP TABLE IF EXISTS `viewer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `privilege` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_login`
--

LOCK TABLES `viewer_login` WRITE;
/*!40000 ALTER TABLE `viewer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_pref_image`
--

DROP TABLE IF EXISTS `viewer_pref_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_pref_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `status` enum('hidden','visible','exemplar') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `username` (`username`),
  KEY `sessionId` (`sessionId`),
  KEY `imageId` (`imageId`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_pref_image`
--

LOCK TABLES `viewer_pref_image` WRITE;
/*!40000 ALTER TABLE `viewer_pref_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_pref_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_update`
--

DROP TABLE IF EXISTS `viewer_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('N','Y') DEFAULT NULL,
  `name` text,
  `update` text,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_update`
--

LOCK TABLES `viewer_update` WRITE;
/*!40000 ALTER TABLE `viewer_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_users`
--

DROP TABLE IF EXISTS `viewer_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `firstname` text,
  `lastname` text,
  `title` text,
  `institution` text,
  `dept` text,
  `address` text,
  `city` text,
  `statecountry` text,
  `zip` text,
  `phone` text,
  `fax` text,
  `email` text,
  `url` text,
  PRIMARY KEY (`userId`),
  KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_users`
--

LOCK TABLES `viewer_users` WRITE;
/*!40000 ALTER TABLE `viewer_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `projectdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projectdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `projectdb`;

--
-- Table structure for table `boxtypes`
--

DROP TABLE IF EXISTS `boxtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxtypes` (
  `boxtypeId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `image_tiny` varchar(100) NOT NULL,
  PRIMARY KEY (`boxtypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxtypes`
--

LOCK TABLES `boxtypes` WRITE;
/*!40000 ALTER TABLE `boxtypes` DISABLE KEYS */;
INSERT INTO `boxtypes` VALUES (1,'2003-11-17 13:55:35','cryo grid box','grid_box_cryo.jpg','grid_box_cryo_tiny.jpg'),(2,'2003-11-17 13:55:47','grid box','grid_box.jpg','grid_box_tiny.jpg'),(3,'2003-11-17 13:55:56','tray','tray.png','tray_tiny.png');
/*!40000 ALTER TABLE `boxtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmauth`
--

DROP TABLE IF EXISTS `confirmauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmauth` (
  `mdhash` longtext NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmauth`
--

LOCK TABLES `confirmauth` WRITE;
/*!40000 ALTER TABLE `confirmauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `confirmauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataStatusReport`
--

DROP TABLE IF EXISTS `dataStatusReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataStatusReport` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appion_project` int(11) NOT NULL,
  `processed_session` int(11) NOT NULL,
  `processed_run` int(11) NOT NULL,
  `last_exp_runtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ace_run` int(11) NOT NULL,
  `ace2_run` int(11) NOT NULL,
  `ctfind_run` int(11) NOT NULL,
  `ace_processed_image` int(11) NOT NULL,
  `particle_selection` int(11) NOT NULL,
  `dog_picker` int(11) NOT NULL,
  `manual_picker` int(11) NOT NULL,
  `tilt_picker` int(11) NOT NULL,
  `template_picker` int(11) NOT NULL,
  `selected_particle` bigint(20) NOT NULL,
  `classification` int(11) NOT NULL,
  `classes` int(11) NOT NULL,
  `classified_particles` bigint(20) NOT NULL,
  `RCT_Models` int(11) NOT NULL,
  `tomogram` int(11) NOT NULL,
  `stack` int(11) NOT NULL,
  `stack_particle` bigint(20) NOT NULL,
  `3D_recon` int(11) NOT NULL,
  `recon_iteration` int(11) NOT NULL,
  `classified_particle` bigint(20) NOT NULL,
  `template` int(11) NOT NULL,
  `initial_model` int(11) NOT NULL,
  `first_exp_runtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataStatusReport`
--

LOCK TABLES `dataStatusReport` WRITE;
/*!40000 ALTER TABLE `dataStatusReport` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataStatusReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridboxes`
--

DROP TABLE IF EXISTS `gridboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gridboxes` (
  `gridboxId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` text,
  `boxtypeId` int(11) DEFAULT '0',
  `container` text,
  PRIMARY KEY (`gridboxId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridboxes`
--

LOCK TABLES `gridboxes` WRITE;
/*!40000 ALTER TABLE `gridboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridlocations`
--

DROP TABLE IF EXISTS `gridlocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gridlocations` (
  `gridlocationId` int(11) NOT NULL AUTO_INCREMENT,
  `gridboxId` int(11) DEFAULT NULL,
  `gridId` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  PRIMARY KEY (`gridlocationId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridlocations`
--

LOCK TABLES `gridlocations` WRITE;
/*!40000 ALTER TABLE `gridlocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridlocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grids`
--

DROP TABLE IF EXISTS `grids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grids` (
  `gridId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` varchar(255) DEFAULT NULL,
  `prepdate` timestamp NULL DEFAULT NULL,
  `specimenId` int(11) DEFAULT '0',
  `substrate` varchar(100) DEFAULT NULL,
  `preparation` varchar(100) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `concentration` double DEFAULT NULL,
  `fraction` text,
  `note` text,
  `sort` text,
  `boxId` int(11) DEFAULT NULL,
  `projectId` int(20) DEFAULT NULL,
  `specimen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gridId`),
  KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grids`
--

LOCK TABLES `grids` WRITE;
/*!40000 ALTER TABLE `grids` DISABLE KEYS */;
/*!40000 ALTER TABLE `grids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `install`
--

DROP TABLE IF EXISTS `install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `install` (
  `key` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `install`
--

LOCK TABLES `install` WRITE;
/*!40000 ALTER TABLE `install` DISABLE KEYS */;
INSERT INTO `install` VALUES ('settable','1'),('version','3.3.0'),('revision','18367');
/*!40000 ALTER TABLE `install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  `groups` tinyint(4) NOT NULL,
  `users` tinyint(4) NOT NULL,
  `projects` tinyint(4) NOT NULL,
  `projectowners` tinyint(4) NOT NULL,
  `shareexperiments` tinyint(4) NOT NULL,
  `data` tinyint(4) NOT NULL,
  `gridboxes` tinyint(4) NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'2015-09-28 19:56:33','All at administration level',4,4,4,4,4,4,4),(2,'2015-09-28 19:56:33','View all but administrate owned',3,3,3,3,3,3,4),(3,'2015-09-28 19:56:33','Administrate/view only  owned projects and view shared experiments',1,2,2,2,2,2,1),(4,'2015-09-28 19:56:33','View owned projects and shared experiments',1,1,1,1,1,1,1),(5,'2015-09-28 19:56:33','No privilege for anything',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processingdb`
--

DROP TABLE IF EXISTS `processingdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processingdb` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(20) DEFAULT NULL,
  `appiondb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projects|project` (`REF|projects|project`),
  KEY `appiondb` (`appiondb`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processingdb`
--

LOCK TABLES `processingdb` WRITE;
/*!40000 ALTER TABLE `processingdb` DISABLE KEYS */;
INSERT INTO `processingdb` VALUES (1,'2015-10-05 17:02:51',1,'ap1');
/*!40000 ALTER TABLE `processingdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectexperiments`
--

DROP TABLE IF EXISTS `projectexperiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectexperiments` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(11) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `project` (`REF|projects|project`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `session` (`REF|leginondata|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectexperiments`
--

LOCK TABLES `projectexperiments` WRITE;
/*!40000 ALTER TABLE `projectexperiments` DISABLE KEYS */;
INSERT INTO `projectexperiments` VALUES (1,'2016-06-30 15:08:38',1,1);
/*!40000 ALTER TABLE `projectexperiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectowners`
--

DROP TABLE IF EXISTS `projectowners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectowners` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(16) NOT NULL,
  `REF|leginondata|UserData|user` int(16) NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projects|project` (`REF|projects|project`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectowners`
--

LOCK TABLES `projectowners` WRITE;
/*!40000 ALTER TABLE `projectowners` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectowners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `category` text NOT NULL,
  `funding` text NOT NULL,
  `leginondb` varchar(50) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'2015-10-05 17:02:16','GroEL','Docker Test #1 GroEL','','','',NULL,0),(2,'2015-10-05 17:02:16','CTF','Docker Test #2 CTF','','','',NULL,0),(3,'2015-10-05 17:02:16','Artemia','Docker Test #3 Artemia Ribosomes','','','',NULL,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shareexperiments`
--

DROP TABLE IF EXISTS `shareexperiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shareexperiments` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|experiment` int(11) NOT NULL DEFAULT '0',
  `REF|leginondata|UserData|user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|experiment` (`REF|leginondata|SessionData|experiment`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shareexperiments`
--

LOCK TABLES `shareexperiments` WRITE;
/*!40000 ALTER TABLE `shareexperiments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shareexperiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetails` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|UserData|user` int(20) DEFAULT NULL,
  `title` text NOT NULL,
  `institution` text NOT NULL,
  `dept` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `statecountry` text NOT NULL,
  `zip` text NOT NULL,
  `phone` text NOT NULL,
  `fax` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ap1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ap1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ap1`;

--
-- Table structure for table `Ap3dDensityData`
--

DROP TABLE IF EXISTS `Ap3dDensityData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ap3dDensityData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `boxsize` int(20) DEFAULT NULL,
  `mask` int(20) DEFAULT NULL,
  `imask` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `lowpass` double DEFAULT NULL,
  `highpass` double DEFAULT NULL,
  `maxfilt` double DEFAULT NULL,
  `resolution` double DEFAULT NULL,
  `rmeasure` double DEFAULT NULL,
  `handflip` tinyint(1) DEFAULT NULL,
  `norm` tinyint(1) DEFAULT NULL,
  `invert` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `md5sum` text,
  `pdbid` text,
  `emdbid` text,
  `eman` text,
  `description` text,
  `ampName` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApPathData|ampPath` int(20) DEFAULT NULL,
  `REF|ApSymmetryData|symmetry` int(20) DEFAULT NULL,
  `REF|ApRefineIterData|refineIter` int(20) DEFAULT NULL,
  `REF|ApHipIterData|hipIter` int(20) DEFAULT NULL,
  `REF|ApRctRunData|rctrun` int(20) DEFAULT NULL,
  `REF|ApOtrRunData|otrrun` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `hard` int(20) DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `maxjump` double DEFAULT NULL,
  `mass` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `handflip` (`handflip`),
  KEY `norm` (`norm`),
  KEY `invert` (`invert`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApPathData|ampPath` (`REF|ApPathData|ampPath`),
  KEY `REF|ApSymmetryData|symmetry` (`REF|ApSymmetryData|symmetry`),
  KEY `REF|ApRefineIterData|refineIter` (`REF|ApRefineIterData|refineIter`),
  KEY `REF|ApHipIterData|hipIter` (`REF|ApHipIterData|hipIter`),
  KEY `REF|ApRctRunData|rctrun` (`REF|ApRctRunData|rctrun`),
  KEY `REF|ApOtrRunData|otrrun` (`REF|ApOtrRunData|otrrun`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ap3dDensityData`
--

LOCK TABLES `Ap3dDensityData` WRITE;
/*!40000 ALTER TABLE `Ap3dDensityData` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ap3dDensityData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAce2ParamsData`
--

DROP TABLE IF EXISTS `ApAce2ParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAce2ParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bin` int(20) DEFAULT NULL,
  `reprocess` double DEFAULT NULL,
  `cs` double DEFAULT NULL,
  `stig` tinyint(1) DEFAULT NULL,
  `min_defocus` double DEFAULT NULL,
  `max_defocus` double DEFAULT NULL,
  `edge_thresh` double DEFAULT NULL,
  `edge_blur` double DEFAULT NULL,
  `rot_blur` double DEFAULT NULL,
  `refine2d` tinyint(1) DEFAULT NULL,
  `onepass` double DEFAULT NULL,
  `zeropass` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `stig` (`stig`),
  KEY `refine2d` (`refine2d`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAce2ParamsData`
--

LOCK TABLES `ApAce2ParamsData` WRITE;
/*!40000 ALTER TABLE `ApAce2ParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAce2ParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAceParamsData`
--

DROP TABLE IF EXISTS `ApAceParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAceParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `display` int(20) DEFAULT NULL,
  `stig` int(20) DEFAULT NULL,
  `medium` text,
  `df_override` double DEFAULT NULL,
  `edgethcarbon` double DEFAULT NULL,
  `edgethice` double DEFAULT NULL,
  `pfcarbon` double DEFAULT NULL,
  `pfice` double DEFAULT NULL,
  `overlap` int(20) DEFAULT NULL,
  `fieldsize` int(20) DEFAULT NULL,
  `resamplefr` double DEFAULT NULL,
  `drange` int(20) DEFAULT NULL,
  `reprocess` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAceParamsData`
--

LOCK TABLES `ApAceParamsData` WRITE;
/*!40000 ALTER TABLE `ApAceParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAceParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAceRunData`
--

DROP TABLE IF EXISTS `ApAceRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAceRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApAceParamsData|aceparams` int(20) DEFAULT NULL,
  `REF|ApCtfTiltParamsData|ctftilt_params` int(20) DEFAULT NULL,
  `REF|ApAce2ParamsData|ace2_params` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `name` text,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApAceParamsData|aceparams` (`REF|ApAceParamsData|aceparams`),
  KEY `REF|ApCtfTiltParamsData|ctftilt_params` (`REF|ApCtfTiltParamsData|ctftilt_params`),
  KEY `REF|ApAce2ParamsData|ace2_params` (`REF|ApAce2ParamsData|ace2_params`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAceRunData`
--

LOCK TABLES `ApAceRunData` WRITE;
/*!40000 ALTER TABLE `ApAceRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAceRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAffinityPropagationClusterParamsData`
--

DROP TABLE IF EXISTS `ApAffinityPropagationClusterParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAffinityPropagationClusterParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mask_diam` double DEFAULT NULL,
  `preference_type` text,
  `run_seconds` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAffinityPropagationClusterParamsData`
--

LOCK TABLES `ApAffinityPropagationClusterParamsData` WRITE;
/*!40000 ALTER TABLE `ApAffinityPropagationClusterParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAffinityPropagationClusterParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAlignAnalysisRunData`
--

DROP TABLE IF EXISTS `ApAlignAnalysisRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAlignAnalysisRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApCoranRunData|coranrun` int(20) DEFAULT NULL,
  `REF|ApImagicAlignAnalysisData|imagicMSArun` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApCoranRunData|coranrun` (`REF|ApCoranRunData|coranrun`),
  KEY `REF|ApImagicAlignAnalysisData|imagicMSArun` (`REF|ApImagicAlignAnalysisData|imagicMSArun`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAlignAnalysisRunData`
--

LOCK TABLES `ApAlignAnalysisRunData` WRITE;
/*!40000 ALTER TABLE `ApAlignAnalysisRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAlignAnalysisRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAlignParticleData`
--

DROP TABLE IF EXISTS `ApAlignParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAlignParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `partnum` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  `REF|ApStackParticleData|stackpart` int(20) DEFAULT NULL,
  `xshift` double DEFAULT NULL,
  `yshift` double DEFAULT NULL,
  `rotation` double DEFAULT NULL,
  `mirror` tinyint(1) DEFAULT NULL,
  `spread` double DEFAULT NULL,
  `correlation` double DEFAULT NULL,
  `score` double DEFAULT NULL,
  `REF|ApAlignReferenceData|ref` int(20) DEFAULT NULL,
  `bad` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`),
  KEY `REF|ApStackParticleData|stackpart` (`REF|ApStackParticleData|stackpart`),
  KEY `mirror` (`mirror`),
  KEY `REF|ApAlignReferenceData|ref` (`REF|ApAlignReferenceData|ref`),
  KEY `bad` (`bad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAlignParticleData`
--

LOCK TABLES `ApAlignParticleData` WRITE;
/*!40000 ALTER TABLE `ApAlignParticleData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAlignParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAlignReferenceData`
--

DROP TABLE IF EXISTS `ApAlignReferenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAlignReferenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `refnum` int(20) DEFAULT NULL,
  `iteration` int(20) DEFAULT NULL,
  `mrcfile` text,
  `varmrcfile` text,
  `imagicfile` text,
  `ssnr_resolution` double DEFAULT NULL,
  `REF|ApAlignRunData|alignrun` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApTemplateImageData|template` int(20) DEFAULT NULL,
  `REF|ApTemplateStackData|templatestack` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApAlignRunData|alignrun` (`REF|ApAlignRunData|alignrun`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApTemplateImageData|template` (`REF|ApTemplateImageData|template`),
  KEY `REF|ApTemplateStackData|templatestack` (`REF|ApTemplateStackData|templatestack`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAlignReferenceData`
--

LOCK TABLES `ApAlignReferenceData` WRITE;
/*!40000 ALTER TABLE `ApAlignReferenceData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAlignReferenceData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAlignRunData`
--

DROP TABLE IF EXISTS `ApAlignRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAlignRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `bin` int(20) DEFAULT NULL,
  `hp_filt` int(20) DEFAULT NULL,
  `lp_filt` int(20) DEFAULT NULL,
  `description` text,
  `REF|ApSpiderNoRefRunData|norefrun` int(20) DEFAULT NULL,
  `REF|ApRefBasedRunData|refbasedrun` int(20) DEFAULT NULL,
  `REF|ApMaxLikeRunData|maxlikerun` int(20) DEFAULT NULL,
  `REF|ApSparxISACRunData|isacrun` int(20) DEFAULT NULL,
  `REF|ApEMANRefine2dRunData|refine2drun` int(20) DEFAULT NULL,
  `REF|ApMultiRefAlignRunData|imagicMRA` int(20) DEFAULT NULL,
  `REF|ApEdIterRunData|editerrun` int(20) DEFAULT NULL,
  `REF|ApTopolRepRunData|topreprun` int(20) DEFAULT NULL,
  `REF|ApCL2DRunData|cl2drun` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSpiderNoRefRunData|norefrun` (`REF|ApSpiderNoRefRunData|norefrun`),
  KEY `REF|ApRefBasedRunData|refbasedrun` (`REF|ApRefBasedRunData|refbasedrun`),
  KEY `REF|ApMaxLikeRunData|maxlikerun` (`REF|ApMaxLikeRunData|maxlikerun`),
  KEY `REF|ApSparxISACRunData|isacrun` (`REF|ApSparxISACRunData|isacrun`),
  KEY `REF|ApEMANRefine2dRunData|refine2drun` (`REF|ApEMANRefine2dRunData|refine2drun`),
  KEY `REF|ApMultiRefAlignRunData|imagicMRA` (`REF|ApMultiRefAlignRunData|imagicMRA`),
  KEY `REF|ApEdIterRunData|editerrun` (`REF|ApEdIterRunData|editerrun`),
  KEY `REF|ApTopolRepRunData|topreprun` (`REF|ApTopolRepRunData|topreprun`),
  KEY `REF|ApCL2DRunData|cl2drun` (`REF|ApCL2DRunData|cl2drun`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAlignRunData`
--

LOCK TABLES `ApAlignRunData` WRITE;
/*!40000 ALTER TABLE `ApAlignRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAlignRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAlignStackData`
--

DROP TABLE IF EXISTS `ApAlignStackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAlignStackData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `imagicfile` text,
  `avgmrcfile` text,
  `refstackfile` text,
  `iteration` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApAlignRunData|alignrun` int(20) DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `num_particles` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApAlignRunData|alignrun` (`REF|ApAlignRunData|alignrun`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAlignStackData`
--

LOCK TABLES `ApAlignStackData` WRITE;
/*!40000 ALTER TABLE `ApAlignStackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAlignStackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAppionJobData`
--

DROP TABLE IF EXISTS `ApAppionJobData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAppionJobData` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `name` text,
  `jobtype` text,
  `REF|ApPathData|dmfpath` int(20) DEFAULT NULL,
  `REF|ApPathData|clusterpath` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `cluster` text,
  `clusterjobid` int(20) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `user` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|clusterpath` (`REF|ApPathData|clusterpath`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|dmfpath` (`REF|ApPathData|dmfpath`),
  KEY `clusterjobid` (`clusterjobid`),
  KEY `status` (`status`),
  KEY `jobtype_10` (`jobtype`(10))
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApAssessmentData`
--

DROP TABLE IF EXISTS `ApAssessmentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAssessmentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApAssessmentRunData|assessmentrun` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `selectionkeep` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApAssessmentRunData|assessmentrun` (`REF|ApAssessmentRunData|assessmentrun`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAssessmentData`
--

LOCK TABLES `ApAssessmentData` WRITE;
/*!40000 ALTER TABLE `ApAssessmentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAssessmentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApAssessmentRunData`
--

DROP TABLE IF EXISTS `ApAssessmentRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApAssessmentRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApAssessmentRunData`
--

LOCK TABLES `ApAssessmentRunData` WRITE;
/*!40000 ALTER TABLE `ApAssessmentRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApAssessmentRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApBootstrappedAngularReconstitutionParamsData`
--

DROP TABLE IF EXISTS `ApBootstrappedAngularReconstitutionParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApBootstrappedAngularReconstitutionParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num_averages` int(20) DEFAULT NULL,
  `num_volumes` int(20) DEFAULT NULL,
  `REF|ApSymmetryData|symmetry` int(20) DEFAULT NULL,
  `num_alignment_refs` int(20) DEFAULT NULL,
  `angular_increment` int(20) DEFAULT NULL,
  `keep_ordered` int(20) DEFAULT NULL,
  `threed_lpfilt` int(20) DEFAULT NULL,
  `hamming_window` int(20) DEFAULT NULL,
  `non_weighted_sequence` tinyint(1) DEFAULT NULL,
  `PCA` tinyint(1) DEFAULT NULL,
  `numeigens` int(20) DEFAULT NULL,
  `preference_type` text,
  `prealign_avgs` tinyint(1) DEFAULT NULL,
  `scale` tinyint(1) DEFAULT NULL,
  `recalculate_volumes` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSymmetryData|symmetry` (`REF|ApSymmetryData|symmetry`),
  KEY `non_weighted_sequence` (`non_weighted_sequence`),
  KEY `PCA` (`PCA`),
  KEY `prealign_avgs` (`prealign_avgs`),
  KEY `scale` (`scale`),
  KEY `recalculate_volumes` (`recalculate_volumes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApBootstrappedAngularReconstitutionParamsData`
--

LOCK TABLES `ApBootstrappedAngularReconstitutionParamsData` WRITE;
/*!40000 ALTER TABLE `ApBootstrappedAngularReconstitutionParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApBootstrappedAngularReconstitutionParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApBootstrappedAngularReconstitutionRunData`
--

DROP TABLE IF EXISTS `ApBootstrappedAngularReconstitutionRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApBootstrappedAngularReconstitutionRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApBootstrappedAngularReconstitutionParamsData|aar_params` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `REF|ApTemplateStackData|templatestackid` int(20) DEFAULT NULL,
  `REF|ApClusteringStackData|clusterid` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApBootstrappedAngularReconstitutionParamsData|aar_params` (`REF|ApBootstrappedAngularReconstitutionParamsData|aar_params`),
  KEY `REF|ApTemplateStackData|templatestackid` (`REF|ApTemplateStackData|templatestackid`),
  KEY `REF|ApClusteringStackData|clusterid` (`REF|ApClusteringStackData|clusterid`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApBootstrappedAngularReconstitutionRunData`
--

LOCK TABLES `ApBootstrappedAngularReconstitutionRunData` WRITE;
/*!40000 ALTER TABLE `ApBootstrappedAngularReconstitutionRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApBootstrappedAngularReconstitutionRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApCL2DRunData`
--

DROP TABLE IF EXISTS `ApCL2DRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApCL2DRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `fast` text,
  `run_seconds` int(20) DEFAULT NULL,
  `timestamp` text,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `max-iter` int(20) DEFAULT NULL,
  `num-ref` int(20) DEFAULT NULL,
  `correlation` tinyint(1) DEFAULT NULL,
  `correntropy` tinyint(1) DEFAULT NULL,
  `classical_multiref` tinyint(1) DEFAULT NULL,
  `intracluster_multiref` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `finished` (`finished`),
  KEY `correlation` (`correlation`),
  KEY `correntropy` (`correntropy`),
  KEY `classical_multiref` (`classical_multiref`),
  KEY `intracluster_multiref` (`intracluster_multiref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApCL2DRunData`
--

LOCK TABLES `ApCL2DRunData` WRITE;
/*!40000 ALTER TABLE `ApCL2DRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApCL2DRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApClusteringParticleData`
--

DROP TABLE IF EXISTS `ApClusteringParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApClusteringParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `partnum` int(20) DEFAULT NULL,
  `refnum` int(20) DEFAULT NULL,
  `REF|ApClusteringReferenceData|clusterreference` int(20) DEFAULT NULL,
  `REF|ApClusteringStackData|clusterstack` int(20) DEFAULT NULL,
  `REF|ApAlignParticleData|alignparticle` int(20) DEFAULT NULL,
  `imagic_cls_quality` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApClusteringReferenceData|clusterreference` (`REF|ApClusteringReferenceData|clusterreference`),
  KEY `REF|ApClusteringStackData|clusterstack` (`REF|ApClusteringStackData|clusterstack`),
  KEY `REF|ApAlignParticleData|alignparticle` (`REF|ApAlignParticleData|alignparticle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApClusteringParticleData`
--

LOCK TABLES `ApClusteringParticleData` WRITE;
/*!40000 ALTER TABLE `ApClusteringParticleData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApClusteringParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApClusteringReferenceData`
--

DROP TABLE IF EXISTS `ApClusteringReferenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApClusteringReferenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `refnum` int(20) DEFAULT NULL,
  `avg_mrcfile` text,
  `var_mrcfile` text,
  `ssnr_resolution` double DEFAULT NULL,
  `num_particles` int(20) DEFAULT NULL,
  `REF|ApClusteringRunData|clusterrun` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApClusteringRunData|clusterrun` (`REF|ApClusteringRunData|clusterrun`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApClusteringReferenceData`
--

LOCK TABLES `ApClusteringReferenceData` WRITE;
/*!40000 ALTER TABLE `ApClusteringReferenceData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApClusteringReferenceData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApClusteringRunData`
--

DROP TABLE IF EXISTS `ApClusteringRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApClusteringRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `description` text,
  `boxsize` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `num_particles` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  `REF|ApAlignAnalysisRunData|analysisrun` int(20) DEFAULT NULL,
  `REF|ApSpiderClusteringParamsData|spiderparams` int(20) DEFAULT NULL,
  `REF|ApKerDenSOMParamsData|kerdenparams` int(20) DEFAULT NULL,
  `REF|ApRotKerDenSOMParamsData|rotkerdenparams` int(20) DEFAULT NULL,
  `REF|ApAffinityPropagationClusterParamsData|affpropparams` int(20) DEFAULT NULL,
  `REF|ApCL2DRunData|cl2dparams` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`),
  KEY `REF|ApAlignAnalysisRunData|analysisrun` (`REF|ApAlignAnalysisRunData|analysisrun`),
  KEY `REF|ApSpiderClusteringParamsData|spiderparams` (`REF|ApSpiderClusteringParamsData|spiderparams`),
  KEY `REF|ApKerDenSOMParamsData|kerdenparams` (`REF|ApKerDenSOMParamsData|kerdenparams`),
  KEY `REF|ApRotKerDenSOMParamsData|rotkerdenparams` (`REF|ApRotKerDenSOMParamsData|rotkerdenparams`),
  KEY `REF|ApAffinityPropagationClusterParamsData|affpropparams` (`REF|ApAffinityPropagationClusterParamsData|affpropparams`),
  KEY `REF|ApCL2DRunData|cl2dparams` (`REF|ApCL2DRunData|cl2dparams`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApClusteringRunData`
--

LOCK TABLES `ApClusteringRunData` WRITE;
/*!40000 ALTER TABLE `ApClusteringRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApClusteringRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApClusteringStackData`
--

DROP TABLE IF EXISTS `ApClusteringStackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApClusteringStackData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num_classes` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `avg_imagicfile` text,
  `var_imagicfile` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApClusteringRunData|clusterrun` int(20) DEFAULT NULL,
  `ignore_images` int(20) DEFAULT NULL,
  `ignore_members` int(20) DEFAULT NULL,
  `num_factors` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApClusteringRunData|clusterrun` (`REF|ApClusteringRunData|clusterrun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApClusteringStackData`
--

LOCK TABLES `ApClusteringStackData` WRITE;
/*!40000 ALTER TABLE `ApClusteringStackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApClusteringStackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApContourData`
--

DROP TABLE IF EXISTS `ApContourData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApContourData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `version` int(20) DEFAULT NULL,
  `method` text,
  `particleType` text,
  `runname` text,
  `REF|ApSelectionRunData|selectionrun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`),
  KEY `REF|ApSelectionRunData|selectionrun` (`REF|ApSelectionRunData|selectionrun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApContourData`
--

LOCK TABLES `ApContourData` WRITE;
/*!40000 ALTER TABLE `ApContourData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApContourData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApContourPointData`
--

DROP TABLE IF EXISTS `ApContourPointData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApContourPointData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApContourData|contour` int(20) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApContourData|contour` (`REF|ApContourData|contour`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApContourPointData`
--

LOCK TABLES `ApContourPointData` WRITE;
/*!40000 ALTER TABLE `ApContourPointData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApContourPointData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApCoranEigenImageData`
--

DROP TABLE IF EXISTS `ApCoranEigenImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApCoranEigenImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApCoranRunData|coranRun` int(20) DEFAULT NULL,
  `factor_num` int(20) DEFAULT NULL,
  `percent_contrib` double DEFAULT NULL,
  `image_name` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApCoranRunData|coranRun` (`REF|ApCoranRunData|coranRun`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApCoranEigenImageData`
--

LOCK TABLES `ApCoranEigenImageData` WRITE;
/*!40000 ALTER TABLE `ApCoranEigenImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApCoranEigenImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApCoranRunData`
--

DROP TABLE IF EXISTS `ApCoranRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApCoranRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mask_diam` double DEFAULT NULL,
  `run_seconds` int(20) DEFAULT NULL,
  `num_factors` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApCoranRunData`
--

LOCK TABLES `ApCoranRunData` WRITE;
/*!40000 ALTER TABLE `ApCoranRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApCoranRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApCtfData`
--

DROP TABLE IF EXISTS `ApCtfData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApCtfData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApAceRunData|acerun` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `defocus1` double DEFAULT NULL,
  `defocus2` double DEFAULT NULL,
  `defocusinit` double DEFAULT NULL,
  `amplitude_contrast` double DEFAULT NULL,
  `angle_astigmatism` double DEFAULT NULL,
  `tilt_angle` double DEFAULT NULL,
  `tilt_axis_angle` double DEFAULT NULL,
  `snr` double DEFAULT NULL,
  `confidence` double DEFAULT NULL,
  `confidence_d` double DEFAULT NULL,
  `graph1` text,
  `graph2` text,
  `mat_file` text,
  `cross_correlation` double DEFAULT NULL,
  `ctfvalues_file` text,
  `cs` double DEFAULT NULL,
  `noise1` double DEFAULT NULL,
  `noise2` double DEFAULT NULL,
  `noise3` double DEFAULT NULL,
  `noise4` double DEFAULT NULL,
  `envelope1` double DEFAULT NULL,
  `envelope2` double DEFAULT NULL,
  `envelope3` double DEFAULT NULL,
  `envelope4` double DEFAULT NULL,
  `lowercutoff` double DEFAULT NULL,
  `uppercutoff` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApAceRunData|acerun` (`REF|ApAceRunData|acerun`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApCtfData`
--

LOCK TABLES `ApCtfData` WRITE;
/*!40000 ALTER TABLE `ApCtfData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApCtfData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApCtfTiltParamsData`
--

DROP TABLE IF EXISTS `ApCtfTiltParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApCtfTiltParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `medium` text,
  `ampcarbon` double DEFAULT NULL,
  `ampice` double DEFAULT NULL,
  `fieldsize` int(20) DEFAULT NULL,
  `cs` double DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `resmin` double DEFAULT NULL,
  `resmax` double DEFAULT NULL,
  `defstep` double DEFAULT NULL,
  `dast` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApCtfTiltParamsData`
--

LOCK TABLES `ApCtfTiltParamsData` WRITE;
/*!40000 ALTER TABLE `ApCtfTiltParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApCtfTiltParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApDDStackParamsData`
--

DROP TABLE IF EXISTS `ApDDStackParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApDDStackParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApDDStackParamsData`
--

LOCK TABLES `ApDDStackParamsData` WRITE;
/*!40000 ALTER TABLE `ApDDStackParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApDDStackParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApDDStackRunData`
--

DROP TABLE IF EXISTS `ApDDStackRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApDDStackRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `REF|ApDDStackParamsData|params` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApDDStackParamsData|params` (`REF|ApDDStackParamsData|params`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApDDStackRunData`
--

LOCK TABLES `ApDDStackRunData` WRITE;
/*!40000 ALTER TABLE `ApDDStackRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApDDStackRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApDogParamsData`
--

DROP TABLE IF EXISTS `ApDogParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApDogParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diam` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `manual_thresh` double DEFAULT NULL,
  `max_threshold` double DEFAULT NULL,
  `invert` int(20) DEFAULT NULL,
  `lp_filt` int(20) DEFAULT NULL,
  `hp_filt` int(20) DEFAULT NULL,
  `max_peaks` int(20) DEFAULT NULL,
  `median` int(20) DEFAULT NULL,
  `pixel_value_limit` double DEFAULT NULL,
  `maxsize` int(20) DEFAULT NULL,
  `kfactor` double DEFAULT NULL,
  `size_range` double DEFAULT NULL,
  `num_slices` int(20) DEFAULT NULL,
  `defocal_pairs` tinyint(1) DEFAULT NULL,
  `overlapmult` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `defocal_pairs` (`defocal_pairs`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApDogParamsData`
--

LOCK TABLES `ApDogParamsData` WRITE;
/*!40000 ALTER TABLE `ApDogParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApDogParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApEMANRefine2dRunData`
--

DROP TABLE IF EXISTS `ApEMANRefine2dRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApEMANRefine2dRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `num_iters` int(20) DEFAULT NULL,
  `num_classes` int(20) DEFAULT NULL,
  `run_seconds` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApEMANRefine2dRunData`
--

LOCK TABLES `ApEMANRefine2dRunData` WRITE;
/*!40000 ALTER TABLE `ApEMANRefine2dRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApEMANRefine2dRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApEdIterRunData`
--

DROP TABLE IF EXISTS `ApEdIterRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApEdIterRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `radius` int(20) DEFAULT NULL,
  `num_iter` int(20) DEFAULT NULL,
  `freealigns` int(20) DEFAULT NULL,
  `invert_templs` tinyint(1) DEFAULT NULL,
  `num_templs` int(20) DEFAULT NULL,
  `run_seconds` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `invert_templs` (`invert_templs`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApEdIterRunData`
--

LOCK TABLES `ApEdIterRunData` WRITE;
/*!40000 ALTER TABLE `ApEdIterRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApEdIterRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApEmanRefineIterData`
--

DROP TABLE IF EXISTS `ApEmanRefineIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApEmanRefineIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `package` text,
  `ang` double DEFAULT NULL,
  `lpfilter` int(20) DEFAULT NULL,
  `hpfilter` int(20) DEFAULT NULL,
  `mask` int(20) DEFAULT NULL,
  `imask` int(20) DEFAULT NULL,
  `pad` int(20) DEFAULT NULL,
  `EMAN_maxshift` int(20) DEFAULT NULL,
  `EMAN_hard` int(20) DEFAULT NULL,
  `EMAN_classkeep` double DEFAULT NULL,
  `EMAN_classiter` int(20) DEFAULT NULL,
  `EMAN_filt3d` int(20) DEFAULT NULL,
  `EMAN_shrink` int(20) DEFAULT NULL,
  `EMAN_euler2` int(20) DEFAULT NULL,
  `EMAN_xfiles` double DEFAULT NULL,
  `EMAN_amask1` double DEFAULT NULL,
  `EMAN_amask2` double DEFAULT NULL,
  `EMAN_amask3` double DEFAULT NULL,
  `EMAN_median` tinyint(1) DEFAULT NULL,
  `EMAN_phasecls` tinyint(1) DEFAULT NULL,
  `EMAN_fscls` tinyint(1) DEFAULT NULL,
  `EMAN_refine` tinyint(1) DEFAULT NULL,
  `EMAN_goodbad` tinyint(1) DEFAULT NULL,
  `EMAN_perturb` tinyint(1) DEFAULT NULL,
  `MsgP_cckeep` double DEFAULT NULL,
  `MsgP_minptls` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `EMAN_median` (`EMAN_median`),
  KEY `EMAN_phasecls` (`EMAN_phasecls`),
  KEY `EMAN_fscls` (`EMAN_fscls`),
  KEY `EMAN_refine` (`EMAN_refine`),
  KEY `EMAN_goodbad` (`EMAN_goodbad`),
  KEY `EMAN_perturb` (`EMAN_perturb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApEmanRefineIterData`
--

LOCK TABLES `ApEmanRefineIterData` WRITE;
/*!40000 ALTER TABLE `ApEmanRefineIterData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApEmanRefineIterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApEulerJumpData`
--

DROP TABLE IF EXISTS `ApEulerJumpData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApEulerJumpData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApStackParticleData|particle` int(20) DEFAULT NULL,
  `REF|ApRefineRunData|refineRun` int(20) DEFAULT NULL,
  `REF|ApMultiModelRefineRunData|multiModelRefineRun` int(20) DEFAULT NULL,
  `median` double DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApStackParticleData|particle` (`REF|ApStackParticleData|particle`),
  KEY `REF|ApRefineRunData|refineRun` (`REF|ApRefineRunData|refineRun`),
  KEY `REF|ApMultiModelRefineRunData|multiModelRefineRun` (`REF|ApMultiModelRefineRunData|multiModelRefineRun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApEulerJumpData`
--

LOCK TABLES `ApEulerJumpData` WRITE;
/*!40000 ALTER TABLE `ApEulerJumpData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApEulerJumpData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApFSCData`
--

DROP TABLE IF EXISTS `ApFSCData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApFSCData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApRefineIterData|refineIter` int(20) DEFAULT NULL,
  `pix` int(20) DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApRefineIterData|refineIter` (`REF|ApRefineIterData|refineIter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApFSCData`
--

LOCK TABLES `ApFSCData` WRITE;
/*!40000 ALTER TABLE `ApFSCData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApFSCData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApFrealignIterData`
--

DROP TABLE IF EXISTS `ApFrealignIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApFrealignIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iflag` int(20) DEFAULT NULL,
  `wgh` double DEFAULT NULL,
  `xstd` double DEFAULT NULL,
  `pbc` double DEFAULT NULL,
  `boff` double DEFAULT NULL,
  `itmax` int(20) DEFAULT NULL,
  `ipmax` int(20) DEFAULT NULL,
  `target` double DEFAULT NULL,
  `thresh` double DEFAULT NULL,
  `cs` double DEFAULT NULL,
  `rrec` double DEFAULT NULL,
  `highpass` double DEFAULT NULL,
  `lowpass` double DEFAULT NULL,
  `rbfact` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApFrealignIterData`
--

LOCK TABLES `ApFrealignIterData` WRITE;
/*!40000 ALTER TABLE `ApFrealignIterData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApFrealignIterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApFrealignPrepareData`
--

DROP TABLE IF EXISTS `ApFrealignPrepareData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApFrealignPrepareData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `ppn` int(20) DEFAULT NULL,
  `rpn` int(20) DEFAULT NULL,
  `nodes` int(20) DEFAULT NULL,
  `memory` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `tarfile` text,
  `REF|ApSymmetryData|symmetry` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApStackData|reconstack` int(20) DEFAULT NULL,
  `REF|ApInitialModelData|model` int(20) DEFAULT NULL,
  `REF|ApAppionJobData|job` int(20) DEFAULT NULL,
  `REF|ApRefineIterData|refineIter` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApSymmetryData|symmetry` (`REF|ApSymmetryData|symmetry`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApStackData|reconstack` (`REF|ApStackData|reconstack`),
  KEY `REF|ApInitialModelData|model` (`REF|ApInitialModelData|model`),
  KEY `REF|ApAppionJobData|job` (`REF|ApAppionJobData|job`),
  KEY `REF|ApRefineIterData|refineIter` (`REF|ApRefineIterData|refineIter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApFrealignPrepareData`
--

LOCK TABLES `ApFrealignPrepareData` WRITE;
/*!40000 ALTER TABLE `ApFrealignPrepareData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApFrealignPrepareData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApFullTomogramData`
--

DROP TABLE IF EXISTS `ApFullTomogramData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApFullTomogramData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|leginondata|TiltSeriesData|tiltseries` int(20) DEFAULT NULL,
  `REF|ApTomoAlignerParamsData|aligner` int(20) DEFAULT NULL,
  `REF|ApFullTomogramRunData|reconrun` int(20) DEFAULT NULL,
  `REF|ApTomoAlignmentRunData|alignrun` int(20) DEFAULT NULL,
  `thickness` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `name` text,
  `description` text,
  `REF|leginondata|AcquisitionImageData|zprojection` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApTomoReconParamsData|reconparam` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|leginondata|TiltSeriesData|tiltseries` (`REF|leginondata|TiltSeriesData|tiltseries`),
  KEY `REF|ApTomoAlignerParamsData|aligner` (`REF|ApTomoAlignerParamsData|aligner`),
  KEY `REF|ApFullTomogramRunData|reconrun` (`REF|ApFullTomogramRunData|reconrun`),
  KEY `REF|ApTomoAlignmentRunData|alignrun` (`REF|ApTomoAlignmentRunData|alignrun`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|leginondata|AcquisitionImageData|zprojection` (`REF|leginondata|AcquisitionImageData|zprojection`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApTomoReconParamsData|reconparam` (`REF|ApTomoReconParamsData|reconparam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApFullTomogramData`
--

LOCK TABLES `ApFullTomogramData` WRITE;
/*!40000 ALTER TABLE `ApFullTomogramData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApFullTomogramData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApFullTomogramRunData`
--

DROP TABLE IF EXISTS `ApFullTomogramRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApFullTomogramRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `runname` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `method` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApFullTomogramRunData`
--

LOCK TABLES `ApFullTomogramRunData` WRITE;
/*!40000 ALTER TABLE `ApFullTomogramRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApFullTomogramRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApHelicalCoordData`
--

DROP TABLE IF EXISTS `ApHelicalCoordData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApHelicalCoordData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `filno` double DEFAULT NULL,
  `xlngth` double DEFAULT NULL,
  `xcoord` double DEFAULT NULL,
  `ycoord` double DEFAULT NULL,
  `initialang` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApHelicalCoordData`
--

LOCK TABLES `ApHelicalCoordData` WRITE;
/*!40000 ALTER TABLE `ApHelicalCoordData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApHelicalCoordData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApHipIterData`
--

DROP TABLE IF EXISTS `ApHipIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApHipIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApHipRunData|hipRun` int(20) DEFAULT NULL,
  `iteration` int(20) DEFAULT NULL,
  `iterpath` text,
  `volumeDensity` text,
  `REF|ApResolutionData|resolution` int(20) DEFAULT NULL,
  `REF|ApRMeasureData|rMeasure` int(20) DEFAULT NULL,
  `cutfit1` text,
  `cutfit2` text,
  `cutfit3` text,
  `chop1` text,
  `chop2` text,
  `avglist_file` text,
  `final_numpart` int(20) DEFAULT NULL,
  `asymsu` int(20) DEFAULT NULL,
  `avg_file` text,
  `map_file` text,
  `mrc_file` text,
  `ll_file` text,
  `op_file` text,
  `output_file` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApHipRunData|hipRun` (`REF|ApHipRunData|hipRun`),
  KEY `REF|ApResolutionData|resolution` (`REF|ApResolutionData|resolution`),
  KEY `REF|ApRMeasureData|rMeasure` (`REF|ApRMeasureData|rMeasure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApHipIterData`
--

LOCK TABLES `ApHipIterData` WRITE;
/*!40000 ALTER TABLE `ApHipIterData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApHipIterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApHipParamsData`
--

DROP TABLE IF EXISTS `ApHipParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApHipParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApHipRunData|hipRun` int(20) DEFAULT NULL,
  `numpart` int(20) DEFAULT NULL,
  `replen` int(20) DEFAULT NULL,
  `diam` int(20) DEFAULT NULL,
  `diaminner` int(20) DEFAULT NULL,
  `subunits` int(20) DEFAULT NULL,
  `xlngth` int(20) DEFAULT NULL,
  `yht2` int(20) DEFAULT NULL,
  `padval` int(20) DEFAULT NULL,
  `rescut` int(20) DEFAULT NULL,
  `filval` int(20) DEFAULT NULL,
  `strong` text,
  `range` text,
  `llbo` text,
  `final_stack` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApHipRunData|hipRun` (`REF|ApHipRunData|hipRun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApHipParamsData`
--

LOCK TABLES `ApHipParamsData` WRITE;
/*!40000 ALTER TABLE `ApHipParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApHipParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApHipParticleData`
--

DROP TABLE IF EXISTS `ApHipParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApHipParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApHipRunData|hipRun` int(20) DEFAULT NULL,
  `particleNumber` int(20) DEFAULT NULL,
  `filename` text,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApStackRunData|stackRun` int(20) DEFAULT NULL,
  `tilt` double DEFAULT NULL,
  `shift` double DEFAULT NULL,
  `resid` double DEFAULT NULL,
  `far_phi` double DEFAULT NULL,
  `far_z` double DEFAULT NULL,
  `far_rscale` double DEFAULT NULL,
  `far_ampscale` double DEFAULT NULL,
  `ner_phi` double DEFAULT NULL,
  `ner_z` double DEFAULT NULL,
  `ner_rscale` double DEFAULT NULL,
  `ner_ampscale` double DEFAULT NULL,
  `mrc_file` text,
  `s_file` text,
  `dft_file` text,
  `colb_file` text,
  `ner_file` text,
  `far_file` text,
  `fft_file` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApHipRunData|hipRun` (`REF|ApHipRunData|hipRun`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApStackRunData|stackRun` (`REF|ApStackRunData|stackRun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApHipParticleData`
--

LOCK TABLES `ApHipParticleData` WRITE;
/*!40000 ALTER TABLE `ApHipParticleData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApHipParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApHipRunData`
--

DROP TABLE IF EXISTS `ApHipRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApHipRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `description` text,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `apix` double DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApHipRunData`
--

LOCK TABLES `ApHipRunData` WRITE;
/*!40000 ALTER TABLE `ApHipRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApHipRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApImageTiltTransformData`
--

DROP TABLE IF EXISTS `ApImageTiltTransformData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApImageTiltTransformData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|AcquisitionImageData|image1` int(20) DEFAULT NULL,
  `image1_x` double DEFAULT NULL,
  `image1_y` double DEFAULT NULL,
  `image1_rotation` double DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image2` int(20) DEFAULT NULL,
  `image2_x` double DEFAULT NULL,
  `image2_y` double DEFAULT NULL,
  `image2_rotation` double DEFAULT NULL,
  `scale_factor` double DEFAULT NULL,
  `tilt_angle` double DEFAULT NULL,
  `rmsd` double DEFAULT NULL,
  `overlap` double DEFAULT NULL,
  `REF|ApSelectionRunData|tiltrun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|AcquisitionImageData|image1` (`REF|leginondata|AcquisitionImageData|image1`),
  KEY `REF|leginondata|AcquisitionImageData|image2` (`REF|leginondata|AcquisitionImageData|image2`),
  KEY `REF|ApSelectionRunData|tiltrun` (`REF|ApSelectionRunData|tiltrun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApImageTiltTransformData`
--

LOCK TABLES `ApImageTiltTransformData` WRITE;
/*!40000 ALTER TABLE `ApImageTiltTransformData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApImageTiltTransformData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApImageTransformationData`
--

DROP TABLE IF EXISTS `ApImageTransformationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApImageTransformationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|AcquisitionImageData|image1` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image2` int(20) DEFAULT NULL,
  `shiftx` double DEFAULT NULL,
  `shifty` double DEFAULT NULL,
  `correlation` double DEFAULT NULL,
  `scale` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|AcquisitionImageData|image1` (`REF|leginondata|AcquisitionImageData|image1`),
  KEY `REF|leginondata|AcquisitionImageData|image2` (`REF|leginondata|AcquisitionImageData|image2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApImageTransformationData`
--

LOCK TABLES `ApImageTransformationData` WRITE;
/*!40000 ALTER TABLE `ApImageTransformationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApImageTransformationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApImagic3dRefineIterationData`
--

DROP TABLE IF EXISTS `ApImagic3dRefineIterationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApImagic3dRefineIterationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApImagic3dRefineRunData|refinement_run` int(20) DEFAULT NULL,
  `iteration` int(20) DEFAULT NULL,
  `name` text,
  `REF|ApSymmetryData|symmetry` int(20) DEFAULT NULL,
  `filt_stack` tinyint(1) DEFAULT NULL,
  `hp_filt` int(20) DEFAULT NULL,
  `lp_filt` int(20) DEFAULT NULL,
  `auto_filt_stack` tinyint(1) DEFAULT NULL,
  `auto_lp_filt_fraction` double DEFAULT NULL,
  `mask_val` int(20) DEFAULT NULL,
  `mirror_refs` tinyint(1) DEFAULT NULL,
  `cent_stack` tinyint(1) DEFAULT NULL,
  `max_shift_orig` double DEFAULT NULL,
  `max_shift_this` double DEFAULT NULL,
  `sampling_parameter` int(20) DEFAULT NULL,
  `minrad` int(20) DEFAULT NULL,
  `maxrad` int(20) DEFAULT NULL,
  `spider_align` tinyint(1) DEFAULT NULL,
  `xy_search` int(20) DEFAULT NULL,
  `xy_step` int(20) DEFAULT NULL,
  `minrad_spi` int(20) DEFAULT NULL,
  `maxrad_spi` int(20) DEFAULT NULL,
  `angle_change` int(20) DEFAULT NULL,
  `ignore_images` int(20) DEFAULT NULL,
  `num_classums` int(20) DEFAULT NULL,
  `num_factors` int(20) DEFAULT NULL,
  `ignore_members` int(20) DEFAULT NULL,
  `keep_classes` int(20) DEFAULT NULL,
  `euler_ang_inc` int(20) DEFAULT NULL,
  `keep_ordered` int(20) DEFAULT NULL,
  `ham_win` double DEFAULT NULL,
  `obj_size` double DEFAULT NULL,
  `3d_lpfilt` int(20) DEFAULT NULL,
  `amask_dim` double DEFAULT NULL,
  `amask_lp` double DEFAULT NULL,
  `amask_sharp` double DEFAULT NULL,
  `amask_thresh` double DEFAULT NULL,
  `mra_ang_inc` int(20) DEFAULT NULL,
  `forw_ang_inc` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApImagic3dRefineRunData|refinement_run` (`REF|ApImagic3dRefineRunData|refinement_run`),
  KEY `REF|ApSymmetryData|symmetry` (`REF|ApSymmetryData|symmetry`),
  KEY `filt_stack` (`filt_stack`),
  KEY `auto_filt_stack` (`auto_filt_stack`),
  KEY `mirror_refs` (`mirror_refs`),
  KEY `cent_stack` (`cent_stack`),
  KEY `spider_align` (`spider_align`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApImagic3dRefineIterationData`
--

LOCK TABLES `ApImagic3dRefineIterationData` WRITE;
/*!40000 ALTER TABLE `ApImagic3dRefineIterationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApImagic3dRefineIterationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApImagic3dRefineRunData`
--

DROP TABLE IF EXISTS `ApImagic3dRefineRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApImagic3dRefineRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `REF|ApInitialModelData|initialModel` int(20) DEFAULT NULL,
  `REF|ApStackData|stackrun` int(20) DEFAULT NULL,
  `radius` int(20) DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `description` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApInitialModelData|initialModel` (`REF|ApInitialModelData|initialModel`),
  KEY `REF|ApStackData|stackrun` (`REF|ApStackData|stackrun`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApImagic3dRefineRunData`
--

LOCK TABLES `ApImagic3dRefineRunData` WRITE;
/*!40000 ALTER TABLE `ApImagic3dRefineRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApImagic3dRefineRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApImagicAlignAnalysisData`
--

DROP TABLE IF EXISTS `ApImagicAlignAnalysisData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApImagicAlignAnalysisData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `run_seconds` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `highpass` int(20) DEFAULT NULL,
  `lowpass` int(20) DEFAULT NULL,
  `mask_radius` double DEFAULT NULL,
  `mask_dropoff` double DEFAULT NULL,
  `numiters` int(20) DEFAULT NULL,
  `overcorrection` double DEFAULT NULL,
  `MSAdistance` text,
  `eigenimages` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApImagicAlignAnalysisData`
--

LOCK TABLES `ApImagicAlignAnalysisData` WRITE;
/*!40000 ALTER TABLE `ApImagicAlignAnalysisData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApImagicAlignAnalysisData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApImodXcorrParamsData`
--

DROP TABLE IF EXISTS `ApImodXcorrParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApImodXcorrParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RotationAngle` double DEFAULT NULL,
  `FilterSigma1` double DEFAULT NULL,
  `FilterRadius2` double DEFAULT NULL,
  `FilterSigma2` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApImodXcorrParamsData`
--

LOCK TABLES `ApImodXcorrParamsData` WRITE;
/*!40000 ALTER TABLE `ApImodXcorrParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApImodXcorrParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApInitialModelData`
--

DROP TABLE IF EXISTS `ApInitialModelData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApInitialModelData` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPathData|path` bigint(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `name` text,
  `resolution` double DEFAULT NULL,
  `REF|ApSymmetryData|symmetry` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT '0',
  `md5sum` varchar(32) DEFAULT NULL,
  `REF|Ap3dDensityData|original_density` int(20) DEFAULT NULL,
  `REF|ApInitialModelData|original_model` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSymmetryData|symmetry` (`REF|ApSymmetryData|symmetry`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `md5sum` (`md5sum`),
  KEY `REF|projectdata|projects|project` (`REF|projectdata|projects|project`),
  KEY `hidden` (`hidden`),
  KEY `REF|Ap3dDensityData|original_density` (`REF|Ap3dDensityData|original_density`),
  KEY `REF|ApInitialModelData|original_model` (`REF|ApInitialModelData|original_model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApInitialModelData`
--

LOCK TABLES `ApInitialModelData` WRITE;
/*!40000 ALTER TABLE `ApInitialModelData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApInitialModelData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApKerDenSOMParamsData`
--

DROP TABLE IF EXISTS `ApKerDenSOMParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApKerDenSOMParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mask_diam` double DEFAULT NULL,
  `x_dimension` int(20) DEFAULT NULL,
  `y_dimension` int(20) DEFAULT NULL,
  `convergence` text,
  `run_seconds` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApKerDenSOMParamsData`
--

LOCK TABLES `ApKerDenSOMParamsData` WRITE;
/*!40000 ALTER TABLE `ApKerDenSOMParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApKerDenSOMParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApManualParamsData`
--

DROP TABLE IF EXISTS `ApManualParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApManualParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diam` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `lp_filt` int(20) DEFAULT NULL,
  `hp_filt` int(20) DEFAULT NULL,
  `invert` int(20) DEFAULT NULL,
  `median` int(20) DEFAULT NULL,
  `pixel_value_limit` double DEFAULT NULL,
  `REF|ApSelectionRunData|oldselectionrun` int(20) DEFAULT NULL,
  `trace` tinyint(1) DEFAULT NULL,
  `helicalstep` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSelectionRunData|oldselectionrun` (`REF|ApSelectionRunData|oldselectionrun`),
  KEY `trace` (`trace`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApManualParamsData`
--

LOCK TABLES `ApManualParamsData` WRITE;
/*!40000 ALTER TABLE `ApManualParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApManualParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaskAssessmentData`
--

DROP TABLE IF EXISTS `ApMaskAssessmentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaskAssessmentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApMaskAssessmentRunData|run` int(20) DEFAULT NULL,
  `REF|ApMaskRegionData|region` int(20) DEFAULT NULL,
  `keep` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApMaskAssessmentRunData|run` (`REF|ApMaskAssessmentRunData|run`),
  KEY `REF|ApMaskRegionData|region` (`REF|ApMaskRegionData|region`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaskAssessmentData`
--

LOCK TABLES `ApMaskAssessmentData` WRITE;
/*!40000 ALTER TABLE `ApMaskAssessmentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaskAssessmentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaskAssessmentRunData`
--

DROP TABLE IF EXISTS `ApMaskAssessmentRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaskAssessmentRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `REF|ApMaskMakerRunData|maskrun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApMaskMakerRunData|maskrun` (`REF|ApMaskMakerRunData|maskrun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaskAssessmentRunData`
--

LOCK TABLES `ApMaskAssessmentRunData` WRITE;
/*!40000 ALTER TABLE `ApMaskAssessmentRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaskAssessmentRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaskMakerParamsData`
--

DROP TABLE IF EXISTS `ApMaskMakerParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaskMakerParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bin` int(20) DEFAULT NULL,
  `mask_type` text,
  `pdiam` int(20) DEFAULT NULL,
  `region_diameter` int(20) DEFAULT NULL,
  `edge_blur` double DEFAULT NULL,
  `edge_low` double DEFAULT NULL,
  `edge_high` double DEFAULT NULL,
  `region_std` double DEFAULT NULL,
  `convolve` double DEFAULT NULL,
  `convex_hull` tinyint(1) DEFAULT NULL,
  `libcv` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `convex_hull` (`convex_hull`),
  KEY `libcv` (`libcv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaskMakerParamsData`
--

LOCK TABLES `ApMaskMakerParamsData` WRITE;
/*!40000 ALTER TABLE `ApMaskMakerParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaskMakerParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaskMakerRunData`
--

DROP TABLE IF EXISTS `ApMaskMakerRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaskMakerRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApMaskMakerParamsData|params` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApMaskMakerParamsData|params` (`REF|ApMaskMakerParamsData|params`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaskMakerRunData`
--

LOCK TABLES `ApMaskMakerRunData` WRITE;
/*!40000 ALTER TABLE `ApMaskMakerRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaskMakerRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaskRegionData`
--

DROP TABLE IF EXISTS `ApMaskRegionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaskRegionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApMaskMakerRunData|maskrun` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `x` int(20) DEFAULT NULL,
  `y` int(20) DEFAULT NULL,
  `area` int(20) DEFAULT NULL,
  `perimeter` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `label` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApMaskMakerRunData|maskrun` (`REF|ApMaskMakerRunData|maskrun`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaskRegionData`
--

LOCK TABLES `ApMaskRegionData` WRITE;
/*!40000 ALTER TABLE `ApMaskRegionData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaskRegionData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaxLikeJobData`
--

DROP TABLE IF EXISTS `ApMaxLikeJobData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaxLikeJobData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `timestamp` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `finished` (`finished`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaxLikeJobData`
--

LOCK TABLES `ApMaxLikeJobData` WRITE;
/*!40000 ALTER TABLE `ApMaxLikeJobData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaxLikeJobData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMaxLikeRunData`
--

DROP TABLE IF EXISTS `ApMaxLikeRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMaxLikeRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `mirror` tinyint(1) DEFAULT NULL,
  `student` tinyint(1) DEFAULT NULL,
  `mask_diam` int(20) DEFAULT NULL,
  `init_method` text,
  `fast` tinyint(1) DEFAULT NULL,
  `fastmode` text,
  `run_seconds` int(20) DEFAULT NULL,
  `REF|ApMaxLikeJobData|job` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `mirror` (`mirror`),
  KEY `student` (`student`),
  KEY `fast` (`fast`),
  KEY `REF|ApMaxLikeJobData|job` (`REF|ApMaxLikeJobData|job`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMaxLikeRunData`
--

LOCK TABLES `ApMaxLikeRunData` WRITE;
/*!40000 ALTER TABLE `ApMaxLikeRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMaxLikeRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMiscData`
--

DROP TABLE IF EXISTS `ApMiscData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMiscData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `REF|ApRefineRunData|refineRun` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApFullTomogramData|fulltomogram` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `name` text,
  `description` text,
  `md5sum` text,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApRefineRunData|refineRun` (`REF|ApRefineRunData|refineRun`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApFullTomogramData|fulltomogram` (`REF|ApFullTomogramData|fulltomogram`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMiscData`
--

LOCK TABLES `ApMiscData` WRITE;
/*!40000 ALTER TABLE `ApMiscData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMiscData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMultiModelRefineRunData`
--

DROP TABLE IF EXISTS `ApMultiModelRefineRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMultiModelRefineRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `num_refinements` int(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMultiModelRefineRunData`
--

LOCK TABLES `ApMultiModelRefineRunData` WRITE;
/*!40000 ALTER TABLE `ApMultiModelRefineRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMultiModelRefineRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApMultiRefAlignRunData`
--

DROP TABLE IF EXISTS `ApMultiRefAlignRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApMultiRefAlignRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `lowpass_refs` int(20) DEFAULT NULL,
  `thresh_refs` int(20) DEFAULT NULL,
  `maskrad_refs` double DEFAULT NULL,
  `mirror` tinyint(1) DEFAULT NULL,
  `center` tinyint(1) DEFAULT NULL,
  `alignment_type` text,
  `first_alignment` text,
  `num_orientations` int(20) DEFAULT NULL,
  `max_shift_orig` double DEFAULT NULL,
  `max_shift_this` double DEFAULT NULL,
  `samp_param` double DEFAULT NULL,
  `min_radius` double DEFAULT NULL,
  `max_radius` double DEFAULT NULL,
  `numiter` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `mirror` (`mirror`),
  KEY `center` (`center`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApMultiRefAlignRunData`
--

LOCK TABLES `ApMultiRefAlignRunData` WRITE;
/*!40000 ALTER TABLE `ApMultiRefAlignRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApMultiRefAlignRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApOtrRunData`
--

DROP TABLE IF EXISTS `ApOtrRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApOtrRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `classnums` text,
  `numiter` int(20) DEFAULT NULL,
  `euleriter` int(20) DEFAULT NULL,
  `maskrad` int(20) DEFAULT NULL,
  `lowpassvol` double DEFAULT NULL,
  `highpasspart` double DEFAULT NULL,
  `median` int(20) DEFAULT NULL,
  `description` text,
  `numpart` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApResolutionData|fsc_resolution` int(20) DEFAULT NULL,
  `REF|ApResolutionData|rmeasure_resolution` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApStackData|tiltstack` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  `REF|ApClusteringStackData|clusterstack` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApResolutionData|fsc_resolution` (`REF|ApResolutionData|fsc_resolution`),
  KEY `REF|ApResolutionData|rmeasure_resolution` (`REF|ApResolutionData|rmeasure_resolution`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|tiltstack` (`REF|ApStackData|tiltstack`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`),
  KEY `REF|ApClusteringStackData|clusterstack` (`REF|ApClusteringStackData|clusterstack`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApOtrRunData`
--

LOCK TABLES `ApOtrRunData` WRITE;
/*!40000 ALTER TABLE `ApOtrRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApOtrRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApParticleData`
--

DROP TABLE IF EXISTS `ApParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApSelectionRunData|selectionrun` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `xcoord` int(20) DEFAULT NULL,
  `ycoord` int(20) DEFAULT NULL,
  `angle` double DEFAULT NULL,
  `correlation` double DEFAULT NULL,
  `REF|ApTemplateImageData|template` int(20) DEFAULT NULL,
  `peakmoment` double DEFAULT NULL,
  `peakstddev` double DEFAULT NULL,
  `peakarea` int(20) DEFAULT NULL,
  `diameter` double DEFAULT NULL,
  `label` text,
  `helixnum` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSelectionRunData|selectionrun` (`REF|ApSelectionRunData|selectionrun`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`),
  KEY `REF|ApTemplateImageData|template` (`REF|ApTemplateImageData|template`)
) ENGINE=MyISAM AUTO_INCREMENT=1326 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApParticleData`
--

LOCK TABLES `ApParticleData` WRITE;
/*!40000 ALTER TABLE `ApParticleData` DISABLE KEYS */;
INSERT INTO `ApParticleData` VALUES (596,'2016-06-30 19:45:30',2,1,1146,1704,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(597,'2016-06-30 19:45:30',2,1,1752,1482,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(598,'2016-06-30 19:45:30',2,1,1376,1822,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(599,'2016-06-30 19:45:30',2,1,444,126,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(600,'2016-06-30 19:45:30',2,1,310,1062,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(601,'2016-06-30 19:45:30',2,1,1678,1372,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(602,'2016-06-30 19:45:30',2,1,414,1178,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(603,'2016-06-30 19:45:30',2,1,1306,864,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(604,'2016-06-30 19:45:30',2,1,1766,1166,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(605,'2016-06-30 19:45:30',2,1,1188,520,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(606,'2016-06-30 19:45:30',2,1,982,1858,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(607,'2016-06-30 19:45:30',2,1,762,902,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(608,'2016-06-30 19:45:30',2,1,960,336,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(609,'2016-06-30 19:45:30',2,1,662,902,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(610,'2016-06-30 19:45:30',2,1,1508,978,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(611,'2016-06-30 19:45:30',2,1,1048,950,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(612,'2016-06-30 19:45:30',2,1,258,1454,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(613,'2016-06-30 19:45:30',2,1,610,1280,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(614,'2016-06-30 19:45:30',2,1,344,1510,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(615,'2016-06-30 19:45:30',2,1,1230,1782,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(616,'2016-06-30 19:45:30',2,1,1902,1410,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(617,'2016-06-30 19:45:30',2,1,932,1674,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(618,'2016-06-30 19:45:30',2,1,966,454,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(619,'2016-06-30 19:45:30',2,1,716,1006,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(620,'2016-06-30 19:45:30',2,1,862,200,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(621,'2016-06-30 19:45:30',2,1,1786,1374,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(622,'2016-06-30 19:45:30',2,1,210,584,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(623,'2016-06-30 19:45:30',2,1,1370,1002,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(624,'2016-06-30 19:45:30',2,1,1202,872,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(625,'2016-06-30 19:45:30',2,1,1010,1238,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(626,'2016-06-30 19:45:30',2,1,1924,1296,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(627,'2016-06-30 19:45:30',2,1,492,934,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(628,'2016-06-30 19:45:30',2,1,912,1012,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(629,'2016-06-30 19:45:30',2,1,1714,1258,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(630,'2016-06-30 19:45:30',2,1,1390,1694,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(631,'2016-06-30 19:45:30',2,1,1084,1890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(632,'2016-06-30 19:45:30',2,1,712,716,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(633,'2016-06-30 19:45:30',2,1,264,292,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(634,'2016-06-30 19:45:30',2,1,1598,1192,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(635,'2016-06-30 19:45:30',2,1,834,420,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(636,'2016-06-30 19:45:30',2,1,1440,728,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(637,'2016-06-30 19:45:30',2,1,484,1496,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(638,'2016-06-30 19:45:30',2,1,464,478,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(639,'2016-06-30 19:45:30',2,1,1914,1104,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(640,'2016-06-30 19:45:30',2,1,162,1092,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(641,'2016-06-30 19:45:30',2,1,1006,144,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(642,'2016-06-30 19:45:30',2,1,356,324,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(643,'2016-06-30 19:45:30',2,1,1700,1778,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(644,'2016-06-30 19:45:30',2,1,692,208,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(645,'2016-06-30 19:45:30',2,1,202,1902,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(646,'2016-06-30 19:45:30',2,1,1098,288,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(647,'2016-06-30 19:45:30',2,10,1834,1272,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(648,'2016-06-30 19:45:30',2,10,1342,248,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(649,'2016-06-30 19:45:30',2,10,1014,1424,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(650,'2016-06-30 19:45:30',2,10,782,160,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(651,'2016-06-30 19:45:30',2,10,1912,1756,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(652,'2016-06-30 19:45:30',2,10,1588,1208,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(653,'2016-06-30 19:45:30',2,10,1214,1736,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(654,'2016-06-30 19:45:30',2,10,688,168,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(655,'2016-06-30 19:45:30',2,10,964,1546,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(656,'2016-06-30 19:45:30',2,10,1508,1154,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(657,'2016-06-30 19:45:30',2,10,466,1880,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(658,'2016-06-30 19:45:30',2,10,1192,846,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(659,'2016-06-30 19:45:30',2,10,1442,1498,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(660,'2016-06-30 19:45:30',2,10,398,1802,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(661,'2016-06-30 19:45:30',2,10,312,1882,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(662,'2016-06-30 19:45:30',2,10,1660,1000,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(663,'2016-06-30 19:45:30',2,10,1898,838,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(664,'2016-06-30 19:45:30',2,10,1304,150,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(665,'2016-06-30 19:45:30',2,10,1554,1824,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(666,'2016-06-30 19:45:30',2,10,1438,1374,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(667,'2016-06-30 19:45:30',2,10,1212,214,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(668,'2016-06-30 19:45:30',2,10,1374,1148,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(669,'2016-06-30 19:45:30',2,10,1868,932,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(670,'2016-06-30 19:45:30',2,10,1258,302,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(671,'2016-06-30 19:45:30',2,10,1288,798,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(672,'2016-06-30 19:45:30',2,10,348,1524,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(673,'2016-06-30 19:45:30',2,10,928,1454,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(674,'2016-06-30 19:45:30',2,10,1578,1078,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(675,'2016-06-30 19:45:30',2,10,814,908,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(676,'2016-06-30 19:45:30',2,10,376,652,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(677,'2016-06-30 19:45:30',2,10,966,676,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(678,'2016-06-30 19:45:30',2,10,452,1720,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(679,'2016-06-30 19:45:30',2,10,1910,1614,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(680,'2016-06-30 19:45:30',2,10,1488,452,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(681,'2016-06-30 19:45:30',2,10,660,936,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(682,'2016-06-30 19:45:30',2,10,1614,756,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(683,'2016-06-30 19:45:30',2,10,1804,1798,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(684,'2016-06-30 19:45:30',2,10,1480,1258,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(685,'2016-06-30 19:45:30',2,10,1078,890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(686,'2016-06-30 19:45:30',2,10,322,1662,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(687,'2016-06-30 19:45:30',2,10,1324,1794,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(688,'2016-06-30 19:45:30',2,10,1334,482,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(689,'2016-06-30 19:45:30',2,10,1076,1836,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(690,'2016-06-30 19:45:30',2,10,522,1068,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(691,'2016-06-30 19:45:30',2,10,306,212,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(692,'2016-06-30 19:45:30',2,10,778,1104,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(693,'2016-06-30 19:45:30',2,10,506,1798,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(694,'2016-06-30 19:45:30',2,10,798,1822,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(695,'2016-06-30 19:45:30',2,10,1746,1928,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(696,'2016-06-30 19:45:30',2,10,1680,1162,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(697,'2016-06-30 19:45:30',2,10,270,1462,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(698,'2016-06-30 19:45:30',2,7,712,1410,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(699,'2016-06-30 19:45:30',2,7,558,1702,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(700,'2016-06-30 19:45:30',2,7,964,1464,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(701,'2016-06-30 19:45:30',2,7,1558,1800,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(702,'2016-06-30 19:45:30',2,7,786,136,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(703,'2016-06-30 19:45:30',2,7,676,1654,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(704,'2016-06-30 19:45:30',2,7,1398,560,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(705,'2016-06-30 19:45:30',2,7,1114,1422,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(706,'2016-06-30 19:45:30',2,7,426,1896,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(707,'2016-06-30 19:45:30',2,7,180,1068,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(708,'2016-06-30 19:45:30',2,7,614,672,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(709,'2016-06-30 19:45:30',2,7,548,1532,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(710,'2016-06-30 19:45:30',2,7,828,1462,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(711,'2016-06-30 19:45:30',2,7,814,788,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(712,'2016-06-30 19:45:30',2,7,1060,1002,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(713,'2016-06-30 19:45:30',2,7,1250,876,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(714,'2016-06-30 19:45:30',2,7,154,1500,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(715,'2016-06-30 19:45:31',2,7,1284,1198,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(716,'2016-06-30 19:45:31',2,7,942,1002,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(717,'2016-06-30 19:45:31',2,7,964,156,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(718,'2016-06-30 19:45:31',2,7,668,520,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(719,'2016-06-30 19:45:31',2,7,318,284,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(720,'2016-06-30 19:45:31',2,7,720,314,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(721,'2016-06-30 19:45:31',2,7,1738,1020,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(722,'2016-06-30 19:45:31',2,7,842,378,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(723,'2016-06-30 19:45:31',2,7,792,1248,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(724,'2016-06-30 19:45:31',2,7,598,1194,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(725,'2016-06-30 19:45:31',2,7,1826,770,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(726,'2016-06-30 19:45:31',2,7,888,1270,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(727,'2016-06-30 19:45:31',2,7,570,1850,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(728,'2016-06-30 19:45:31',2,7,1526,708,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(729,'2016-06-30 19:45:31',2,7,1586,276,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(730,'2016-06-30 19:45:31',2,7,926,536,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(731,'2016-06-30 19:45:31',2,7,428,1602,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(732,'2016-06-30 19:45:31',2,7,868,882,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(733,'2016-06-30 19:45:31',2,7,748,1068,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(734,'2016-06-30 19:45:31',2,7,212,190,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(735,'2016-06-30 19:45:31',2,7,1850,460,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(736,'2016-06-30 19:45:31',2,7,198,1792,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(737,'2016-06-30 19:45:31',2,7,350,176,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(738,'2016-06-30 19:45:31',2,7,382,692,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(739,'2016-06-30 19:45:31',2,7,472,908,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(740,'2016-06-30 19:45:31',2,7,988,400,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(741,'2016-06-30 19:45:31',2,7,1816,1450,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(742,'2016-06-30 19:45:31',2,7,504,1382,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(743,'2016-06-30 19:45:31',2,7,1922,1510,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(744,'2016-06-30 19:45:31',2,7,668,206,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(745,'2016-06-30 19:45:31',2,7,366,1242,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(746,'2016-06-30 19:45:31',2,7,868,636,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(747,'2016-06-30 19:45:31',2,7,1030,704,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(748,'2016-06-30 19:45:31',2,7,1750,1238,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(749,'2016-06-30 19:45:31',2,7,1470,1752,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(750,'2016-06-30 19:45:31',2,7,1240,1376,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(751,'2016-06-30 19:45:31',2,7,1176,786,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(752,'2016-06-30 19:45:31',2,7,1658,424,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(753,'2016-06-30 19:45:31',2,7,1794,620,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(754,'2016-06-30 19:45:31',2,7,1852,1916,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(755,'2016-06-30 19:45:31',2,7,1262,1696,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(756,'2016-06-30 19:45:31',2,7,578,452,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(757,'2016-06-30 19:45:31',2,7,532,584,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(758,'2016-06-30 19:45:31',2,7,1750,434,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(759,'2016-06-30 19:45:31',2,7,1230,1806,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(760,'2016-06-30 19:45:31',2,7,234,472,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(761,'2016-06-30 19:45:31',2,7,190,626,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(762,'2016-06-30 19:45:31',2,7,696,864,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(763,'2016-06-30 19:45:31',2,7,1322,376,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(764,'2016-06-30 19:45:31',2,7,1182,204,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(765,'2016-06-30 19:45:31',2,7,1392,762,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(766,'2016-06-30 19:45:31',2,7,1202,1544,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(767,'2016-06-30 19:45:31',2,7,684,398,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(768,'2016-06-30 19:45:31',2,7,1334,146,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(769,'2016-06-30 19:45:31',2,6,992,1498,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(770,'2016-06-30 19:45:31',2,6,344,1186,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(771,'2016-06-30 19:45:31',2,6,1222,1716,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(772,'2016-06-30 19:45:31',2,6,246,1062,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(773,'2016-06-30 19:45:31',2,6,600,826,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(774,'2016-06-30 19:45:31',2,6,482,1044,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(775,'2016-06-30 19:45:31',2,6,682,1742,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(776,'2016-06-30 19:45:31',2,6,148,1788,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(777,'2016-06-30 19:45:31',2,6,500,798,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(778,'2016-06-30 19:45:31',2,6,584,1884,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(779,'2016-06-30 19:45:31',2,6,1814,1080,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(780,'2016-06-30 19:45:31',2,6,842,676,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(781,'2016-06-30 19:45:31',2,6,1006,1080,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(782,'2016-06-30 19:45:31',2,6,488,1894,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(783,'2016-06-30 19:45:31',2,6,582,1058,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(784,'2016-06-30 19:45:31',2,6,1868,1192,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(785,'2016-06-30 19:45:31',2,6,1552,690,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(786,'2016-06-30 19:45:31',2,6,1596,1916,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(787,'2016-06-30 19:45:31',2,6,558,718,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(788,'2016-06-30 19:45:31',2,6,616,1448,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(789,'2016-06-30 19:45:31',2,6,818,1852,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(790,'2016-06-30 19:45:31',2,6,218,522,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(791,'2016-06-30 19:45:31',2,6,680,1082,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(792,'2016-06-30 19:45:31',2,6,1766,1694,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(793,'2016-06-30 19:45:31',2,6,1560,786,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(794,'2016-06-30 19:45:31',2,6,1678,1058,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(795,'2016-06-30 19:45:31',2,6,1396,1644,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(796,'2016-06-30 19:45:31',2,6,504,1196,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(797,'2016-06-30 19:45:31',2,6,1426,1324,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(798,'2016-06-30 19:45:31',2,6,764,724,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(799,'2016-06-30 19:45:31',2,6,364,1290,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(800,'2016-06-30 19:45:31',2,6,1048,1192,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(801,'2016-06-30 19:45:31',2,6,1884,762,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(802,'2016-06-30 19:45:31',2,6,1622,862,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(803,'2016-06-30 19:45:31',2,6,1160,1170,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(804,'2016-06-30 19:45:31',2,6,328,670,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(805,'2016-06-30 19:45:31',2,6,636,1584,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(806,'2016-06-30 19:45:31',2,6,918,1306,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(807,'2016-06-30 19:45:31',2,6,1538,1656,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(808,'2016-06-30 19:45:31',2,6,1438,712,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(809,'2016-06-30 19:45:31',2,6,956,1680,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(810,'2016-06-30 19:45:31',2,6,1516,1356,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(811,'2016-06-30 19:45:31',2,6,802,1048,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(812,'2016-06-30 19:45:31',2,6,1330,1282,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(813,'2016-06-30 19:45:31',2,6,1672,1300,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(814,'2016-06-30 19:45:31',2,6,1236,1236,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(815,'2016-06-30 19:45:31',2,6,1782,436,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(816,'2016-06-30 19:45:31',2,6,710,1856,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(817,'2016-06-30 19:45:31',2,6,646,674,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(818,'2016-06-30 19:45:31',2,6,1316,964,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(819,'2016-06-30 19:45:31',2,6,1342,524,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(820,'2016-06-30 19:45:31',2,6,1294,1768,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(821,'2016-06-30 19:45:31',2,6,1382,1734,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(822,'2016-06-30 19:45:31',2,6,162,1880,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(823,'2016-06-30 19:45:31',2,6,266,1240,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(824,'2016-06-30 19:45:31',2,6,1588,592,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(825,'2016-06-30 19:45:31',2,6,1368,892,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(826,'2016-06-30 19:45:31',2,6,176,1218,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(827,'2016-06-30 19:45:31',2,6,632,588,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(828,'2016-06-30 19:45:31',2,6,1366,1824,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(829,'2016-06-30 19:45:31',2,6,1174,1640,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(830,'2016-06-30 19:45:31',2,6,708,1408,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(831,'2016-06-30 19:45:31',2,6,1862,1340,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(832,'2016-06-30 19:45:31',2,6,714,556,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(833,'2016-06-30 19:45:31',2,6,552,616,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(834,'2016-06-30 19:45:31',2,6,1298,1672,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(835,'2016-06-30 19:45:31',2,6,394,1890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(836,'2016-06-30 19:45:31',2,6,1852,1668,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(837,'2016-06-30 19:45:31',2,6,1038,1568,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(838,'2016-06-30 19:45:31',2,6,1912,436,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(839,'2016-06-30 19:45:31',2,6,560,962,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(840,'2016-06-30 19:45:31',2,6,506,1432,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(841,'2016-06-30 19:45:31',2,6,1904,662,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(842,'2016-06-30 19:45:31',2,12,1892,424,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(843,'2016-06-30 19:45:31',2,12,1408,692,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(844,'2016-06-30 19:45:31',2,12,644,1106,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(845,'2016-06-30 19:45:31',2,12,1730,238,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(846,'2016-06-30 19:45:31',2,12,1658,1412,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(847,'2016-06-30 19:45:31',2,12,480,1018,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(848,'2016-06-30 19:45:31',2,12,1582,1896,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(849,'2016-06-30 19:45:31',2,12,1418,894,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(850,'2016-06-30 19:45:31',2,12,464,844,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(851,'2016-06-30 19:45:31',2,12,380,1012,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(852,'2016-06-30 19:45:31',2,12,1744,406,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(853,'2016-06-30 19:45:31',2,12,1584,1478,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(854,'2016-06-30 19:45:31',2,12,1538,1808,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(855,'2016-06-30 19:45:31',2,12,410,226,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(856,'2016-06-30 19:45:31',2,12,1840,266,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(857,'2016-06-30 19:45:31',2,12,1498,964,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(858,'2016-06-30 19:45:31',2,12,478,1118,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(859,'2016-06-30 19:45:31',2,12,764,894,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(860,'2016-06-30 19:45:31',2,12,1682,1630,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(861,'2016-06-30 19:45:31',2,12,330,646,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(862,'2016-06-30 19:45:31',2,12,1650,862,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(863,'2016-06-30 19:45:31',2,12,546,392,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(864,'2016-06-30 19:45:31',2,12,434,704,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(865,'2016-06-30 19:45:31',2,12,126,1760,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(866,'2016-06-30 19:45:31',2,12,1386,804,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(867,'2016-06-30 19:45:31',2,12,494,294,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(868,'2016-06-30 19:45:31',2,12,1164,508,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(869,'2016-06-30 19:45:31',2,12,556,596,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(870,'2016-06-30 19:45:31',2,12,684,824,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(871,'2016-06-30 19:45:31',2,12,1684,326,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(872,'2016-06-30 19:45:31',2,12,1354,576,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(873,'2016-06-30 19:45:31',2,12,474,152,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(874,'2016-06-30 19:45:31',2,12,374,556,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(875,'2016-06-30 19:45:31',2,12,1734,766,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(876,'2016-06-30 19:45:31',2,12,1912,1760,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(877,'2016-06-30 19:45:31',2,12,1914,1136,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(878,'2016-06-30 19:45:31',2,12,1300,474,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(879,'2016-06-30 19:45:31',2,12,214,1890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(880,'2016-06-30 19:45:31',2,12,216,1628,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(881,'2016-06-30 19:45:31',2,12,1230,1482,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(882,'2016-06-30 19:45:31',2,12,1632,1804,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(883,'2016-06-30 19:45:31',2,12,1680,1490,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(884,'2016-06-30 19:45:31',2,12,636,706,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(885,'2016-06-30 19:45:31',2,12,1488,494,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(886,'2016-06-30 19:45:31',2,12,1518,876,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(887,'2016-06-30 19:45:31',2,12,1628,1560,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(888,'2016-06-30 19:45:31',2,12,554,1082,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(889,'2016-06-30 19:45:31',2,12,626,274,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(890,'2016-06-30 19:45:31',2,12,1716,1824,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(891,'2016-06-30 19:45:31',2,12,240,596,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(892,'2016-06-30 19:45:31',2,12,1886,624,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(893,'2016-06-30 19:45:31',2,12,330,922,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(894,'2016-06-30 19:45:31',2,12,160,450,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(895,'2016-06-30 19:45:31',2,12,1496,184,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(896,'2016-06-30 19:45:31',2,12,1680,1322,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(897,'2016-06-30 19:45:31',2,12,476,530,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(898,'2016-06-30 19:45:31',2,12,1084,458,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(899,'2016-06-30 19:45:31',2,12,1322,736,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(900,'2016-06-30 19:45:31',2,5,1138,756,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(901,'2016-06-30 19:45:31',2,5,1292,1212,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(902,'2016-06-30 19:45:31',2,5,860,690,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(903,'2016-06-30 19:45:31',2,5,708,352,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(904,'2016-06-30 19:45:31',2,5,1900,1492,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(905,'2016-06-30 19:45:31',2,5,464,1656,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(906,'2016-06-30 19:45:31',2,5,1420,744,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(907,'2016-06-30 19:45:31',2,5,1430,902,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(908,'2016-06-30 19:45:31',2,5,1366,980,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(909,'2016-06-30 19:45:31',2,5,910,1526,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(910,'2016-06-30 19:45:31',2,5,226,1308,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(911,'2016-06-30 19:45:31',2,5,840,1586,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(912,'2016-06-30 19:45:31',2,5,1876,776,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(913,'2016-06-30 19:45:31',2,5,518,1928,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(914,'2016-06-30 19:45:31',2,5,1558,1128,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(915,'2016-06-30 19:45:31',2,5,1362,1452,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(916,'2016-06-30 19:45:31',2,5,1668,1094,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(917,'2016-06-30 19:45:31',2,5,288,1228,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(918,'2016-06-30 19:45:31',2,5,976,418,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(919,'2016-06-30 19:45:31',2,5,1292,324,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(920,'2016-06-30 19:45:31',2,5,1332,698,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(921,'2016-06-30 19:45:31',2,5,992,1578,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(922,'2016-06-30 19:45:31',2,5,922,310,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(923,'2016-06-30 19:45:31',2,5,1738,1830,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(924,'2016-06-30 19:45:31',2,5,904,480,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(925,'2016-06-30 19:45:31',2,5,788,166,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(926,'2016-06-30 19:45:31',2,5,1664,1210,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(927,'2016-06-30 19:45:31',2,5,890,788,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(928,'2016-06-30 19:45:31',2,5,1380,1242,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(929,'2016-06-30 19:45:31',2,5,652,1466,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(930,'2016-06-30 19:45:31',2,5,880,890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(931,'2016-06-30 19:45:31',2,5,650,166,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(932,'2016-06-30 19:45:31',2,5,1372,1824,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(933,'2016-06-30 19:45:31',2,5,238,462,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(934,'2016-06-30 19:45:31',2,5,484,1486,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(935,'2016-06-30 19:45:31',2,5,974,624,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(936,'2016-06-30 19:45:31',2,5,634,294,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(937,'2016-06-30 19:45:31',2,5,1788,832,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(938,'2016-06-30 19:45:31',2,5,572,1710,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(939,'2016-06-30 19:45:31',2,5,1270,992,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(940,'2016-06-30 19:45:31',2,5,1356,414,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(941,'2016-06-30 19:45:31',2,5,1686,940,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(942,'2016-06-30 19:45:31',2,5,1610,200,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(943,'2016-06-30 19:45:31',2,5,1446,1760,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(944,'2016-06-30 19:45:31',2,5,1150,134,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(945,'2016-06-30 19:45:31',2,5,732,1804,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(946,'2016-06-30 19:45:31',2,5,518,1800,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(947,'2016-06-30 19:45:31',2,5,836,278,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(948,'2016-06-30 19:45:31',2,5,1436,654,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(949,'2016-06-30 19:45:31',2,5,584,1524,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(950,'2016-06-30 19:45:31',2,5,740,264,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(951,'2016-06-30 19:45:31',2,5,1796,1494,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(952,'2016-06-30 19:45:31',2,5,1596,1036,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(953,'2016-06-30 19:45:31',2,5,816,1492,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(954,'2016-06-30 19:45:31',2,5,604,1900,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(955,'2016-06-30 19:45:31',2,5,1820,394,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(956,'2016-06-30 19:45:31',2,5,390,1596,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(957,'2016-06-30 19:45:31',2,5,1588,1338,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(958,'2016-06-30 19:45:31',2,5,1128,532,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(959,'2016-06-30 19:45:31',2,9,1496,430,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(960,'2016-06-30 19:45:31',2,9,1270,1862,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(961,'2016-06-30 19:45:31',2,9,1356,382,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(962,'2016-06-30 19:45:31',2,9,1880,1756,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(963,'2016-06-30 19:45:31',2,9,1704,1630,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(964,'2016-06-30 19:45:31',2,9,1164,1844,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(965,'2016-06-30 19:45:31',2,9,1802,1056,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(966,'2016-06-30 19:45:31',2,9,1474,1098,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(967,'2016-06-30 19:45:31',2,9,1042,650,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(968,'2016-06-30 19:45:31',2,9,1662,228,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(969,'2016-06-30 19:45:31',2,9,712,1016,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(970,'2016-06-30 19:45:31',2,9,1686,1102,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(971,'2016-06-30 19:45:31',2,9,1054,558,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(972,'2016-06-30 19:45:31',2,9,242,828,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(973,'2016-06-30 19:45:31',2,9,1050,1872,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(974,'2016-06-30 19:45:31',2,9,1836,408,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(975,'2016-06-30 19:45:31',2,9,1412,282,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(976,'2016-06-30 19:45:31',2,9,1420,1514,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(977,'2016-06-30 19:45:31',2,9,1090,1528,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(978,'2016-06-30 19:45:31',2,9,334,1454,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(979,'2016-06-30 19:45:31',2,9,984,748,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(980,'2016-06-30 19:45:31',2,9,240,1298,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(981,'2016-06-30 19:45:31',2,9,1344,1044,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(982,'2016-06-30 19:45:31',2,9,300,1848,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(983,'2016-06-30 19:45:31',2,9,424,214,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(984,'2016-06-30 19:45:31',2,9,1632,962,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(985,'2016-06-30 19:45:31',2,9,1092,344,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(986,'2016-06-30 19:45:31',2,9,938,618,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(987,'2016-06-30 19:45:31',2,9,848,1036,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(988,'2016-06-30 19:45:31',2,9,348,814,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(989,'2016-06-30 19:45:31',2,9,1624,1256,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(990,'2016-06-30 19:45:31',2,9,734,1236,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(991,'2016-06-30 19:45:31',2,9,504,556,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(992,'2016-06-30 19:45:31',2,9,970,292,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(993,'2016-06-30 19:45:31',2,9,1308,586,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(994,'2016-06-30 19:45:31',2,9,284,642,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(995,'2016-06-30 19:45:31',2,9,998,1416,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(996,'2016-06-30 19:45:31',2,9,1416,944,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(997,'2016-06-30 19:45:31',2,9,998,1150,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(998,'2016-06-30 19:45:31',2,9,584,1704,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(999,'2016-06-30 19:45:31',2,9,582,188,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1000,'2016-06-30 19:45:31',2,9,440,1466,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1001,'2016-06-30 19:45:31',2,9,300,1140,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1002,'2016-06-30 19:45:31',2,9,1204,834,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1003,'2016-06-30 19:45:31',2,9,390,704,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1004,'2016-06-30 19:45:31',2,9,1726,1466,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1005,'2016-06-30 19:45:31',2,9,1664,630,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1006,'2016-06-30 19:45:31',2,9,1126,254,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1007,'2016-06-30 19:45:31',2,9,186,1384,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1008,'2016-06-30 19:45:31',2,9,1574,1072,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1009,'2016-06-30 19:45:31',2,9,1472,1364,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1010,'2016-06-30 19:45:31',2,9,504,264,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1011,'2016-06-30 19:45:31',2,9,1382,130,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1012,'2016-06-30 19:45:31',2,9,1510,1218,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1013,'2016-06-30 19:45:31',2,9,364,1250,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1014,'2016-06-30 19:45:31',2,9,534,1800,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1015,'2016-06-30 19:45:31',2,9,1066,1332,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1016,'2016-06-30 19:45:31',2,8,642,1604,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1017,'2016-06-30 19:45:31',2,8,562,438,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1018,'2016-06-30 19:45:31',2,8,764,1206,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1019,'2016-06-30 19:45:31',2,8,626,1400,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1020,'2016-06-30 19:45:31',2,8,1846,1858,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1021,'2016-06-30 19:45:31',2,8,1190,1848,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1022,'2016-06-30 19:45:31',2,8,768,1058,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1023,'2016-06-30 19:45:31',2,8,872,1014,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1024,'2016-06-30 19:45:31',2,8,1638,936,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1025,'2016-06-30 19:45:31',2,8,964,1780,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1026,'2016-06-30 19:45:31',2,8,428,1744,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1027,'2016-06-30 19:45:31',2,8,946,402,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1028,'2016-06-30 19:45:31',2,8,866,1264,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1029,'2016-06-30 19:45:31',2,8,1224,634,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1030,'2016-06-30 19:45:31',2,8,130,168,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1031,'2016-06-30 19:45:31',2,8,1432,1202,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1032,'2016-06-30 19:45:31',2,8,1332,1020,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1033,'2016-06-30 19:45:31',2,8,178,270,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1034,'2016-06-30 19:45:31',2,8,890,1670,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1035,'2016-06-30 19:45:31',2,8,168,822,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1036,'2016-06-30 19:45:31',2,8,1710,508,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1037,'2016-06-30 19:45:31',2,8,1700,1576,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1038,'2016-06-30 19:45:31',2,8,486,1316,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1039,'2016-06-30 19:45:31',2,8,1274,480,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1040,'2016-06-30 19:45:31',2,8,984,288,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1041,'2016-06-30 19:45:31',2,8,1080,1784,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1042,'2016-06-30 19:45:31',2,8,422,998,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1043,'2016-06-30 19:45:31',2,8,1528,388,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1044,'2016-06-30 19:45:31',2,8,176,650,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1045,'2016-06-30 19:45:31',2,8,1696,638,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1046,'2016-06-30 19:45:31',2,8,314,1102,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1047,'2016-06-30 19:45:31',2,8,1088,676,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1048,'2016-06-30 19:45:31',2,8,1566,520,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1049,'2016-06-30 19:45:31',2,8,980,1286,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1050,'2016-06-30 19:45:31',2,8,1844,1176,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1051,'2016-06-30 19:45:31',2,8,146,1132,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1052,'2016-06-30 19:45:31',2,8,1852,368,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1053,'2016-06-30 19:45:31',2,8,1316,390,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1054,'2016-06-30 19:45:31',2,8,368,754,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1055,'2016-06-30 19:45:31',2,8,1386,464,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1056,'2016-06-30 19:45:31',2,8,1574,632,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1057,'2016-06-30 19:45:31',2,8,242,1696,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1058,'2016-06-30 19:45:31',2,8,1896,820,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1059,'2016-06-30 19:45:31',2,8,644,1788,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1060,'2016-06-30 19:45:31',2,8,564,216,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1061,'2016-06-30 19:45:31',2,8,1776,834,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1062,'2016-06-30 19:45:31',2,8,1162,858,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1063,'2016-06-30 19:45:31',2,8,464,1850,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1064,'2016-06-30 19:45:31',2,8,1756,1358,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1065,'2016-06-30 19:45:31',2,8,1622,846,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1066,'2016-06-30 19:45:31',2,8,184,1592,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1067,'2016-06-30 19:45:31',2,8,720,1844,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1068,'2016-06-30 19:45:31',2,8,1082,792,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1069,'2016-06-30 19:45:31',2,8,1868,1388,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1070,'2016-06-30 19:45:31',2,8,804,1912,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1071,'2016-06-30 19:45:31',2,8,1204,1108,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1072,'2016-06-30 19:45:31',2,8,300,260,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1073,'2016-06-30 19:45:31',2,8,1198,972,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1074,'2016-06-30 19:45:31',2,8,616,622,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1075,'2016-06-30 19:45:31',2,3,1434,488,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1076,'2016-06-30 19:45:31',2,3,1132,694,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1077,'2016-06-30 19:45:31',2,3,1692,964,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1078,'2016-06-30 19:45:31',2,3,1262,750,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1079,'2016-06-30 19:45:31',2,3,998,1248,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1080,'2016-06-30 19:45:31',2,3,278,226,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1081,'2016-06-30 19:45:31',2,3,1458,166,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1082,'2016-06-30 19:45:31',2,3,1554,1762,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1083,'2016-06-30 19:45:31',2,3,938,810,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1084,'2016-06-30 19:45:31',2,3,1246,422,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1085,'2016-06-30 19:45:31',2,3,1078,958,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1086,'2016-06-30 19:45:31',2,3,268,720,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1087,'2016-06-30 19:45:31',2,3,1596,542,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1088,'2016-06-30 19:45:31',2,3,1090,1156,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1089,'2016-06-30 19:45:31',2,3,1832,578,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1090,'2016-06-30 19:45:32',2,3,772,482,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1091,'2016-06-30 19:45:32',2,3,1730,876,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1092,'2016-06-30 19:45:32',2,3,1278,542,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1093,'2016-06-30 19:45:32',2,3,1202,1194,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1094,'2016-06-30 19:45:32',2,3,264,1238,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1095,'2016-06-30 19:45:32',2,3,784,1928,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1096,'2016-06-30 19:45:32',2,3,1650,450,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1097,'2016-06-30 19:45:32',2,3,926,1916,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1098,'2016-06-30 19:45:32',2,3,374,512,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1099,'2016-06-30 19:45:32',2,3,270,1848,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1100,'2016-06-30 19:45:32',2,3,666,1342,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1101,'2016-06-30 19:45:32',2,3,1458,1716,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1102,'2016-06-30 19:45:32',2,3,1650,1812,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1103,'2016-06-30 19:45:32',2,3,1904,1456,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1104,'2016-06-30 19:45:32',2,3,1822,1706,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1105,'2016-06-30 19:45:32',2,3,1048,806,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1106,'2016-06-30 19:45:32',2,3,600,1688,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1107,'2016-06-30 19:45:32',2,3,1628,1698,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1108,'2016-06-30 19:45:32',2,3,638,1922,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1109,'2016-06-30 19:45:32',2,3,1314,1364,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1110,'2016-06-30 19:45:32',2,3,1796,1526,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1111,'2016-06-30 19:45:32',2,3,1662,1252,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1112,'2016-06-30 19:45:32',2,3,792,138,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1113,'2016-06-30 19:45:32',2,3,412,402,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1114,'2016-06-30 19:45:32',2,3,346,1608,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1115,'2016-06-30 19:45:32',2,3,1698,1144,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1116,'2016-06-30 19:45:32',2,3,1544,1606,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1117,'2016-06-30 19:45:32',2,3,1000,626,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1118,'2016-06-30 19:45:32',2,3,1032,1054,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1119,'2016-06-30 19:45:32',2,3,148,1006,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1120,'2016-06-30 19:45:32',2,3,206,1736,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1121,'2016-06-30 19:45:32',2,3,1086,528,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1122,'2016-06-30 19:45:32',2,3,262,540,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1123,'2016-06-30 19:45:32',2,3,896,414,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1124,'2016-06-30 19:45:32',2,3,1436,1152,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1125,'2016-06-30 19:45:32',2,3,1576,1314,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1126,'2016-06-30 19:45:32',2,3,584,1036,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1127,'2016-06-30 19:45:32',2,3,1384,340,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1128,'2016-06-30 19:45:32',2,3,634,1562,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1129,'2016-06-30 19:45:32',2,3,818,1394,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1130,'2016-06-30 19:45:32',2,3,182,1108,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1131,'2016-06-30 19:45:32',2,3,1548,986,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1132,'2016-06-30 19:45:32',2,3,968,1374,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1133,'2016-06-30 19:45:32',2,3,1780,1030,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1134,'2016-06-30 19:45:32',2,3,1816,180,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1135,'2016-06-30 19:45:32',2,3,438,144,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1136,'2016-06-30 19:45:32',2,3,1164,914,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1137,'2016-06-30 19:45:32',2,3,1750,1380,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1138,'2016-06-30 19:45:32',2,3,1850,286,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1139,'2016-06-30 19:45:32',2,3,1870,672,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1140,'2016-06-30 19:45:32',2,3,1084,1278,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1141,'2016-06-30 19:45:32',2,3,128,198,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1142,'2016-06-30 19:45:32',2,3,1140,1514,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1143,'2016-06-30 19:45:32',2,3,1568,198,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1144,'2016-06-30 19:45:32',2,3,430,1510,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1145,'2016-06-30 19:45:32',2,3,1864,1286,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1146,'2016-06-30 19:45:32',2,3,462,1140,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1147,'2016-06-30 19:45:32',2,3,342,832,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1148,'2016-06-30 19:45:32',2,4,1906,1002,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1149,'2016-06-30 19:45:32',2,4,1800,782,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1150,'2016-06-30 19:45:32',2,4,1718,156,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1151,'2016-06-30 19:45:32',2,4,1632,608,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1152,'2016-06-30 19:45:32',2,4,1434,202,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1153,'2016-06-30 19:45:32',2,4,602,1434,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1154,'2016-06-30 19:45:32',2,4,1120,1926,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1155,'2016-06-30 19:45:32',2,4,1686,956,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1156,'2016-06-30 19:45:32',2,4,1542,968,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1157,'2016-06-30 19:45:32',2,4,414,722,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1158,'2016-06-30 19:45:32',2,4,1610,300,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1159,'2016-06-30 19:45:32',2,4,1018,932,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1160,'2016-06-30 19:45:32',2,4,1404,774,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1161,'2016-06-30 19:45:32',2,4,1038,1044,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1162,'2016-06-30 19:45:32',2,4,1862,884,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1163,'2016-06-30 19:45:32',2,4,294,1458,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1164,'2016-06-30 19:45:32',2,4,650,878,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1165,'2016-06-30 19:45:32',2,4,266,604,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1166,'2016-06-30 19:45:32',2,4,1256,1134,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1167,'2016-06-30 19:45:32',2,4,1774,540,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1168,'2016-06-30 19:45:32',2,4,594,432,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1169,'2016-06-30 19:45:32',2,4,232,990,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1170,'2016-06-30 19:45:32',2,4,208,1192,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1171,'2016-06-30 19:45:32',2,4,1772,648,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1172,'2016-06-30 19:45:32',2,4,1244,1908,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1173,'2016-06-30 19:45:32',2,4,462,580,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1174,'2016-06-30 19:45:32',2,4,620,1624,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1175,'2016-06-30 19:45:32',2,4,468,1398,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1176,'2016-06-30 19:45:32',2,4,170,1326,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1177,'2016-06-30 19:45:32',2,4,1258,1598,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1178,'2016-06-30 19:45:32',2,4,1130,160,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1179,'2016-06-30 19:45:32',2,4,952,592,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1180,'2016-06-30 19:45:32',2,4,322,1774,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1181,'2016-06-30 19:45:32',2,4,476,1206,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1182,'2016-06-30 19:45:32',2,4,194,1458,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1183,'2016-06-30 19:45:32',2,4,1910,1472,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1184,'2016-06-30 19:45:32',2,4,1334,1470,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1185,'2016-06-30 19:45:32',2,4,1458,1344,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1186,'2016-06-30 19:45:32',2,4,1406,1556,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1187,'2016-06-30 19:45:32',2,4,850,1848,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1188,'2016-06-30 19:45:32',2,4,826,490,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1189,'2016-06-30 19:45:32',2,4,848,1552,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1190,'2016-06-30 19:45:32',2,4,1658,1184,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1191,'2016-06-30 19:45:32',2,4,832,1424,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1192,'2016-06-30 19:45:32',2,4,746,582,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1193,'2016-06-30 19:45:32',2,4,1600,490,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1194,'2016-06-30 19:45:32',2,4,1560,1254,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1195,'2016-06-30 19:45:32',2,4,196,1076,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1196,'2016-06-30 19:45:32',2,4,1296,1794,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1197,'2016-06-30 19:45:32',2,4,538,1036,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1198,'2016-06-30 19:45:32',2,4,620,188,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1199,'2016-06-30 19:45:32',2,4,1008,1150,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1200,'2016-06-30 19:45:32',2,4,598,1124,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1201,'2016-06-30 19:45:32',2,4,274,856,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1202,'2016-06-30 19:45:32',2,4,268,1358,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1203,'2016-06-30 19:45:32',2,4,684,1200,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1204,'2016-06-30 19:45:32',2,4,410,1062,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1205,'2016-06-30 19:45:32',2,4,1116,1106,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1206,'2016-06-30 19:45:32',2,4,1822,1576,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1207,'2016-06-30 19:45:32',2,4,1320,838,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1208,'2016-06-30 19:45:32',2,4,786,798,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1209,'2016-06-30 19:45:32',2,4,1738,1814,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1210,'2016-06-30 19:45:32',2,4,140,170,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1211,'2016-06-30 19:45:32',2,4,748,686,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1212,'2016-06-30 19:45:32',2,4,1896,1616,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1213,'2016-06-30 19:45:32',2,4,1246,322,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1214,'2016-06-30 19:45:32',2,4,1412,556,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1215,'2016-06-30 19:45:32',2,4,610,534,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1216,'2016-06-30 19:45:32',2,4,786,1332,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1217,'2016-06-30 19:45:32',2,4,1782,1056,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1218,'2016-06-30 19:45:32',2,4,1642,742,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1219,'2016-06-30 19:45:32',2,4,1240,410,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1220,'2016-06-30 19:45:32',2,4,362,624,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1221,'2016-06-30 19:45:32',2,4,258,296,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1222,'2016-06-30 19:45:32',2,4,716,1784,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1223,'2016-06-30 19:45:32',2,4,1130,960,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1224,'2016-06-30 19:45:32',2,4,1178,704,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1225,'2016-06-30 19:45:32',2,2,150,1576,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1226,'2016-06-30 19:45:32',2,2,1054,670,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1227,'2016-06-30 19:45:32',2,2,312,444,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1228,'2016-06-30 19:45:32',2,2,758,882,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1229,'2016-06-30 19:45:32',2,2,1662,1618,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1230,'2016-06-30 19:45:32',2,2,544,1880,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1231,'2016-06-30 19:45:32',2,2,1106,988,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1232,'2016-06-30 19:45:32',2,2,1522,740,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1233,'2016-06-30 19:45:32',2,2,194,1430,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1234,'2016-06-30 19:45:32',2,2,1374,1482,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1235,'2016-06-30 19:45:32',2,2,846,230,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1236,'2016-06-30 19:45:32',2,2,1134,550,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1237,'2016-06-30 19:45:32',2,2,798,414,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1238,'2016-06-30 19:45:32',2,2,780,1122,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1239,'2016-06-30 19:45:32',2,2,1832,1646,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1240,'2016-06-30 19:45:32',2,2,988,1646,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1241,'2016-06-30 19:45:32',2,2,1002,168,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1242,'2016-06-30 19:45:32',2,2,1302,1214,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1243,'2016-06-30 19:45:32',2,2,1534,1824,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1244,'2016-06-30 19:45:32',2,2,1680,820,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1245,'2016-06-30 19:45:32',2,2,1482,890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1246,'2016-06-30 19:45:32',2,2,570,1288,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1247,'2016-06-30 19:45:32',2,2,136,554,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1248,'2016-06-30 19:45:32',2,2,1760,1516,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1249,'2016-06-30 19:45:32',2,2,1804,1066,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1250,'2016-06-30 19:45:32',2,2,1016,286,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1251,'2016-06-30 19:45:32',2,2,1158,762,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1252,'2016-06-30 19:45:32',2,2,1016,1870,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1253,'2016-06-30 19:45:32',2,2,1904,916,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1254,'2016-06-30 19:45:32',2,2,1084,1492,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1255,'2016-06-30 19:45:32',2,2,1358,904,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1256,'2016-06-30 19:45:32',2,2,552,1768,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1257,'2016-06-30 19:45:32',2,2,454,1690,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1258,'2016-06-30 19:45:32',2,2,1716,1246,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1259,'2016-06-30 19:45:32',2,2,616,1640,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1260,'2016-06-30 19:45:32',2,2,1438,1762,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1261,'2016-06-30 19:45:32',2,2,254,1350,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1262,'2016-06-30 19:45:32',2,2,1586,1482,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1263,'2016-06-30 19:45:32',2,2,1430,742,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1264,'2016-06-30 19:45:32',2,2,1410,830,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1265,'2016-06-30 19:45:32',2,2,320,1026,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1266,'2016-06-30 19:45:32',2,2,918,376,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1267,'2016-06-30 19:45:32',2,2,1006,386,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1268,'2016-06-30 19:45:32',2,2,1244,1644,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1269,'2016-06-30 19:45:32',2,2,1208,1512,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1270,'2016-06-30 19:45:32',2,2,1264,204,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1271,'2016-06-30 19:45:32',2,2,990,802,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1272,'2016-06-30 19:45:32',2,2,704,160,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1273,'2016-06-30 19:45:32',2,2,868,920,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1274,'2016-06-30 19:45:32',2,2,592,778,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1275,'2016-06-30 19:45:32',2,2,1896,1356,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1276,'2016-06-30 19:45:32',2,2,1308,1032,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1277,'2016-06-30 19:45:32',2,2,628,1174,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1278,'2016-06-30 19:45:32',2,2,608,1016,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1279,'2016-06-30 19:45:32',2,2,760,618,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1280,'2016-06-30 19:45:32',2,11,236,140,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1281,'2016-06-30 19:45:32',2,11,754,1678,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1282,'2016-06-30 19:45:32',2,11,154,1360,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1283,'2016-06-30 19:45:32',2,11,786,588,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1284,'2016-06-30 19:45:32',2,11,1876,1158,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1285,'2016-06-30 19:45:32',2,11,804,1204,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1286,'2016-06-30 19:45:32',2,11,160,202,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1287,'2016-06-30 19:45:32',2,11,1246,1890,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1288,'2016-06-30 19:45:32',2,11,1600,1152,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1289,'2016-06-30 19:45:32',2,11,1176,508,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1290,'2016-06-30 19:45:32',2,11,1532,1516,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1291,'2016-06-30 19:45:32',2,11,546,1186,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1292,'2016-06-30 19:45:32',2,11,1236,1770,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1293,'2016-06-30 19:45:32',2,11,932,446,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1294,'2016-06-30 19:45:32',2,11,1518,1046,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1295,'2016-06-30 19:45:32',2,11,1128,1496,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1296,'2016-06-30 19:45:32',2,11,448,1620,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1297,'2016-06-30 19:45:32',2,11,1340,898,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1298,'2016-06-30 19:45:32',2,11,1402,606,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1299,'2016-06-30 19:45:32',2,11,874,544,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1300,'2016-06-30 19:45:32',2,11,586,1406,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1301,'2016-06-30 19:45:32',2,11,360,662,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1302,'2016-06-30 19:45:32',2,11,326,806,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1303,'2016-06-30 19:45:32',2,11,1294,1114,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1304,'2016-06-30 19:45:32',2,11,1802,1380,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1305,'2016-06-30 19:45:32',2,11,1776,838,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1306,'2016-06-30 19:45:32',2,11,1528,1238,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1307,'2016-06-30 19:45:32',2,11,780,1102,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1308,'2016-06-30 19:45:32',2,11,278,1768,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1309,'2016-06-30 19:45:32',2,11,1132,1110,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1310,'2016-06-30 19:45:32',2,11,914,994,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1311,'2016-06-30 19:45:32',2,11,1708,994,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1312,'2016-06-30 19:45:32',2,11,492,724,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1313,'2016-06-30 19:45:32',2,11,1346,1838,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1314,'2016-06-30 19:45:32',2,11,1862,962,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1315,'2016-06-30 19:45:32',2,11,768,702,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1316,'2016-06-30 19:45:32',2,11,162,1868,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1317,'2016-06-30 19:45:32',2,11,1138,1224,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1318,'2016-06-30 19:45:32',2,11,1480,848,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1319,'2016-06-30 19:45:32',2,11,968,1768,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1320,'2016-06-30 19:45:32',2,11,542,620,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1321,'2016-06-30 19:45:32',2,11,1322,748,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1322,'2016-06-30 19:45:32',2,11,1084,1810,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1323,'2016-06-30 19:45:32',2,11,602,1506,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1324,'2016-06-30 19:45:32',2,11,1388,1162,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL),(1325,'2016-06-30 19:45:32',2,11,1262,450,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ApParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApParticleExtractorData`
--

DROP TABLE IF EXISTS `ApParticleExtractorData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApParticleExtractorData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `boxSize` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `aceCutoff` double DEFAULT NULL,
  `correlationMin` double DEFAULT NULL,
  `correlationMax` double DEFAULT NULL,
  `checkMask` text,
  `checkImage` tinyint(1) DEFAULT NULL,
  `norejects` tinyint(1) DEFAULT NULL,
  `minDefocus` double DEFAULT NULL,
  `maxDefocus` double DEFAULT NULL,
  `defocpair` tinyint(1) DEFAULT NULL,
  `tiltangle` text,
  `rotate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `checkImage` (`checkImage`),
  KEY `norejects` (`norejects`),
  KEY `defocpair` (`defocpair`),
  KEY `rotate` (`rotate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApParticleExtractorData`
--

LOCK TABLES `ApParticleExtractorData` WRITE;
/*!40000 ALTER TABLE `ApParticleExtractorData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApParticleExtractorData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApParticleMovieData`
--

DROP TABLE IF EXISTS `ApParticleMovieData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApParticleMovieData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `movieNumber` int(20) DEFAULT NULL,
  `REF|ApParticleMovieRunData|movieRun` int(20) DEFAULT NULL,
  `REF|ApParticleData|particle` int(20) DEFAULT NULL,
  `format` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApParticleMovieRunData|movieRun` (`REF|ApParticleMovieRunData|movieRun`),
  KEY `REF|ApParticleData|particle` (`REF|ApParticleData|particle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApParticleMovieData`
--

LOCK TABLES `ApParticleMovieData` WRITE;
/*!40000 ALTER TABLE `ApParticleMovieData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApParticleMovieData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApParticleMovieParamsData`
--

DROP TABLE IF EXISTS `ApParticleMovieParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApParticleMovieParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `boxSize` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `aceCutoff` double DEFAULT NULL,
  `correlationMin` double DEFAULT NULL,
  `correlationMax` double DEFAULT NULL,
  `checkMask` text,
  `checkImage` tinyint(1) DEFAULT NULL,
  `norejects` tinyint(1) DEFAULT NULL,
  `minDefocus` double DEFAULT NULL,
  `maxDefocus` double DEFAULT NULL,
  `defocpair` tinyint(1) DEFAULT NULL,
  `tiltangle` text,
  `rotate` tinyint(1) DEFAULT NULL,
  `frameavg` int(20) DEFAULT NULL,
  `framestep` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `checkImage` (`checkImage`),
  KEY `norejects` (`norejects`),
  KEY `defocpair` (`defocpair`),
  KEY `rotate` (`rotate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApParticleMovieParamsData`
--

LOCK TABLES `ApParticleMovieParamsData` WRITE;
/*!40000 ALTER TABLE `ApParticleMovieParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApParticleMovieParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApParticleMovieRunData`
--

DROP TABLE IF EXISTS `ApParticleMovieRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApParticleMovieRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `movieRunName` text,
  `REF|ApParticleMovieParamsData|movieParams` int(20) DEFAULT NULL,
  `REF|ApSelectionRunData|selectionrun` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApParticleMovieParamsData|movieParams` (`REF|ApParticleMovieParamsData|movieParams`),
  KEY `REF|ApSelectionRunData|selectionrun` (`REF|ApSelectionRunData|selectionrun`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApParticleMovieRunData`
--

LOCK TABLES `ApParticleMovieRunData` WRITE;
/*!40000 ALTER TABLE `ApParticleMovieRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApParticleMovieRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApPathData`
--

DROP TABLE IF EXISTS `ApPathData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApPathData` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `path` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `path_index32` (`path`(32))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApPathData`
--

LOCK TABLES `ApPathData` WRITE;
/*!40000 ALTER TABLE `ApPathData` DISABLE KEYS */;
INSERT INTO `ApPathData` VALUES (1,'2016-06-30 15:08:38','/emg/data/leginon/06jul12a/templates');
/*!40000 ALTER TABLE `ApPathData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApPrepRefineData`
--

DROP TABLE IF EXISTS `ApPrepRefineData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApPrepRefineData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApAppionJobData|job` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `method` text,
  `description` text,
  `REF|ApRefineIterData|paramiter` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApAppionJobData|job` (`REF|ApAppionJobData|job`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApRefineIterData|paramiter` (`REF|ApRefineIterData|paramiter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApPrepRefineData`
--

LOCK TABLES `ApPrepRefineData` WRITE;
/*!40000 ALTER TABLE `ApPrepRefineData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApPrepRefineData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApProtomoAlignerParamsData`
--

DROP TABLE IF EXISTS `ApProtomoAlignerParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApProtomoAlignerParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTomoAlignmentRunData|alignrun` int(20) DEFAULT NULL,
  `REF|ApProtomoParamsData|protomo` int(20) DEFAULT NULL,
  `REF|ApProtomoRefinementParamsData|refine_cycle` int(20) DEFAULT NULL,
  `REF|ApProtomoRefinementParamsData|good_cycle` int(20) DEFAULT NULL,
  `good_start` int(20) DEFAULT NULL,
  `good_end` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTomoAlignmentRunData|alignrun` (`REF|ApTomoAlignmentRunData|alignrun`),
  KEY `REF|ApProtomoParamsData|protomo` (`REF|ApProtomoParamsData|protomo`),
  KEY `REF|ApProtomoRefinementParamsData|refine_cycle` (`REF|ApProtomoRefinementParamsData|refine_cycle`),
  KEY `REF|ApProtomoRefinementParamsData|good_cycle` (`REF|ApProtomoRefinementParamsData|good_cycle`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApProtomoAlignerParamsData`
--

LOCK TABLES `ApProtomoAlignerParamsData` WRITE;
/*!40000 ALTER TABLE `ApProtomoAlignerParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApProtomoAlignerParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApProtomoAlignmentData`
--

DROP TABLE IF EXISTS `ApProtomoAlignmentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApProtomoAlignmentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTomoAlignerParamsData|aligner` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `rotation` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTomoAlignerParamsData|aligner` (`REF|ApTomoAlignerParamsData|aligner`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApProtomoAlignmentData`
--

LOCK TABLES `ApProtomoAlignmentData` WRITE;
/*!40000 ALTER TABLE `ApProtomoAlignmentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApProtomoAlignmentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApProtomoModelData`
--

DROP TABLE IF EXISTS `ApProtomoModelData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApProtomoModelData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTomoAlignerParamsData|aligner` int(20) DEFAULT NULL,
  `psi` double DEFAULT NULL,
  `theta` double DEFAULT NULL,
  `phi` double DEFAULT NULL,
  `azimuth` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTomoAlignerParamsData|aligner` (`REF|ApTomoAlignerParamsData|aligner`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApProtomoModelData`
--

LOCK TABLES `ApProtomoModelData` WRITE;
/*!40000 ALTER TABLE `ApProtomoModelData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApProtomoModelData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApProtomoParamsData`
--

DROP TABLE IF EXISTS `ApProtomoParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApProtomoParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `series_name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApProtomoParamsData`
--

LOCK TABLES `ApProtomoParamsData` WRITE;
/*!40000 ALTER TABLE `ApProtomoParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApProtomoParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApProtomoRefinementParamsData`
--

DROP TABLE IF EXISTS `ApProtomoRefinementParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApProtomoRefinementParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApProtomoParamsData|protomo` int(20) DEFAULT NULL,
  `cycle` int(20) DEFAULT NULL,
  `alismp` double DEFAULT NULL,
  `cormod` text,
  `imgref` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|reference` int(20) DEFAULT NULL,
  `SUBD|alibox|x` double DEFAULT NULL,
  `SUBD|alibox|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApProtomoParamsData|protomo` (`REF|ApProtomoParamsData|protomo`),
  KEY `REF|leginondata|AcquisitionImageData|reference` (`REF|leginondata|AcquisitionImageData|reference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApProtomoRefinementParamsData`
--

LOCK TABLES `ApProtomoRefinementParamsData` WRITE;
/*!40000 ALTER TABLE `ApProtomoRefinementParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApProtomoRefinementParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRMeasureData`
--

DROP TABLE IF EXISTS `ApRMeasureData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRMeasureData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `volume` text,
  `rMeasure` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRMeasureData`
--

LOCK TABLES `ApRMeasureData` WRITE;
/*!40000 ALTER TABLE `ApRMeasureData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRMeasureData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRaptorParamsData`
--

DROP TABLE IF EXISTS `ApRaptorParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRaptorParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `markersize` int(20) DEFAULT NULL,
  `markernumber` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRaptorParamsData`
--

LOCK TABLES `ApRaptorParamsData` WRITE;
/*!40000 ALTER TABLE `ApRaptorParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRaptorParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRctRunData`
--

DROP TABLE IF EXISTS `ApRctRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRctRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `classnums` text,
  `numiter` int(20) DEFAULT NULL,
  `maskrad` int(20) DEFAULT NULL,
  `lowpassvol` double DEFAULT NULL,
  `highpasspart` double DEFAULT NULL,
  `lowpasspart` double DEFAULT NULL,
  `median` int(20) DEFAULT NULL,
  `description` text,
  `numpart` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApResolutionData|fsc_resolution` int(20) DEFAULT NULL,
  `REF|ApResolutionData|rmeasure_resolution` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApStackData|tiltstack` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  `REF|ApClusteringStackData|clusterstack` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApResolutionData|fsc_resolution` (`REF|ApResolutionData|fsc_resolution`),
  KEY `REF|ApResolutionData|rmeasure_resolution` (`REF|ApResolutionData|rmeasure_resolution`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|tiltstack` (`REF|ApStackData|tiltstack`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`),
  KEY `REF|ApClusteringStackData|clusterstack` (`REF|ApClusteringStackData|clusterstack`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRctRunData`
--

LOCK TABLES `ApRctRunData` WRITE;
/*!40000 ALTER TABLE `ApRctRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRctRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefBasedRunData`
--

DROP TABLE IF EXISTS `ApRefBasedRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefBasedRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `mask_diam` int(20) DEFAULT NULL,
  `xysearch` int(20) DEFAULT NULL,
  `xystep` int(20) DEFAULT NULL,
  `first_ring` int(20) DEFAULT NULL,
  `last_ring` int(20) DEFAULT NULL,
  `num_iter` int(20) DEFAULT NULL,
  `invert_templs` tinyint(1) DEFAULT NULL,
  `num_templs` int(20) DEFAULT NULL,
  `csym` int(20) DEFAULT NULL,
  `run_seconds` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `invert_templs` (`invert_templs`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefBasedRunData`
--

LOCK TABLES `ApRefBasedRunData` WRITE;
/*!40000 ALTER TABLE `ApRefBasedRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefBasedRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineGoodBadParticleData`
--

DROP TABLE IF EXISTS `ApRefineGoodBadParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineGoodBadParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApRefineIterData|refine` int(20) DEFAULT NULL,
  `good_refine` int(20) DEFAULT NULL,
  `bad_refine` int(20) DEFAULT NULL,
  `good_postRefine` int(20) DEFAULT NULL,
  `bad_postRefine` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApRefineIterData|refine` (`REF|ApRefineIterData|refine`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineGoodBadParticleData`
--

LOCK TABLES `ApRefineGoodBadParticleData` WRITE;
/*!40000 ALTER TABLE `ApRefineGoodBadParticleData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineGoodBadParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineInitModelData`
--

DROP TABLE IF EXISTS `ApRefineInitModelData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineInitModelData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPrepRefineData|preprefine` int(20) DEFAULT NULL,
  `REF|ApInitialModelData|refmodel` int(20) DEFAULT NULL,
  `filename` text,
  `format` text,
  `apix` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPrepRefineData|preprefine` (`REF|ApPrepRefineData|preprefine`),
  KEY `REF|ApInitialModelData|refmodel` (`REF|ApInitialModelData|refmodel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineInitModelData`
--

LOCK TABLES `ApRefineInitModelData` WRITE;
/*!40000 ALTER TABLE `ApRefineInitModelData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineInitModelData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineIterData`
--

DROP TABLE IF EXISTS `ApRefineIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iteration` int(20) DEFAULT NULL,
  `exemplar` tinyint(1) DEFAULT NULL,
  `angularSamplingRate` int(20) DEFAULT NULL,
  `mask` int(20) DEFAULT NULL,
  `imask` int(20) DEFAULT NULL,
  `alignmentInnerRadius` int(20) DEFAULT NULL,
  `alignmentOuterRadius` int(20) DEFAULT NULL,
  `volumeDensity` text,
  `refineClassAverages` text,
  `postRefineClassAverages` text,
  `classVariance` text,
  `REF|ApSymmetryData|symmetry` int(20) DEFAULT NULL,
  `REF|ApRefineRunData|refineRun` int(20) DEFAULT NULL,
  `REF|ApResolutionData|resolution` int(20) DEFAULT NULL,
  `REF|ApRMeasureData|rMeasure` int(20) DEFAULT NULL,
  `REF|ApEmanRefineIterData|emanParams` int(20) DEFAULT NULL,
  `REF|ApXmippRefineIterData|xmippParams` int(20) DEFAULT NULL,
  `REF|ApFrealignIterData|frealignParams` int(20) DEFAULT NULL,
  `REF|ApXmippML3DRefineIterData|xmippML3DParams` int(20) DEFAULT NULL,
  `REF|ApRelionIterData|relionParams` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `exemplar` (`exemplar`),
  KEY `REF|ApSymmetryData|symmetry` (`REF|ApSymmetryData|symmetry`),
  KEY `REF|ApRefineRunData|refineRun` (`REF|ApRefineRunData|refineRun`),
  KEY `REF|ApResolutionData|resolution` (`REF|ApResolutionData|resolution`),
  KEY `REF|ApRMeasureData|rMeasure` (`REF|ApRMeasureData|rMeasure`),
  KEY `REF|ApEmanRefineIterData|emanParams` (`REF|ApEmanRefineIterData|emanParams`),
  KEY `REF|ApXmippRefineIterData|xmippParams` (`REF|ApXmippRefineIterData|xmippParams`),
  KEY `REF|ApFrealignIterData|frealignParams` (`REF|ApFrealignIterData|frealignParams`),
  KEY `REF|ApXmippML3DRefineIterData|xmippML3DParams` (`REF|ApXmippML3DRefineIterData|xmippML3DParams`),
  KEY `REF|ApRelionIterData|relionParams` (`REF|ApRelionIterData|relionParams`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineIterData`
--

LOCK TABLES `ApRefineIterData` WRITE;
/*!40000 ALTER TABLE `ApRefineIterData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineIterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineMaskVolData`
--

DROP TABLE IF EXISTS `ApRefineMaskVolData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineMaskVolData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPrepRefineData|preprefine` int(20) DEFAULT NULL,
  `REF|ApInitialModelData|refmodel` int(20) DEFAULT NULL,
  `filename` text,
  `format` text,
  `apix` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPrepRefineData|preprefine` (`REF|ApPrepRefineData|preprefine`),
  KEY `REF|ApInitialModelData|refmodel` (`REF|ApInitialModelData|refmodel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineMaskVolData`
--

LOCK TABLES `ApRefineMaskVolData` WRITE;
/*!40000 ALTER TABLE `ApRefineMaskVolData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineMaskVolData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineParticleData`
--

DROP TABLE IF EXISTS `ApRefineParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApRefineIterData|refineIter` int(20) DEFAULT NULL,
  `REF|ApMultiModelRefineRunData|multiModelRefineRun` int(20) DEFAULT NULL,
  `REF|ApRefineReferenceData|reference_number` int(20) DEFAULT NULL,
  `REF|ApStackParticleData|particle` int(20) DEFAULT NULL,
  `shiftx` double DEFAULT NULL,
  `shifty` double DEFAULT NULL,
  `euler1` double DEFAULT NULL,
  `euler2` double DEFAULT NULL,
  `euler3` double DEFAULT NULL,
  `quality_factor` double DEFAULT NULL,
  `phase_residual` double DEFAULT NULL,
  `mirror` tinyint(1) DEFAULT NULL,
  `3Dref_num` int(20) DEFAULT NULL,
  `2Dclass_num` int(20) DEFAULT NULL,
  `refine_keep` tinyint(1) DEFAULT NULL,
  `postRefine_keep` tinyint(1) DEFAULT NULL,
  `euler_convention` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApRefineIterData|refineIter` (`REF|ApRefineIterData|refineIter`),
  KEY `REF|ApMultiModelRefineRunData|multiModelRefineRun` (`REF|ApMultiModelRefineRunData|multiModelRefineRun`),
  KEY `REF|ApRefineReferenceData|reference_number` (`REF|ApRefineReferenceData|reference_number`),
  KEY `REF|ApStackParticleData|particle` (`REF|ApStackParticleData|particle`),
  KEY `mirror` (`mirror`),
  KEY `refine_keep` (`refine_keep`),
  KEY `postRefine_keep` (`postRefine_keep`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineParticleData`
--

LOCK TABLES `ApRefineParticleData` WRITE;
/*!40000 ALTER TABLE `ApRefineParticleData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineReferenceData`
--

DROP TABLE IF EXISTS `ApRefineReferenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineReferenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `volumeDensityStart` text,
  `volumeDensityEnd` text,
  `reference_number` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApRefineIterData|iteration` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApRefineIterData|iteration` (`REF|ApRefineIterData|iteration`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineReferenceData`
--

LOCK TABLES `ApRefineReferenceData` WRITE;
/*!40000 ALTER TABLE `ApRefineReferenceData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineReferenceData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineRunData`
--

DROP TABLE IF EXISTS `ApRefineRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `package` text,
  `description` text,
  `num_iter` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `reference_number` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApInitialModelData|initialModel` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApAppionJobData|job` int(20) DEFAULT NULL,
  `REF|ApMultiModelRefineRunData|multiModelRefineRun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApInitialModelData|initialModel` (`REF|ApInitialModelData|initialModel`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApAppionJobData|job` (`REF|ApAppionJobData|job`),
  KEY `REF|ApMultiModelRefineRunData|multiModelRefineRun` (`REF|ApMultiModelRefineRunData|multiModelRefineRun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineRunData`
--

LOCK TABLES `ApRefineRunData` WRITE;
/*!40000 ALTER TABLE `ApRefineRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRefineStackData`
--

DROP TABLE IF EXISTS `ApRefineStackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRefineStackData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPrepRefineData|preprefine` int(20) DEFAULT NULL,
  `REF|ApStackData|stackref` int(20) DEFAULT NULL,
  `filename` text,
  `bin` int(20) DEFAULT NULL,
  `lowpass` double DEFAULT NULL,
  `highpass` double DEFAULT NULL,
  `last_part` int(20) DEFAULT NULL,
  `format` text,
  `apix` double DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `cs` double DEFAULT NULL,
  `recon` tinyint(1) DEFAULT NULL,
  `phaseflipped` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPrepRefineData|preprefine` (`REF|ApPrepRefineData|preprefine`),
  KEY `REF|ApStackData|stackref` (`REF|ApStackData|stackref`),
  KEY `recon` (`recon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRefineStackData`
--

LOCK TABLES `ApRefineStackData` WRITE;
/*!40000 ALTER TABLE `ApRefineStackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRefineStackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRelionIterData`
--

DROP TABLE IF EXISTS `ApRelionIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRelionIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ini_high` int(20) DEFAULT NULL,
  `ctf` tinyint(1) DEFAULT NULL,
  `offset_step` int(20) DEFAULT NULL,
  `auto_local_healpix_order` int(20) DEFAULT NULL,
  `healpix_order` int(20) DEFAULT NULL,
  `offset_range` int(20) DEFAULT NULL,
  `ctf_intact_first_peak` tinyint(1) DEFAULT NULL,
  `ctf_corrected_ref` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRelionIterData`
--

LOCK TABLES `ApRelionIterData` WRITE;
/*!40000 ALTER TABLE `ApRelionIterData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRelionIterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApResolutionData`
--

DROP TABLE IF EXISTS `ApResolutionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApResolutionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fscfile` text,
  `half` double DEFAULT NULL,
  `type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApResolutionData`
--

LOCK TABLES `ApResolutionData` WRITE;
/*!40000 ALTER TABLE `ApResolutionData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApResolutionData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRotKerDenSOMParamsData`
--

DROP TABLE IF EXISTS `ApRotKerDenSOMParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRotKerDenSOMParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mask_diam` double DEFAULT NULL,
  `x_dimension` int(20) DEFAULT NULL,
  `y_dimension` int(20) DEFAULT NULL,
  `convergence` text,
  `run_seconds` int(20) DEFAULT NULL,
  `initregulfact` double DEFAULT NULL,
  `finalregulfact` double DEFAULT NULL,
  `incrementregulfact` int(20) DEFAULT NULL,
  `spectrainnerradius` int(20) DEFAULT NULL,
  `spectraouterradius` int(20) DEFAULT NULL,
  `spectralowharmonic` int(20) DEFAULT NULL,
  `spectrahighharmonic` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRotKerDenSOMParamsData`
--

LOCK TABLES `ApRotKerDenSOMParamsData` WRITE;
/*!40000 ALTER TABLE `ApRotKerDenSOMParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRotKerDenSOMParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApRunsInStackData`
--

DROP TABLE IF EXISTS `ApRunsInStackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApRunsInStackData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApStackRunData|stackRun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApStackRunData|stackRun` (`REF|ApStackRunData|stackRun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApRunsInStackData`
--

LOCK TABLES `ApRunsInStackData` WRITE;
/*!40000 ALTER TABLE `ApRunsInStackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApRunsInStackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSelectionParamsData`
--

DROP TABLE IF EXISTS `ApSelectionParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSelectionParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diam` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `manual_thresh` double DEFAULT NULL,
  `lp_filt` int(20) DEFAULT NULL,
  `hp_filt` int(20) DEFAULT NULL,
  `invert` int(20) DEFAULT NULL,
  `max_peaks` int(20) DEFAULT NULL,
  `max_threshold` double DEFAULT NULL,
  `median` int(20) DEFAULT NULL,
  `pixel_value_limit` double DEFAULT NULL,
  `maxsize` int(20) DEFAULT NULL,
  `defocal_pairs` tinyint(1) DEFAULT NULL,
  `overlapmult` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `defocal_pairs` (`defocal_pairs`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSelectionParamsData`
--

LOCK TABLES `ApSelectionParamsData` WRITE;
/*!40000 ALTER TABLE `ApSelectionParamsData` DISABLE KEYS */;
INSERT INTO `ApSelectionParamsData` VALUES (1,'2016-06-30 19:45:30',180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ApSelectionParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSelectionRunData`
--

DROP TABLE IF EXISTS `ApSelectionRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSelectionRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApSelectionParamsData|params` int(20) DEFAULT NULL,
  `REF|ApDogParamsData|dogparams` int(20) DEFAULT NULL,
  `REF|ApManualParamsData|manparams` int(20) DEFAULT NULL,
  `REF|ApTiltAlignParamsData|tiltparams` int(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApSelectionParamsData|params` (`REF|ApSelectionParamsData|params`),
  KEY `REF|ApDogParamsData|dogparams` (`REF|ApDogParamsData|dogparams`),
  KEY `REF|ApManualParamsData|manparams` (`REF|ApManualParamsData|manparams`),
  KEY `REF|ApTiltAlignParamsData|tiltparams` (`REF|ApTiltAlignParamsData|tiltparams`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSelectionRunData`
--

LOCK TABLES `ApSelectionRunData` WRITE;
/*!40000 ALTER TABLE `ApSelectionRunData` DISABLE KEYS */;
INSERT INTO `ApSelectionRunData` VALUES (2,'2016-06-30 19:45:30','default1',NULL,NULL,1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ApSelectionRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSizingRunData`
--

DROP TABLE IF EXISTS `ApSizingRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSizingRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `method` text,
  `REF|ApSelectionRunData|tracerun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApSelectionRunData|tracerun` (`REF|ApSelectionRunData|tracerun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSizingRunData`
--

LOCK TABLES `ApSizingRunData` WRITE;
/*!40000 ALTER TABLE `ApSizingRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSizingRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSparxISACJobData`
--

DROP TABLE IF EXISTS `ApSparxISACJobData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSparxISACJobData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `timestamp` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `finished` (`finished`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSparxISACJobData`
--

LOCK TABLES `ApSparxISACJobData` WRITE;
/*!40000 ALTER TABLE `ApSparxISACJobData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSparxISACJobData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSparxISACRunData`
--

DROP TABLE IF EXISTS `ApSparxISACRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSparxISACRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `REF|ApSparxISACJobData|job` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstackid` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSparxISACJobData|job` (`REF|ApSparxISACJobData|job`),
  KEY `REF|ApAlignStackData|alignstackid` (`REF|ApAlignStackData|alignstackid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSparxISACRunData`
--

LOCK TABLES `ApSparxISACRunData` WRITE;
/*!40000 ALTER TABLE `ApSparxISACRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSparxISACRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSpiderClusteringParamsData`
--

DROP TABLE IF EXISTS `ApSpiderClusteringParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSpiderClusteringParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `factor_list` text,
  `method` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSpiderClusteringParamsData`
--

LOCK TABLES `ApSpiderClusteringParamsData` WRITE;
/*!40000 ALTER TABLE `ApSpiderClusteringParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSpiderClusteringParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSpiderNoRefRunData`
--

DROP TABLE IF EXISTS `ApSpiderNoRefRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSpiderNoRefRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `particle_diam` double DEFAULT NULL,
  `first_ring` int(20) DEFAULT NULL,
  `last_ring` int(20) DEFAULT NULL,
  `run_seconds` int(20) DEFAULT NULL,
  `init_method` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSpiderNoRefRunData`
--

LOCK TABLES `ApSpiderNoRefRunData` WRITE;
/*!40000 ALTER TABLE `ApSpiderNoRefRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSpiderNoRefRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApStackData`
--

DROP TABLE IF EXISTS `ApStackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApStackData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `name` text,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApStackData|oldstack` int(20) DEFAULT NULL,
  `substackname` text,
  `pixelsize` double DEFAULT NULL,
  `centered` tinyint(1) DEFAULT NULL,
  `junksorted` tinyint(1) DEFAULT NULL,
  `beamtilt_corrected` tinyint(1) DEFAULT NULL,
  `mask` int(20) DEFAULT NULL,
  `maxshift` int(20) DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApStackData|oldstack` (`REF|ApStackData|oldstack`),
  KEY `centered` (`centered`),
  KEY `junksorted` (`junksorted`),
  KEY `beamtilt_corrected` (`beamtilt_corrected`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApStackData`
--

LOCK TABLES `ApStackData` WRITE;
/*!40000 ALTER TABLE `ApStackData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApStackData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApStackFormatData`
--

DROP TABLE IF EXISTS `ApStackFormatData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApStackFormatData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApPathData|eman` int(20) DEFAULT NULL,
  `REF|ApPathData|spider` int(20) DEFAULT NULL,
  `REF|ApPathData|xmipp` int(20) DEFAULT NULL,
  `REF|ApPathData|frealign` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApPathData|eman` (`REF|ApPathData|eman`),
  KEY `REF|ApPathData|spider` (`REF|ApPathData|spider`),
  KEY `REF|ApPathData|xmipp` (`REF|ApPathData|xmipp`),
  KEY `REF|ApPathData|frealign` (`REF|ApPathData|frealign`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApStackFormatData`
--

LOCK TABLES `ApStackFormatData` WRITE;
/*!40000 ALTER TABLE `ApStackFormatData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApStackFormatData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApStackParamsData`
--

DROP TABLE IF EXISTS `ApStackParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApStackParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `boxSize` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `aceCutoff` double DEFAULT NULL,
  `correlationMin` double DEFAULT NULL,
  `correlationMax` double DEFAULT NULL,
  `checkMask` text,
  `checkImage` tinyint(1) DEFAULT NULL,
  `norejects` tinyint(1) DEFAULT NULL,
  `minDefocus` double DEFAULT NULL,
  `maxDefocus` double DEFAULT NULL,
  `defocpair` tinyint(1) DEFAULT NULL,
  `tiltangle` text,
  `rotate` tinyint(1) DEFAULT NULL,
  `phaseFlipped` tinyint(1) DEFAULT NULL,
  `fliptype` text,
  `fileType` text,
  `inverted` tinyint(1) DEFAULT NULL,
  `normalized` tinyint(1) DEFAULT NULL,
  `xmipp-norm` double DEFAULT NULL,
  `lowpass` double DEFAULT NULL,
  `highpass` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `checkImage` (`checkImage`),
  KEY `norejects` (`norejects`),
  KEY `defocpair` (`defocpair`),
  KEY `rotate` (`rotate`),
  KEY `phaseFlipped` (`phaseFlipped`),
  KEY `inverted` (`inverted`),
  KEY `normalized` (`normalized`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApStackParamsData`
--

LOCK TABLES `ApStackParamsData` WRITE;
/*!40000 ALTER TABLE `ApStackParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApStackParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApStackParticleData`
--

DROP TABLE IF EXISTS `ApStackParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApStackParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `particleNumber` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApStackRunData|stackRun` int(20) DEFAULT NULL,
  `REF|ApParticleData|particle` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `skew` double DEFAULT NULL,
  `kurtosis` double DEFAULT NULL,
  `edgemean` double DEFAULT NULL,
  `edgestdev` double DEFAULT NULL,
  `centermean` double DEFAULT NULL,
  `centerstdev` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApStackRunData|stackRun` (`REF|ApStackRunData|stackRun`),
  KEY `REF|ApParticleData|particle` (`REF|ApParticleData|particle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApStackParticleData`
--

LOCK TABLES `ApStackParticleData` WRITE;
/*!40000 ALTER TABLE `ApStackParticleData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApStackParticleData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApStackRunData`
--

DROP TABLE IF EXISTS `ApStackRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApStackRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stackRunName` text,
  `REF|ApStackParamsData|stackParams` int(20) DEFAULT NULL,
  `REF|ApSyntheticStackParamsData|syntheticStackParams` int(20) DEFAULT NULL,
  `REF|ApSelectionRunData|selectionrun` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApStackParamsData|stackParams` (`REF|ApStackParamsData|stackParams`),
  KEY `REF|ApSyntheticStackParamsData|syntheticStackParams` (`REF|ApSyntheticStackParamsData|syntheticStackParams`),
  KEY `REF|ApSelectionRunData|selectionrun` (`REF|ApSelectionRunData|selectionrun`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApStackRunData`
--

LOCK TABLES `ApStackRunData` WRITE;
/*!40000 ALTER TABLE `ApStackRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApStackRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSubTomogramRunData`
--

DROP TABLE IF EXISTS `ApSubTomogramRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSubTomogramRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|ApSelectionRunData|pick` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `runname` text,
  `invert` tinyint(1) DEFAULT NULL,
  `subbin` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApSelectionRunData|pick` (`REF|ApSelectionRunData|pick`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `invert` (`invert`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSubTomogramRunData`
--

LOCK TABLES `ApSubTomogramRunData` WRITE;
/*!40000 ALTER TABLE `ApSubTomogramRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSubTomogramRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSymmetryData`
--

DROP TABLE IF EXISTS `ApSymmetryData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSymmetryData` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `eman_name` varchar(8) DEFAULT NULL,
  `fold_symmetry` int(11) DEFAULT NULL,
  `symmetry` text,
  `description` text,
  PRIMARY KEY (`DEF_id`),
  UNIQUE KEY `symmetry` (`symmetry`(12)),
  KEY `eman_name` (`eman_name`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSymmetryData`
--

LOCK TABLES `ApSymmetryData` WRITE;
/*!40000 ALTER TABLE `ApSymmetryData` DISABLE KEYS */;
INSERT INTO `ApSymmetryData` VALUES (1,'2015-10-05 17:02:51','c1',1,'C1','Asymmetric'),(2,'2015-10-05 17:02:51','icos',60,'Icos (5 3 2) EMAN','EMAN icosahedral convention: 5-fold along the z axis, 2-fold along the x and y axes. Symmetries along the xz-plane are 2, 3, 5, 2, 5.'),(3,'2015-10-05 17:02:51','icos',60,'Icos (2 3 5) Viper/3DEM','Viper/3DEM icosahedral convention: 2-fold icosahedral symmetry along the x, y, and z axes, front-most 5-fold vertices in yz plane. Symmetries along the xz-plane are 5, 3, 2, 3, 5.'),(4,'2015-10-05 17:02:51','icos',60,'Icos (2 5 3) Crowther','Crowther icosahedral convention. 2-fold icosahedral symmetry along the x, y, and z axes, front-most 5-fold vertices in xz plane. Symmetries along the xz-plane are 2, 5, 3, 2, 3.'),(5,'2015-10-05 17:02:51','oct',8,'Oct','Octahedral symmetry. 4-fold octahedral symmetry along the x, y, and z axes.'),(6,'2015-10-05 17:02:51','c2',2,'C2 (z)','2-fold symmetry along the z axis'),(7,'2015-10-05 17:02:51','c3',3,'C3 (z)','3-fold symmetry along the z axis'),(8,'2015-10-05 17:02:51','c4',4,'C4 (z)','4-fold symmetry along the z axis'),(9,'2015-10-05 17:02:51','c5',5,'C5 (z)','5-fold symmetry along the z axis'),(10,'2015-10-05 17:02:51','c6',6,'C6 (z)','6-fold symmetry along the z axis'),(11,'2015-10-05 17:02:51','c7',7,'C7 (z)','7-fold symmetry along the z axis'),(12,'2015-10-05 17:02:51','c8',8,'C8 (z)','8-fold symmetry along the z axis'),(13,'2015-10-05 17:02:51','c9',9,'C9 (z)','9-fold symmetry along the z axis'),(14,'2015-10-05 17:02:51','c10',10,'C10 (z)','10-fold symmetry along the z axis'),(15,'2015-10-05 17:02:51','c11',11,'C11 (z)','11-fold symmetry along the z axis'),(16,'2015-10-05 17:02:51','c12',12,'C12 (z)','12-fold symmetry along the z axis'),(17,'2015-10-05 17:02:51','c13',13,'C13 (z)','13-fold symmetry along the z axis'),(18,'2015-10-05 17:02:51','c14',14,'C14 (z)','14-fold symmetry along the z axis'),(19,'2015-10-05 17:02:51','c15',15,'C15 (z)','15-fold symmetry along the z axis'),(20,'2015-10-05 17:02:51','d2',4,'D2 (z)','2-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(21,'2015-10-05 17:02:51','d3',6,'D3 (z)','3-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(22,'2015-10-05 17:02:51','d4',8,'D4 (z)','4-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(23,'2015-10-05 17:02:51','d5',10,'D5 (z)','5-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(24,'2015-10-05 17:02:51','d6',12,'D6 (z)','6-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(25,'2015-10-05 17:02:51','d7',14,'D7 (z)','7-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(26,'2015-10-05 17:02:51','d8',16,'D8 (z)','8-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(27,'2015-10-05 17:02:51','d9',18,'D9 (z)','9-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(28,'2015-10-05 17:02:51','d10',20,'D10 (z)','10-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(29,'2015-10-05 17:02:51','d11',22,'D11 (z)','11-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(30,'2015-10-05 17:02:51','d12',26,'D12 (z)','12-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(31,'2015-10-05 17:02:51','d13',26,'D13 (z)','13-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(32,'2015-10-05 17:02:51','d14',28,'D14 (z)','14-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z'),(33,'2015-10-05 17:02:51','d15',30,'D15 (z)','15-fold symmetry along the z axis, 2-fold rotational axis 90 degrees from z');
/*!40000 ALTER TABLE `ApSymmetryData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApSyntheticStackParamsData`
--

DROP TABLE IF EXISTS `ApSyntheticStackParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApSyntheticStackParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApInitialModelData|modelid` int(20) DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `apix` double DEFAULT NULL,
  `projcount` int(20) DEFAULT NULL,
  `projstdev` double DEFAULT NULL,
  `shiftrad` double DEFAULT NULL,
  `rotang` int(20) DEFAULT NULL,
  `flip` tinyint(1) DEFAULT NULL,
  `kilovolts` int(20) DEFAULT NULL,
  `spher_aber` double DEFAULT NULL,
  `defocus_x` double DEFAULT NULL,
  `defocus_y` double DEFAULT NULL,
  `randomdef` tinyint(1) DEFAULT NULL,
  `randomdef_std` double DEFAULT NULL,
  `astigmatism` double DEFAULT NULL,
  `snr1` double DEFAULT NULL,
  `snrtot` double DEFAULT NULL,
  `envelope` text,
  `ace2correct` tinyint(1) DEFAULT NULL,
  `ace2correct_rand` tinyint(1) DEFAULT NULL,
  `ace2correct_std` double DEFAULT NULL,
  `ace2estimate` tinyint(1) DEFAULT NULL,
  `lowpass` int(20) DEFAULT NULL,
  `highpass` int(20) DEFAULT NULL,
  `norm` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApInitialModelData|modelid` (`REF|ApInitialModelData|modelid`),
  KEY `flip` (`flip`),
  KEY `randomdef` (`randomdef`),
  KEY `ace2correct` (`ace2correct`),
  KEY `ace2correct_rand` (`ace2correct_rand`),
  KEY `ace2estimate` (`ace2estimate`),
  KEY `norm` (`norm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApSyntheticStackParamsData`
--

LOCK TABLES `ApSyntheticStackParamsData` WRITE;
/*!40000 ALTER TABLE `ApSyntheticStackParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApSyntheticStackParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApTemplateImageData`
--

DROP TABLE IF EXISTS `ApTemplateImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTemplateImageData` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApPathData|path` bigint(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `templatename` text,
  `apix` double DEFAULT NULL,
  `diam` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT '0',
  `md5sum` varchar(32) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `stack_image_number` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  `REF|ApClusteringStackData|clusterstack` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|templatepath` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `hidden` (`hidden`),
  KEY `md5sum` (`md5sum`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`),
  KEY `REF|ApClusteringStackData|clusterstack` (`REF|ApClusteringStackData|clusterstack`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApTemplateImageData`
--

LOCK TABLES `ApTemplateImageData` WRITE;
/*!40000 ALTER TABLE `ApTemplateImageData` DISABLE KEYS */;
INSERT INTO `ApTemplateImageData` VALUES
(1,'2016-04-28 21:15:22',1,1,'groel_template1.mrc',3.26,180,'GroEL standard templates',0,'6050bd711d34714aa81c7c4da1146fb3',NULL,NULL,NULL,NULL),
(2,'2016-04-28 21:15:24',1,1,'groel_template2.mrc',3.26,180,'GroEL standard templates',0,'63103901516a56a4fe5349cdcbc470dc',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ApTemplateImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApTemplateRunData`
--

DROP TABLE IF EXISTS `ApTemplateRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTemplateRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTemplateImageData|template` int(20) DEFAULT NULL,
  `REF|ApSelectionRunData|selectionrun` int(20) DEFAULT NULL,
  `range_start` int(20) DEFAULT NULL,
  `range_end` int(20) DEFAULT NULL,
  `range_incr` int(20) DEFAULT NULL,
  `mirror` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTemplateImageData|template` (`REF|ApTemplateImageData|template`),
  KEY `REF|ApSelectionRunData|selectionrun` (`REF|ApSelectionRunData|selectionrun`),
  KEY `mirror` (`mirror`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApTemplateRunData`
--

LOCK TABLES `ApTemplateRunData` WRITE;
/*!40000 ALTER TABLE `ApTemplateRunData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApTemplateRunData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApTemplateStackData`
--

DROP TABLE IF EXISTS `ApTemplateStackData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTemplateStackData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApClusteringStackData|clusterstack` int(20) DEFAULT NULL,
  `REF|ApAlignStackData|alignstack` int(20) DEFAULT NULL,
  `templatename` text,
  `cls_avgs` tinyint(1) DEFAULT NULL,
  `forward_proj` tinyint(1) DEFAULT NULL,
  `origfile` text,
  `description` text,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `apix` double DEFAULT NULL,
  `boxsize` int(20) DEFAULT NULL,
  `numimages` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApClusteringStackData|clusterstack` (`REF|ApClusteringStackData|clusterstack`),
  KEY `REF|ApAlignStackData|alignstack` (`REF|ApAlignStackData|alignstack`),
  KEY `cls_avgs` (`cls_avgs`),
  KEY `forward_proj` (`forward_proj`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `hidden` (`hidden`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTestParamsData`
--

DROP TABLE IF EXISTS `ApTestParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTestParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bin` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTestResultData`
--

DROP TABLE IF EXISTS `ApTestResultData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTestResultData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTestRunData|testrun` int(20) DEFAULT NULL,
  `REF|leginondata|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTestRunData|testrun` (`REF|ApTestRunData|testrun`),
  KEY `REF|leginondata|AcquisitionImageData|image` (`REF|leginondata|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTestRunData`
--

DROP TABLE IF EXISTS `ApTestRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTestRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTestParamsData|params` int(20) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `append_timestamp` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTestParamsData|params` (`REF|ApTestParamsData|params`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTiltAlignParamsData`
--

DROP TABLE IF EXISTS `ApTiltAlignParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTiltAlignParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diam` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `invert` int(20) DEFAULT NULL,
  `lp_filt` int(20) DEFAULT NULL,
  `hp_filt` int(20) DEFAULT NULL,
  `median` int(20) DEFAULT NULL,
  `pixel_value_limit` double DEFAULT NULL,
  `output_type` text,
  `REF|ApSelectionRunData|oldselectionrun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApSelectionRunData|oldselectionrun` (`REF|ApSelectionRunData|oldselectionrun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTiltParticlePairData`
--

DROP TABLE IF EXISTS `ApTiltParticlePairData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTiltParticlePairData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApParticleData|particle1` int(20) DEFAULT NULL,
  `REF|ApParticleData|particle2` int(20) DEFAULT NULL,
  `REF|ApImageTiltTransformData|transform` int(20) DEFAULT NULL,
  `error` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApParticleData|particle1` (`REF|ApParticleData|particle1`),
  KEY `REF|ApParticleData|particle2` (`REF|ApParticleData|particle2`),
  KEY `REF|ApImageTiltTransformData|transform` (`REF|ApImageTiltTransformData|transform`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTiltsInAlignRunData`
--

DROP TABLE IF EXISTS `ApTiltsInAlignRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTiltsInAlignRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTomoAlignmentRunData|alignrun` int(20) DEFAULT NULL,
  `REF|leginondata|TiltSeriesData|tiltseries` int(20) DEFAULT NULL,
  `REF|leginondata|TomographySettingsData|settings` int(20) DEFAULT NULL,
  `primary_tiltseries` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTomoAlignmentRunData|alignrun` (`REF|ApTomoAlignmentRunData|alignrun`),
  KEY `REF|leginondata|TiltSeriesData|tiltseries` (`REF|leginondata|TiltSeriesData|tiltseries`),
  KEY `REF|leginondata|TomographySettingsData|settings` (`REF|leginondata|TomographySettingsData|settings`),
  KEY `primary_tiltseries` (`primary_tiltseries`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTomoAlignerParamsData`
--

DROP TABLE IF EXISTS `ApTomoAlignerParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTomoAlignerParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTomoAlignmentRunData|alignrun` int(20) DEFAULT NULL,
  `REF|ApProtomoParamsData|protomo` int(20) DEFAULT NULL,
  `REF|ApProtomoRefinementParamsData|refine_cycle` int(20) DEFAULT NULL,
  `REF|ApProtomoRefinementParamsData|good_cycle` int(20) DEFAULT NULL,
  `good_start` int(20) DEFAULT NULL,
  `good_end` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTomoAlignmentRunData|alignrun` (`REF|ApTomoAlignmentRunData|alignrun`),
  KEY `REF|ApProtomoParamsData|protomo` (`REF|ApProtomoParamsData|protomo`),
  KEY `REF|ApProtomoRefinementParamsData|refine_cycle` (`REF|ApProtomoRefinementParamsData|refine_cycle`),
  KEY `REF|ApProtomoRefinementParamsData|good_cycle` (`REF|ApProtomoRefinementParamsData|good_cycle`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTomoAlignmentRunData`
--

DROP TABLE IF EXISTS `ApTomoAlignmentRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTomoAlignmentRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|leginondata|TiltSeriesData|tiltseries` int(20) DEFAULT NULL,
  `REF|leginondata|TomographySettingsData|coarseLeginonParams` int(20) DEFAULT NULL,
  `REF|ApImodXcorrParamsData|coarseImodParams` int(20) DEFAULT NULL,
  `REF|ApProtomoParamsData|fineProtomoParams` int(20) DEFAULT NULL,
  `REF|ApRaptorParamsData|raptorParams` int(20) DEFAULT NULL,
  `bin` int(20) DEFAULT NULL,
  `name` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  `badAlign` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|leginondata|TiltSeriesData|tiltseries` (`REF|leginondata|TiltSeriesData|tiltseries`),
  KEY `REF|leginondata|TomographySettingsData|coarseLeginonParams` (`REF|leginondata|TomographySettingsData|coarseLeginonParams`),
  KEY `REF|ApImodXcorrParamsData|coarseImodParams` (`REF|ApImodXcorrParamsData|coarseImodParams`),
  KEY `REF|ApProtomoParamsData|fineProtomoParams` (`REF|ApProtomoParamsData|fineProtomoParams`),
  KEY `REF|ApRaptorParamsData|raptorParams` (`REF|ApRaptorParamsData|raptorParams`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `hidden` (`hidden`),
  KEY `badAlign` (`badAlign`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTomoAverageRunData`
--

DROP TABLE IF EXISTS `ApTomoAverageRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTomoAverageRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApStackData|stack` int(20) DEFAULT NULL,
  `REF|ApSubTomogramRunData|subtomorun` int(20) DEFAULT NULL,
  `xyhalfwidth` int(20) DEFAULT NULL,
  `description` text,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApStackData|stack` (`REF|ApStackData|stack`),
  KEY `REF|ApSubTomogramRunData|subtomorun` (`REF|ApSubTomogramRunData|subtomorun`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTomoAvgParticleData`
--

DROP TABLE IF EXISTS `ApTomoAvgParticleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTomoAvgParticleData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|ApTomoAverageRunData|avgrun` int(20) DEFAULT NULL,
  `REF|ApTomogramData|subtomo` int(20) DEFAULT NULL,
  `REF|ApAlignParticleData|aligned_particle` int(20) DEFAULT NULL,
  `z_shift` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTomoAverageRunData|avgrun` (`REF|ApTomoAverageRunData|avgrun`),
  KEY `REF|ApTomogramData|subtomo` (`REF|ApTomogramData|subtomo`),
  KEY `REF|ApAlignParticleData|aligned_particle` (`REF|ApAlignParticleData|aligned_particle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTomoReconParamsData`
--

DROP TABLE IF EXISTS `ApTomoReconParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTomoReconParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tilt_angle_offset` double DEFAULT NULL,
  `z_shift` double DEFAULT NULL,
  `tilt_axis_tilt_out_xyplane` double DEFAULT NULL,
  `tilt_axis_rotation_in_xyplane` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTomogramData`
--

DROP TABLE IF EXISTS `ApTomogramData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTomogramData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|session` int(20) DEFAULT NULL,
  `REF|leginondata|TiltSeriesData|tiltseries` int(20) DEFAULT NULL,
  `REF|ApFullTomogramData|fulltomogram` int(20) DEFAULT NULL,
  `REF|ApSubTomogramRunData|subtomorun` int(20) DEFAULT NULL,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|ApParticleData|center` int(20) DEFAULT NULL,
  `offsetz` int(20) DEFAULT NULL,
  `name` text,
  `number` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `description` text,
  `md5sum` text,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|session` (`REF|leginondata|SessionData|session`),
  KEY `REF|leginondata|TiltSeriesData|tiltseries` (`REF|leginondata|TiltSeriesData|tiltseries`),
  KEY `REF|ApFullTomogramData|fulltomogram` (`REF|ApFullTomogramData|fulltomogram`),
  KEY `REF|ApSubTomogramRunData|subtomorun` (`REF|ApSubTomogramRunData|subtomorun`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `REF|ApParticleData|center` (`REF|ApParticleData|center`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTopolRepJobData`
--

DROP TABLE IF EXISTS `ApTopolRepJobData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTopolRepJobData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `timestamp` text,
  `REF|ApPathData|path` int(20) DEFAULT NULL,
  `REF|projectdata|projects|project` int(20) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApPathData|path` (`REF|ApPathData|path`),
  KEY `finished` (`finished`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApTopolRepRunData`
--

DROP TABLE IF EXISTS `ApTopolRepRunData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApTopolRepRunData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `mask` int(20) DEFAULT NULL,
  `itermult` double DEFAULT NULL,
  `learn` double DEFAULT NULL,
  `ilearn` double DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `mramethod` text,
  `REF|ApTopolRepJobData|job` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApTopolRepJobData|job` (`REF|ApTopolRepJobData|job`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApXmippML3DRefineIterData`
--

DROP TABLE IF EXISTS `ApXmippML3DRefineIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApXmippML3DRefineIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InSelFile` text,
  `InitialReference` text,
  `WorkingDir` text,
  `DoDeleteWorkingDir` tinyint(1) DEFAULT NULL,
  `DoMlf` tinyint(1) DEFAULT NULL,
  `DoCorrectAmplitudes` tinyint(1) DEFAULT NULL,
  `InCtfDatFile` text,
  `HighResLimit` double DEFAULT NULL,
  `ImagesArePhaseFlipped` tinyint(1) DEFAULT NULL,
  `InitialMapIsAmplitudeCorrected` tinyint(1) DEFAULT NULL,
  `SeedsAreAmplitudeCorrected` tinyint(1) DEFAULT NULL,
  `DoCorrectGreyScale` tinyint(1) DEFAULT NULL,
  `ProjMatchSampling` int(20) DEFAULT NULL,
  `DoLowPassFilterReference` tinyint(1) DEFAULT NULL,
  `LowPassFilter` int(20) DEFAULT NULL,
  `PixelSize` double DEFAULT NULL,
  `DoGenerateSeeds` tinyint(1) DEFAULT NULL,
  `NumberOfReferences` int(20) DEFAULT NULL,
  `DoJustRefine` tinyint(1) DEFAULT NULL,
  `SeedsSelfile` text,
  `DoML3DClassification` tinyint(1) DEFAULT NULL,
  `AngularSampling` int(20) DEFAULT NULL,
  `NumberOfIterations` int(20) DEFAULT NULL,
  `Symmetry` text,
  `DoNorm` tinyint(1) DEFAULT NULL,
  `DoFourier` tinyint(1) DEFAULT NULL,
  `RestartIter` tinyint(1) DEFAULT NULL,
  `ExtraParamsMLrefine3D` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `DoDeleteWorkingDir` (`DoDeleteWorkingDir`),
  KEY `DoMlf` (`DoMlf`),
  KEY `DoCorrectAmplitudes` (`DoCorrectAmplitudes`),
  KEY `ImagesArePhaseFlipped` (`ImagesArePhaseFlipped`),
  KEY `InitialMapIsAmplitudeCorrected` (`InitialMapIsAmplitudeCorrected`),
  KEY `SeedsAreAmplitudeCorrected` (`SeedsAreAmplitudeCorrected`),
  KEY `DoCorrectGreyScale` (`DoCorrectGreyScale`),
  KEY `DoLowPassFilterReference` (`DoLowPassFilterReference`),
  KEY `DoGenerateSeeds` (`DoGenerateSeeds`),
  KEY `DoJustRefine` (`DoJustRefine`),
  KEY `DoML3DClassification` (`DoML3DClassification`),
  KEY `DoNorm` (`DoNorm`),
  KEY `DoFourier` (`DoFourier`),
  KEY `RestartIter` (`RestartIter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ApXmippRefineIterData`
--

DROP TABLE IF EXISTS `ApXmippRefineIterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApXmippRefineIterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NumberofIterations` int(20) DEFAULT NULL,
  `MaskFileName` text,
  `MaskRadius` int(20) DEFAULT NULL,
  `InnerRadius` int(20) DEFAULT NULL,
  `OuterRadius` int(20) DEFAULT NULL,
  `SymmetryGroup` text,
  `FourierMaxFrequencyOfInterest` double DEFAULT NULL,
  `SelFileName` text,
  `DocFileName` text,
  `ReferenceFileName` text,
  `WorkingDir` text,
  `CleanUpFiles` tinyint(1) DEFAULT NULL,
  `DoCtfCorrection` tinyint(1) DEFAULT NULL,
  `CTFDatName` text,
  `DoAutoCtfGroup` tinyint(1) DEFAULT NULL,
  `CtfGroupMaxDiff` double DEFAULT NULL,
  `CtfGroupMaxResol` double DEFAULT NULL,
  `PaddingFactor` double DEFAULT NULL,
  `WienerConstant` double DEFAULT NULL,
  `DataArePhaseFlipped` tinyint(1) DEFAULT NULL,
  `ReferenceIsCtfCorrected` tinyint(1) DEFAULT NULL,
  `DoMask` tinyint(1) DEFAULT NULL,
  `DoSphericalMask` tinyint(1) DEFAULT NULL,
  `AngSamplingRateDeg` double DEFAULT NULL,
  `MaxChangeInAngles` double DEFAULT NULL,
  `PerturbProjectionDirections` tinyint(1) DEFAULT NULL,
  `MaxChangeOffset` double DEFAULT NULL,
  `Search5DShift` int(20) DEFAULT NULL,
  `Search5DStep` int(20) DEFAULT NULL,
  `DoRetricSearchbyTiltAngle` tinyint(1) DEFAULT NULL,
  `Tilt0` double DEFAULT NULL,
  `TiltF` double DEFAULT NULL,
  `SymmetryGroupNeighbourhood` text,
  `OnlyWinner` tinyint(1) DEFAULT NULL,
  `MinimumCrossCorrelation` double DEFAULT NULL,
  `DiscardPercentage` double DEFAULT NULL,
  `ProjMatchingExtra` text,
  `DoAlign2D` tinyint(1) DEFAULT NULL,
  `Align2DIterNr` int(20) DEFAULT NULL,
  `Align2dMaxChangeOffset` double DEFAULT NULL,
  `Align2dMaxChangeRot` double DEFAULT NULL,
  `ReconstructionMethod` text,
  `ARTLambda` double DEFAULT NULL,
  `ARTReconstructionExtraCommand` text,
  `WBPReconstructionExtraCommand` text,
  `FourierReconstructionExtraCommand` text,
  `ResolSam` double DEFAULT NULL,
  `ConstantToAddToFiltration` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `CleanUpFiles` (`CleanUpFiles`),
  KEY `DoCtfCorrection` (`DoCtfCorrection`),
  KEY `DoAutoCtfGroup` (`DoAutoCtfGroup`),
  KEY `DataArePhaseFlipped` (`DataArePhaseFlipped`),
  KEY `ReferenceIsCtfCorrected` (`ReferenceIsCtfCorrected`),
  KEY `DoMask` (`DoMask`),
  KEY `DoSphericalMask` (`DoSphericalMask`),
  KEY `PerturbProjectionDirections` (`PerturbProjectionDirections`),
  KEY `DoRetricSearchbyTiltAngle` (`DoRetricSearchbyTiltAngle`),
  KEY `OnlyWinner` (`OnlyWinner`),
  KEY `DoAlign2D` (`DoAlign2D`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ScriptHostName`
--

DROP TABLE IF EXISTS `ScriptHostName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScriptHostName` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `ip` text,
  `system` text,
  `distro` text,
  `arch` text,
  `nproc` int(20) DEFAULT NULL,
  `memory` int(20) DEFAULT NULL,
  `cpu_vendor` text,
  `gpu_vendor` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ScriptParamName`
--

DROP TABLE IF EXISTS `ScriptParamName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScriptParamName` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `REF|ScriptProgramName|progname` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ScriptProgramName|progname` (`REF|ScriptProgramName|progname`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ScriptParamValue`
--

DROP TABLE IF EXISTS `ScriptParamValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScriptParamValue` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `value` text,
  `usage` text,
  `REF|ScriptParamName|paramname` int(20) DEFAULT NULL,
  `REF|ScriptProgramRun|progrun` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ScriptParamName|paramname` (`REF|ScriptParamName|paramname`),
  KEY `REF|ScriptProgramRun|progrun` (`REF|ScriptProgramRun|progrun`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ScriptProgramName`
--

DROP TABLE IF EXISTS `ScriptProgramName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScriptProgramName` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ScriptProgramRun`
--

DROP TABLE IF EXISTS `ScriptProgramRun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScriptProgramRun` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `runname` text,
  `revision` text,
  `REF|ScriptProgramName|progname` int(20) DEFAULT NULL,
  `REF|ScriptUserName|username` int(20) DEFAULT NULL,
  `REF|ScriptHostName|hostname` int(20) DEFAULT NULL,
  `REF|ApPathData|rundir` int(20) DEFAULT NULL,
  `REF|ApAppionJobData|job` int(20) DEFAULT NULL,
  `REF|ApPathData|appion_path` int(20) DEFAULT NULL,
  `unixshell` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ScriptProgramName|progname` (`REF|ScriptProgramName|progname`),
  KEY `REF|ScriptUserName|username` (`REF|ScriptUserName|username`),
  KEY `REF|ScriptHostName|hostname` (`REF|ScriptHostName|hostname`),
  KEY `REF|ApPathData|rundir` (`REF|ApPathData|rundir`),
  KEY `REF|ApAppionJobData|job` (`REF|ApAppionJobData|job`),
  KEY `REF|ApPathData|appion_path` (`REF|ApPathData|appion_path`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ScriptUserName`
--

DROP TABLE IF EXISTS `ScriptUserName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScriptUserName` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `uid` int(20) DEFAULT NULL,
  `gid` int(20) DEFAULT NULL,
  `fullname` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-30 15:16:21

--
-- Neil additions
--
-- mysqldump -u root --ext --databases leginondb projectdb ap1 > docker.sql

-- 
-- CREATE USER usr_object@'%' IDENTIFIED BY 'appion-protomo';
-- GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON leginondb.* TO usr_object@'%';
-- GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON projectdb.* TO usr_object@'%';
-- GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON `ap%`.* to usr_object@'%'; 
-- GRANT ALL ON *.* to usr_object@'%' IDENTIFIED BY 'appion-protomo'; 

CREATE USER usr_object@'%' IDENTIFIED BY 'appion-protomo';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'localhost' IDENTIFIED BY 'appion-protomo';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'%' IDENTIFIED BY 'appion-protomo';

flush privileges;


