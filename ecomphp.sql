-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 04:48 AM
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
(6, 'Data base'),
(7, 'Security'),
(8, 'Networking'),
(9, 'Software');

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
(20, 7, '1', 13, '1100');

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
(11, 5, '1423', 'Order Placed', 'on', '2018-03-29 20:02:35');

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
(3, 4, 'Cancelled', ' ', '2018-03-29 20:41:13'),
(4, 2, 'Delivered', ' ', '2018-03-29 22:30:34');

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
(7, 'Computer Net', 8, '1100', 'uploads/cn.jpg', 'Networking related', 100),
(8, 'Database System Concepts', 6, '789', 'uploads/db.jpg', 'Fundamental FDB ', 100),
(9, 'DB Design', 6, '765', 'uploads/dbdesign.jpg', 'Designing the database', 100),
(10, 'Software Engineering', 9, '543', 'uploads/softengi.jpg', 'Methods of software engineering and best practices', 100),
(11, 'E-commerce ', 7, '12212', 'uploads/se.jpg', 'Regarding secure transactions and easy business ', 100),
(12, 'Security Engineering ', 7, '34324', 'uploads/security engineering.jpg', 'Proper techniques to secure the data ', -1),
(13, 'Expert Performance Indexing for SQL Server', 6, '789', 'uploads/Expert Performance Indexing for SQL Server.jpg', 'Expert Performance Indexing for SQL Server 2012 is a deep dive into perhaps the single-most important facet of good performance: indexes, and how to best use them. The book begins in the shallow waters with explanations of the types of indexes and how the', 100),
(14, 'Professional Microsoft SQL Server', 6, '5654', 'uploads/Professional Microsoft SQL Server.jpg', 'A must-have guide for the latest updates to the new release of Reporting Services SQL Server Reporting Services allows you to create reports and business intelligence (BI) solutions. With this updated resource, a team of experts shows you how Reporting Se', 199),
(15, 'Star Schema', 6, '876', 'uploads/Star Schema.jpg', 'The definitive guide to dimensional design for your data warehouse Learn the best practices of dimensional design. Star Schema: The Complete Reference offers in-depth coverage of design principles and their underlying rationales. Organized around design c', 100),
(16, 'Metasploit: The Penetration Tester\'s Guide', 7, '3233', 'uploads/Metasploit.jpg', '\"The best guide to the Metasploit Framework.\" â€”HD Moore, Founder of the Metasploit ProjectThe Metasploit Framework makes discovering, exploiting, and sharing vulnerabilities quick and relatively painless. But while Metasploit is used by security profess', 100),
(17, 'Spam Nation: The Inside Story of Organized Cybercrime', 7, '3232', 'uploads/Spam nation.jpg', 'In Spam Nation, investigative journalist and cybersecurity expert Brian Krebs unmasks the criminal masterminds driving some of the biggest spam and hacker operations targeting Americans and their bank accounts. ', 123),
(18, 'Hacking: The Art of Exploitation', 7, '7655', 'uploads/Hacking.jpg', 'A comprehensive introduction to the techniques of exploitation and creative problem-solving methods commonly referred to as \"hacking.\" It shows how hackers exploit programs and write exploits, instead of just how to run other people\'s exploits. This book ', 0),
(19, 'Worm: The First Digital World War', 7, '675', 'uploads/Worm.jpg', 'From the author of \"Black Hawk Down\" comes the story of the battle between those determined to exploit the internet and those committed to protect itthe ongoing war taking place literally beneath our fingertips. ', 1234),
(20, 'Computer Networking: A Top-Down Approach', 8, '232', 'uploads/CN TopDown Approach.jpg', 'Building on the successful top-down approach of previous editions, the Fourth Edition of Computer Networking continues with an early emphasis on application-layer paradigms and application programming interfaces, encouraging a hands-on experience with pro', 567),
(21, 'The Protocols (TCP/IP Illustrated)', 8, '323', 'uploads/Protocols.jpg', 'Fatbrain Review With a hands-on approach to studying, this best-selling guide explains TCP/IP protocols. In eight chapters, it provides the most thorough coverage of TCP available. It also covers the newest TCP/IP features, including multicasting, path MT', 67),
(22, 'Fundamentals of Software Engineering', 9, '766', 'uploads/Funda of SE.jpg', 'This book provides selective, in-depth coverage of the fundamentals of software engineering by stressing principles and methods through rigorous formal and informal approaches. In contrast to other books which are based on the lifecycle model of software ', 677),
(23, 'Facts and Fallacies of Software Engineering', 9, '4344', 'uploads/Facts n fallacies of SE.jpg', 'The practice of building software is a \"new kid on the block\" technology. Though it may not seem this way for those who have been in the field for most of their careers, in the overall scheme of professions, software builders are relative \"newbies.\" In th', 65);

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
(21, 'sdcsdds', '$2y$10$L5mEk7QRIbo7VRx1vfjjfukBfrCFcYn4oWlqZaCOJ/1cKmptfyVpq', '2018-03-29 20:53:58');

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
(3, 5, 'PRUTHVITEJA', 'ANUMANDLA', 'UNT', '100 Ave D, ', 'APT# 5', 'DENTON', 'TEXAS', '', '76201', '9405940918'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ordertracking`
--
ALTER TABLE `ordertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
