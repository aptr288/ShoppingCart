-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 07:51 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'pruthvi', 'anumandla', 'aptr288@gmail.com', '583f72a833c7dfd63c03edba3776247a'),
(2, 'kavya', 'ANUMANDLA', 'aptr', '583f72a833c7dfd63c03edba3776247a'),
(3, '', '', 'aptr', '583f72a833c7dfd63c03edba3776247a');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Food'),
(4, 'Movies');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `orderid`, `productprice`) VALUES
(1, 8, '1', 1, '789'),
(2, 13, '1', 1, '789'),
(3, 15, '45', 1, '876'),
(4, 8, '1', 2, '789'),
(5, 16, '1', 2, '3233'),
(6, 20, '33', 2, '232'),
(7, 11, '1', 3, '12212'),
(8, 8, '1', 5, '789'),
(9, 11, '1', 5, '12212'),
(10, 9, '1', 6, '765'),
(11, 9, '1', 7, '765'),
(12, 9, '1', 8, '765'),
(13, 8, '34', 9, '789'),
(14, 20, '1', 9, '232'),
(15, 14, '1', 9, '5654'),
(16, 7, '23', 10, '1100'),
(17, 7, '1', 11, '1100'),
(18, 21, '1', 11, '323'),
(19, 7, '1', 12, '1100'),
(20, 7, '1', 13, '1100'),
(21, 1, '1', 12, '11'),
(22, 5, '1', 16, '49'),
(23, 1, '1', 19, '11'),
(24, 1, '1', 21, '11'),
(25, 6, '34', 22, '344'),
(26, 13, '34', 23, '7'),
(27, 6, '1', 25, '344'),
(28, 10, '1', 26, '5'),
(29, 10, '1', 27, '5'),
(30, 10, '1', 28, '5'),
(31, 10, '1', 29, '5'),
(32, 10, '3', 30, '5'),
(33, 10, '10', 31, '1'),
(34, 10, '5', 32, '1'),
(35, 1, '1', 33, '11'),
(36, 5, '1', 34, '49'),
(37, 2, '1', 35, '12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(1, 8, '40998', 'Order Placed', 'cod', '2018-03-16 00:00:10'),
(2, 8, '11678', 'Delivered', 'cod', '2018-03-16 01:11:04'),
(3, 9, '12212', 'Order Placed', '', '2018-03-16 13:29:10'),
(4, 5, '0', 'Cancelled', '', '2018-03-16 16:34:58'),
(5, 5, '13001', 'Order Placed', '', '2018-03-16 16:53:56'),
(6, 5, '765', 'Order Placed', '', '2018-03-16 17:02:00'),
(7, 5, '765', 'Order Placed', '', '2018-03-16 17:31:25'),
(8, 5, '765', 'In Progress', '', '2018-03-16 17:39:36'),
(9, 10, '32712', 'Order Placed', 'cod', '2018-03-19 15:46:44'),
(10, 12, '25300', 'Order Placed', 'cod', '2018-03-24 23:09:51'),
(11, 5, '1423', 'Order Placed', 'on', '2018-03-29 20:02:35'),
(12, 5, '11', 'Order Placed', 'on', '2018-04-11 01:23:35'),
(13, 5, '0', 'Order Placed', 'cod', '2018-04-11 01:28:40'),
(14, 5, '0', 'Order Placed', 'on', '2018-04-11 01:28:50'),
(15, 5, '0', 'Order Placed', 'on', '2018-04-11 01:29:21'),
(16, 5, '49', 'Order Placed', 'on', '2018-04-11 01:31:48'),
(17, 5, '0', 'Order Placed', 'on', '2018-04-11 01:32:49'),
(18, 5, '0', 'Order Placed', 'on', '2018-04-11 01:33:59'),
(19, 5, '11', 'Order Placed', 'on', '2018-04-11 15:29:07'),
(20, 5, '0', 'Order Placed', 'on', '2018-04-11 15:32:13'),
(21, 5, '11', 'Order Placed', 'on', '2018-04-11 15:43:22'),
(22, 5, '11696', 'Order Placed', 'on', '2018-04-12 23:02:26'),
(23, 5, '238', 'Order Placed', 'on', '2018-04-14 17:51:37'),
(24, 5, '0', 'Order Placed', 'on', '2018-04-14 17:51:59'),
(25, 5, '344', 'Order Placed', 'on', '2018-04-14 18:19:30'),
(26, 23, '5', 'Cancelled', '', '2018-04-14 21:51:25'),
(27, 23, '5', 'Cancelled', '', '2018-04-14 21:55:10'),
(28, 23, '5', 'Cancelled', '', '2018-04-14 21:56:33'),
(29, 23, '5', 'Order Placed', '', '2018-04-14 22:01:35'),
(30, 23, '15', 'Order Placed', '', '2018-04-14 22:02:44'),
(31, 23, '10', 'Order Placed', '', '2018-04-14 22:06:40'),
(32, 23, '5', 'Order Placed', '', '2018-04-14 22:12:33'),
(33, 5, '11', 'Order Placed', 'on', '2018-04-14 22:57:03'),
(34, 5, '49', 'Order Placed', 'cod', '2018-04-14 23:21:25'),
(35, 5, '12', 'Order Placed', 'on', '2018-04-14 23:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `ordertracking`
--

CREATE TABLE `ordertracking` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `message`, `timestamp`) VALUES
(1, 8, 'Cancelled', ' just nit ', '2018-03-16 18:02:46'),
(2, 8, 'In Progress', 'Nothing', '2018-03-16 19:18:18'),
(6, 27, 'Cancelled', ' ', '2018-04-14 21:59:00'),
(7, 28, 'Cancelled', ' ', '2018-04-14 21:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `catid`, `price`, `thumb`, `description`, `quantity`) VALUES
(1, 'Kung Fu Panda: 3-Movie Collection', 4, '11', 'uploads/Panda.jpg', 'Jack Black (Actor), Dustin Hoffman (Actor), John Stevenson (Director), Jennifer Yuh Nelson (Director) ', 700),
(2, 'Ferdinand', 4, '12', 'uploads/Ferdinand.jpg', 'This is a great movie. A vegan animal sanctuary signed on with this movie so it has a lot of great truths within the movie. Itâ€™s a cute movie about a bull named Ferdinand who doesnâ€™t want to fight and finds out about the truths about bull fighting.', 700),
(3, 'COCO', 4, '34', 'uploads/COCO.jpg', 'Anthony Gonzalez (Actor), Gael Garcia Bernal (Actor), Lee Unkrich and Adrian Molina (Director)', 55),
(4, 'Despicable Me', 4, '23', 'uploads/Despicable Me.jpg', 'Steve Carell (Actor), Jason Segel (Actor), Chris Renaud (Director), Pierre Coffin (Director)', 788),
(5, 'Echo ', 1, '49', 'uploads/Echo.jpg', 'All-new Echo (2nd Gen) has a new speaker, new design, and is available in a range of styles including fabrics and wood veneers. Echo connects to Alexa to play music, make calls, set music alarms and timers, ask questions, control smart home devices, and m', 67),
(6, 'Nest - Learning Thermostat', 1, '344', 'uploads/Nest.jpg', 'Take control of your home\'s heating and cooling without lifting a finger with this thermostat, which learns your habits and adjusts to automatically regulate your home\'s temperature based on your schedule. The Nest Leaf feature alerts you when you choose ', 788),
(7, 'HIDRATE SPARK', 1, '33', 'uploads/Teal-Hidrate-Spark-Glowing.jpg', 'Sometimes drinking more water is all we need to feel energized and brighten our mood. Available in an array of frosted colors, our sleek Hidrate Spark 2.0 smart water bottle will keep track of how much you drink and helps you meet your daily hydration goa', 999),
(8, 'Nest Cam', 1, '344', 'uploads/Seceret Cam.jpg', 'You donâ€™t have to be a billionaire playboy/super-hero/fictional character to have your very own JARVIS at home. In fact, weâ€™re already halfway to Jetsons-land thanks to the fine folks at Nest.  For the past few years, Nest has been morphing simple hou', 999),
(9, 'DB Design', 2, '7', 'uploads/dbdesign.jpg', 'Designing the database', 100),
(10, 'Software Engineering', 2, '5', 'uploads/softengi.jpg', 'Methods of software engineering and best practices', 100),
(11, 'E-commerce ', 2, '13', 'uploads/se.jpg', 'Regarding secure transactions and easy business ', 100),
(12, 'Security Engineering ', 2, '67', 'uploads/security engineering.jpg', 'Proper techniques to secure the data ', -1),
(13, 'Expert Performance Indexing for SQL Server', 2, '7', 'uploads/Expert Performance Indexing for SQL Server.jpg', 'Expert Performance Indexing for SQL Server 2012 is a deep dive into perhaps the single-most important facet of good performance: indexes, and how to best use them. The book begins in the shallow waters with explanations of the types of indexes and how the', 100),
(14, 'Professional Microsoft SQL Server', 2, '5', 'uploads/Professional Microsoft SQL Server.jpg', 'A must-have guide for the latest updates to the new release of Reporting Services SQL Server Reporting Services allows you to create reports and business intelligence (BI) solutions. With this updated resource, a team of experts shows you how Reporting Se', 199),
(15, 'Star Schema', 2, '8', 'uploads/Star Schema.jpg', 'The definitive guide to dimensional design for your data warehouse Learn the best practices of dimensional design. Star Schema: The Complete Reference offers in-depth coverage of design principles and their underlying rationales. Organized around design c', 100),
(16, 'Metasploit: The Penetration Tester\'s Guide', 2, '32', 'uploads/Metasploit.jpg', '\"The best guide to the Metasploit Framework.\" â€”HD Moore, Founder of the Metasploit ProjectThe Metasploit Framework makes discovering, exploiting, and sharing vulnerabilities quick and relatively painless. But while Metasploit is used by security profess', 100),
(17, 'Spam Nation: The Inside Story of Organized Cybercrime', 2, '92', 'uploads/Spam nation.jpg', 'In Spam Nation, investigative journalist and cybersecurity expert Brian Krebs unmasks the criminal masterminds driving some of the biggest spam and hacker operations targeting Americans and their bank accounts. ', 123),
(18, 'Hacking: The Art of Exploitation', 2, '76', 'uploads/Hacking.jpg', 'A comprehensive introduction to the techniques of exploitation and creative problem-solving methods commonly referred to as \"hacking.\" It shows how hackers exploit programs and write exploits, instead of just how to run other people\'s exploits. This book ', 0),
(19, 'Worm: The First Digital World War', 2, '67', 'uploads/Worm.jpg', 'From the author of \"Black Hawk Down\" comes the story of the battle between those determined to exploit the internet and those committed to protect itthe ongoing war taking place literally beneath our fingertips. ', 1234),
(20, 'Computer Networking: A Top-Down Approach', 2, '23', 'uploads/CN TopDown Approach.jpg', 'Building on the successful top-down approach of previous editions, the Fourth Edition of Computer Networking continues with an early emphasis on application-layer paradigms and application programming interfaces, encouraging a hands-on experience with pro', 567),
(21, 'The Protocols (TCP/IP Illustrated)', 2, '32', 'uploads/Protocols.jpg', 'Fatbrain Review With a hands-on approach to studying, this best-selling guide explains TCP/IP protocols. In eight chapters, it provides the most thorough coverage of TCP available. It also covers the newest TCP/IP features, including multicasting, path MT', 67),
(22, 'Fundamentals of Software Engineering', 2, '7', 'uploads/Funda of SE.jpg', 'This book provides selective, in-depth coverage of the fundamentals of software engineering by stressing principles and methods through rigorous formal and informal approaches. In contrast to other books which are based on the lifecycle model of software ', 677),
(23, 'Facts and Fallacies of Software Engineering', 2, '43', 'uploads/Facts n fallacies of SE.jpg', 'The practice of building software is a \"new kid on the block\" technology. Though it may not seem this way for those who have been in the field for most of their careers, in the overall scheme of professions, software builders are relative \"newbies.\" In th', 65),
(24, 'Computer Net', 2, '11', 'uploads/cn.jpg', 'Networking related', 100),
(25, 'Database System Concepts', 2, '7', 'uploads/db.jpg', 'Fundamental FDB ', 100),
(32, 'Essentia Ionized Alkaline', 3, '11', 'uploads/Essential.jpg', 'Essentia Water provides unmatched hydration, health benefits and smooth taste. Its superior hydrating qualities come from a special electrolyte formula and optimal pH level of 9.5, which gives your body more of what it needs to thrive. Drinking Essentia W', 0),
(33, 'KIND Bars', 3, '20', 'uploads/Kind.jpg', 'Our best-selling bar is a simple blend of Brazilian sea salt sprinkled over whole nuts and drizzled with dark chocolate.', 0),
(34, 'Lindt Excellence Bar', 3, '23', 'uploads/Choclate.jpg', 'Reveals all the strength and richness of cocoa beans-an ideal choice for truly sophisticated palates\r\nLindt delivers a unique chocolate experience with a distinctly smooth taste', 0),
(35, 'Lindt Swiss Luxury Selection', 3, '34', 'uploads/Ferarocher.jpg', 'Sophisticated collection of elegant European style pralines, crafted with our exquisite milk, dark and white chocolate\r\nLindt delivers a unique chocolate experience with a distinctly smooth taste', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestamp`) VALUES
(4, 'kav', '$2y$10$.NHL8iNuyH06i1R3uu3NN.ewRzZZor11GqCPtXPHbTJridw.3Z31.', '2018-03-15 21:28:57'),
(5, 'kavya', '$2y$10$.fw8e9Q2CHc3c4PvX7I1u.wqFpd0bYYWxj/HOPfPy4rORmGxG8ps.', '2018-03-15 21:31:12'),
(8, 'RamReddy', '$2y$10$H/CLLRtuB4etkXOiCLuhnOPJ9M1AT5n6UbmrKhf/l9aS3kIpdRySm', '2018-03-15 23:59:36'),
(9, 'jagan', '$2y$10$mH063mPQzW.D2LJTZfo8ee3KZ/Oma1zgz.quHEPXxBei8iC2FuW0q', '2018-03-16 13:18:18'),
(10, 'sri', '$2y$10$844P/L6P1T0eKm6jMVX9aupmw8GIgZI6ipEI5aOn9ma82GI46kuVW', '2018-03-19 15:45:37'),
(11, 'hghhg', '$2y$10$ZrvwOtgp/jtdW7mEKMQLoeoj61bk6iuqnhh2XYZX3vQRwQaOk/L6y', '2018-03-19 17:41:59'),
(12, 'prakhas', '$2y$10$MaJKo4blvXYCScRwHN7jbuM8D5tZRT2B9bLVfPzA1U7.FJgiMD0VO', '2018-03-24 23:09:12'),
(13, 'tarun', '$2y$10$UTJFtAdRhOPTJn7FE2koCuklT4pGzy.Bic61iivrowwaQjyWjAFWm', '2018-03-29 20:03:44'),
(16, 'sdjfgsdjK', '$2y$10$VA5WSMkW0knpOO49pCv5/.Did1qrrPbPqe.Lq2gOpWb7MjRFiwXjm', '2018-03-29 20:27:12'),
(17, '', '$2y$10$bEJFOf8AgZ8T4BoDpcaxtuFs/8FJp.9G5kkJrejZvsY95mPDhDJHy', '2018-03-29 20:52:23'),
(21, 'sdcsdds', '$2y$10$L5mEk7QRIbo7VRx1vfjjfukBfrCFcYn4oWlqZaCOJ/1cKmptfyVpq', '2018-03-29 20:53:58'),
(22, 'jani', '$2y$10$UhxFN7E8/8kJXmQlVTXWL.h8KZkzP11nmOQbYVthHymjsq/zuHOku', '2018-04-09 00:17:38'),
(23, 'change@gmail.com', '$2y$10$cf2KR2kWZC1qIprxeM4qsekiV1aR558FIUrx34NGxew3uYaHRjfku', '2018-04-14 21:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `usersmeta`
--

CREATE TABLE `usersmeta` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(1, 8, 'Ram ', 'Reddy', 'UNT', '100 Ave D', ' APT# 5', 'DENTON', 'TEXAS', 'AD', '76201', '9405940918'),
(2, 9, '', '', '', '', '', '', '', '', '', ''),
(3, 5, 'PRUTHVITEJA Reddy', 'ANUMANDLA', 'UNT', '100 Ave D,', 'APT# 5', 'DENTON', 'TEXAS', 'AW', '76201', '9405940918'),
(4, 10, '', '', '', '', '', '', '', '', '', ''),
(5, 12, '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertracking`
--
ALTER TABLE `ordertracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ordertracking`
--
ALTER TABLE `ordertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
