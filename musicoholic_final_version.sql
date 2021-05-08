-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2020 at 04:31 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicoholic`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg'),
(8, 'Ultimate Love Songs', 6, 11, 'assets/images/artwork/arijitLoveSong.jpg'),
(9, 'Hits of Shreya Ghoshal', 7, 11, 'assets/images/artwork/hitsOfShreya.jpg'),
(10, 'Aatishbazi', 8, 11, 'assets/images/artwork/aatishbazi.jpg'),
(11, 'Bollywood Remix', 9, 11, 'assets/images/artwork/bollywoodRemix.jpg'),
(12, 'Hindi Old Hits', 10, 12, 'assets/images/artwork/hindiOldHits.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee'),
(6, 'Arijit Singh'),
(7, 'Shreya Ghoshal'),
(8, 'Jubin Nautiyal'),
(9, 'Neha Kakkar'),
(10, 'Lata Mangeshkar');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Bollywood'),
(12, 'Decades');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
CREATE TABLE IF NOT EXISTS `playlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(11, 'love', 'user123', '2020-12-12 00:00:00'),
(13, 'fav', 'user678', '2020-12-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

DROP TABLE IF EXISTS `playlistsongs`;
CREATE TABLE IF NOT EXISTS `playlistsongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(9, 22, 11, 1),
(13, 32, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 14),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 6),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 11),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 15),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 10),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 35),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 21),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 26),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 30),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 23),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 26),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 24),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 5),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 8),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 11),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 13),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 7),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 2),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 5),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 5),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 11),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 11),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 10),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 9),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 4),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 19),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 17),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 14),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 9),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 23),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 16),
(32, 'Ae Dil Hai Mushkil', 6, 8, 11, '3:40', 'assets/music/bensound-ae dil hai mushkil.mp3', 1, 6),
(33, 'Bekhayali', 6, 8, 11, '6:11', 'assets/music/bensound-bekhayali.mp3', 1, 3),
(34, 'Hamari Adhuri Kahani', 6, 8, 11, '4:20', 'assets/music/bensound-hamari adhuri kahani.mp3', 1, 2),
(35, 'Hamdard', 6, 8, 11, '4:20', 'assets/music/bensound-hamdard.mp3', 1, 2),
(36, 'Jeene Bhi De', 6, 8, 11, '4:20', 'assets/music/bensound-jeene bhi de.mp3', 1, 6),
(37, 'Phir Bhi Tumko Chahunga', 6, 8, 11, '4:20', 'assets/music/bensound-phir bhi tumko chahunga.mp3', 1, 2),
(38, 'Shayad', 6, 8, 11, '3:40', 'assets/music/bensound-shayad.mp3', 1, 2),
(39, 'Dilbar', 9, 11, 11, '3:40', 'assets/music/bensound-dilbar.mp3', 1, 8),
(40, 'Ek Toh Kum Zindgani', 9, 11, 11, '3:40', 'assets/music/bensound-ek toh kum zindgani.mp3', 1, 2),
(41, 'O Saki Saki', 9, 11, 11, '3:40', 'assets/music/bensound-o saki saki.mp3', 1, 3),
(42, 'Deewani Mastani', 7, 9, 11, '5:40', 'assets/music/bensound-deewani mastani.mp3', 1, 5),
(43, 'Ghoomar', 7, 9, 11, '4:42', 'assets/music/bensound-ghoomar.mp3', 1, 3),
(44, 'Sun Raha Hai Na Tu', 7, 9, 11, '5:15', 'assets/music/bensound-sun raha hai.mp3', 1, 5),
(45, 'Teri Ore', 7, 9, 11, '5:38', 'assets/music/bensound-teri ore.mp3', 1, 2),
(46, 'Ye Ishq Hai', 7, 9, 11, '4:43', 'assets/music/bensound-ye ishq hai.mp3', 1, 3),
(47, 'Kaabil Hoon', 8, 10, 11, '5:14', 'assets/music/bensound-kaabil hoon.mp3', 1, 6),
(48, 'Kinna Sona', 8, 10, 11, '4:34', 'assets/music/bensound-kinna sona.mp3', 1, 4),
(49, 'Tum Hi Aana', 8, 10, 11, '4:09', 'assets/music/bensound-tum hi aana.mp3', 1, 1),
(50, 'Zindagi Kuch Toh Bata', 8, 10, 11, '4:23', 'assets/music/bensound-zindagi kuch toh bata.mp3', 1, 3),
(51, 'Dushman Na Kre', 10, 12, 11, '6:03', 'assets/music/bensound-dushman na kre.mp3', 1, 3),
(52, 'Ek Pyaar Ka Nagma Hai', 10, 12, 11, '5:57', 'assets/music/bensound-ek pyaar ka nagma hai.mp3', 1, 4),
(53, 'Lag Jaa Gale', 10, 12, 11, '3:12', 'assets/music/bensound-lag jaa gale.mp3', 1, 3),
(54, 'Mere Khwabon Mein', 10, 12, 11, '4:30', 'assets/music/bensound-mere khwabon mein.mp3', 1, 3),
(55, 'Tu Kitni Acchi Hai', 10, 12, 11, '5:36', 'assets/music/bensound-tu kitni acchi hai.mp3', 1, 1),
(56, 'Ye Galiyan Ye Chaubara', 10, 12, 11, '6:27', 'assets/music/bensound-ye galiyan ye chaubara.mp3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'admin', 'Admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2020-11-29 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'user123', 'User123@gmail.com', '6ad14ba9986e3615423dfca256d04e3f', '2020-12-08 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
