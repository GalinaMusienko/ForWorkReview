-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2017 at 10:07 AM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Galina_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `Post_ID` int(11) NOT NULL,
  `Tag` varchar(20) DEFAULT NULL,
  `Author` varchar(60) DEFAULT NULL,
  `Post_Title` varchar(80) DEFAULT NULL,
  `Post_Description` varchar(200) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Post_Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`Post_ID`, `Tag`, `Author`, `Post_Title`, `Post_Description`, `Date`, `Post_Status`) VALUES
(1, 'food', 'Lina Smith', 'Test Food', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, lacinia id tortor a, rhoncus tristique velit', '1991-04-07', 'Published'),
(2, 'cars', 'John Smith', 'Fasion Car', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, lacinia id tortor at', '0000-00-00', 'Published'),
(3, 'fashion', 'Lolly Silver', 'Modern Women in NY', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, lacinia id tortor at', '2004-11-03', 'Draf'),
(4, 'food', 'Lolly Silver', 'Chocolate Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, lacinia id tortor at', '2004-11-08', 'Draf'),
(5, 'food', 'Katte Two', 'Chocolate Cake2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, lacinia id tortor at', '2005-12-08', 'Published'),
(6, 'cars', 'Mike Dou', 'Red Blue Moto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2005-12-12', 'Published'),
(7, 'cars', 'Teddy Barry', 'Electro Cars are in a Future', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2008-02-09', 'Draft'),
(8, 'food', 'Carry Perry', 'Non gluten pancakes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2011-08-09', 'Published'),
(9, 'food', 'Carry Perry', 'Non alcogol pancakes', 'SLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2015-08-09', 'Published'),
(10, 'fashion', 'Omar Khat', 'Stressed Case', 'Sed vel sodales tortor. SLorem ipsum dolor sit amet, consectetur adipisc', '2015-08-09', 'Published'),
(11, '', 'Carry Perry', 'Happy mexico', 'SLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2016-12-13', 'Published'),
(12, 'coffee, tea', 'Carry Perry', 'Mexico', 'SLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2016-12-13', 'Draft'),
(13, 'food, fashion', 'Carry Blanko', 'Blanko Post', 'SLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2016-12-13', 'Draft'),
(14, '', 'Carry Blanko', 'Blanko Post2', 'SLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2016-12-13', 'Draft'),
(15, 'food, drink, tag', 'Carry Blanko', 'Blanko Post3', 'SLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tortor ipsum, art', '2016-12-13', 'Draft');

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `comment_id` int(11) NOT NULL,
  `nickname_id` int(11) DEFAULT NULL,
  `commnet_date` date DEFAULT NULL,
  `content` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`comment_id`, `nickname_id`, `commnet_date`, `content`) VALUES
(1, 1, '2016-02-16', '12345678'),
(2, 3, '2016-08-08', 'consectetu'),
(3, 5, '2016-09-25', 'consectetur adipisci'),
(4, 6, '2016-12-12', 'consectetu elit'),
(5, 9, '2016-12-28', 'adipiscing elit');

-- --------------------------------------------------------

--
-- Table structure for table `Comments_For_Post`
--

CREATE TABLE `Comments_For_Post` (
  `post_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Comments_For_Post`
--

INSERT INTO `Comments_For_Post` (`post_id`, `comment_id`) VALUES
(1, 1),
(1, 2),
(4, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Nickname`
--

CREATE TABLE `Nickname` (
  `nickname_id` int(11) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Nickname`
--

INSERT INTO `Nickname` (`nickname_id`, `nickname`) VALUES
(1, 'red fox'),
(2, 'timmy'),
(3, 'lolly'),
(4, 'fox'),
(5, 'mandy'),
(6, 'lolla'),
(7, 'terro'),
(8, 'pretty woman'),
(9, 'big man'),
(10, 'trixy');

-- --------------------------------------------------------

--
-- Table structure for table `Twitts`
--

CREATE TABLE `Twitts` (
  `post_id` int(11) NOT NULL,
  `post_date` date DEFAULT NULL,
  `content` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Twitts`
--

INSERT INTO `Twitts` (`post_id`, `post_date`, `content`) VALUES
(1, '0000-00-00', 'Lorem ipsum dolor sit ame'),
(2, '2016-02-02', 'Lorem ipsum dolor sit ame'),
(3, '2016-05-12', 'Lorem ipsum dolor sit'),
(4, '2016-08-25', 'consectetur adipiscing el'),
(5, '2016-12-30', 'consectetur adipiscing el'),
(6, '2016-12-30', 'consectetur adipiscing'),
(7, '2016-10-26', 'consectetur adipiscin');

-- --------------------------------------------------------

--
-- Table structure for table `Users_Post`
--

CREATE TABLE `Users_Post` (
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users_Post`
--

INSERT INTO `Users_Post` (`user_id`, `post_id`) VALUES
(1, 1),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `User_Profile`
--

CREATE TABLE `User_Profile` (
  `user_id` int(11) NOT NULL,
  `nickname_id` int(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `followers_num` int(11) DEFAULT NULL,
  `following_nim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User_Profile`
--

INSERT INTO `User_Profile` (`user_id`, `nickname_id`, `first_name`, `last_name`, `age`, `followers_num`, `following_nim`) VALUES
(1, 1, 'Sharry', 'May', 20, 2, 0),
(2, 2, 'Luce', 'Blogger', 16, 5, 10),
(3, 4, 'Chris', 'Mango', 35, 25, 60),
(4, 3, 'Jamse', 'Cool', 25, 16, 7),
(5, 5, 'Lindy', 'Marsh', 20, 0, 0),
(6, 6, 'Tayra', 'Clips', 18, 2, 5),
(7, 7, 'Jossef', 'Lasr', 60, 0, 1),
(8, 8, 'Granny', 'Cho', 55, 1, 0),
(9, 9, 'Jack', 'London', 30, 1, 1),
(10, 10, 'Chris', 'Marshal', 26, 12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`Post_ID`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `nickname_id_fk_2` (`nickname_id`);

--
-- Indexes for table `Comments_For_Post`
--
ALTER TABLE `Comments_For_Post`
  ADD KEY `comment_id_fk` (`comment_id`),
  ADD KEY `post_id_fk` (`post_id`);

--
-- Indexes for table `Nickname`
--
ALTER TABLE `Nickname`
  ADD PRIMARY KEY (`nickname_id`);

--
-- Indexes for table `Twitts`
--
ALTER TABLE `Twitts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `Users_Post`
--
ALTER TABLE `Users_Post`
  ADD KEY `post_id_fk_2` (`post_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `User_Profile`
--
ALTER TABLE `User_Profile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `nickname_id_fk` (`nickname_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Nickname`
--
ALTER TABLE `Nickname`
  MODIFY `nickname_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Twitts`
--
ALTER TABLE `Twitts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `User_Profile`
--
ALTER TABLE `User_Profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `nickname_id_fk_2` FOREIGN KEY (`nickname_id`) REFERENCES `Nickname` (`nickname_id`);

--
-- Constraints for table `Comments_For_Post`
--
ALTER TABLE `Comments_For_Post`
  ADD CONSTRAINT `comment_id_fk` FOREIGN KEY (`comment_id`) REFERENCES `Comments` (`comment_id`),
  ADD CONSTRAINT `post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `Twitts` (`post_id`);

--
-- Constraints for table `Users_Post`
--
ALTER TABLE `Users_Post`
  ADD CONSTRAINT `post_id_fk_2` FOREIGN KEY (`post_id`) REFERENCES `Twitts` (`post_id`),
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `User_Profile` (`user_id`);

--
-- Constraints for table `User_Profile`
--
ALTER TABLE `User_Profile`
  ADD CONSTRAINT `nickname_id_fk` FOREIGN KEY (`nickname_id`) REFERENCES `Nickname` (`nickname_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
