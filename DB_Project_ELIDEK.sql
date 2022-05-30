-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 30, 2022 at 11:44 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DB_Project_ELIDEK`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deliverable`
--

CREATE TABLE `deliverable` (
  `deliverable_title` varchar(300) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `deliverable_summary` text,
  `deliverable_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employer_manages_project`
--

CREATE TABLE `employer_manages_project` (
  `employer_name` varchar(255) NOT NULL,
  `abbreviation` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `employer_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `abbreviation` char(20) NOT NULL,
  `org_name` varchar(255) DEFAULT NULL,
  `org_street` varchar(255) DEFAULT NULL,
  `org_number` varchar(10) DEFAULT NULL,
  `org_postal_code` char(5) DEFAULT NULL,
  `org_city` varchar(255) DEFAULT NULL,
  `category` varchar(300) DEFAULT NULL,
  `estimate_budget` float DEFAULT NULL,
  `private_budget` float DEFAULT NULL,
  `private_capital` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `program_belongs_to_admin`
--

CREATE TABLE `program_belongs_to_admin` (
  `admin_name` varchar(255) NOT NULL,
  `progam_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `project_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `budget` float NOT NULL,
  `date` date NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `duration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Project_danation`
--

CREATE TABLE `Project_danation` (
  `project_title` varchar(100) NOT NULL,
  `program_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_maged_by_org`
--

CREATE TABLE `project_maged_by_org` (
  `abbreviation` char(20) NOT NULL,
  `project_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `researcher_id` int(11) NOT NULL,
  `researcher_first_name` varchar(255) NOT NULL,
  `researcher_last_name` varchar(255) NOT NULL,
  `researcher_birth_date` date DEFAULT NULL,
  `researcher_sex` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `researcher_works_org`
--

CREATE TABLE `researcher_works_org` (
  `abbreviation` char(20) NOT NULL,
  `start_date_of_work` date DEFAULT NULL,
  `end_date_of_work` date DEFAULT NULL,
  `researcher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `research_supervisor`
--

CREATE TABLE `research_supervisor` (
  `researcher_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `res_works_on_project`
--

CREATE TABLE `res_works_on_project` (
  `researcher_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `researcher_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field`
--

CREATE TABLE `scientific_field` (
  `name_of_sc_f` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field_project`
--

CREATE TABLE `scientific_field_project` (
  `name_of_sc_f` varchar(255) NOT NULL,
  `project_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `telephones`
--

CREATE TABLE `telephones` (
  `telephone` varchar(20) NOT NULL,
  `abbreviation` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`admin_name`);

--
-- Indexes for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD PRIMARY KEY (`deliverable_title`,`project_title`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `employer_manages_project`
--
ALTER TABLE `employer_manages_project`
  ADD PRIMARY KEY (`employer_name`,`abbreviation`),
  ADD KEY `abbreviation` (`abbreviation`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`employer_name`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`abbreviation`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_name`);

--
-- Indexes for table `program_belongs_to_admin`
--
ALTER TABLE `program_belongs_to_admin`
  ADD PRIMARY KEY (`admin_name`,`progam_name`),
  ADD KEY `progam_name` (`progam_name`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`project_title`);

--
-- Indexes for table `Project_danation`
--
ALTER TABLE `Project_danation`
  ADD PRIMARY KEY (`project_title`);

--
-- Indexes for table `project_maged_by_org`
--
ALTER TABLE `project_maged_by_org`
  ADD PRIMARY KEY (`abbreviation`,`project_title`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`researcher_first_name`,`researcher_last_name`),
  ADD UNIQUE KEY `researcher_id` (`researcher_id`);

--
-- Indexes for table `researcher_works_org`
--
ALTER TABLE `researcher_works_org`
  ADD PRIMARY KEY (`abbreviation`),
  ADD KEY `researcher_id` (`researcher_id`);

--
-- Indexes for table `research_supervisor`
--
ALTER TABLE `research_supervisor`
  ADD PRIMARY KEY (`researcher_id`,`project_title`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `res_works_on_project`
--
ALTER TABLE `res_works_on_project`
  ADD PRIMARY KEY (`researcher_id`,`project_title`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`researcher_id`,`project_title`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `scientific_field`
--
ALTER TABLE `scientific_field`
  ADD PRIMARY KEY (`name_of_sc_f`);

--
-- Indexes for table `scientific_field_project`
--
ALTER TABLE `scientific_field_project`
  ADD PRIMARY KEY (`name_of_sc_f`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `telephones`
--
ALTER TABLE `telephones`
  ADD PRIMARY KEY (`telephone`),
  ADD KEY `abbreviation` (`abbreviation`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD CONSTRAINT `deliverable_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `Project` (`project_title`);

--
-- Constraints for table `employer_manages_project`
--
ALTER TABLE `employer_manages_project`
  ADD CONSTRAINT `employer_manages_project_ibfk_1` FOREIGN KEY (`employer_name`) REFERENCES `manager` (`employer_name`),
  ADD CONSTRAINT `employer_manages_project_ibfk_2` FOREIGN KEY (`abbreviation`) REFERENCES `organisation` (`abbreviation`);

--
-- Constraints for table `program_belongs_to_admin`
--
ALTER TABLE `program_belongs_to_admin`
  ADD CONSTRAINT `program_belongs_to_admin_ibfk_1` FOREIGN KEY (`admin_name`) REFERENCES `administration` (`admin_name`),
  ADD CONSTRAINT `program_belongs_to_admin_ibfk_2` FOREIGN KEY (`progam_name`) REFERENCES `program` (`program_name`);

--
-- Constraints for table `project_maged_by_org`
--
ALTER TABLE `project_maged_by_org`
  ADD CONSTRAINT `project_maged_by_org_ibfk_1` FOREIGN KEY (`abbreviation`) REFERENCES `organisation` (`abbreviation`),
  ADD CONSTRAINT `project_maged_by_org_ibfk_2` FOREIGN KEY (`project_title`) REFERENCES `Project` (`project_title`);

--
-- Constraints for table `researcher_works_org`
--
ALTER TABLE `researcher_works_org`
  ADD CONSTRAINT `researcher_works_org_ibfk_1` FOREIGN KEY (`abbreviation`) REFERENCES `organisation` (`abbreviation`),
  ADD CONSTRAINT `researcher_works_org_ibfk_2` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `research_supervisor`
--
ALTER TABLE `research_supervisor`
  ADD CONSTRAINT `research_supervisor_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `Project` (`project_title`),
  ADD CONSTRAINT `research_supervisor_ibfk_2` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `res_works_on_project`
--
ALTER TABLE `res_works_on_project`
  ADD CONSTRAINT `res_works_on_project_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `Project` (`project_title`),
  ADD CONSTRAINT `res_works_on_project_ibfk_2` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`researcher_id`) REFERENCES `researcher` (`researcher_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`project_title`) REFERENCES `Project` (`project_title`);

--
-- Constraints for table `scientific_field_project`
--
ALTER TABLE `scientific_field_project`
  ADD CONSTRAINT `scientific_field_project_ibfk_1` FOREIGN KEY (`name_of_sc_f`) REFERENCES `scientific_field` (`name_of_sc_f`),
  ADD CONSTRAINT `scientific_field_project_ibfk_2` FOREIGN KEY (`project_title`) REFERENCES `Project` (`project_title`);

--
-- Constraints for table `telephones`
--
ALTER TABLE `telephones`
  ADD CONSTRAINT `telephones_ibfk_1` FOREIGN KEY (`abbreviation`) REFERENCES `organisation` (`abbreviation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
