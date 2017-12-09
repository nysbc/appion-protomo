-- phpMyAdmin SQL Dump
-- version 2.7.0-rc1
-- http://www.phpmyadmin.net
-- 
-- Host: 192.168.4.21
-- Generation Time: Dec 04, 2017 at 06:59 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3
-- 
-- Database: `ny_projectdb`
-- 

-- --------------------------------------------------------

CREATE DATABASE `projectdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE projectdb;

-- 
-- Table structure for table `boxtypes`
-- 


CREATE TABLE `boxtypes` (
  `boxtypeId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `image_tiny` varchar(100) NOT NULL,
  PRIMARY KEY (`boxtypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `confirmauth`
-- 

CREATE TABLE `confirmauth` (
  `mdhash` longtext NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Table structure for table `dataStatusReport`
-- 

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `django_migrations`
-- 

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `gridboxes`
-- 

CREATE TABLE `gridboxes` (
  `gridboxId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` text,
  `boxtypeId` int(11) DEFAULT '0',
  `container` text,
  PRIMARY KEY (`gridboxId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `gridlocations`
-- 

CREATE TABLE `gridlocations` (
  `gridlocationId` int(11) NOT NULL AUTO_INCREMENT,
  `gridboxId` int(11) DEFAULT NULL,
  `gridId` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  PRIMARY KEY (`gridlocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `grids`
-- 

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `install`
-- 

CREATE TABLE `install` (
  `key` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- 
-- Table structure for table `privileges`
-- 

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `processingdb`
-- 

CREATE TABLE `processingdb` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(20) DEFAULT NULL,
  `appiondb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projects|project` (`REF|projects|project`),
  KEY `appiondb` (`appiondb`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `projectexperiments`
-- 

CREATE TABLE `projectexperiments` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(11) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `project` (`REF|projects|project`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `session` (`REF|leginondata|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `projectowners`
-- 

CREATE TABLE `projectowners` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(16) NOT NULL,
  `REF|leginondata|UserData|user` int(16) NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projects|project` (`REF|projects|project`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `projects`
-- 

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `shareexperiments`
-- 

CREATE TABLE `shareexperiments` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|experiment` int(11) NOT NULL DEFAULT '0',
  `REF|leginondata|UserData|user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|experiment` (`REF|leginondata|SessionData|experiment`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `userdetails`
-- 

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
