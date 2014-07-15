-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2014 at 11:39 PM
-- Server version: 5.5.37
-- PHP Version: 5.3.10-1ubuntu3.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `9gag`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE IF NOT EXISTS `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(20) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `extn` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `link`, `heading`, `extn`) VALUES
(1, 'aG93KEn', 'I forgot...', '.jpg'),
(2, 'a2NBMq1', 'No words needed.', '.jpg'),
(3, 'agyMxK1', 'Schweinsteiger and Podolski', '.gif'),
(4, 'aM1RQ2V', 'The Great Life Plan', '.jpg'),
(5, 'aBKqyRA', 'Just Girly Things', '.jpg'),
(6, 'aYb8Q1O', 'All my friends right now.', '.jpg'),
(7, 'arp6eq6', 'Bad day with your computer', '.gif'),
(8, 'aRQ5L77', 'Can you shift?', '.jpg'),
(9, 'aM1RxxP', 'Hair don''ts', '.jpg'),
(10, 'aEwrzvM', 'First time at Hooters', '.jpg'),
(11, 'awrRQp8', 'Tim Howard as a young man', '.gif'),
(12, 'amXjAjd', 'When Russian meets Japanese... here''s MIKASA!', '.jpg'),
(13, 'a8WBZGd', 'The pros and cons of making food', '.jpg'),
(14, 'azbNx5b', 'Send me one from the back!', '.jpg'),
(27, 'aozr05x', 'Are you out there?', '.jpg'),
(28, 'a5dmQpE', 'Having a dog vs having a cat', '.jpg'),
(29, 'aNe6xy6', 'As a German that isn''t into soccer', '.gif'),
(30, 'aG93Eez', 'My reaction when I saw that North Korea made their entire country believe that they won the world cu', '.jpg'),
(31, 'aD0p7VB', 'You''ve got 6 months Nike.', '.gif'),
(32, 'aM1RrAx', 'Spielberg troll.', '.jpg'),
(44, 'aM1RrbP', 'Isn''t it true guys?', '.jpg'),
(45, 'a44e3ov', 'They didn''t even have a clue', '.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
