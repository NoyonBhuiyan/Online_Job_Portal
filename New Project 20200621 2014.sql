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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` (`areaid`,`areaname`) VALUES 
 (1,'Feni'),
 (2,'Cumilla'),
 (3,'Dhaka');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityid` int(10) unsigned NOT NULL auto_increment,
  `cityname` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`cityid`,`cityname`) VALUES 
 (1,'Dhanmondi'),
 (2,'Gulshan');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `companycategory`
--

DROP TABLE IF EXISTS `companycategory`;
CREATE TABLE `companycategory` (
  `comcatid` int(10) unsigned NOT NULL auto_increment,
  `comcatname` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`comcatid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companycategory`
--

/*!40000 ALTER TABLE `companycategory` DISABLE KEYS */;
INSERT INTO `companycategory` (`comcatid`,`comcatname`) VALUES 
 (1,'MLM Company');
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
  `persinfoid` varchar(10) default NULL,
  `edulavel` varchar(45) default NULL,
  `edutitle` varchar(45) default NULL,
  `institutename` varchar(45) default NULL,
  `majorgroup` varchar(45) default NULL,
  `passingyear` varchar(20) default NULL,
  `result` varchar(45) default NULL,
  PRIMARY KEY  (`eduid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educationalinfo`
--

/*!40000 ALTER TABLE `educationalinfo` DISABLE KEYS */;
INSERT INTO `educationalinfo` (`eduid`,`persinfoid`,`edulavel`,`edutitle`,`institutename`,`majorgroup`,`passingyear`,`result`) VALUES 
 (1,'1','General','SSC','DRMC','Science','2010-10-10','A'),
 (2,'2','General','SSC','DC','Science','2010-10-10','A+'),
 (3,'3','Diploma','BA','DU','Science','2010-10-10','A-'),
 (5,'2','General','SSC','DC','Science','2010-10-10','A');
/*!40000 ALTER TABLE `educationalinfo` ENABLE KEYS */;


--
-- Definition of table `emphistory`
--

DROP TABLE IF EXISTS `emphistory`;
CREATE TABLE `emphistory` (
  `emphisid` int(11) unsigned NOT NULL auto_increment,
  `comcatid` varchar(10) default NULL,
  `comcatname` varchar(45) default NULL,
  `position` varchar(45) default NULL,
  `respons` varchar(45) default NULL,
  `fromdate` varchar(20) default NULL,
  `todate` varchar(20) default NULL,
  PRIMARY KEY  (`emphisid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emphistory`
--

/*!40000 ALTER TABLE `emphistory` DISABLE KEYS */;
INSERT INTO `emphistory` (`emphisid`,`comcatid`,`comcatname`,`position`,`respons`,`fromdate`,`todate`) VALUES 
 (1,'1','IT Company','Jr officer','Data entry','2017-01-01','2018-01-01');
/*!40000 ALTER TABLE `emphistory` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `persinfoid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `gender` varchar(45) default NULL,
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`persinfoid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`persinfoid`,`username`,`gender`,`emailid`,`phone`,`password`) VALUES 
 (1,'df','female','hvmv@gmail.com','2356567','12345'),
 (2,'df','fg','hvmv@gmail.com','2356567','dfdfgg'),
 (3,'dffggf','ghhh','fvgchh@gmail.com','45566','dfffvfvc'),
 (5,'dffggf','ghhh','fvgchh@gmail.com','45566','dfffvfvc'),
 (6,'hfghgfh','male','sdjhfghz@gjb.jhg','757657575','1523154'),
 (7,'hfghgfh','male','sdjhfghz@gjb.jhg','757657575','1523154'),
 (8,'Iftekhar','Male','iftekharhossain395@gmail.com','01521221338','123'),
 (9,'hfghgfh','male','iftekharhossain395@gmail.com','01521221338','1523154'),
 (10,'df','female','hvmv@gmail.com','2356567','12345'),
 (11,'cdsfdsf','53465465','dfsfdsf@gmail.com','4354354','543545'),
 (12,'Noyon','Male','mehedihasan915444@gmail.com','01876543256','12345'),
 (13,'Noyon','Male','noyon@gmail.com','01876543214','12345'),
 (14,'Akash','Male','akash@gmail.com','3435454','12345'),
 (15,'fgfdgfdddf','dfgfg','bgfgff@gmail.com','45465465','fgfg'),
 (16,'dfdg','ertrytr','bgfgff@gmail.com','53465465','34535'),
 (17,'rfgdgfdgfgfgfg','ddgdfgfdgfgfd','dfgdgdgggdfgfdgfgfd','5454656757','12345');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `employer`
--

DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `empid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `emailid` varchar(45) default NULL,
  `comcatid` varchar(10) default NULL,
  `areaid` varchar(10) default NULL,
  `cityid` varchar(10) default NULL,
  `comname` varchar(45) default NULL,
  `contperson` varchar(45) default NULL,
  `contemail` varchar(45) default NULL,
  `comwebsite` varchar(45) default NULL,
  `comdetails` varchar(200) default NULL,
  `comphone` varchar(20) default NULL,
  `comfax` varchar(45) default NULL,
  `comstatus` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` (`empid`,`username`,`emailid`,`comcatid`,`areaid`,`cityid`,`comname`,`contperson`,`contemail`,`comwebsite`,`comdetails`,`comphone`,`comfax`,`comstatus`,`password`) VALUES 
 (1,'gfggc','abc@gmail.com','1','1','1','TCL','01876543245','abcd@gmail.com','www.tcld.com','IT Sector','187353465','565767676','True','123'),
 (2,'rtyyhg','abc@gmail.com','1','1','1','TCL','01876543245','abcd@gmail.com','www.tcld.com','IT Sector','187353465','565767676','True','1234'),
 (3,'Iftekhar','fdgdgf@gmail.com','0','0','0','TCLD','dsfdkfdm','cdsdd@gmail.com','www.tcld.com','sdfhgjhgjkjhkjlikkhnvbnvbnvcbbv','30430930','4355454','','12345'),
 (4,'Noyon','fdgdgf@gmail.com','0','0','0','TCLD','7657567','majsg@gmail.com','dfhgfdhgfd.com','fdgfhfghfgfhfghgh','57547567','547556','','546554'),
 (5,'Iftekhar','fdgdgf@gmail.com','','','','TCLD','7657567','majsg@gmail.com','tfghgjggfh','dfdgfhhgjhjhjhkjkhjk','01521221338','4656465','','4545465');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;


--
-- Definition of table `jobapplied`
--

DROP TABLE IF EXISTS `jobapplied`;
CREATE TABLE `jobapplied` (
  `applyid` int(10) unsigned NOT NULL auto_increment,
  `persinfoid` varchar(10) default NULL,
  `jobpostid` varchar(10) default NULL,
  `coverletter` varchar(45) default NULL,
  `expectsalary` varchar(45) default NULL,
  `applydate` varchar(20) default NULL,
  `applystatus` varchar(45) default NULL,
  PRIMARY KEY  (`applyid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobapplied`
--

/*!40000 ALTER TABLE `jobapplied` DISABLE KEYS */;
INSERT INTO `jobapplied` (`applyid`,`persinfoid`,`jobpostid`,`coverletter`,`expectsalary`,`applydate`,`applystatus`) VALUES 
 (1,'1','1','gtghth','56767','2020-10-10','True');
/*!40000 ALTER TABLE `jobapplied` ENABLE KEYS */;


--
-- Definition of table `jobcategory`
--

DROP TABLE IF EXISTS `jobcategory`;
CREATE TABLE `jobcategory` (
  `jobcatid` int(10) unsigned NOT NULL auto_increment,
  `jobcatname` varchar(45) NOT NULL,
  PRIMARY KEY  (`jobcatid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobcategory`
--

/*!40000 ALTER TABLE `jobcategory` DISABLE KEYS */;
INSERT INTO `jobcategory` (`jobcatid`,`jobcatname`) VALUES 
 (1,'IT Officer');
/*!40000 ALTER TABLE `jobcategory` ENABLE KEYS */;


--
-- Definition of table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
CREATE TABLE `jobpost` (
  `jobpostid` int(11) unsigned NOT NULL auto_increment,
  `empid` varchar(10) default NULL,
  `jobcatid` varchar(10) default NULL,
  `jobtitle` varchar(255) default NULL,
  `joblocation` varchar(255) default NULL,
  `numofvacancy` varchar(45) default NULL,
  `startdate` varchar(20) default NULL,
  `enddate` varchar(20) default NULL,
  `skillreq` varchar(255) default NULL,
  `edureq` varchar(255) default NULL,
  `basicreqm` varchar(255) default NULL,
  `salaryrng` varchar(255) default NULL,
  `jobnature` varchar(255) default NULL,
  `experencereq` varchar(255) default NULL,
  `jobpoststatus` varchar(255) default NULL,
  `otherbenifit` varchar(255) default NULL,
  `useremail` varchar(255) default NULL,
  `additionalreq` varchar(255) default NULL,
  `jobcatname` varchar(255) default NULL,
  `comname` varchar(255) default NULL,
  PRIMARY KEY  (`jobpostid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpost`
--

/*!40000 ALTER TABLE `jobpost` DISABLE KEYS */;
INSERT INTO `jobpost` (`jobpostid`,`empid`,`jobcatid`,`jobtitle`,`joblocation`,`numofvacancy`,`startdate`,`enddate`,`skillreq`,`edureq`,`basicreqm`,`salaryrng`,`jobnature`,`experencereq`,`jobpoststatus`,`otherbenifit`,`useremail`,`additionalreq`,`jobcatname`,`comname`) VALUES 
 (1,'1','1','Credit Executive','Dhaka','Not specific','2020-04-01','2020-04-18','Strong organization skills and highly attentive to details.','Graduation/ Post Graduation in Finance or Accounting','To receive credit customer\'s application from business and start processing as per policy.\r\nTo be responsible for certifying all new credit customers after verifying their credit worthiness.','Negotiable','Full-time','1-2 years of working experience in the relevant track is preferable','jkkkkkk','NA','aci-bd@gmail.com','Excellent communication skill & interpersonal skill. Proficiency in MS Office (Excel & PowerPoint)','Accounting-Finance','Advanced Chemical Industries Limited (ACI)'),
 (2,'2','2','Accounts Officer (Manager Level)','Chattogram','02','2020-04-05','2020-05-05','Excellent customer service skills and focus.','Graduate from reputed university. BBA / MBA/ EEE preferred.','Assist Sales to customer in run down meetings when required. Related Field on Accounts and Business Developments','Negotiable','Part-Time','1 to 2 year(s)','gfhgfgfg','SIM and Bill facilities. Yearly festival bonus: 2','hr.gentechpower@gmail.com','Only females are allowed to apply. Excellent customer service skills and focus. Proficient in standard office programs; Word, Excel, Outlook.','Accounting-Finance','Gentech Power International.'),
 (3,'3','3','Recruitment Executive for Delivery Staff','Bandarban, Dhaka, Jamalpur, Kurigram, Natore, Patuakhali, Sunamganj','06','2020-04-09','2020-05-09','Work experience as a Recruiter or Sales/ Tele Sales/ Good Customer Service Experience','Minimum Bachelors in Any Discipline','Work experience as a Recruiter or Sales/ Tele Sales/ Good Customer Service Experience','Negotiable','Part-Time','1 to 3 year(s). The applicants should have experience in the following area(s):\r\nRecruitment & Selection, stuffing','jjjjjjjjjjjjjjjjjj','An attractive remuneration package will be offered. Performance Incentives will be provided.','foodpanda@gmail.com','Both males and females are allowed to apply. Hands on experience with various selection processes (phone interviewing, reference check etc)','GHR-Org.Development','foodpanda Bangladesh Limited'),
 (4,NULL,NULL,'Manager, HR Admin & Compliance','Gazipur','01','2020-04-01','2020-04-16','Conversant with MS Word, Excel and PowerPoint presentation and email communication','MBA / Master\'s degree in any discipline. PGD in HRM / Compliance will get preference','The applicants should have experience in the following area(s):\r\nAdministration, Compliance, General HR, Organizational Development','20000','Full-time','8 to 12 year(s)','nnnnnnnnnnnn','Mobile bill, Profit share. Lunch Facilities: Partially Subsidize. Festival Bonus: 2','northerntosrifagroup@gmail.com','Age 32 to 40 years. Able to lead a team. Sound knowledge on Bangladesh Labor Law and other applicable laws & regulations','GHR-Org.Development','Northern Tosrifa Group'),
 (5,'3','3','Bangla Teacher (Class III-VI)','Dhaka Division','02','2020-04-01','2020-04-30','High level of proficiency in Bangla & English (both verbal & written) is essential.','Minimum Master/ bachelor degree in Bangla is required from a recognized university with CGPA 3 and above. Higher education or B.Ed/ M.Ed will be given preference.','Active participation in school events is required. Thorough understanding of Bangla syllabus is required.','Negotiable','Full-time','At least 2 year(s)','jjjjjjjjjjjjjjjjjj','NA',' jobs@ascent-bd.com ','Age 25 to 50 years. Both males and females are allowed to apply. Experience in teaching Bangla mid level students will be given preference.','Education-Training','Scholastica Ltd. (A Concern of ASCENT Group)'),
 (6,'','','Chemistry Teacher (VIII - IX)','Rajshahi','01','2020-04-01','2020-04-23','High level of proficiency in English (both verbal & written) is essential.','M.Sc or B.Sc in Chemistry/ Applied Chemistry/ Chemical Engineering/ Biotechnology is required from a recognized university with CGPA 3 and above.','Candidate must have good knowledge to teach Chemistry for standard VIII - IX both theory & practical.','Negotiable','Contractual','At least 2 year(s)','','NA',' jobs@ascent-bd.com','Age 25 to 55 years. Experience in teaching Chemistry for VIII - IX will be given preference.','Education-Training','Scholastica Limited'),
 (7,'','','CAD Operator','Chattogram (Rangunia)','Not specific','2020-04-12','2020-05-12','Good skill on Auto Cad and MS Office. Team Working skill & Interpersonal skills','Higher or Equal of Diploma in Engineering (Electrical)','Experience Requirement - More than 10 years','Negotiable','Contractual','At least 10 year(s)','','As per company policy','engr.paul.eee@gmail.com','Only males are allowed to apply. Good Communication skill (English) in required','Engineer-Architects','KOLON Global Corporation ( Chattogram)'),
 (8,'','','Surveyor','Anywhere in Bangladesh','02','2020-04-07','2020-05-07','The applicants should have experience in the following area(s):\r\nLand Survey, Surveying, Topographic Survey','Diploma in Engineering in Surveying Technology. Diploma in Surveying from any Institutes.','The applicants should have experience in the following business area(s):\r\nEngineering Firms','30000-35000','Full-time','At least 2 year(s)','','T/A, Mobile bill, Credit card, Provident fund. Festival Bonus: 2','hr.bricksbridges@gmail.com','Both males and females are allowed to apply. Able to work extended working hour. Should be medically fit to do frequent travelling.','Engineer-Architects','Bricks & Bridges Ltd.'),
 (9,'','','Store Helper','Anywhere in Bangladesh','15','2020-04-11','2020-05-12','NA','SSC, HSC','NA','Tk. 7400 (Monthly). Monthly allowance.','Contractual','NA','','T/A. Festival Bonus: 2','abc@gmail.com','Age 18 to 30 years. Only males are allowed to apply','Garments-Textile','Advanced Chemical Industries Limited (ACI)'),
 (10,'','','Welfare Officer (Jordan)','Jordan','02','2020-04-08','2020-05-08','Labor Issues','Bachelor degree in any discipline, Master of Business Administration (MBA). Graduate/ PG in an HR/ IR program/ MBA - HR/ IR, Graduate/ PG Program in Social Welfare','The role requires handling employee engagement activities as well as grievances.','Negotiable. Furnished accommodation, food, medical, transport and tax free salary','Full-time','At least 5 year(s). The applicants should have experience in the following area(s):\r\nFactory HR Administration, Training & Development','','Medical allowance','Kshama.pandey@mustgarment.com','Age 29 to 40 years. Only females are allowed to apply. Candidate must have exp in Garment Industry.','Garments-Textile','Must Garments Hongkong'),
 (11,'','','Graphic Designer cum Fashion Designer','Dhaka','Not specific','2020-04-24','2020-05-24','Familiarity with design software and technologies (such as InDesign, Illustrator, Adobe After Effects, Dreamweaver, Photoshop)','Bachelors\' degree in graphic design or fashion design from any reputed university','A strong portfolio of illustrations or other graphics. ','Negotiable, attractive salary for the most deserving candidate.','Full-time','At least 2 to 5 years of experience in graphic design','','NA','hr@indesore.com','Both males and females are encouraged to apply. Excellent communication skills','Design-Creative','Indesore Group'),
 (12,'','','Designer - Sweater Industries.','Narayanganj','Not specific','2020-04-01','2020-04-14','Adobe Illustrator, Adobe Photoshop, Creative Design','Bachelor of Arts (BA) in Fashion Designing.','Must have experience as a Fashion Designing in Sweater Factory.','12000','Part-Time','At least 3 year(s). The applicants should have experience in the following area(s):\r\nFashion Design, Product design','','As per company policy.','dpd@abanti.net','Age at least 22 years. Both males and females are allowed to apply. Fashion Designing in Sweater Factory.','Design-Creative','Crony Group'),
 (13,'','','Senior Supply Chain Officer - Procurement','Cox\'s Bazar (Ukhia)','Not specific','2020-04-01','2020-04-14','Computer skills: Very good skills MS Word, Excel, Outlook, Power Point','Minimum Bachelor\'s degree in Supply Chain/ Logistics/ Management or any other related field','Experience of working with Non-Governmental Organizations or UN agencies','Negotiable','Full-time, Contractual','At least 3 year(s)','','Mobile bill, Weekly 2 holidays, Insurance, Gratuity. Two (2) bonuses in a year equivalent to two (2) basic salaries (not related to festival)','abc@gmail.com','Eligible female candidates are strongly encouraged to apply. Certification on Office Administration/ Procurement or any other relevant professional degree/ course would be an added advantage','Production-Operation','International Rescue Committee (IRC)'),
 (14,'','','International Rescue Committee (IRC)','Faridpur','Not specific','2020-04-01','2020-04-23','Ability to Work Under Pressure, Jute, yarn manufacturing','Bachelor degree in any discipline, Masters degree in any discipline. Bachelor degree in any discipline, Masters degree in any discipline','Understand the production process, machine, quality and process parameter. Excellent verbal and written communication and good command in factory operation. ','Negotiable','Full-time','10 to 20 year(s). The applicants should have experience in the following area(s):\r\nFactory Operation, Jute, Jute Manufacturing, Production, Production Management (Spinning), yarn manufacturing','','T/A, Mobile bill, Tour allowance, Provident fund. Lunch Facilities: Partially Subsidize','abc@gmail.com','Age 40 to 60 years. Only males are allowed to apply.  Ability to work as factory head.','Production-Operation','Panna Group'),
 (15,'','','Area Operations Manager','Bagerhat, Bandarban, Bhola, Chandpur, Dhaka, Gopalganj, Patuakhali','07','2020-04-09','2020-05-09','The applicants should have experience in the following area(s):\r\nOperation, Sales','You have a Bachelors or Masters degree from a reputable university.','The applicants should have experience in the following area(s):\r\nOperation, Sales','Negotiable','Full-time','At least 3 year(s)','','NA','foodpanda@gmail.com','Both males and females are allowed to apply. Your analytical skills are excellent and you have an entrepreneurial attitude with great interest for the online businesses.','Marketing-Sales','foodpanda Bangladesh Limited'),
 (16,'','','Sales Associate (Alternative Sales Channel)','Jashore, Rangpur, Sherpur, Sirajganj','10','2020-04-07','2020-05-07','NA','Minimum Bachelors in Any Discipline','We are looking some good, well communicator & energetic people from consumer sales experience.','Negotiable','Full-time','At least 2 year(s)','','2 Festival Bonus, TA/DA, Earn Leave & Health Insurance.',' jobs@isocial.com','Age 22 to 27 years. Only males are allowed to apply. Good in internet browsing & capable to use social media like whatsapp, messenger, imo.','Marketing-Sales','iSocial (It’s a Social Enterprise)'),
 (17,'','','Senior Software Engineer - C#/ ASP.NET','Dhaka','Not specific','2020-04-11','2020-05-12','.NET developer responsible for building .NET applications using .NET technologies (preferably experienced in .Net Core).','NA','Your primary responsibility will be to design and develop our applications.','Negotiable','Part-Time , Full-time','At least 5 year(s)','','NA',' hr@kaz.com.bd','Good at MS SQL Server and MongoDB. Node js experience will be considered as a plus. Hands on experience in AWS will be considered as plus ','IT & Telecommunication','Kaz Software'),
 (18,'','','Software Engineer (application & web developments)','Sylhet, Sylhet (Sylhet Sadar)','01','2020-04-12','2020-05-12','Skilled on HTML/ XHTML, CSS, PHP, SQL, AJAX, jQuery XML, WordPress, MySQL.','Bachelor of Science (BSc)','We are looking for a Software Engineer/Developer who is dedicated to the craft, writes code that they are proud of and can hit the ground running. Can do attitude. ','Negotiable','Full-time','At least 3 year(s)','','Salary Review: Yearly. Festival Bonus: 2',' IT@sk-associates.org ','Age at least 25 years. Both males and females are allowed to apply','IT & Telecommunication','SK Associates'),
 (19,'','','IPC Senior Officer (COVID-19 Response)','Anywhere in Bangladesh','Not specific','2020-04-01','2020-04-22','Negotiating skills. Team-working skills.','A clinical background (Nurse/ Midwife/ MA) with MPH.','A clinical background (Nurse/ Midwife/ MA) with MPH.','Competitive Base Pay','Contractual','At least 1 year(s)','','Fringe Benefits (Insurance + Mobile Allowance + Accommodation + Transportation + Food)','irc@gmail.com','Working experience with the Rohingya Response Program will be an asset. Good Written & Spoken in English','Medical-Pharma','International Rescue Committee (IRC)'),
 (20,'','','MEDICAL DOCTOR (Numerous for COVID-19 Response)','Cox\'s Bazar','Not specific','2020-04-01','2020-04-16','NA','Bachelor of Medicine and Bachelor of Surgery(MBBS) in Medicine','Provide outpatient and/or inpatient medical care to patients/beneficiaries according to adapted and updated medical knowledge, MSF protocols.','Salary according to level 09 of the internal MSF salary grid.','Contractual','At least 1 year(s)','','2 annual leave days per month worked. Medical insurance for employee and direct dependants. No relocation allowance shall be provided.','msfe-cox-recruitment@barcelona.msf.org','Valid registration number issued from Bangladesh Medical & Dental Council.). Essential computer literacy (word, excel) ','Medical-Pharma','Medecins Sans Frontieres/ Doctors Without Borders (MSF)'),
 (21,NULL,NULL,'Associate Linguist (Bangla)','Dhaka','10','2020-04-01','2020-04-17','MICROSOFT OFFICE','Master of Arts (MA) in Linguistics or Bangla','The applicants should have experience in the following area(s):\r\nEducation, Printing','Negotiable','Full-time','Na',NULL,'Mobile bill, Tour allowance, Performance bonus, Provident fund, Weekly 2 holidays. Festival Bonus: 2',' shahnewaz@revesoft.com','Good communication, work friendly & negotiation skills.','Research-Consultancy','REVE Systems'),
 (22,NULL,NULL,'Music Teacher (I - IV)','Dhaka','01','2020-04-01','2020-04-26','NA','Masters/ Bachelor in Music from a recognized university or professional diploma or degree in music from a recognized institution is required.','Masters/ Bachelor in Music from a recognized university or professional diploma or degree in music from a recognized institution is required.','18000','Full-time','At least 2 year(s). Freshers are also encouraged to apply.',NULL,'NA','jobs@ascent-bd.com','Age 23 to 50 years. Both males and females are allowed to apply. Experience in Music teaching in school will be given preference.','Music & Arts','Scholastica Limited');
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
  `dofbirth` varchar(20) default NULL,
  `presaddress` varchar(45) default NULL,
  `permaddress` varchar(45) default NULL,
  `meritialstatus` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `religion` varchar(45) default NULL,
  `nationality` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `phone` varchar(20) default NULL,
  `empstatus` varchar(45) default NULL,
  `imgurl` varchar(100) default NULL,
  PRIMARY KEY  (`persinfoid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

/*!40000 ALTER TABLE `personalinfo` DISABLE KEYS */;
INSERT INTO `personalinfo` (`persinfoid`,`emailid`,`firstname`,`lastname`,`fathername`,`mothername`,`dofbirth`,`presaddress`,`permaddress`,`meritialstatus`,`gender`,`religion`,`nationality`,`email`,`phone`,`empstatus`,`imgurl`) VALUES 
 (1,'abc@gmail.com','Noyon','Bhuiyan','Ezabat Ullah','Monowara Begum','1995-08-22','Dhaka','Feni','Unmarried','Male','ISLAM','Bangladeshi','abc@gmail.com','1834764784','jjkjkh','dfdfgg');
/*!40000 ALTER TABLE `personalinfo` ENABLE KEYS */;


--
-- Definition of table `resume`
--

DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `persinfoid` int(11) unsigned NOT NULL auto_increment,
  `objective` text,
  `comname` varchar(45) default NULL,
  `role` varchar(255) default NULL,
  `startdate` varchar(45) default NULL,
  `enddate` varchar(45) default NULL,
  `compost` varchar(45) default NULL,
  `fname` varchar(45) default NULL,
  `lname` varchar(45) default NULL,
  `faname` varchar(45) default NULL,
  `moname` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `religion` varchar(45) default NULL,
  `nationality` varchar(45) default NULL,
  `maritul` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `preaddress` varchar(255) default NULL,
  `peraddress` varchar(255) default NULL,
  `phone` varchar(45) default NULL,
  `degreeone` varchar(45) default NULL,
  `instituteone` varchar(255) default NULL,
  `subjectone` varchar(45) default NULL,
  `passone` varchar(45) default NULL,
  `resultone` varchar(45) default NULL,
  `degreetwo` varchar(45) default NULL,
  `institutetwo` varchar(255) default NULL,
  `subjecttwo` varchar(45) default NULL,
  `passtwo` varchar(45) default NULL,
  `resulttwo` varchar(45) default NULL,
  `degreethree` varchar(45) default NULL,
  `institutethree` varchar(255) default NULL,
  `subjectthree` varchar(45) default NULL,
  `passthree` varchar(45) default NULL,
  `resultthree` varchar(45) default NULL,
  `degreefour` varchar(45) default NULL,
  `institutefour` varchar(255) default NULL,
  `subjectfour` varchar(45) default NULL,
  `passfour` varchar(45) default NULL,
  `resultfour` varchar(45) default NULL,
  `imgurl` blob,
  `skills` varchar(255) default NULL,
  PRIMARY KEY  (`persinfoid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` (`persinfoid`,`objective`,`comname`,`role`,`startdate`,`enddate`,`compost`,`fname`,`lname`,`faname`,`moname`,`dob`,`gender`,`religion`,`nationality`,`maritul`,`email`,`preaddress`,`peraddress`,`phone`,`degreeone`,`instituteone`,`subjectone`,`passone`,`resultone`,`degreetwo`,`institutetwo`,`subjecttwo`,`passtwo`,`resulttwo`,`degreethree`,`institutethree`,`subjectthree`,`passthree`,`resultthree`,`degreefour`,`institutefour`,`subjectfour`,`passfour`,`resultfour`,`imgurl`,`skills`) VALUES 
 (1,'After completing my Post-graduation thought that one should be proficient in any subject to get into professional life.\r\n After a lot of thinking I chose the IT sector and got proficiency on the Java programming language. \r\nSo, I want a rewarding career where I can use my skills and knowledge for organizational and personal growth. ','Athena Science Academy','My responsibilities were to counsel students, supervise student`s admission programs, classes and examinations','01-012017','01-01-2018','Manager ','   MD.MEHEDI HASAN BHUIYAN ','NOYON ','Late Md. Ezabat Ullah Bhuiyan',' Monowara Begum ','01-01-1995','Male ','Islam ','Bangladeshi ','Unmarried ',' mehedihasan915444@gmail.com ',': 8/1, Konapara, Demra, Dhaka-1362  E','Bahar Bhuiyan Bari, Village-East Bashikpur, Fulgazi, Feni 3942  ',': 01517833856','SSC ','Shamsul Hoque Khan School & Coll ege','Humanities ','2010','CGPA:4.69 out of 5','HSC ','Notre Dame College ','Humanities ','2012','CGPA:4.30 out of 5 ','Bachelor of Arts (B A) ','Jagannath University   ','English Language and Literature   ','2017','CGPA:2.94 out of 4','Master of Arts  (MA)  \r\n','Jagannath University','English (Applied Linguistic and ELT)   ','2019','3.00 out of 4.00','','( J2EE) \r\nHTML, CSS, JavaScript, Bootstrap, Oracle 10g, MySQL, JAVA Swing, XML, UML, JSP, JSF, JSTL, El,  Hibernate, Primefaces,  Angular 6, Spring AOP-MVC, Restful API, Jasper Re port, Android'),
 (2,'ffgfghhgh','fgfgfhfhg','gggggggggggg','ggggggggggggg','hhhhhhhhhhhhhhhh','ggggggggggggggggg','fffffffffffffffff','lllllllllllllllllllllll','gggggggggggggggg','wwwwwwwwwwwwww','rrrrrrrrrrrrrrr','rrrrrrrrrr','fffffffffffffff','ffffffffffffffff','ffffffffffffffffff','ccccccccccccccccc','vvvvvvvvvvvvvvvvvv','vvvvvvvvvvvvvvvv','bbbbbbbbbbbbbb','fffffffffffffffff','vvvvvvvvvvvvv','bbbbbbbbbbbbbbbbb','2018','4.69 out of 5.00','ddddddddddd','ddddddddddddddddd','fffffffffffffffffffffff','tttttttttttttttttttt','4.69 out of 5.00','vvvvvvvvvvvvvvv','gggggggggggggggggggg','ggggggggggggggggggggggggggg','hhhhhhhhhhhhhhhhhhhhhh','4.69 out of 5.00','ffffffffffffffffff','ggggggggggggggggg','yyyyyyyyyyyyyyyy','2019','4.69 out of 5.00','','dgfddfdsfdfd'),
 (3,'ffgfghhgh','fgfgfhfhg','gggggggggggg','ggggggggggggg','hhhhhhhhhhhhhhhh','ggggggggggggggggg','fffffffffffffffff','lllllllllllllllllllllll','gggggggggggggggg','wwwwwwwwwwwwww','rrrrrrrrrrrrrrr','rrrrrrrrrr','fffffffffffffff','ffffffffffffffff','ffffffffffffffffff','ccccccccccccccccc','vvvvvvvvvvvvvvvvvv','vvvvvvvvvvvvvvvv','bbbbbbbbbbbbbb','fffffffffffffffff','vvvvvvvvvvvvv','bbbbbbbbbbbbbbbbb','2018','4.69 out of 5.00','ddddddddddd','ddddddddddddddddd','fffffffffffffffffffffff','tttttttttttttttttttt','4.69 out of 5.00','vvvvvvvvvvvvvvv','gggggggggggggggggggg','ggggggggggggggggggggggggggg','hhhhhhhhhhhhhhhhhhhhhh','4.69 out of 5.00','ffffffffffffffffff','ggggggggggggggggg','yyyyyyyyyyyyyyyy','2019','4.69 out of 5.00','','dfdgfdgfdgfd'),
 (4,'gfhgggggggg','gfhgggggggg','fdddddddddddd','dfffffffffffff','fdddddddddddd','dddddddddd','dfffffffffffffff','ddddddddddddddd','gfhgggggggg','gfhgggggggg','gfhgggggggg','gfhgggggggg','dddddddddd','gfhgggggggg','cccccccccccccc','abcd@gmail.com','ddddddddddd','fddddddddddd','6576578657','ddddddddddd','ddddddddddd','fddddddddddd','2012','ddfdd','ddddddddddd','fddddddddddd','ddddddddddd','2010','gfhgggggggg','ddddddddddd','gfhgggggggg','gfhgggggggg','2017','vgfhgggggggg','fddddddddddd','ddddddddddd','ddddddddddd','2019','ddfdd','','ddgfdgdfdfdfdf'),
 (6,'fdfggf','ffggfg','dffgbhgfgfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',NULL,NULL,NULL,'dsgdfghfhfghgfhgf',NULL,NULL,NULL,'gfdhgfhghggh',NULL,NULL,NULL,'fdhdhgfggjgfhgh',NULL,'fgfhghggfghghgjghh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ghfhghghhghgfhgfh','hfghhhhghfgghfh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),
 (7,'After completing my Post-graduation thought that one should be proficient in any subject to get into professional life.\r\n After a lot of thinking I chose the IT sector and got proficiency on the Java programming language. \r\nSo, I want a rewarding career where I can use my skills and knowledge for organizational and personal growth. ','Athena Science Academy','My responsibilities were to counsel students, supervise student`s admission programs, classes and examinations','01-012017','01-01-2018','Manager ','   MD.MEHEDI HASAN BHUIYAN ','NOYON ','Late Md. Ezabat Ullah Bhuiyan',' Monowara Begum ','01-01-1995','Male ','Islam ','Bangladeshi ','Unmarried ',' mehedihasan915444@gmail.com ',': 8/1, Konapara, Demra, Dhaka-1362  E','Bahar Bhuiyan Bari, Village-East Bashikpur, Fulgazi, Feni 3942  ',': 01517833856','SSC ','Shamsul Hoque Khan School & Coll ege','Humanities ','2010','CGPA:4.69 out of 5','HSC ','Notre Dame College ','Humanities ','2012','CGPA:4.30 out of 5 ','Bachelor of Arts (B A) ','Jagannath University   ','English Language and Literature   ','2017','CGPA:2.94 out of 4','Master of Arts  (MA)  \r\n','Jagannath University','English (Applied Linguistic and ELT)   ','2019','3.00 out of 4.00','','( J2EE) \r\nHTML, CSS, JavaScript, Bootstrap, Oracle 10g, MySQL, JAVA Swing, XML, UML, JSP, JSF, JSTL, El,  Hibernate, Primefaces,  Angular 6, Spring AOP-MVC, Restful API, Jasper Re port, Android'),
 (8,'uijkjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjiuyuytgyrtyyyujkyhkjhjkhkjh','ddddddddddd','fdddddddddddd','01-01-2019','0101-2020','dddddddddd','Aporajita Konka','Bgffgg','Kajol','Shila','04-10-1997','Female','dfdvfdgf','fdgfdgfg','dfgdfd','dfddfd@gmail.com','fdfdfdf','ddfdgfg','4354546','fgfghfhgfh','gfgfgfgf','fgfffdhfdgfdg','4554','fdgfdfghfbh','fgvbfbfgbfgfd','dfgfdgfdgfdg','fgdgfdgf','65757','dgfdgfdbfgf','cvbfvbfgvbffffbf','gbffvbfvfvbf','fbfbfbfvbf','565','dfdsfdd','fdgfdgfdg','dgfgfbgfbf','fgfbfbf','5455','fbvbvbvb','','fvvvvvvvvvvvvvvvvvvvvvvvvvfgfhgfghghghg');
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;


--
-- Definition of table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `skillid` int(10) unsigned NOT NULL auto_increment,
  `skillname` varchar(45) default NULL,
  `persinfoid` varchar(10) default NULL,
  PRIMARY KEY  (`skillid`)
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
  `phone` varchar(20) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
