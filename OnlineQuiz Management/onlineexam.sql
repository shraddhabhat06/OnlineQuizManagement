-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 07:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('61e1d849d268f', '61e1d849d4e6c'),
('61e1d849d79a0', '61e1d849d7fb5'),
('61e1d849d9e25', '61e1d849da1d4'),
('61e1d849dc28d', '61e1d849dc87d'),
('61e1d849de83e', '61e1d849dec3c'),
('61e1d849e0701', '61e1d849e0d2d'),
('61e1d849e2c83', '61e1d849e3263'),
('61e1d849e56f5', '61e1d849e5e12'),
('61e1d849e7e36', '61e1d849e85dc'),
('61e1d849ea4bc', '61e1d849eaada'),
('61e1dda03f7dd', '61e1dda03fcd7'),
('61e1dda0412be', '61e1dda041664'),
('61e1dda042d66', '61e1dda04311b'),
('61e1dda044d1d', '61e1dda045609'),
('61e1dda047006', '61e1dda0475b7'),
('61e1dda048c99', '61e1dda049039'),
('61e1dda04a19f', '61e1dda04a57b'),
('61e1dda04b835', '61e1dda04bb4a'),
('61e1dda04cc8d', '61e1dda04cf1d'),
('61e1dda04e006', '61e1dda04e374'),
('61e1e1f8ed3d1', '61e1e1f8ed93d'),
('61e1e1f8efe04', '61e1e1f8f03a4'),
('61e1e1f8f198c', '61e1e1f8f1da4'),
('61e1e1f8f3a92', '61e1e1f8f3e55'),
('61e1e1f9015c3', '61e1e1f901f6c');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(500) NOT NULL,
  `collegename` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `lname`, `gender`, `dob`, `address`, `collegename`, `email`, `phno`, `password`, `cpassword`) VALUES
(1, 'Shraddha', 'Bhat', 'female', '2001-02-06', 'Surat', 'MITE', 'shraddha@gmail.com', '9879535618', 'shraddha123', 'shraddha123'),
(2, 'Sahana', 'Poojary', 'female', '2001-05-31', 'Mumbai', 'MITE', 'sahanapoojary@gmail.com', '9879535679', 'sahana123', 'sahana123'),
(3, 'Hrithika', 'Kunder', 'female', '2001-01-10', 'Hyderabad', 'MITE', 'hrithikakunder@gmail.com', '7896543213', 'hrithika123', 'hrithika123'),
(4, 'Saksha', 'Bangera', 'female', '2001-01-17', 'Udupi', 'MITE', 'sakshabangera@gmail.com', '8765123490', 'saksha123', 'saksha123');

-- --------------------------------------------------------

--
-- Table structure for table `examiner`
--

CREATE TABLE `examiner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(500) NOT NULL,
  `collegename` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examiner`
--

