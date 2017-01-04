-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ipec_acm
--

CREATE DATABASE IF NOT EXISTS ipec_acm;
USE ipec_acm;

--
-- Definition of table `sig`
--

DROP TABLE IF EXISTS `sig`;
CREATE TABLE `sig` (
  `Sno` int(10) unsigned NOT NULL auto_increment,
  `SIGNAME` varchar(45) NOT NULL,
  `SIGHEAD` varchar(45) NOT NULL,
  PRIMARY KEY  (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sig`
--

/*!40000 ALTER TABLE `sig` DISABLE KEYS */;
/*!40000 ALTER TABLE `sig` ENABLE KEYS */;


--
-- Definition of table `siggraphsubm`
--

DROP TABLE IF EXISTS `siggraphsubm`;
CREATE TABLE `siggraphsubm` (
  `Name` varchar(45) NOT NULL,
  `TaskName` varchar(45) NOT NULL,
  `SubDate` varchar(45) NOT NULL,
  `TStatus` varchar(45) NOT NULL,
  `TLink` varchar(45) NOT NULL,
  `File` longblob NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siggraphsubm`
--

/*!40000 ALTER TABLE `siggraphsubm` DISABLE KEYS */;
/*!40000 ALTER TABLE `siggraphsubm` ENABLE KEYS */;


--
-- Definition of table `siggraphtask`
--

DROP TABLE IF EXISTS `siggraphtask`;
CREATE TABLE `siggraphtask` (
  `SNo` int(10) unsigned NOT NULL auto_increment,
  `TaskName` varchar(45) NOT NULL,
  `TaskDesc` varchar(45) NOT NULL,
  `StartDate` varchar(45) NOT NULL,
  `EndDate` varchar(45) NOT NULL,
  `Resources` varchar(45) NOT NULL,
  `BestAttempted` varchar(45) NOT NULL,
  PRIMARY KEY  (`SNo`,`TaskName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siggraphtask`
--

/*!40000 ALTER TABLE `siggraphtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `siggraphtask` ENABLE KEYS */;


--
-- Definition of table `sighead`
--

DROP TABLE IF EXISTS `sighead`;
CREATE TABLE `sighead` (
  `SNo` int(10) unsigned NOT NULL auto_increment,
  `Head Name` varchar(45) NOT NULL,
  `Head ROLL` varchar(45) NOT NULL,
  PRIMARY KEY  (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sighead`
--

/*!40000 ALTER TABLE `sighead` DISABLE KEYS */;
/*!40000 ALTER TABLE `sighead` ENABLE KEYS */;


--
-- Definition of table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `Name` varchar(45) NOT NULL,
  `Profile Picture` longblob,
  `UnivROLL` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  `Section` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Mobile` int(10) unsigned NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Status` int(10) unsigned zerofill NOT NULL,
  `JoinDate` varchar(45) NOT NULL,
  `EndDate` varchar(45) NOT NULL,
  `Password` varchar(45) character set latin1 collate latin1_bin NOT NULL,
  `SIGChoice` varchar(45) NOT NULL,
  `Position` varchar(45) NOT NULL,
  PRIMARY KEY  (`UnivROLL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;


--
-- Definition of table `sigplansubm`
--

DROP TABLE IF EXISTS `sigplansubm`;
CREATE TABLE `sigplansubm` (
  `Name` varchar(45) NOT NULL,
  `TaskName` varchar(45) NOT NULL,
  `SubDate` varchar(45) NOT NULL,
  `TStatus` varchar(45) NOT NULL,
  `TLink` varchar(45) NOT NULL,
  `File` longblob NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigplansubm`
--

/*!40000 ALTER TABLE `sigplansubm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigplansubm` ENABLE KEYS */;


--
-- Definition of table `sigplantask`
--

DROP TABLE IF EXISTS `sigplantask`;
CREATE TABLE `sigplantask` (
  `SNo` int(10) unsigned NOT NULL auto_increment,
  `TaskName` varchar(45) NOT NULL,
  `TaskDesc` varchar(100) NOT NULL,
  `StartDate` varchar(45) NOT NULL,
  `EndDate` varchar(45) NOT NULL,
  `Resources` varchar(45) NOT NULL,
  `BestAttempted` varchar(45) NOT NULL,
  PRIMARY KEY  (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigplantask`
--

/*!40000 ALTER TABLE `sigplantask` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigplantask` ENABLE KEYS */;


--
-- Definition of table `sigsoftsubm`
--

DROP TABLE IF EXISTS `sigsoftsubm`;
CREATE TABLE `sigsoftsubm` (
  `Name` varchar(45) NOT NULL,
  `TaskName` varchar(45) NOT NULL,
  `SubDate` varchar(45) NOT NULL,
  `TStatus` varchar(45) NOT NULL default '-1',
  `TLink` varchar(100) NOT NULL,
  `File` longblob NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigsoftsubm`
--

/*!40000 ALTER TABLE `sigsoftsubm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigsoftsubm` ENABLE KEYS */;


--
-- Definition of table `sigsofttask`
--

DROP TABLE IF EXISTS `sigsofttask`;
CREATE TABLE `sigsofttask` (
  `TaskName` varchar(45) NOT NULL,
  `TaskDesc` varchar(100) NOT NULL,
  `StartDate` varchar(45) NOT NULL,
  `EndDate` varchar(45) NOT NULL,
  `Resources` varchar(45) NOT NULL,
  `BestAttempted` varchar(100) NOT NULL,
  PRIMARY KEY  USING BTREE (`TaskName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigsofttask`
--

/*!40000 ALTER TABLE `sigsofttask` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigsofttask` ENABLE KEYS */;


--
-- Definition of table `sigtricksubm`
--

DROP TABLE IF EXISTS `sigtricksubm`;
CREATE TABLE `sigtricksubm` (
  `Name` varchar(45) NOT NULL,
  `TaskName` varchar(45) NOT NULL,
  `SubDate` varchar(45) NOT NULL,
  `TStatus` varchar(45) NOT NULL,
  `TLink` varchar(45) NOT NULL,
  `File` longblob NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigtricksubm`
--

/*!40000 ALTER TABLE `sigtricksubm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigtricksubm` ENABLE KEYS */;


--
-- Definition of table `sigtricktask`
--

DROP TABLE IF EXISTS `sigtricktask`;
CREATE TABLE `sigtricktask` (
  `SNo` int(10) unsigned NOT NULL auto_increment,
  `TaskName` varchar(45) NOT NULL,
  `TaskDesc` varchar(45) NOT NULL,
  `StartDate` varchar(45) NOT NULL,
  `EndDate` varchar(45) NOT NULL,
  `Resources` varchar(45) NOT NULL,
  `BestAttempted` varchar(45) NOT NULL,
  PRIMARY KEY  (`SNo`,`TaskName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigtricktask`
--

/*!40000 ALTER TABLE `sigtricktask` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigtricktask` ENABLE KEYS */;


--
-- Definition of table `sigwebsubm`
--

DROP TABLE IF EXISTS `sigwebsubm`;
CREATE TABLE `sigwebsubm` (
  `Name` varchar(45) NOT NULL,
  `TaskName` varchar(45) NOT NULL,
  `SubDate` varchar(45) NOT NULL,
  `TStatus` varchar(45) NOT NULL,
  `TLink` varchar(45) NOT NULL,
  `File` longblob NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigwebsubm`
--

/*!40000 ALTER TABLE `sigwebsubm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigwebsubm` ENABLE KEYS */;


--
-- Definition of table `sigwebtask`
--

DROP TABLE IF EXISTS `sigwebtask`;
CREATE TABLE `sigwebtask` (
  `SNo` int(10) unsigned NOT NULL auto_increment,
  `TaskName` varchar(45) NOT NULL,
  `TaskDesc` varchar(45) NOT NULL,
  `StartDate` varchar(45) NOT NULL,
  `EndDate` varchar(45) NOT NULL,
  `Resources` varchar(45) NOT NULL,
  `BestAttempted` varchar(45) NOT NULL,
  PRIMARY KEY  (`SNo`,`TaskName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigwebtask`
--

/*!40000 ALTER TABLE `sigwebtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `sigwebtask` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
