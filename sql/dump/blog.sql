-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2017 at 06:20 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commnet_date` datetime DEFAULT NULL,
  `content` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `commnet_date`, `content`) VALUES
(1, 1, '2017-08-13 06:35:00', '12345678'),
(2, 3, '2017-08-08 23:49:50', 'test'),
(3, 5, '2017-08-13 09:24:00', 'alfa test'),
(4, 6, '2016-12-12 10:30:00', 'gamma text'),
(5, 9, '2017-08-13 18:00:00', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `comments_for_post`
--

CREATE TABLE `comments_for_post` (
  `post_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments_for_post`
--

INSERT INTO `comments_for_post` (`post_id`, `comment_id`) VALUES
(1, 1),
(1, 2),
(4, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`follower_id`, `following_id`) VALUES
(10, 3),
(4, 3),
(11, 1),
(12, 1),
(4, 1),
(6, 3),
(1, 3),
(5, 3),
(6, 10),
(9, 6),
(2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_content` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_content`, `user_id`) VALUES
(1, 'food', 2),
(2, 'cars', 5),
(3, 'crazy things', 10),
(4, 'film', 10),
(5, 'sport', 6),
(6, 'water', 5);

-- --------------------------------------------------------

--
-- Table structure for table `twitts`
--

CREATE TABLE `twitts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_date` datetime DEFAULT NULL,
  `content` varchar(25) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `post_title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `twitts`
--

INSERT INTO `twitts` (`post_id`, `user_id`, `post_date`, `content`, `tag_id`, `post_title`) VALUES
(1, 1, '0000-00-00 00:00:00', 'Lorem ipsum dolor sit ame', 1, 'S qwerty'),
(2, 1, '2016-02-02 08:12:00', 'Lorem ipsum dolor sit ame', NULL, 'Test'),
(3, 2, '2016-05-12 10:00:00', 'Lorem ipsum dolor sit', 4, 'text'),
(4, 3, '2016-08-25 08:30:45', 'consectetur adipiscing el', 4, 'sumka'),
(5, 6, '2016-12-30 00:00:00', 'consectetur adipiscing el', 6, 'semka'),
(6, 8, '2016-12-30 19:02:25', 'consectetur adipiscing', NULL, 'qwerty'),
(7, 10, '2016-10-26 12:58:00', 'consectetur adipiscin', 1, 'baby'),
(8, 2, '2017-01-02 20:59:00', 'test test just test', 5, 'test'),
(9, 4, '2017-05-06 01:00:05', 'qwertyuuhghjdgj jh ujhg', 5, 'qazwsx'),
(10, 6, '2017-08-13 10:00:00', 'Suspendisse dapibus arcu', 3, 'rfvtgb'),
(11, 9, '2017-08-13 06:55:00', 'arcu eu risus', 3, 'risus'),
(12, 10, '2017-07-19 23:10:50', 'Morbi in imperdiet lacus', 5, 'Morbi'),
(13, 10, '2017-08-13 15:26:00', 'Morbi in imperdiet lacus', 6, 'lacus'),
(14, 11, '2017-08-13 09:00:00', 'Maecenas quis magna eros.', 6, 'eros'),
(15, 12, '2017-06-12 17:40:00', 'Maecenas quis magna.', 6, 'Maecenas'),
(16, 10, '2017-08-13 07:20:00', 'Cras ornare diam ', 5, 'vitae'),
(17, 11, '2017-06-07 08:05:29', 'lorem dui ullamcorper', 5, 'lorem'),
(18, 10, '2017-08-13 13:26:00', 'sed lorem ornare', 5, 'sed'),
(19, 1, '2017-08-13 05:30:00', 'Proin condimentum nulla ', 4, 'Proin');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL)
  ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `first_name`, `last_name`, `age`) VALUES
(1, 'Sharry', 'May', 20),
(2, 'Luce', 'Blogger', 16),
(3, 'Chris', 'Mango', 35),
(4, 'Jamse', 'Cool', 25),
(5, 'Lindy', 'Marsh', 20),
(6, 'Tayra', 'Clips', 18),
(7, 'Jossef', 'Lasr', 60),
(8, 'Granny', 'Cho', 55),
(9, 'Jack', 'London', 30),
(10, 'Chris', 'Marshal', 26),
(11, 'Sharry', 'May', 20),
(12, 'Jamse', 'Cool', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id_fk_2` (`user_id`);

--
-- Indexes for table `comments_for_post`
--
ALTER TABLE `comments_for_post`
  ADD KEY `comment_id_fk` (`comment_id`),
  ADD KEY `post_id_fk` (`post_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `following_id` (`following_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `twitts`
--
ALTER TABLE `twitts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `tag_id_fk` (`tag_id`),
  ADD KEY `user_id_fk_3` (`user_id`);;


--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `twitts`
--
ALTER TABLE `twitts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `user_id_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `comments_for_post`
--
ALTER TABLE `comments_for_post`
  ADD CONSTRAINT `comment_id_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`),
  ADD CONSTRAINT `post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `twitts` (`post_id`);

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `user_profile` (`user_id`),
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `twitts`
--
ALTER TABLE `twitts`
  ADD CONSTRAINT `tag_id_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`),
  ADD CONSTRAINT `user_id_fk_3` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
