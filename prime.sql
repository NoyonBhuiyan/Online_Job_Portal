-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema prime
--

CREATE DATABASE IF NOT EXISTS prime;
USE prime;

--
-- Definition of table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `areaid` int(10) unsigned NOT NULL auto_increment,
  `areaname` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`areaid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` (`areaid`,`areaname`) VALUES 
 (1,'Kakrile');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityid` int(10) unsigned NOT NULL auto_increment,
  `cityname` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`cityid`,`cityname`) VALUES 
 (1,'Dhaka');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `companycategory`
--

DROP TABLE IF EXISTS `companycategory`;
CREATE TABLE `companycategory` (
  `comcatid` varchar(255) NOT NULL default '',
  `comcatname` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`comcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companycategory`
--

/*!40000 ALTER TABLE `companycategory` DISABLE KEYS */;
INSERT INTO `companycategory` (`comcatid`,`comcatname`) VALUES 
 ('101','Corporate');
/*!40000 ALTER TABLE `companycategory` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `counid` varchar(255) NOT NULL,
  `counname` varchar(45) NOT NULL,
  `councode` varchar(45) NOT NULL,
  `counstatus` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`counid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`counid`,`counname`,`councode`,`counstatus`) VALUES 
 ('101','Bangladesh','0885','Independent'),
 ('102','bangladesh','022','ok'),
 ('103','bangladesh','022','ok'),
 ('we','ew','ew','we');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `educationalinfo`
--

