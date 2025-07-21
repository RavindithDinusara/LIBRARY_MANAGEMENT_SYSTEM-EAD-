-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2024 at 11:11 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) DEFAULT NULL,
  `bname` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `edition` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `catname`, `bname`, `author`, `publisher`, `content`, `pages`, `edition`) VALUES
(43, 'novel', 'Robbinson cruiso', 'cruiso', 'john', 'island based story', 289, 2),
(45, 'Fiction', 'The Road', 'Cormac McCarthy', 'Vintage', 'Post-apocalyptic novel', 287, 1),
(46, 'Science', 'A Brief History of Time', 'Stephen Hawking', 'Bantam', 'Cosmology', 212, 1),
(47, 'History', 'Sapiens', 'Yuval Noah Harari', 'Harper', 'Human history', 443, 1),
(48, 'Technology', 'Clean Code', 'Robert C. Martin', 'Prentice Hall', 'Software development', 464, 1),
(49, 'Biography', 'Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', 'Biography of Steve Jobs', 656, 1),
(55, 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', 11, 11),
(51, 'Mystery', 'The Da Vinci Code', 'Dan Brown', 'Doubleday', 'Mystery thriller', 454, 1),
(52, 'Self-help', 'The Power of Habit', 'Charles Duhigg', 'Random House', 'Self-improvement', 371, 1),
(53, 'Romance', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton', 'Classic romance', 279, 1),
(54, 'Adventure', 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 'Fantasy adventure', 310, 1);

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
CREATE TABLE IF NOT EXISTS `issuebook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`id`, `member_id`, `book_id`, `issue_date`, `return_date`) VALUES
(59, 20, 43, '2024-11-01', '2024-11-21'),
(66, 28, 51, '2024-12-01', '2024-12-17'),
(72, 30, 45, '2024-11-10', '2024-11-22'),
(67, 29, 52, '2024-12-27', '2024-12-31'),
(63, 27, 49, '2024-11-25', '2024-11-28'),
(69, 31, 54, '2024-11-03', '2024-11-30'),
(77, 23, 55, '2024-11-20', '2024-11-21'),
(73, 22, 43, '2024-11-17', '2024-11-28'),
(74, 25, 45, '2024-11-12', '2024-11-25'),
(75, 24, 53, '2024-11-11', '2024-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `tel` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `address`, `tel`, `gender`) VALUES
(20, 'Ravindith Dinusara', '353/1/a', '0750743669', 'Male'),
(22, 'Kamal Perera', '123 Main St, Colomb', '0771234567', 'Male'),
(23, 'Nimal Silva', '456 Lake Rd, Kandy', '0712345678', 'Male'),
(24, 'Sunil Fernando', '789 Hill St, Galle', '0723456789', 'Male'),
(25, 'Samanthi Jayawardena', '321 Beach Rd, Matara', '0756789123', 'Female'),
(26, 'Anusha Wijesinghe', '654 River St, Jaffna', '0767891234', 'Female'),
(27, 'Ruwan Gunasekara', '987 Park Ave, Negombo', '0789123456', 'Male'),
(28, 'Chathuri Senanayake', '741 Forest Dr, Kurunegala', '0791234567', 'Female'),
(29, 'Dilshan Karunaratne', '852 Mountain Rd, Nuwara Eliya', '0702345678', 'Male'),
(30, 'Madhavi Rathnayake', '963 Valley St, Anuradhapura', '0713456789', 'Female'),
(31, 'Tharindu Wickramasinghe', '159 Ocean Blvd, Trincomalee', '0724567890', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

DROP TABLE IF EXISTS `returnbook`;
CREATE TABLE IF NOT EXISTS `returnbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` int DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `bname` varchar(50) DEFAULT NULL,
  `returndate` varchar(50) DEFAULT NULL,
  `elp` int DEFAULT NULL,
  `fine` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`id`, `mid`, `mname`, `bname`, `returndate`, `elp`, `fine`) VALUES
(52, 20, 'Ravindith Dinusara', 'Robbinson cruiso', '2024-11-29', 1, 100),
(53, 26, 'Anusha Wijesinghe', 'A Brief History of Time', '2024-12-08', 0, 0),
(54, 31, 'Tharindu Wickramasinghe', 'The Power of Habit', '2024-11-30', 1, 100),
(55, 23, 'Nimal Silva', 'The Road', '2024-12-31', 0, 0),
(56, 22, 'Kamal Perera', 'Robbinson cruiso', '2024-12-05', 0, 0),
(57, 30, 'Tharindu Wickramasinghe', 'The Hobbit', '2024-11-30', 2, 200),
(58, 26, 'Anusha Wijesinghe', 'Clean Code', '2024-11-19', 20, 2000),
(59, 23, 'Nimal Silva', 'The Da Vinci Code', '2024-11-30', 9, 900);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
