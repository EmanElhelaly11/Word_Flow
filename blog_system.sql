-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 12:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `content`, `created_at`) VALUES
(9, 1, 'Back-End', 'Backend refers to the server-side of web development, where the application logic and server-side database management reside. It is responsible for handling requests from the client-side, processing data, and returning the response to the client-side.\r\n\r\nOne of the most important aspects of backend development is scalability. As the number of users and requests to the server increases, the server needs to handle them efficiently without slowing down or crashing. To achieve this, backend developers need to use the right technologies and frameworks that can handle large volumes of data and requests.\r\n\r\nAnother important aspect of backend development is security. The backend is responsible for storing sensitive user data such as passwords, credit card information, and personal details. Therefore, it is essential to implement robust security measures to protect this data from hackers and cyber attacks.\r\n\r\nTo build a robust and scalable backend, developers need to have a strong understanding of server-side programming languages such as Java, Python, and PHP, as well as web development frameworks such as Node.js, Django, and Ruby on Rails. They also need to have knowledge of database management systems such as MySQL, MongoDB, and Oracle, as well as server-side technologies such as REST APIs, GraphQL, and web sockets.\r\n\r\nOverall, backend development is an essential part of web development that requires strong technical skills, attention to detail, and a deep understanding of server-side technologies and programming languages.', '2023-03-27 22:08:01'),
(10, 2, 'هكر صينى', '2Al + 6Hcl ---> 2AlCl3 + 3H2', '2023-03-27 22:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Eman Elhelaly', 'emanelhelaly11@gmail.com', '$2y$10$NLGvEau77/48jh6hiL4Fbuj0u6/wgURrBcIByFbiSJz6iUeJg0AXy', '2023-03-26 15:56:18'),
(2, 'Salah', 'salah@gmail.com', '$2y$10$n05bnFvH3dyAmzb.jrdEs.RBLDDbIG5oKchDNKHF5Fs9Xx1fNUeRS', '2023-03-27 19:58:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_users` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_users` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
