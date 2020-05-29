--
-- Create Database `hospital`
--

CREATE DATABASE `hospital`;

USE `hospital`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminname` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY  (`adminname`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctorid` varchar(30) NOT NULL,
  `doctorname` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `specialization` varchar(50) default NULL,
  `contact` varchar(10) default NULL,
  PRIMARY KEY  (`doctorid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `inpatient`
--

DROP TABLE IF EXISTS `inpatient`;
CREATE TABLE `inpatient` (
  `patientid` varchar(30) NOT NULL,
  `patientname` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `patienttype` varchar(30) default NULL,
  `mail` varchar(30) default NULL,
  `contact` varchar(10) default NULL,
  `age` varchar(10) default NULL,
  `sex` varchar(10) default NULL,
  `location` varchar(30) default NULL,
  `issue` varchar(30) default NULL,
  `doctorname` varchar(30) default NULL,
  `nursename` varchar(30) default NULL,
  `totalbill` varchar(10) default NULL,
  `status` varchar(30) default NULL,
  PRIMARY KEY  (`patientid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
CREATE TABLE `outpatient` (
  `patientid` varchar(30) NOT NULL,
  `patientname` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `patienttype` varchar(30) default NULL,
  `mail` varchar(30) default NULL,
  `contact` varchar(10) default NULL,
  `age` varchar(10) default NULL,
  `sex` varchar(10) default NULL,
  `location` varchar(30) default NULL,
  `issue` varchar(30) default NULL,
  `doctorname` varchar(30) default NULL,
  `totalbill` varchar(10) default NULL,
  `status` varchar(30) default NULL,
  `time_` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY  (`patientid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `labreport`
--

DROP TABLE IF EXISTS `labreport`;
CREATE TABLE `labreport` (
  `patientid` varchar(30) NOT NULL,
  `patientname` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `patienttype` varchar(30) default NULL,
  `haemoglobin` varchar(10) default NULL,
  `wbc` varchar(10) default NULL,
  `cardio` varchar(10) default NULL,
  `neuro` varchar(10) default NULL,
  `bloodsugar` varchar(10) default NULL,
  PRIMARY KEY  (`patientid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