INSERT INTO `examiner` (`id`, `name`, `lname`, `gender`, `dob`, `address`, `collegename`, `email`, `phno`, `password`, `cpassword`) VALUES
(1, 'Nada', 'Ahmed', 'female', '2022-01-01', 'Abu Dhabi', 'MITE', 'nadaahmed@gmail.com', '9879535618', 'nada123', 'nada123');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(800) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
(61000, 'Shraddha', 'shraddha@gmail.com', 'DAA', 'trial feedback', '2022-01-16', '05:33:26am'),
(2147483647, 'Shraddha Bhat', 'shraddha@gmail.com', 'DBMS', 'lorem ipsum', '2022-01-15', '09:54:36pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(100) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `attempt` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `attempt`, `correct`, `wrong`, `date`) VALUES
('hrithikakunder@gmail.com', '61e1d4270c5f6', 17, 10, 9, 1, '2022-01-14 20:37:52'),
('sakshabangera@gmail.com', '61e1d9da104c8', -1, 10, 3, 7, '2022-01-14 20:47:51'),
('shraddha@gmail.com', '61e1d9da104c8', -10, 10, 0, 10, '2022-01-20 17:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('61e1d73555f2e', 'Database', '61e1d735562a7'),
('61e1d73555f2e', 'Spreadsheet', '61e1d735562a9'),
('61e1d73555f2e', 'Management information system', '61e1d735562aa'),
('61e1d73555f2e', 'Text file', '61e1d735562ab'),
('61e1d849d268f', 'Database', '61e1d849d4e6c'),
('61e1d849d268f', 'Spreadsheet', '61e1d849d4e70'),
('61e1d849d268f', 'Management information system', '61e1d849d4e71'),
('61e1d849d268f', 'Text file', '61e1d849d4e72'),
('61e1d849d79a0', ' Sequential access method', '61e1d849d7fb5'),
('61e1d849d79a0', 'Queuing method', '61e1d849d7fb6'),
('61e1d849d79a0', 'Predetermined method', '61e1d849d7fb7'),
('61e1d849d79a0', 'Direct access method', '61e1d849d7fb8'),
('61e1d849d9e25', 'DDL', '61e1d849da1ce'),
('61e1d849d9e25', 'DML', '61e1d849da1d1'),
('61e1d849d9e25', 'DCL', '61e1d849da1d3'),
('61e1d849d9e25', 'TCL', '61e1d849da1d4'),
('61e1d849dc28d', 'Domains', '61e1d849dc87d'),
('61e1d849dc28d', 'Queries', '61e1d849dc87f'),
('61e1d849dc28d', ' Relations', '61e1d849dc880'),
('61e1d849dc28d', ' None of these', '61e1d849dc881'),
('61e1d849de83e', 'Primary keys', '61e1d849dec3c'),
('61e1d849de83e', 'Foreign keys', '61e1d849dec3e'),
('61e1d849de83e', 'Unique keys', '61e1d849dec3f'),
('61e1d849de83e', 'Candidate keys', '61e1d849dec40'),
('61e1d849e0701', 'contains numerous naming conventions and formats', '61e1d849e0d2c'),
('61e1d849e0701', ' is organized around important subject areas', '61e1d849e0d2d'),
('61e1d849e0701', 'contains only current data', '61e1d849e0d2e'),
('61e1d849e0701', 'can be updated by end users', '61e1d849e0d2f'),
('61e1d849e2c83', 'Data redundancy', '61e1d849e3260'),
('61e1d849e2c83', 'Data inconsistency', '61e1d849e3263'),
('61e1d849e2c83', 'Duplicate data', '61e1d849e3264'),
('61e1d849e2c83', 'Information overload', '61e1d849e3265'),
('61e1d849e56f5', 'Union', '61e1d849e5e10'),
('61e1d849e56f5', 'Select', '61e1d849e5e12'),
('61e1d849e56f5', 'Projection', '61e1d849e5e13'),
('61e1d849e56f5', 'Join', '61e1d849e5e14'),
('61e1d849e7e36', ' Diamond shaped', '61e1d849e85dc'),
('61e1d849e7e36', 'Dashed shaped', '61e1d849e85de'),
('61e1d849e7e36', 'Ellipse shaped', '61e1d849e85df'),
('61e1d849e7e36', 'Rectangle shaped', '61e1d849e85e0'),
('61e1d849ea4bc', ' Intersection', '61e1d849eaad8'),
('61e1d849ea4bc', 'Union', '61e1d849eaad9'),
('61e1d849ea4bc', 'Join', '61e1d849eaada'),
('61e1d849ea4bc', 'Select', '61e1d849eaadb'),
('61e1dda03f7dd', ' When the list has only a few elements', '61e1dda03fcd4'),
('61e1dda03f7dd', 'When performing a single search in an unordered list', '61e1dda03fcd5'),
('61e1dda03f7dd', 'Used all the time', '61e1dda03fcd6'),
('61e1dda03f7dd', 'When the list has only a few elements and When performing a single search in an unordered list', '61e1dda03fcd7'),
('61e1dda0412be', 'O(nlogn)', '61e1dda041662'),
('61e1dda0412be', 'O(logn)', '61e1dda041664'),
('61e1dda0412be', 'O(n)', '61e1dda041665'),
('61e1dda0412be', 'O(n2)', '61e1dda041666'),
('61e1dda042d66', 'All pair shortest path', '61e1dda043118'),
('61e1dda042d66', 'Single source shortest path', '61e1dda04311b'),
('61e1dda042d66', ' Network flow', '61e1dda04311d'),
('61e1dda042d66', 'Sorting', '61e1dda04311e'),
('61e1dda044d1d', 'Divide and conquer algorithm', '61e1dda045608'),
('61e1dda044d1d', 'Greedy algorithm', '61e1dda045609'),
('61e1dda044d1d', 'Dynamic Programming', '61e1dda04560a'),
('61e1dda044d1d', 'Approximation algorithm', '61e1dda04560b'),
('61e1dda047006', 'Pre-order Traversal', '61e1dda0475b7'),
('61e1dda047006', 'Post-order Traversal', '61e1dda0475b8'),
('61e1dda047006', 'Level-order Traversal', '61e1dda0475b9'),
('61e1dda047006', 'In-order Traversal', '61e1dda0475ba'),
('61e1dda048c99', 'Stack', '61e1dda049039'),
('61e1dda048c99', 'Queue', '61e1dda04903b'),
('61e1dda048c99', 'Linked List', '61e1dda04903c'),
('61e1dda048c99', 'Tree', '61e1dda04903d'),
('61e1dda04a19f', 'exhaustive search', '61e1dda04a579'),
('61e1dda04a19f', 'greedy algorithm', '61e1dda04a57b'),
('61e1dda04a19f', 'brute force algorithm', '61e1dda04a57c'),
('61e1dda04a19f', 'divide and conquer algorithm', '61e1dda04a57d'),
('61e1dda04b835', 'first', '61e1dda04bb48'),
('61e1dda04b835', 'seventh', '61e1dda04bb49'),
('61e1dda04b835', 'eighth', '61e1dda04bb4a'),
('61e1dda04b835', 'tenth', '61e1dda04bb4b'),
('61e1dda04cc8d', 'To move all disks to some other rod by following rules', '61e1dda04cf1d'),
('61e1dda04cc8d', ' To divide the disks equally among the three rods by following rules', '61e1dda04cf1e'),
('61e1dda04cc8d', 'To move all disks to some other rod in random order', '61e1dda04cf1f'),
('61e1dda04cc8d', 'To divide the disks equally among three rods in random order', '61e1dda04cf20'),
('61e1dda04e006', 'Merge sort', '61e1dda04e373'),
('61e1dda04e006', 'Quick sort', '61e1dda04e374'),
('61e1dda04e006', 'Insertion sort', '61e1dda04e375'),
('61e1dda04e006', 'Shell sort', '61e1dda04e376'),
('61e1e1f8ed3d1', 'a', '61e1e1f8ed93d'),
('61e1e1f8ed3d1', 'b', '61e1e1f8ed940'),
('61e1e1f8ed3d1', 'c', '61e1e1f8ed941'),
('61e1e1f8ed3d1', 'd', '61e1e1f8ed942'),
('61e1e1f8efe04', '1', '61e1e1f8f03a4'),
('61e1e1f8efe04', '2', '61e1e1f8f03a5'),
('61e1e1f8efe04', '3', '61e1e1f8f03a6'),
('61e1e1f8efe04', '4', '61e1e1f8f03a7'),
('61e1e1f8f198c', '1', '61e1e1f8f1da3'),
('61e1e1f8f198c', '2', '61e1e1f8f1da4'),
('61e1e1f8f198c', '3', '61e1e1f8f1da5'),
('61e1e1f8f198c', '4', '61e1e1f8f1da6'),
('61e1e1f8f3a92', 'a', '61e1e1f8f3e4f'),
('61e1e1f8f3a92', 'b', '61e1e1f8f3e52'),
('61e1e1f8f3a92', 'c', '61e1e1f8f3e55'),
('61e1e1f8f3a92', 'd', '61e1e1f8f3e56'),
('61e1e1f9015c3', 'a', '61e1e1f901f69'),
('61e1e1f9015c3', 'b', '61e1e1f901f6a'),
('61e1e1f9015c3', 'c', '61e1e1f901f6b'),
('61e1e1f9015c3', 'd', '61e1e1f901f6c');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('61e1d4270c5f6', '61e1d73555f2e', 'A collection of interrelated records is called a', 4, 1),
('61e1d4270c5f6', '61e1d849d79a0', 'The method of file organization in which data records in a file are arranged in a specified order according to key field is known as the', 4, 2),
('61e1d4270c5f6', '61e1d849d9e25', 'ROLLBACK in a database is ____ statement.', 4, 3),
('61e1d4270c5f6', '61e1d849dc28d', 'In a relational schema, each tuple is divided into fields called', 4, 4),
('61e1d4270c5f6', '61e1d849de83e', 'Which of the following types of tables constraints will prevent the entry of duplicate rows?', 4, 5),
('61e1d4270c5f6', '61e1d849e0701', 'A datawarehouse', 4, 6),
('61e1d4270c5f6', '61e1d849e2c83', 'When data changes in multiple lists and all lists are not updated, this causes', 4, 7),
('61e1d4270c5f6', '61e1d849e56f5', 'The most commonly used operation in relational algebra for projecting a set of tuple from a relation is', 4, 8),
('61e1d4270c5f6', '61e1d849e7e36', 'In E-R diagram, relationship is represented by', 4, 9),
('61e1d4270c5f6', '61e1d849ea4bc', 'The _____ operation allows the combining of two relations by merging pairs of tuples, one from each relation, into a single tuple.', 4, 10),
('61e1d9da104c8', '61e1dda03f7dd', 'Where is linear searching used?', 4, 1),
('61e1d9da104c8', '61e1dda0412be', 'What is the worst case complexity of binary search using recursion?', 4, 2),
('61e1d9da104c8', '61e1dda042d66', 'Dijkstra’s Algorithm is used to solve _____________ problems.', 4, 3),
('61e1d9da104c8', '61e1dda044d1d', 'Prim’s algorithm is a ______', 4, 4),
('61e1d9da104c8', '61e1dda047006', ' Depth First Search is equivalent to which of the traversal in the Binary Trees?', 4, 5),
('61e1d9da104c8', '61e1dda048c99', 'The Data structure used in standard implementation of Breadth First Search is?', 4, 6),
('61e1d9da104c8', '61e1dda04a19f', 'Which of the following algorithms is the best approach for solving Huffman codes?', 4, 7),
('61e1d9da104c8', '61e1dda04b835', 'Which bit is reserved as a parity bit in an ASCII set?', 4, 8),
('61e1d9da104c8', '61e1dda04cc8d', ' What is the objective of tower of Hanoi puzzle?', 4, 9),
('61e1d9da104c8', '61e1dda04e006', 'Which of the following sorting algorithms is the fastest?', 4, 10),
('61e1e1bc67457', '61e1e1f8ed3d1', 'a\r\n', 4, 1),
('61e1e1bc67457', '61e1e1f8efe04', '1', 4, 2),
('61e1e1bc67457', '61e1e1f8f198c', '2', 4, 3),
('61e1e1bc67457', '61e1e1f8f3a92', 'c', 4, 4),
('61e1e1bc67457', '61e1e1f9015c3', 'd', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) DEFAULT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `date`, `tag`) VALUES
('61e1d4270c5f6', 'Dbms', 2, 1, 10, 30, '', '0000-00-00 00:00:00', '2022-01-15 01:21:03'),
('61e1d9da104c8', 'Data Structure And Algorithm', 2, 1, 10, 30, '', '0000-00-00 00:00:00', '2022-01-15 01:45:22'),
('61e1e1bc67457', 'Abc', 2, 1, 5, 30, '', '0000-00-00 00:00:00', '2022-01-15 02:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('hrithikakunder@gmail.com', 17, '2022-01-14 20:37:52'),
('sakshabangera@gmail.com', -1, '2022-01-14 20:47:51'),
('shraddha@gmail.com', -10, '2022-01-20 17:48:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Indexes for table `examiner`
--
ALTER TABLE `examiner`
  ADD PRIMARY KEY (`id`,`email`) USING BTREE;

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `examiner`
--
ALTER TABLE `examiner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