DROP TABLE IF EXISTS `educationalinfo`;
CREATE TABLE `educationalinfo` (
  `eduid` int(10) unsigned NOT NULL auto_increment,
  `persinfoid` int(11) unsigned default NULL,
  `edulavel` varchar(45) default NULL,
  `edutitle` varchar(45) default NULL,
  `institutename` varchar(45) default NULL,
  `majorgroup` varchar(45) default NULL,
  `passingyear` date default NULL,
  `result` varchar(45) default NULL,
  PRIMARY KEY  (`eduid`),
  KEY `FK_educationalinfo_1` (`persinfoid`),
  CONSTRAINT `FK_educationalinfo_1` FOREIGN KEY (`persinfoid`) REFERENCES `personalinfo` (`persinfoid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educationalinfo`
--

/*!40000 ALTER TABLE `educationalinfo` DISABLE KEYS */;
INSERT INTO `educationalinfo` (`eduid`,`persinfoid`,`edulavel`,`edutitle`,`institutename`,`majorgroup`,`passingyear`,`result`) VALUES 
 (1,NULL,'w','w','e','d','2018-12-30','d');
/*!40000 ALTER TABLE `educationalinfo` ENABLE KEYS */;


--
-- Definition of table `emphistory`
--

DROP TABLE IF EXISTS `emphistory`;
CREATE TABLE `emphistory` (
  `emphisid` int(11) unsigned NOT NULL auto_increment,
  `comcatid` varchar(255) NOT NULL,
  `comcatname` varchar(45) default NULL,
  `position` varchar(45) default NULL,
  `respons` varchar(45) default NULL,
  `fromdate` date default NULL,
  `todate` date default NULL,
  PRIMARY KEY  (`emphisid`),
  KEY `FK_emphistory_1` (`comcatid`),
  CONSTRAINT `FK_emphistory_1` FOREIGN KEY (`comcatid`) REFERENCES `companycategory` (`comcatid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emphistory`
--

/*!40000 ALTER TABLE `emphistory` DISABLE KEYS */;
INSERT INTO `emphistory` (`emphisid`,`comcatid`,`comcatname`,`position`,`respons`,`fromdate`,`todate`) VALUES 
 (2,'101','w','w','w','2019-01-01','2019-01-07');
/*!40000 ALTER TABLE `emphistory` ENABLE KEYS */;


--
-- Definition of table `employer`
--

DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `empid` int(10) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) NOT NULL,
  `comcatid` varchar(255) NOT NULL,
  `areaid` int(10) unsigned NOT NULL,
  `cityid` int(10) unsigned NOT NULL,
  `comname` varchar(45) default NULL,
  `contperson` varchar(45) default NULL,
  `contemail` varchar(45) default NULL,
  `comwebsite` varchar(45) default NULL,
  `comdetails` varchar(200) default NULL,
  `comphone` int(11) default NULL,
  `comfax` varchar(45) default NULL,
  `comstatus` varchar(45) default NULL,
  PRIMARY KEY  (`empid`),
  KEY `comcatid` (`comcatid`),
  KEY `cityid` (`cityid`),
  KEY `FK_employer_3` (`areaid`),
  KEY `FK_employer_4` (`emailid`),
  CONSTRAINT `FK_employer_4` FOREIGN KEY (`emailid`) REFERENCES `userrole` (`emailid`),
  CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`comcatid`) REFERENCES `companycategory` (`comcatid`),
  CONSTRAINT `employer_ibfk_2` FOREIGN KEY (`cityid`) REFERENCES `city` (`cityid`),
  CONSTRAINT `FK_employer_3` FOREIGN KEY (`areaid`) REFERENCES `area` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;


--
-- Definition of table `jobapplied`
--

DROP TABLE IF EXISTS `jobapplied`;
CREATE TABLE `jobapplied` (
  `applyid` int(10) unsigned NOT NULL auto_increment,
  `persinfoid` int(10) unsigned NOT NULL,
  `jobpostid` int(11) unsigned NOT NULL,
  `coverletter` varchar(45) NOT NULL,
  `expectsalary` varchar(45) NOT NULL,
  `applydate` date NOT NULL,
  `applystatus` varchar(45) NOT NULL,
  PRIMARY KEY  (`applyid`),
  KEY `FK_jobapplied_1` (`persinfoid`),
  KEY `FK_jobapplied_2` (`jobpostid`),
  CONSTRAINT `FK_jobapplied_1` FOREIGN KEY (`persinfoid`) REFERENCES `personalinfo` (`persinfoid`),
  CONSTRAINT `FK_jobapplied_2` FOREIGN KEY (`jobpostid`) REFERENCES `jobpost` (`jobpostid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobapplied`
--

/*!40000 ALTER TABLE `jobapplied` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobapplied` ENABLE KEYS */;


--
-- Definition of table `jobcategory`
--

DROP TABLE IF EXISTS `jobcategory`;
CREATE TABLE `jobcategory` (
  `jobcatid` varchar(45) NOT NULL,
  `jobcatname` varchar(45) NOT NULL,
  PRIMARY KEY  (`jobcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobcategory`
--

/*!40000 ALTER TABLE `jobcategory` DISABLE KEYS */;
INSERT INTO `jobcategory` (`jobcatid`,`jobcatname`) VALUES 
 ('011','Corporate');
/*!40000 ALTER TABLE `jobcategory` ENABLE KEYS */;


--
-- Definition of table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
CREATE TABLE `jobpost` (
  `jobpostid` int(11) unsigned NOT NULL,
  `empid` int(10) unsigned NOT NULL,
  `jobcatid` varchar(45) NOT NULL,
  `jobtitle` varchar(255) default NULL,
  `joblocation` varchar(45) default NULL,
  `numofvacancy` varchar(45) default NULL,
  `startdate` date default NULL,
  `enddate` date default NULL,
  `skillreq` varchar(255) default NULL,
  `edureq` varchar(255) default NULL,
  `basicreqm` varchar(255) default NULL,
  `salaryrng` varchar(255) default NULL,
  `jobnature` varchar(255) default NULL,
  `experencereq` varchar(255) default NULL,
  `jobpoststatus` varchar(255) default NULL,
  `otherbenifit` varchar(255) default NULL,
  `useremail` varchar(45) default NULL,
  PRIMARY KEY  (`jobpostid`),
  KEY `FK_jobpost_1` (`jobcatid`),
  KEY `FK_jobpost_2` (`empid`),
  CONSTRAINT `FK_jobpost_2` FOREIGN KEY (`empid`) REFERENCES `employer` (`empid`),
  CONSTRAINT `FK_jobpost_1` FOREIGN KEY (`jobcatid`) REFERENCES `jobcategory` (`jobcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpost`
--

/*!40000 ALTER TABLE `jobpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobpost` ENABLE KEYS */;


--
-- Definition of table `personalinfo`
--

DROP TABLE IF EXISTS `personalinfo`;
CREATE TABLE `personalinfo` (
  `persinfoid` int(11) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) default NULL,
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `fathername` varchar(45) default NULL,
  `mothername` varchar(45) default NULL,
  `dofbirth` date default NULL,
  `presaddress` varchar(45) default NULL,
  `permaddress` varchar(45) default NULL,
  `meritialstatus` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `religion` varchar(45) default NULL,
  `nationality` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `phone` int(11) unsigned default NULL,
  `empstatus` varchar(45) default NULL,
  `imgurl` varchar(100) default NULL,
  PRIMARY KEY  (`persinfoid`),
  KEY `FK_personalinfo_1` (`emailid`),
  CONSTRAINT `FK_personalinfo_1` FOREIGN KEY (`emailid`) REFERENCES `user` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

/*!40000 ALTER TABLE `personalinfo` DISABLE KEYS */;
INSERT INTO `personalinfo` (`persinfoid`,`emailid`,`firstname`,`lastname`,`fathername`,`mothername`,`dofbirth`,`presaddress`,`permaddress`,`meritialstatus`,`gender`,`religion`,`nationality`,`email`,`phone`,`empstatus`,`imgurl`) VALUES 
 (1,'ruma@gmail.com','Ruma','Ruma','Bu','Sk','2018-12-30','dhaka','dhaka','single','Female','Islam','Bangladeshi',NULL,NULL,NULL,NULL),
 (2,'er@gmail.com','AA','BB','CC','BB','2018-12-31','SS','GG','WW','Male','II','BB',NULL,NULL,NULL,NULL),
 (3,'a@ab.com','Taniya','Jman','Ab','Bc','2018-12-31','nawgaon','dhaka','marid','Female','Islam','Bangladeshi',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `personalinfo` ENABLE KEYS */;


--
-- Definition of table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `skillid` int(10) unsigned NOT NULL auto_increment,
  `skillname` varchar(45) default NULL,
  `persinfoid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`skillid`),
  KEY `FK_skill_1` USING BTREE (`persinfoid`),
  CONSTRAINT `FK_skill_1` FOREIGN KEY (`persinfoid`) REFERENCES `personalinfo` (`persinfoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`emailid`,`phone`,`username`) VALUES 
 ('a@ab.com','+8823452435','a'),
 ('a@gmail.com','+88021','a'),
 ('abc@gmail.com','1458756','rumana'),
 ('db@bd.com','+8801244','ad'),
 ('er@gmail.com','+88456','er'),
 ('r@gmail.com','+88123','r'),
 ('ruma@gmail.com','+88012458','ruma'),
 ('us@gmail.com','+8801755','employee');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`emailid`,`password`,`role`,`status`) VALUES 
 ('a@ab.com','123','ROLE_EMPLOYEE','True'),
 ('a@gmail.com','123','ROLE_EMPLOYER','True'),
 ('abc@gmail.com','123','ROLE_ADMIN','True'),
 ('db@bd.com','123','ROLE_EMPLOYER','True'),
 ('emp@gmail.com','123','ROLE_EMPLOYER','True'),
 ('er@gmail.com','123','ROLE_EMPLOYEE','True'),
 ('r@gmail.com','123','ROLE_USER','True'),
 ('ruma@gmail.com','456','ROLE_EMPLOYEE','True'),
 ('us@gmail.com','123','ROLE_USER','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
