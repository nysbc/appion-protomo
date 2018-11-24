-- phpMyAdmin SQL Dump
-- version 2.7.0-rc1
-- http://www.phpmyadmin.net
-- 
-- Host: 192.168.4.21
-- Generation Time: Dec 04, 2017 at 03:16 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3
-- 
-- Database: `leginondb`
-- 
CREATE DATABASE `leginondb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE leginondb;

-- --------------------------------------------------------

-- 
-- Table structure for table `AcquisitionFFTData`
-- 

CREATE TABLE IF NOT EXISTS `AcquisitionFFTData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|source` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|AcquisitionImageData|source` (`REF|AcquisitionImageData|source`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `AcquisitionImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|EMTargetData|emtarget` int(20) DEFAULT NULL,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|SpotWellMapData|spotmap` int(20) DEFAULT NULL,
  `REF|TiltSeriesData|tilt series` int(20) DEFAULT NULL,
  `version` int(20) DEFAULT NULL,
  `tiltnumber` int(20) DEFAULT NULL,
  `REF|MoverParamsData|mover` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  `REF|PhasePlateUsageData|phase plate` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|EMTargetData|emtarget` (`REF|EMTargetData|emtarget`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|SpotWellMapData|spotmap` (`REF|SpotWellMapData|spotmap`),
  KEY `REF|TiltSeriesData|tilt series` (`REF|TiltSeriesData|tilt series`),
  KEY `REF|MoverParamsData|mover` (`REF|MoverParamsData|mover`),
  KEY `REF|PhasePlateUsageData|phase plate` (`REF|PhasePlateUsageData|phase plate`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AcquisitionImageStatsData`
-- 

CREATE TABLE IF NOT EXISTS `AcquisitionImageStatsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AcquisitionImageTargetData`
-- 

CREATE TABLE IF NOT EXISTS `AcquisitionImageTargetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `delta row` double DEFAULT NULL,
  `delta column` double DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `type` text,
  `version` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `status` text,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `pre_exposure` tinyint(1) DEFAULT '0',
  `REF|AcquisitionImageTargetData|fromtarget` int(20) DEFAULT NULL,
  `REF|SpotWellMapData|spotmap` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|last_focused` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `REF|AcquisitionImageTargetData|fromtarget` (`REF|AcquisitionImageTargetData|fromtarget`),
  KEY `REF|SpotWellMapData|spotmap` (`REF|SpotWellMapData|spotmap`),
  KEY `REF|ImageTargetListData|last_focused` (`REF|ImageTargetListData|last_focused`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AcquisitionSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `AcquisitionSettingsData` (
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
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AlignZLPSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `AlignZLPSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `check preset` text,
  `threshold` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AlignZeroLossPeakData`
-- 

CREATE TABLE IF NOT EXISTS `AlignZeroLossPeakData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AlignmentManagerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `AlignmentManagerSettingsData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ApplicationData`
-- 

CREATE TABLE IF NOT EXISTS `ApplicationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `version` int(20) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `AutoFillerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `AutoFillerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `repeat time` int(20) DEFAULT NULL,
  `autofiller mode` text,
  `column fill start` double DEFAULT NULL,
  `column fill end` double DEFAULT NULL,
  `loader fill start` double DEFAULT NULL,
  `loader fill end` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BeamFixerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BeamFixerSettingsData` (
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
  `bypass` tinyint(1) DEFAULT '0',
  `return settle time` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BeamSizeCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `BeamSizeCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `probe mode` text,
  `spot size` int(20) DEFAULT NULL,
  `c2 size` int(20) DEFAULT NULL,
  `focused beam` double DEFAULT NULL,
  `scale` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BeamSizeCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BeamSizeCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `beam diameter` double DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BeamTiltCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BeamTiltCalibratorSettingsData` (
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
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BeamTiltFixerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BeamTiltFixerSettingsData` (
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
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BeamTiltImagerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BeamTiltImagerSettingsData` (
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
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BindingSpecData`
-- 

CREATE TABLE IF NOT EXISTS `BindingSpecData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event class string` text,
  `from node alias` text,
  `to node alias` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BlobFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BlobFinderSettingsData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BrightImageData`
-- 

CREATE TABLE IF NOT EXISTS `BrightImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BufferCyclerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `BufferCyclerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `repeat time` int(20) DEFAULT NULL,
  `trip level` double DEFAULT NULL,
  `trip value` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BufferFramePathData`
-- 

CREATE TABLE IF NOT EXISTS `BufferFramePathData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|BufferHostData|host` int(20) DEFAULT NULL,
  `buffer frame path` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|BufferHostData|host` (`REF|BufferHostData|host`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `BufferHostData`
-- 

CREATE TABLE IF NOT EXISTS `BufferHostData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `buffer hostname` text,
  `buffer base path` text,
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `C2ApertureSizeData`
-- 

CREATE TABLE IF NOT EXISTS `C2ApertureSizeData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CameraDarkCurrentUpdatedData`
-- 

CREATE TABLE IF NOT EXISTS `CameraDarkCurrentUpdatedData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hostname` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CameraEMData`
-- 

CREATE TABLE IF NOT EXISTS `CameraEMData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `system time` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `binned multiplier` double DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `exposure type` text,
  `exposure timestamp` double DEFAULT NULL,
  `inserted` tinyint(1) DEFAULT '0',
  `dump` tinyint(1) DEFAULT '0',
  `SUBD|pixel size|x` double DEFAULT NULL,
  `SUBD|pixel size|y` double DEFAULT NULL,
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
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CameraSensitivityCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `CameraSensitivityCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `sensitivity` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CameraSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `CameraSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exposure time` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `save frames` tinyint(1) DEFAULT '0',
  `frame time` double DEFAULT NULL,
  `align frames` tinyint(1) DEFAULT '0',
  `align filter` text,
  `SEQ|use frames` text,
  `readout delay` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CenterTargetFilterSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `CenterTargetFilterSettingsData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ClickTargetFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ClickTargetFinderSettingsData` (
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
  `multifocus` tinyint(1) DEFAULT '0',
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ClientPortData`
-- 

CREATE TABLE IF NOT EXISTS `ClientPortData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hostname` text,
  `primary port` int(20) DEFAULT NULL,
  `send port start` int(20) DEFAULT NULL,
  `send port end` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ConditioningDoneData`
-- 

CREATE TABLE IF NOT EXISTS `ConditioningDoneData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ConditioningRequestData|request` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ConditioningRequestData|request` (`REF|ConditioningRequestData|request`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ConditioningRequestData`
-- 

CREATE TABLE IF NOT EXISTS `ConditioningRequestData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ConnectToClientsData`
-- 

CREATE TABLE IF NOT EXISTS `ConnectToClientsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|clients` text,
  `localhost` text,
  `installation` text,
  `version` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CorrectorPlanData`
-- 

CREATE TABLE IF NOT EXISTS `CorrectorPlanData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `SEQ|bad_rows` text,
  `SEQ|bad_cols` text,
  `SEQ|bad_pixels` text,
  `despike` tinyint(1) DEFAULT '0',
  `despike size` int(20) DEFAULT NULL,
  `despike threshold` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `CorrectorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `CorrectorSettingsData` (
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
  `store series` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DDinfoKeyData`
-- 

CREATE TABLE IF NOT EXISTS `DDinfoKeyData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DDinfoValueData`
-- 

CREATE TABLE IF NOT EXISTS `DDinfoValueData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|DDinfoKeyData|infokey` int(20) DEFAULT NULL,
  `infovalue` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|DDinfoKeyData|infokey` (`REF|DDinfoKeyData|infokey`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DTFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `DTFinderSettingsData` (
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
  `check method` text,
  `multifocus` tinyint(1) DEFAULT '0',
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DarkImageData`
-- 

CREATE TABLE IF NOT EXISTS `DarkImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DequeuedImageTargetListData`
-- 

CREATE TABLE IF NOT EXISTS `DequeuedImageTargetListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DoGFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `DoGFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `wait for done` tinyint(1) DEFAULT '0',
  `ignore images` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `user check` tinyint(1) DEFAULT '0',
  `check method` text,
  `queue drift` tinyint(1) DEFAULT '0',
  `sort target` tinyint(1) DEFAULT '0',
  `allow append` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `skip` tinyint(1) DEFAULT '0',
  `allow no focus` tinyint(1) DEFAULT '0',
  `image filename` text,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `edge` tinyint(1) DEFAULT '0',
  `edge type` text,
  `edge log size` int(20) DEFAULT NULL,
  `edge log sigma` double DEFAULT NULL,
  `edge absolute` tinyint(1) DEFAULT '0',
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
  `target template` tinyint(1) DEFAULT '0',
  `SEQ|focus template` text,
  `SEQ|acquisition template` text,
  `focus template thickness` tinyint(1) DEFAULT '0',
  `focus stats radius` int(20) DEFAULT NULL,
  `focus min mean thickness` double DEFAULT NULL,
  `focus max mean thickness` double DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `focus interval` int(20) DEFAULT NULL,
  `focus offset row` int(20) DEFAULT NULL,
  `focus offset col` int(20) DEFAULT NULL,
  `dog diameter` int(20) DEFAULT NULL,
  `dog invert` tinyint(1) DEFAULT '0',
  `dog k-factor` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DoseCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `DoseCalibratorSettingsData` (
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
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DoseImageData`
-- 

CREATE TABLE IF NOT EXISTS `DoseImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DoseMeasurementData`
-- 

CREATE TABLE IF NOT EXISTS `DoseMeasurementData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `dose` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DriftData`
-- 

CREATE TABLE IF NOT EXISTS `DriftData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `rows` double DEFAULT NULL,
  `cols` double DEFAULT NULL,
  `rowmeters` double DEFAULT NULL,
  `colmeters` double DEFAULT NULL,
  `interval` double DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DriftManagerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `DriftManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `threshold` double DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `timeout` int(20) DEFAULT NULL,
  `beam tilt` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DriftMonitorRequestData`
-- 

CREATE TABLE IF NOT EXISTS `DriftMonitorRequestData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|EMTargetData|emtarget` int(20) DEFAULT NULL,
  `presetname` text,
  `threshold` double DEFAULT NULL,
  `SUBD|beamtilt|x` double DEFAULT NULL,
  `SUBD|beamtilt|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|EMTargetData|emtarget` (`REF|EMTargetData|emtarget`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `DriftMonitorResultData`
-- 

CREATE TABLE IF NOT EXISTS `DriftMonitorResultData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `status` text,
  `REF|DriftData|final` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|DriftData|final` (`REF|DriftData|final`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `EMGridData`
-- 

CREATE TABLE IF NOT EXISTS `EMGridData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `project` int(20) DEFAULT NULL,
  `REF|WellMappingTypeData|mapping` int(20) DEFAULT NULL,
  `well group` int(20) DEFAULT NULL,
  `print trial` int(20) DEFAULT NULL,
  `REF|PrepPlateData|plate` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|WellMappingTypeData|mapping` (`REF|WellMappingTypeData|mapping`),
  KEY `REF|PrepPlateData|plate` (`REF|PrepPlateData|plate`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `EMTargetData`
-- 

CREATE TABLE IF NOT EXISTS `EMTargetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `movetype` text,
  `SUBD|image shift|x` double DEFAULT NULL,
  `SUBD|image shift|y` double DEFAULT NULL,
  `SUBD|beam shift|x` double DEFAULT NULL,
  `SUBD|beam shift|y` double DEFAULT NULL,
  `SUBD|stage position|a` double DEFAULT NULL,
  `SUBD|stage position|b` double DEFAULT NULL,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `delta z` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `EucentricFocusData`
-- 

CREATE TABLE IF NOT EXISTS `EucentricFocusData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `focus` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ExposureFixerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ExposureFixerSettingsData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `FFTMakerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `FFTMakerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process` tinyint(1) DEFAULT '0',
  `mask radius` double DEFAULT NULL,
  `label` text,
  `save` tinyint(1) DEFAULT '0',
  `reduced` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `FixBeamData`
-- 

CREATE TABLE IF NOT EXISTS `FixBeamData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `FocusSequenceData`
-- 

CREATE TABLE IF NOT EXISTS `FocusSequenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `node name` text,
  `SEQ|sequence` text,
  `isdefault` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `FocusSettingData`
-- 

CREATE TABLE IF NOT EXISTS `FocusSettingData` (
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
  `recheck drift` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `FocuserResultData`
-- 

CREATE TABLE IF NOT EXISTS `FocuserResultData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `stigx` double DEFAULT NULL,
  `stigy` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `stig correction` int(20) DEFAULT NULL,
  `defocus correction` text,
  `method` text,
  `status` text,
  `REF|DriftData|drift` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|DriftData|drift` (`REF|DriftData|drift`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `FocuserSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `FocuserSettingsData` (
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
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `beam tilt settle time` double DEFAULT NULL,
  `on phase plate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `GonModelerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `GonModelerSettingsData` (
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
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `GridData`
-- 

CREATE TABLE IF NOT EXISTS `GridData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `grid ID` int(20) DEFAULT NULL,
  `insertion` int(20) DEFAULT NULL,
  `REF|EMGridData|emgrid` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|EMGridData|emgrid` (`REF|EMGridData|emgrid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `GridEntrySettingsData`
-- 

CREATE TABLE IF NOT EXISTS `GridEntrySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `grid name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `GridHolderData`
-- 

CREATE TABLE IF NOT EXISTS `GridHolderData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `GroupData`
-- 

CREATE TABLE IF NOT EXISTS `GroupData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `description` text,
  `REF|projectdata|privileges|privilege` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projectdata|privileges|privilege` (`REF|projectdata|privileges|privilege`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `HoleFinderPrefsData`
-- 

CREATE TABLE IF NOT EXISTS `HoleFinderPrefsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `user-check` tinyint(1) DEFAULT '0',
  `skip-auto` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `edge-lpf-on` tinyint(1) DEFAULT '0',
  `edge-lpf-size` int(20) DEFAULT NULL,
  `edge-lpf-sigma` double DEFAULT NULL,
  `edge-filter-type` text,
  `edge-threshold` double DEFAULT NULL,
  `template-correlation-type` text,
  `template-lpf` double DEFAULT NULL,
  `threshold-value` double DEFAULT NULL,
  `threshold-method` text,
  `blob-border` int(20) DEFAULT NULL,
  `blob-max-number` int(20) DEFAULT NULL,
  `blob-max-size` int(20) DEFAULT NULL,
  `blob-min-size` int(20) DEFAULT NULL,
  `lattice-spacing` double DEFAULT NULL,
  `lattice-tolerance` double DEFAULT NULL,
  `stats-radius` double DEFAULT NULL,
  `ice-zero-thickness` double DEFAULT NULL,
  `ice-min-thickness` double DEFAULT NULL,
  `ice-max-thickness` double DEFAULT NULL,
  `ice-max-stdev` double DEFAULT NULL,
  `template-on` tinyint(1) DEFAULT '0',
  `SEQ|template-focus` text,
  `SEQ|template-acquisition` text,
  `template-diameter` int(20) DEFAULT NULL,
  `file-diameter` int(20) DEFAULT NULL,
  `template-filename` text,
  `dog-diameter` int(20) DEFAULT NULL,
  `dog-invert` tinyint(1) DEFAULT '0',
  `dog-k-factor` double DEFAULT NULL,
  `ice-min-stdev` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `HoleFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `HoleFinderSettingsData` (
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
  `multifocus` tinyint(1) DEFAULT '0',
  `focus interval` int(20) DEFAULT NULL,
  `focus offset row` int(20) DEFAULT NULL,
  `focus offset col` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `HoleStatsData`
-- 

CREATE TABLE IF NOT EXISTS `HoleStatsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|HoleFinderPrefsData|prefs` int(20) DEFAULT NULL,
  `row` int(20) DEFAULT NULL,
  `column` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `thickness-mean` double DEFAULT NULL,
  `thickness-stdev` double DEFAULT NULL,
  `good` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|HoleFinderPrefsData|prefs` (`REF|HoleFinderPrefsData|prefs`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageAssessorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ImageAssessorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `format` text,
  `type` text,
  `image directory` text,
  `outputfile` text,
  `run` text,
  `jump filename` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageBeamCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ImageBeamCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `image shift delta` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageCommentData`
-- 

CREATE TABLE IF NOT EXISTS `ImageCommentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageListData`
-- 

CREATE TABLE IF NOT EXISTS `ImageListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|targets` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageTargetListData|targets` (`REF|ImageTargetListData|targets`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageRotationCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `ImageRotationCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `rotation` double DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageRotationCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ImageRotationCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageScaleAdditionCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `ImageScaleAdditionCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `scale addition` double DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ImageTargetListData`
-- 

CREATE TABLE IF NOT EXISTS `ImageTargetListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `label` text,
  `mosaic` tinyint(1) DEFAULT '0',
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `sublist` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `InstrumentData`
-- 

CREATE TABLE IF NOT EXISTS `InstrumentData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `InternalEnergyShiftData`
-- 

CREATE TABLE IF NOT EXISTS `InternalEnergyShiftData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `before` double DEFAULT NULL,
  `after` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `JAHCFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `JAHCFinderSettingsData` (
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
  `focus interval` int(20) DEFAULT NULL,
  `template image min` double DEFAULT NULL,
  `template invert` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `focus offset row` int(20) DEFAULT NULL,
  `focus offset col` int(20) DEFAULT NULL,
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  `ice min std` double DEFAULT NULL,
  `template multiple` int(20) DEFAULT NULL,
  `multihole angle` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `LaunchedApplicationData`
-- 

CREATE TABLE IF NOT EXISTS `LaunchedApplicationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  `SEQ|launchers` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `LowPassFilterSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `LowPassFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `on` tinyint(1) DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MagnificationsData`
-- 

CREATE TABLE IF NOT EXISTS `MagnificationsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|InstrumentData|instrument` int(20) DEFAULT NULL,
  `SEQ|magnifications` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|InstrumentData|instrument` (`REF|InstrumentData|instrument`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ManualAcquisitionSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ManualAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `screen up` tinyint(1) DEFAULT '0',
  `screen down` tinyint(1) DEFAULT '0',
  `beam blank` tinyint(1) DEFAULT '0',
  `correct image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `loop pause time` double DEFAULT NULL,
  `image label` text,
  `low dose` tinyint(1) DEFAULT '0',
  `low dose pause time` double DEFAULT NULL,
  `defocus1switch` tinyint(1) DEFAULT '0',
  `defocus1` double DEFAULT NULL,
  `defocus2switch` tinyint(1) DEFAULT '0',
  `defocus2` double DEFAULT NULL,
  `dark` tinyint(1) DEFAULT '0',
  `force annotate` tinyint(1) DEFAULT '0',
  `reduced params` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MatrixCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `MatrixCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `type` text,
  `ARRAY|matrix|1_1` double DEFAULT NULL,
  `ARRAY|matrix|1_2` double DEFAULT NULL,
  `ARRAY|matrix|2_1` double DEFAULT NULL,
  `ARRAY|matrix|2_2` double DEFAULT NULL,
  `REF|MatrixCalibrationData|previous` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`),
  KEY `REF|MatrixCalibrationData|previous` (`REF|MatrixCalibrationData|previous`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MatrixCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `MatrixCalibratorSettingsData` (
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
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MeasureDoseData`
-- 

CREATE TABLE IF NOT EXISTS `MeasureDoseData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MosaicClickTargetFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `MosaicClickTargetFinderSettingsData` (
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
  `multifocus` tinyint(1) DEFAULT '0',
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|BlobFinderSettingsData|blobs` (`REF|BlobFinderSettingsData|blobs`),
  KEY `REF|LowPassFilterSettingsData|lpf` (`REF|LowPassFilterSettingsData|lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MosaicImageData`
-- 

CREATE TABLE IF NOT EXISTS `MosaicImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ImageListData|images` int(20) DEFAULT NULL,
  `scale` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ImageListData|images` (`REF|ImageListData|images`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MosaicTargetMakerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `MosaicTargetMakerSettingsData` (
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
  `alpha tilt` double DEFAULT NULL,
  `use spiral path` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MosaicTileData`
-- 

CREATE TABLE IF NOT EXISTS `MosaicTileData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `node alias` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `MoverParamsData`
-- 

CREATE TABLE IF NOT EXISTS `MoverParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `NavigatorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `NavigatorSettingsData` (
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
  `preexpose` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `NodeSpecData`
-- 

CREATE TABLE IF NOT EXISTS `NodeSpecData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `NormImageData`
-- 

CREATE TABLE IF NOT EXISTS `NormImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PPBeamTiltRotationData`
-- 

CREATE TABLE IF NOT EXISTS `PPBeamTiltRotationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `angle` double DEFAULT NULL,
  `probe` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PPBeamTiltVectorsData`
-- 

CREATE TABLE IF NOT EXISTS `PPBeamTiltVectorsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `SEQ|vectors` text,
  `probe` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlateAlignerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlateAlignerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `charge time` double DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `total positions` int(20) DEFAULT NULL,
  `initial position` int(20) DEFAULT NULL,
  `settle time` double DEFAULT NULL,
  `interval count` int(20) DEFAULT NULL,
  `tilt charge time` double DEFAULT NULL,
  `tilt charge angle` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlateData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlateData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlatePatchStateData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlatePatchStateData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `patch position` int(20) DEFAULT NULL,
  `bad` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlateTestImagerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlateTestImagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `phase plate number` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlateTestLogData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlateTestLogData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `test type` text,
  `phase plate number` int(20) DEFAULT NULL,
  `patch position` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlateTesterSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlateTesterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `phase plate number` int(20) DEFAULT NULL,
  `total positions` int(20) DEFAULT NULL,
  `start position` int(20) DEFAULT NULL,
  `current position` int(20) DEFAULT NULL,
  `total test positions` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PhasePlateUsageData`
-- 

CREATE TABLE IF NOT EXISTS `PhasePlateUsageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `patch position` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PixelSizeCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `PixelSizeCalibrationData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PixelSizeCalibratorSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `PixelSizeCalibratorSettingsData` (
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
  `lpf sigma` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PresetData`
-- 

CREATE TABLE IF NOT EXISTS `PresetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `name` text,
  `magnification` int(20) DEFAULT NULL,
  `spot size` int(20) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `SUBD|image shift|x` double DEFAULT NULL,
  `SUBD|image shift|y` double DEFAULT NULL,
  `SUBD|beam shift|x` double DEFAULT NULL,
  `SUBD|beam shift|y` double DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `defocus range min` double DEFAULT NULL,
  `defocus range max` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `removed` tinyint(1) DEFAULT '0',
  `hasref` tinyint(1) DEFAULT '0',
  `dose` double DEFAULT NULL,
  `film` tinyint(1) DEFAULT '0',
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
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
  `SEQ|use frames` text,
  `SUBD|aperture size|condenser` double DEFAULT NULL,
  `SUBD|aperture size|high contrast` double DEFAULT NULL,
  `SUBD|aperture size|objective` double DEFAULT NULL,
  `SUBD|aperture size|selected area` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `PresetsManagerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `PresetsManagerSettingsData` (
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
  `disable stage for image shift` tinyint(1) DEFAULT '0',
  `idle minute` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ProjectionSubModeMappingData`
-- 

CREATE TABLE IF NOT EXISTS `ProjectionSubModeMappingData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|MagnificationsData|magnification list` int(20) DEFAULT NULL,
  `name` text,
  `submode index` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|MagnificationsData|magnification list` (`REF|MagnificationsData|magnification list`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `QueueData`
-- 

CREATE TABLE IF NOT EXISTS `QueueData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `label` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `RCTAcquisitionSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `RCTAcquisitionSettingsData` (
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
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `RasterFCFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `RasterFCFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `wait for done` tinyint(1) DEFAULT '0',
  `ignore images` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `user check` tinyint(1) DEFAULT '0',
  `check method` text,
  `queue drift` tinyint(1) DEFAULT '0',
  `sort target` tinyint(1) DEFAULT '0',
  `allow append` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `skip` tinyint(1) DEFAULT '0',
  `publish polygon` tinyint(1) DEFAULT '0',
  `image filename` text,
  `raster preset` text,
  `raster movetype` text,
  `raster overlap` double DEFAULT NULL,
  `raster spacing` int(20) DEFAULT NULL,
  `raster spacing asymm` int(20) DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `raster center x` int(20) DEFAULT NULL,
  `raster center y` int(20) DEFAULT NULL,
  `raster center on image` tinyint(1) DEFAULT '0',
  `raster limit` int(20) DEFAULT NULL,
  `raster limit asymm` int(20) DEFAULT NULL,
  `raster symmetric` tinyint(1) DEFAULT '0',
  `select polygon` tinyint(1) DEFAULT '0',
  `ice box size` double DEFAULT NULL,
  `ice thickness` double DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `ice max std` double DEFAULT NULL,
  `ice min std` double DEFAULT NULL,
  `focus interval` int(20) DEFAULT NULL,
  `focus convolve` tinyint(1) DEFAULT '0',
  `SEQ|focus convolve template` text,
  `SEQ|focus constant template` text,
  `focus one` tinyint(1) DEFAULT '0',
  `acquisition convolve` tinyint(1) DEFAULT '0',
  `SEQ|acquisition convolve template` text,
  `SEQ|acquisition constant template` text,
  `focus center x` double DEFAULT NULL,
  `focus center y` double DEFAULT NULL,
  `focus radius` double DEFAULT NULL,
  `focus box size` double DEFAULT NULL,
  `focus min mean` double DEFAULT NULL,
  `focus max mean` double DEFAULT NULL,
  `focus min std` double DEFAULT NULL,
  `focus max std` double DEFAULT NULL,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `RasterFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `RasterFinderSettingsData` (
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
  `focus interval` int(20) DEFAULT NULL,
  `focus one` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `RasterTargetFilterSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `RasterTargetFilterSettingsData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ReferenceSessionData`
-- 

CREATE TABLE IF NOT EXISTS `ReferenceSessionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ReferenceTargetData`
-- 

CREATE TABLE IF NOT EXISTS `ReferenceTargetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `delta row` double DEFAULT NULL,
  `delta column` double DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `type` text,
  `version` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `status` text,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ReferenceTimerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ReferenceTimerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `RobotSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `RobotSettingsData` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `RotationCenterData`
-- 

CREATE TABLE IF NOT EXISTS `RotationCenterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `SUBD|beam tilt|x` double DEFAULT NULL,
  `SUBD|beam tilt|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ScopeEMData`
-- 

CREATE TABLE IF NOT EXISTS `ScopeEMData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `system time` double DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `spot size` int(20) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `SUBD|image shift|x` double DEFAULT NULL,
  `SUBD|image shift|y` double DEFAULT NULL,
  `SUBD|beam shift|x` double DEFAULT NULL,
  `SUBD|beam shift|y` double DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `focus` double DEFAULT NULL,
  `reset defocus` int(20) DEFAULT NULL,
  `screen current` double DEFAULT NULL,
  `beam blank` text,
  `SUBD|stigmator|SUBD|condenser|x` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|condenser|y` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|diffraction|x` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|diffraction|y` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|objective|x` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|objective|y` double DEFAULT NULL,
  `SUBD|beam tilt|x` double DEFAULT NULL,
  `SUBD|beam tilt|y` double DEFAULT NULL,
  `corrected stage position` int(20) DEFAULT NULL,
  `SUBD|stage position|a` double DEFAULT NULL,
  `SUBD|stage position|b` double DEFAULT NULL,
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
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `SUBD|aperture size|condenser` double DEFAULT NULL,
  `SUBD|aperture size|high contrast` double DEFAULT NULL,
  `SUBD|aperture size|objective` double DEFAULT NULL,
  `SUBD|aperture size|selected area` double DEFAULT NULL,
  `SUBD|stage position|phi` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ScreenCurrentData`
-- 

CREATE TABLE IF NOT EXISTS `ScreenCurrentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ReferenceTargetData|reference` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `current` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ReferenceTargetData|reference` (`REF|ReferenceTargetData|reference`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ScreenCurrentLoggerData`
-- 

CREATE TABLE IF NOT EXISTS `ScreenCurrentLoggerData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ScreenCurrentLoggerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ScreenCurrentLoggerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `SessionData`
-- 

CREATE TABLE IF NOT EXISTS `SessionData` (
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
  `remote passcode` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|UserData|user` (`REF|UserData|user`),
  KEY `REF|GridHolderData|holder` (`REF|GridHolderData|holder`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `SessionReservationData`
-- 

CREATE TABLE IF NOT EXISTS `SessionReservationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `reserved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `SetupWizardSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `SetupWizardSettingsData` (
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
  `c2 size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `SingleFocuserSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `SingleFocuserSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `melt preset` text,
  `melt time` double DEFAULT NULL,
  `acquire final` tinyint(1) DEFAULT '0',
  `manual focus preset` text,
  `beam tilt settle time` double DEFAULT NULL,
  `on phase plate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `SquareFinderPrefsData`
-- 

CREATE TABLE IF NOT EXISTS `SquareFinderPrefsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|MosaicImageData|image` int(20) DEFAULT NULL,
  `lpf-size` double DEFAULT NULL,
  `lpf-sigma` double DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `border` int(20) DEFAULT NULL,
  `maxblobs` int(20) DEFAULT NULL,
  `minblobsize` int(20) DEFAULT NULL,
  `maxblobsize` int(20) DEFAULT NULL,
  `mean-min` int(20) DEFAULT NULL,
  `mean-max` int(20) DEFAULT NULL,
  `std-min` int(20) DEFAULT NULL,
  `std-max` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|MosaicImageData|image` (`REF|MosaicImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `SquareStatsData`
-- 

CREATE TABLE IF NOT EXISTS `SquareStatsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|SquareFinderPrefsData|prefs` int(20) DEFAULT NULL,
  `row` int(20) DEFAULT NULL,
  `column` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `good` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|SquareFinderPrefsData|prefs` (`REF|SquareFinderPrefsData|prefs`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `StageLocationData`
-- 

CREATE TABLE IF NOT EXISTS `StageLocationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `removed` tinyint(1) DEFAULT '0',
  `name` text,
  `comment` text,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `a` double DEFAULT NULL,
  `xy only` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `StageMeasurementData`
-- 

CREATE TABLE IF NOT EXISTS `StageMeasurementData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `label` text,
  `high tension` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `axis` text,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `delta` double DEFAULT NULL,
  `imagex` double DEFAULT NULL,
  `imagey` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `StageModelCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `StageModelCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `label` text,
  `axis` text,
  `period` double DEFAULT NULL,
  `ARRAY|a|1_1` double DEFAULT NULL,
  `ARRAY|a|1_2` double DEFAULT NULL,
  `ARRAY|a|1_3` double DEFAULT NULL,
  `ARRAY|a|1_4` double DEFAULT NULL,
  `ARRAY|a|1_5` double DEFAULT NULL,
  `ARRAY|b|1_1` double DEFAULT NULL,
  `ARRAY|b|1_2` double DEFAULT NULL,
  `ARRAY|b|1_3` double DEFAULT NULL,
  `ARRAY|b|1_4` double DEFAULT NULL,
  `ARRAY|b|1_5` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `StageModelMagCalibrationData`
-- 

CREATE TABLE IF NOT EXISTS `StageModelMagCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `label` text,
  `axis` text,
  `angle` double DEFAULT NULL,
  `mean` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `StageReproducibilityData`
-- 

CREATE TABLE IF NOT EXISTS `StageReproducibilityData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `label` text,
  `move x` double DEFAULT NULL,
  `move y` double DEFAULT NULL,
  `error pixels r` double DEFAULT NULL,
  `error pixels c` double DEFAULT NULL,
  `error meters` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `StitchTargetFinderSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `StitchTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `wait for done` tinyint(1) DEFAULT '0',
  `ignore images` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `user check` tinyint(1) DEFAULT '0',
  `queue drift` tinyint(1) DEFAULT '0',
  `sort target` tinyint(1) DEFAULT '0',
  `allow append` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `skip` tinyint(1) DEFAULT '0',
  `test image` text,
  `overlap` double DEFAULT NULL,
  `coverage` double DEFAULT NULL,
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TestAcquisitionSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TestAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `beam tilt` double DEFAULT NULL,
  `add beam tilt` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TiltAcquisitionSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TiltAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `tilts` text,
  `use tilts` tinyint(1) DEFAULT '0',
  `reset per targetlist` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TiltAlternaterSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TiltAlternaterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `tilts` text,
  `use tilts` tinyint(1) DEFAULT '0',
  `reset per targetlist` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TiltListAlternaterSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TiltListAlternaterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `tilts` text,
  `use tilts` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TiltRotateSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TiltRotateSettingsData` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TiltSeriesData`
-- 

CREATE TABLE IF NOT EXISTS `TiltSeriesData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `tilt min` double DEFAULT NULL,
  `tilt max` double DEFAULT NULL,
  `tilt start` double DEFAULT NULL,
  `tilt step` double DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `tilt order` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TomographyPredictionData`
-- 

CREATE TABLE IF NOT EXISTS `TomographyPredictionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SUBD|predicted position|optical axis` double DEFAULT NULL,
  `SUBD|predicted position|phi` double DEFAULT NULL,
  `SUBD|predicted position|x` double DEFAULT NULL,
  `SUBD|predicted position|y` double DEFAULT NULL,
  `SUBD|predicted position|z` double DEFAULT NULL,
  `SUBD|predicted position|z0` double DEFAULT NULL,
  `SUBD|predicted shift|x` double DEFAULT NULL,
  `SUBD|predicted shift|y` double DEFAULT NULL,
  `SUBD|predicted shift|z` double DEFAULT NULL,
  `SUBD|position|x` double DEFAULT NULL,
  `SUBD|position|y` double DEFAULT NULL,
  `SUBD|correlation|x` double DEFAULT NULL,
  `SUBD|correlation|y` double DEFAULT NULL,
  `SUBD|raw correlation|x` double DEFAULT NULL,
  `SUBD|raw correlation|y` double DEFAULT NULL,
  `pixel size` double DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `measured defocus` double DEFAULT NULL,
  `measured fit` double DEFAULT NULL,
  `tilt group` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TomographySettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TomographySettingsData` (
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
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `z02` double DEFAULT NULL,
  `addon tilts` text,
  `tilt order` text,
  `use preset exposure` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TransformDeclaredData`
-- 

CREATE TABLE IF NOT EXISTS `TransformDeclaredData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `type` text,
  `node` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TransformManagerSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `TransformManagerSettingsData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `TransformMatrixData`
-- 

CREATE TABLE IF NOT EXISTS `TransformMatrixData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image1` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image2` int(20) DEFAULT NULL,
  `ARRAY|matrix|1_1` double DEFAULT NULL,
  `ARRAY|matrix|1_2` double DEFAULT NULL,
  `ARRAY|matrix|1_3` double DEFAULT NULL,
  `ARRAY|matrix|2_1` double DEFAULT NULL,
  `ARRAY|matrix|2_2` double DEFAULT NULL,
  `ARRAY|matrix|2_3` double DEFAULT NULL,
  `ARRAY|matrix|3_1` double DEFAULT NULL,
  `ARRAY|matrix|3_2` double DEFAULT NULL,
  `ARRAY|matrix|3_3` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image1` (`REF|AcquisitionImageData|image1`),
  KEY `REF|AcquisitionImageData|image2` (`REF|AcquisitionImageData|image2`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `UserData`
-- 

CREATE TABLE IF NOT EXISTS `UserData` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ViewerImageStatus`
-- 

CREATE TABLE IF NOT EXISTS `ViewerImageStatus` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ZeroLossCheckData`
-- 

CREATE TABLE IF NOT EXISTS `ZeroLossCheckData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ReferenceTargetData|reference` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `std` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ReferenceTargetData|reference` (`REF|ReferenceTargetData|reference`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ZeroLossIceThicknessData`
-- 

CREATE TABLE IF NOT EXISTS `ZeroLossIceThicknessData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `slit mean` double DEFAULT NULL,
  `slit sd` double DEFAULT NULL,
  `no slit mean` double DEFAULT NULL,
  `no slit sd` double DEFAULT NULL,
  `thickness` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `ZeroLossIceThicknessSettingsData`
-- 

CREATE TABLE IF NOT EXISTS `ZeroLossIceThicknessSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process` tinyint(1) DEFAULT '0',
  `presetname` text,
  `mean free path` double DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `slit width` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `django_migrations`
-- 

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_cache`
-- 

CREATE TABLE IF NOT EXISTS `viewer_cache` (
  `session` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_comment`
-- 

CREATE TABLE IF NOT EXISTS `viewer_comment` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_del_image`
-- 

CREATE TABLE IF NOT EXISTS `viewer_del_image` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_login`
-- 

CREATE TABLE IF NOT EXISTS `viewer_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `privilege` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_pref_image`
-- 

CREATE TABLE IF NOT EXISTS `viewer_pref_image` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_update`
-- 

CREATE TABLE IF NOT EXISTS `viewer_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('N','Y') DEFAULT NULL,
  `name` text,
  `update` text,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `viewer_users`
-- 

CREATE TABLE IF NOT EXISTS `viewer_users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



CREATE USER usr_object@'%' IDENTIFIED BY 'appion-protomo';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'localhost' IDENTIFIED BY 'appion-protomo';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'%' IDENTIFIED BY 'appion-protomo';

flush privileges;
