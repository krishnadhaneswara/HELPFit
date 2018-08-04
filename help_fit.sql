-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2018 at 12:30 AM
-- Server version: 5.7.19
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
-- Database: `bit306_e1200261`
--
DROP DATABASE IF EXISTS `bit306_e1200261`;
CREATE DATABASE IF NOT EXISTS `bit306_e1200261` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bit306_e1200261`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `idclass` varchar(50) NOT NULL,
  `tb_user_username` varchar(50) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `enroll_key` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`idclass`, `tb_user_username`, `subject_name`, `enroll_key`) VALUES
('BIT306', 'komang', 'Web Technologies', 'WebTech2017'),
('kelas', 'lecture', 'Subject 1', 'enrol'),
('kelas1', 'lecture', 'Nama', 'enrol'),
('kelas2', 'lecture', 'subjek lagi', 'er');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_class`
--

DROP TABLE IF EXISTS `enroll_class`;
CREATE TABLE `enroll_class` (
  `idenroll` int(11) NOT NULL,
  `tb_user_username` varchar(50) DEFAULT '0',
  `class_idclass` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` varchar(50) NOT NULL,
  `tb_user_username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `tb_user_username`, `name`, `email`) VALUES
('14045', 'komang', 'Komang Rinartha', 'komang@rinartha.com');

-- --------------------------------------------------------

--
-- Table structure for table `quizorassignment`
--

DROP TABLE IF EXISTS `quizorassignment`;
CREATE TABLE `quizorassignment` (
  `idQnA` int(10) UNSIGNED NOT NULL,
  `class_idclass` varchar(50) NOT NULL,
  `tb_user_username` varchar(50) DEFAULT NULL,
  `QorA` tinyint(3) UNSIGNED DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizorassignment`
--

INSERT INTO `quizorassignment` (`idQnA`, `class_idclass`, `tb_user_username`, `QorA`, `note`, `filename`) VALUES
(12, 'kelas', 'lecture', 0, 'asdasd', '1516211262.docx'),
(13, 'kelas', 'lecture', 0, 'note2', '1516212159.docx'),
(14, 'kelas2', 'lecture', 0, 'note1', '1516212243.docx'),
(15, 'kelas', 'lecture', 1, 'quiz 1', '1516212480.docx'),
(16, 'kelas1', 'lecture', 1, 'quiz 1', '1516212491.docx'),
(17, 'BIT306', 'komang', 0, 'Assignment 1', '1516389450.docx'),
(18, 'BIT306', 'komang', 1, 'Quiz 1', '1516389973.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `username` varchar(50) NOT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `user_pass`, `user_type`) VALUES
('komang', 'komang', 'teacher'),
('lecture', 'lecture', 'teacher'),
('student', 'student', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`idclass`),
  ADD KEY `class_FKIndex1` (`tb_user_username`);

--
-- Indexes for table `enroll_class`
--
ALTER TABLE `enroll_class`
  ADD PRIMARY KEY (`idenroll`),
  ADD KEY `tb_user_username` (`tb_user_username`),
  ADD KEY `class_idclass` (`class_idclass`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_FKIndex1` (`tb_user_username`);

--
-- Indexes for table `quizorassignment`
--
ALTER TABLE `quizorassignment`
  ADD PRIMARY KEY (`idQnA`),
  ADD KEY `QuizOrAssignment_FKIndex1` (`class_idclass`),
  ADD KEY `QuizOrAssignment_FKIndex2` (`tb_user_username`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enroll_class`
--
ALTER TABLE `enroll_class`
  MODIFY `idenroll` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizorassignment`
--
ALTER TABLE `quizorassignment`
  MODIFY `idQnA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `db_issm`
--
DROP DATABASE IF EXISTS `db_issm`;
CREATE DATABASE IF NOT EXISTS `db_issm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_issm`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start` varchar(10) NOT NULL,
  `end` varchar(10) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table ` aplicants`
--

DROP TABLE IF EXISTS ` aplicants`;
CREATE TABLE ` aplicants` (
  `id` int(8) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` varchar(25) NOT NULL,
  `address` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `cv` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fill_details`
--

DROP TABLE IF EXISTS `fill_details`;
CREATE TABLE `fill_details` (
  `id` int(8) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fill_details`
--

INSERT INTO `fill_details` (`id`, `company_name`, `first_name`, `last_name`, `email`, `gender`, `file`) VALUES
(3, 'hh', 'deddd', 'dd', 'aaaa@gmail.com', 'Male', '1.jpg'),
(4, 'techzim', 'leo', 'mutema', 'muteam@gmail.com', 'Female', '444.PNG'),
(5, 'gtech', 'mutoro', 'mutoro', 'mutorok@gmail.com', 'Female', '444.PNG'),
(16, 'lllll', 'ddd', 'sshgsh', 'sssksjjs', 'Male', 'Capture 1.PNG'),
(17, 'yththh', 'figffjjkf', 'ffjeofhoe', 'dfhjhjdfdf', 'Male', 'funny.PNG'),
(26, 'eee', 'eee', 'eeeeaa', 'aaaa@gmail.com', '', ''),
(28, 'fff', 'dd', 'dd', 'aaaa@gmail.com', 'Male', 'did u.jpg'),
(29, 'jjmm', 'vjj', 'hjhjhj', 'aaaa@gmail.com', 'Male', '444.PNG'),
(31, 'lolo', 'jghjj', 'gfgg', 'aaaa@gmail.com', 'Female', '1.jpg'),
(32, 'hjhjk', 'kjkj', 'trt', 'aaaa@gmail.com', 'Male', 'did u.jpg'),
(33, 'lolo', 'lll', 'gfg', 'aaaa@gmail.com', 'Male', '1.jpg'),
(34, 'techzim', 'libert', 'liberty', 'aaaa@gmail.com', 'Female', '1.jpg'),
(35, 'comapp', 'asa', 'aaa', 'aaaa@gmail.com', 'Female', 'libary features 1.PNG'),
(36, 'chatikobo', 'chatikobo', 'chatikobo', 'aaaa@gmail.com', 'Male', 'liberty2.jpg'),
(40, ' dfddfd', 'eeee', 'dddd', 'ddd', 'Male', 'Capture 2.PNG'),
(42, ' dfddfd', 'eeee', 'dddd', 'hhhh@m.b', 'Female', 'Capture 2.PNG'),
(43, ' dramcache ', 'liberty', 'chatikobo', 'vbvb@gmail.com', 'Male', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

DROP TABLE IF EXISTS `registered_users`;
CREATE TABLE `registered_users` (
  `id` int(8) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `user_name`, `first_name`, `last_name`, `password`, `email`, `gender`) VALUES
(0, 'chat', 'linda', 'linda', '123', 'aa@gmail.com', 'female'),
(1, 'lolo', 'leo', 'quism', '1234', 'aa@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `middlename` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `year` varchar(2) NOT NULL,
  `section` varchar(1) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `firstname`, `middlename`, `lastname`, `year`, `section`, `photo`) VALUES
(3, 21201455, 'Daw', 'asd', 'asd', 'II', 'A', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `fill_details`
--
ALTER TABLE `fill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fill_details`
--
ALTER TABLE `fill_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `dsc-project`
--
DROP DATABASE IF EXISTS `dsc-project`;
CREATE DATABASE IF NOT EXISTS `dsc-project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dsc-project`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_24_065128_create_foods_migration', 1),
(4, '2018_06_24_065326_create_students', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum ada nama',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `dsc-warehouse`
--
DROP DATABASE IF EXISTS `dsc-warehouse`;
CREATE DATABASE IF NOT EXISTS `dsc-warehouse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dsc-warehouse`;

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

DROP TABLE IF EXISTS `cabangs`;
CREATE TABLE `cabangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_cabang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_pegawai` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_15_013457_create_products_table', 1),
(4, '2018_07_15_013849_create_stocks_table', 1),
(5, '2018_07_15_013953_create_product_categories_table', 1),
(6, '2018_07_15_034358_create_employees_table', 1),
(7, '2018_07_15_035049_create_cabangs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` enum('IN','OUT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_no_pegawai_unique` (`no_pegawai`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `helpfit`
--
DROP DATABASE IF EXISTS `helpfit`;
CREATE DATABASE IF NOT EXISTS `helpfit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helpfit`;

-- --------------------------------------------------------

--
-- Table structure for table `grouptraining`
--

DROP TABLE IF EXISTS `grouptraining`;
CREATE TABLE `grouptraining` (
  `id` int(10) UNSIGNED NOT NULL,
  `Member_id` int(11) NOT NULL,
  `classType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maxParticipants` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_25_075433_create__member_table', 1),
(4, '2018_06_25_091534_create_trainer_table', 1),
(5, '2018_06_25_092901_create_review_table', 1),
(6, '2018_06_25_094852_create_personal_training_table', 1),
(7, '2018_06_25_095524_create_group_training_table', 1),
(8, '2018_06_25_102258_create_training_session_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personaltraining`
--

DROP TABLE IF EXISTS `personaltraining`;
CREATE TABLE `personaltraining` (
  `id` int(10) UNSIGNED NOT NULL,
  `Member_id` int(11) NOT NULL,
  `notes` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(10) UNSIGNED NOT NULL,
  `Member_id` int(11) NOT NULL,
  `Trainer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '5',
  `comments` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No comments'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
CREATE TABLE `trainer` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `specialty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainingsession`
--

DROP TABLE IF EXISTS `trainingsession`;
CREATE TABLE `trainingsession` (
  `sessionID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grouptraining`
--
ALTER TABLE `grouptraining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personaltraining`
--
ALTER TABLE `personaltraining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainingsession`
--
ALTER TABLE `trainingsession`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grouptraining`
--
ALTER TABLE `grouptraining`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personaltraining`
--
ALTER TABLE `personaltraining`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainingsession`
--
ALTER TABLE `trainingsession`
  MODIFY `sessionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `help_fit`
--
DROP DATABASE IF EXISTS `help_fit`;
CREATE DATABASE IF NOT EXISTS `help_fit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `help_fit`;

-- --------------------------------------------------------

--
-- Table structure for table `group_training`
--

DROP TABLE IF EXISTS `group_training`;
CREATE TABLE `group_training` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `class_type` varchar(255) NOT NULL,
  `training_session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `user_id`, `level`) VALUES
(1, 2, 5),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_training`
--

DROP TABLE IF EXISTS `personal_training`;
CREATE TABLE `personal_training` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `training_session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_training`
--

INSERT INTO `personal_training` (`id`, `member_id`, `notes`, `training_session_id`) VALUES
(1, 1, 'this note', 1),
(2, 2, 'for fun', 4),
(3, 1, 'this note', 4),
(4, 2, 'join this shit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) NOT NULL,
  `comments` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `member_id`, `trainer_id`, `timestamp`, `rating`, `comments`) VALUES
(1, 1, 1, '2018-08-02 05:16:59', 1, 'this'),
(2, 2, 1, '2018-08-03 09:59:46', 5, 'Good trainer'),
(3, 2, 2, '2018-08-03 23:03:24', 1, 'Good trainer');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
CREATE TABLE `trainer` (
  `trainer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `speciality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`trainer_id`, `user_id`, `speciality`) VALUES
(1, 1, 'silat'),
(2, 5, 'Long Run');

-- --------------------------------------------------------

--
-- Table structure for table `training_session`
--

DROP TABLE IF EXISTS `training_session`;
CREATE TABLE `training_session` (
  `training_session_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `the_date` date NOT NULL,
  `the_time` time NOT NULL,
  `fee` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trainer_id` int(11) NOT NULL,
  `max_participant` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_session`
--

INSERT INTO `training_session` (`training_session_id`, `title`, `the_date`, `the_time`, `fee`, `status`, `trainer_id`, `max_participant`) VALUES
(1, 'senam', '2018-07-04', '12:59:00', 0, 2, 1, 1),
(2, 'senam', '2018-07-03', '12:59:00', 100, 2, 1, 1),
(3, 'senam', '2018-08-02', '01:00:00', 1, 2, 1, 3),
(4, '5 km jogging ', '2018-08-01', '06:00:00', 5000, 2, 2, 80);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`) VALUES
(1, 'admin', 'admin', 'ini admin', 'admin@admin.com'),
(2, 'member', 'member', 'ini member', 'member@member.com'),
(3, 'test', 'test', 'test@test.com', 'test@test.com'),
(4, 'pita2018', 'pita2018', 'Adek Pita', 'pita.This@gmail.com'),
(5, 'AdiJoe', 'AdiJoe', 'Adi Joe', 'AdiJoe@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_training`
--
ALTER TABLE `group_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `personal_training`
--
ALTER TABLE `personal_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `training_session`
--
ALTER TABLE `training_session`
  ADD PRIMARY KEY (`training_session_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_training`
--
ALTER TABLE `group_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_training`
--
ALTER TABLE `personal_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `trainer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `training_session`
--
ALTER TABLE `training_session`
  MODIFY `training_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `hilearn`
--
DROP DATABASE IF EXISTS `hilearn`;
CREATE DATABASE IF NOT EXISTS `hilearn` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hilearn`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `access`) VALUES
(1, 'admin', 'admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id_course` varchar(6) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `enrol_key` varchar(10) NOT NULL,
  `id_lecturer` varchar(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id_course`, `course_name`, `enrol_key`, `id_lecturer`, `nama_file`, `tipe_file`, `file_size`, `file`) VALUES
('BIT100', 'Introduction C++', '1234', '0', 'Task_Bit100', 'docx', 73035, '../files/Task_Bit100.docx'),
('BIT105', 'IT entrepreneur 2', '12345', 'L120052', 'Task_Bit105', 'docx', 73035, '../files/Task_Bit105.docx'),
('BIT122', 'New Course', '1234', 'L120040', '', '', 0, ''),
('BIT200', 'Operating System', '1234', 'L120040', 'Task_Bit200', 'docx', 73035, '../files/Task_Bit200.docx'),
('BIT234', 'Web Education', '4321', 'L120032', 'old', 'docx', 45236, '../files/old.docx'),
('BIT301', 'Software Quality Ass', '1234', 'L120052', 'Task_Bit301', 'docx', 73035, '../files/Task_Bit301.docx'),
('BIT302', 'Software Enginering', '1234', 'L120032', 'Task_Bit302', 'docx', 73035, '../files/Task_Bit302.docx'),
('BIT304', 'Final Project 1', '1234', 'L120032', 'FP1_Report', 'docx', 73035, '../files/FP1_Report.docx'),
('BIT305', 'Final Project 2', '1234', 'L120032', 'FP2_Report', 'docx', 73035, '../files/FP2_Report.docx'),
('BIT306', 'Web Tech', '1234', 'L120040', 'Task_Bit306', 'docx', 73035, '../files/Task_Bit306.docx'),
('CSW202', 'Web Page ', '1234', 'L120040', 'Task_Csw202', 'docx', 73035, '../files/Task_Csw202.docx');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id_file` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `file_size` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL,
  `id_course` varchar(6) NOT NULL,
  `id_student` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_file`, `nama_file`, `tipe_file`, `file_size`, `file`, `id_course`, `id_student`) VALUES
(7, 'assignment1', 'docx', '155855', '../files/assignment1.docx', 'BIT301', '3'),
(8, 'assignment1', 'docx', '194513', '../files/assignment1.docx', 'BIT301', 'E1200111'),
(9, 'assignment1', 'docx', '155855', '../files/assignment1.docx', 'BIT306', 'E1200111'),
(10, 'tugas2', 'docx', '73035', '../files/tugas2.docx', 'BIT306', 'E1200111');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

DROP TABLE IF EXISTS `enrolled`;
CREATE TABLE `enrolled` (
  `id_enroll` int(11) NOT NULL,
  `id_course` varchar(6) NOT NULL,
  `id_lecturer` varchar(11) NOT NULL,
  `id_student` varchar(11) NOT NULL,
  `nama_fileS` varchar(100) NOT NULL,
  `tipe_fileS` varchar(10) NOT NULL,
  `file_size` varchar(20) NOT NULL,
  `fileS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`id_enroll`, `id_course`, `id_lecturer`, `id_student`, `nama_fileS`, `tipe_fileS`, `file_size`, `fileS`) VALUES
(9, 'BIT100', 'L120052', 'E1200111', 'Answer', 'docx', '106555', '../files/Answer.docx'),
(10, 'BIT301', 'L120052', 'E1200111', 'Assignmentweb', 'docx', '73035', '../files/Assignmentweb.docx'),
(11, 'BIT306', 'L120040', 'E1200111', 'new', 'docx', '45236', '../files/new.docx'),
(12, 'CSW202', 'L120040', 'E1200112', '', '', '', ''),
(13, 'BIT306', 'L120040', 'E1200112', '', '', '', ''),
(14, 'BIT305', 'L120032', 'E1200112', '', '', '', ''),
(15, 'BIT100', 'L120052', 'E1200212', '', '', '', ''),
(16, 'BIT105', 'L120020', 'E1200212', '', '', '', ''),
(17, 'BIT301', 'L120052', 'E1200212', '', '', '', ''),
(18, 'BIT304', 'L120032', 'E1200223', 'tugas1', 'docx', '73035', '../files/tugas1.docx'),
(19, 'BIT302', 'L120032', 'E1200223', 'Assignment2', 'docx', '45236', '../files/Assignment2.docx'),
(20, 'BIT301', 'L120052', 'E1200223', '', '', '', ''),
(21, 'BIT304', 'L120032', 'E1200236', '', '', '', ''),
(22, 'BIT301', 'L120052', 'E1200236', '', '', '', ''),
(23, 'BIT100', 'L120052', 'E1200236', '', '', '', ''),
(24, 'BIT105', 'L120020', 'E1200321', '', '', '', ''),
(25, 'BIT305', 'L120032', 'E1200321', '', '', '', ''),
(26, 'BIT306', 'L120040', 'E1200321', '', '', '', ''),
(27, 'BIT304', 'L120032', 'E1200111', '', '', '', ''),
(28, 'BIT105', 'L120020', 'E1200111', '', '', '', ''),
(29, 'CSW202', 'L120040', 'E1200111', '', '', '', ''),
(30, 'BIT100', 'L120052', 'E1200223', '', '', '', ''),
(31, 'BIT122', 'L120040', 'E1200111', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE `lecturer` (
  `id_lecturer` varchar(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `access` int(11) NOT NULL,
  `count_login` int(11) NOT NULL DEFAULT '0',
  `count_topic` int(11) NOT NULL DEFAULT '0',
  `count_upload` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id_lecturer`, `username`, `password`, `name`, `email`, `access`, `count_login`, `count_topic`, `count_upload`) VALUES
('L120032', 'Yudi', '1234', 'Yudi Agusta', 'yudi@gmail.com', 1, 25, 14, 7),
('L120040', 'Elisa', '1234', 'Elisa Young', 'elisa@gmail.com', 1, 4, 11, 3),
('L120052', 'Tubagus', '1234', 'Tubagus Singgih', 'tubagus@gmail.com', 1, 4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id_student` varchar(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nameS` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `access` int(11) NOT NULL,
  `count_login` int(11) NOT NULL DEFAULT '0',
  `count_topic` int(11) NOT NULL DEFAULT '0',
  `count_upload` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `username`, `password`, `nameS`, `email`, `access`, `count_login`, `count_topic`, `count_upload`) VALUES
('E1200111', 'Cok', '1234', 'Cok Gede', 'cok@gmail.com', 2, 28, 20, 1),
('E1200112', 'Hubertus', '1234', 'Hubertus Putu', 'hubert@gmail.com', 2, 2, 2, 0),
('E1200114', 'hendri', '1234', 'hendri sutrisno', 'hendri@gmail.com', 2, 0, 0, 0),
('E1200212', 'Hadi', '1234', 'Hadi Surya', 'hadi@gmail.com', 2, 1, 1, 0),
('E1200223', 'Rizky', '1234', 'Rizky Agung', 'rizky@gmail.com', 2, 5, 2, 0),
('e1200233', 'adi', '1234', 'adi santos', 'adi@gmail.com', 2, 1, 0, 0),
('E1200236', 'Sukmo', '1234', 'Sukmo Ronggo', 'sukmo@gmail.com', 2, 1, 0, 0),
('E1200321', 'resta', '1234', 'Resta Adiputra', 'resta@gmail.com', 2, 1, 0, 0),
('e13k123', 'popik', 'popik', 'popik', 'asdasd@adas', 2, 1, 0, 0),
('Stu123', 'stu', 'dent', 'student', 'email@email.com', 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id_topic` int(11) NOT NULL,
  `id_course` varchar(6) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id_topic`, `id_course`, `Description`) VALUES
(1, 'bit302', 'Introduction to Software Eng'),
(2, 'BIT306', 'Introduction to Web'),
(3, 'bit302', 'Process Model Diagram'),
(4, 'bit302', 'Project Management'),
(5, 'bit302', 'Requirement'),
(6, 'BIT301', 'Introduction to SQA'),
(7, 'BIT100', 'Introduction'),
(8, 'BIT100', 'Tutorial'),
(9, 'BIT100', 'Revision'),
(10, 'BIT302', 'Design'),
(11, 'BIT305', 'Final Project II Introduction'),
(12, 'BIT302', 'Programming'),
(13, 'BIT301', 'Project Scope Management'),
(14, 'BIT301', 'Project Time Management'),
(15, 'BIT301', 'Project Cost Management'),
(16, 'BIT301', 'Project Quality Management'),
(17, 'BIT304', 'Final Project I Introduction'),
(18, 'BIT304', 'Final Project I Revision'),
(19, 'BIT304', 'Final Project I Report'),
(20, 'BIT305', 'Final Project II Revision'),
(21, 'BIT305', 'Final Project II Report'),
(22, 'BIT200', 'Introduction to OS'),
(23, 'BIT200', 'OS definition'),
(24, 'BIT200', 'OS Mechanism'),
(25, 'BIT306', 'XHTML and CSS'),
(26, 'BIT306', 'Introduction to Javascript'),
(27, 'BIT306', 'Document Object Model'),
(28, 'BIT306', 'XML'),
(29, 'BIT306', 'PHP'),
(30, 'CSW202', 'Introduction to Web Page'),
(31, 'CSW202', 'HTML and CSS'),
(32, 'CSW202', 'Interface Design'),
(33, 'BIT105', 'Introduction to IT entrepreneur'),
(34, 'BIT105', 'What is IT'),
(35, 'BIT105', 'Entrepreneur Definition'),
(36, 'BIT302', 'New Topic 2'),
(37, 'BIT302', 'new topic 3'),
(38, 'BIT234', 'Test'),
(39, 'BIT234', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`id_enroll`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id_lecturer`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id_topic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `id_enroll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id_topic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Database: `ideasmapping`
--
DROP DATABASE IF EXISTS `ideasmapping`;
CREATE DATABASE IF NOT EXISTS `ideasmapping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ideasmapping`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `CategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clap`
--

DROP TABLE IF EXISTS `clap`;
CREATE TABLE `clap` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `clapTo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clap`
--

INSERT INTO `clap` (`id`, `user_id`, `clapTo`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2018-03-23 02:03:00', '2018-03-23 02:03:00'),
(19, 2, 3, '2018-05-15 16:21:49', '2018-05-15 16:21:49'),
(20, 2, 2, '2018-05-15 16:47:33', '2018-05-15 16:47:33'),
(24, 1, 2, '2018-05-25 06:48:35', '2018-05-25 06:48:35'),
(25, 1, 5, '2018-05-27 20:47:46', '2018-05-27 20:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

DROP TABLE IF EXISTS `idea`;
CREATE TABLE `idea` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `claps` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`id`, `user_id`, `title`, `content`, `status`, `claps`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'thorn', 'Thorn or þorn (Þ, þ) is a letter in the Old English, Gothic, Old Norse and modern Icelandic alphabets, as well as some dialects of Middle English.', 0, 2, '2018-03-23 02:05:47', '2018-05-25 06:48:35', NULL),
(3, 1, 'Ini Title', 'ini isinya Content yang isinya abal abal seperti katamu', 0, 1, '2018-05-04 22:50:31', '2018-05-15 18:00:52', NULL),
(5, 1, 'project management', 'Description', 0, 1, '2018-05-13 21:49:00', '2018-05-27 20:47:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_23_034201_create_idea_table', 1),
(4, '2018_01_23_035706_create_relation_table', 1),
(5, '2018_01_23_052333_create_request_change_table', 1),
(6, '2018_01_26_031305_create_profile_table', 1),
(7, '2018_02_23_045822_create_category_table', 1),
(8, '2018_02_23_065559_create_notifications_table', 1),
(9, '2018_03_19_121855_create_clap_table', 1),
(10, '2018_03_19_123027_create_subscribe_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sidi_meisanjaya@yahoo.com', '$2y$10$Jv1CGpXItClr2RbTndLF2.PZ/fyHAq4Js3GjRkcxQFV6rFO3yP2Ye', '2018-05-15 17:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalSubs` int(11) NOT NULL DEFAULT '0',
  `statLevel` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `totalSubs`, `statLevel`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, '2018-05-13 22:14:29', '2018-05-27 21:34:44'),
(2, 2, 0, 0, '2018-05-15 16:21:41', '2018-05-15 16:21:41'),
(3, 3, 0, 0, '2018-05-27 23:26:09', '2018-05-27 23:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `mainIdea` int(11) NOT NULL,
  `relation_from` int(11) DEFAULT NULL,
  `relation_to` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relation`
--

INSERT INTO `relation` (`id`, `user_id`, `idea_id`, `mainIdea`, `relation_from`, `relation_to`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 4, 1, NULL, 0, '2018-05-08 18:36:33', '2018-05-08 18:36:33', NULL),
(2, 1, 3, 4, 11, 1, 0, '2018-05-11 01:36:28', '2018-05-11 01:36:28', NULL),
(3, 1, 2, 2, 3, NULL, 0, '2018-05-11 01:36:40', '2018-05-11 01:36:40', NULL),
(4, 1, 5, 5, 4, NULL, 0, '2018-05-13 21:50:29', '2018-05-13 21:50:29', NULL),
(5, 1, 3, 3, 5, NULL, 0, '2018-05-27 21:57:18', '2018-05-27 21:57:18', NULL),
(6, 1, 6, 6, 6, NULL, 0, '2018-05-27 21:59:14', '2018-05-27 21:59:14', NULL),
(7, 1, 7, 7, 7, NULL, 0, '2018-05-27 22:01:52', '2018-05-27 22:01:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_change`
--

DROP TABLE IF EXISTS `request_change`;
CREATE TABLE `request_change` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listenTo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sugestions`
--

DROP TABLE IF EXISTS `sugestions`;
CREATE TABLE `sugestions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `suggest_to` int(11) NOT NULL,
  `suggest_from` int(11) NOT NULL,
  `description` varchar(5000) NOT NULL DEFAULT 'No Description',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sugestions`
--

INSERT INTO `sugestions` (`id`, `user_id`, `suggest_to`, `suggest_from`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 2, 'No Description', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sidisan', 'sidi.meisanjaya2013@gmail.com', '$2y$10$FRob06/AUyQwq5rifhgzu.JdT6xMwlXwmr8lAq7B79luXwtGhh1dW', '5tGN9K0bnDZYrhyfNIYwvHmLW3SY2UK2IyPFAIeXBgx5M4RMpPO3fV8V0NXw', '2018-03-19 22:06:21', '2018-03-19 22:06:21'),
(2, 'SidiYahoo', 'sidi_meisanjaya@yahoo.com', '$2y$10$3fp9nBPZWL2ywskdGLYumu8NL5n2mgFkbHHz29fNbtgrroE1V3Sg2', 'qbj4r8guTv0sjxBvYXMOoKjSFVaMcy3NxttbcV1D29VHwN7VjqiPcqky1US0', '2018-03-23 03:15:08', '2018-05-15 16:21:40'),
(3, 'sidigame', 'sidi.game2018@gmail.com', '$2y$10$W6RigSJ/wZ6TYfNkNkglbO99EZf71zAA4C7FpuK0Q9Kmi4Kfjo8KS', 'N7tNBZu1Lw8LDKwCEgU98KHJy9c0q7OF9xTmQdeNlS3AZxLRc0oHqR3drC3K', '2018-05-27 23:26:09', '2018-05-27 23:26:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clap`
--
ALTER TABLE `clap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_change`
--
ALTER TABLE `request_change`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clap`
--
ALTER TABLE `clap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `relation`
--
ALTER TABLE `relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `request_change`
--
ALTER TABLE `request_change`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `jobhunter`
--
DROP DATABASE IF EXISTS `jobhunter`;
CREATE DATABASE IF NOT EXISTS `jobhunter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jobhunter`;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `userid`, `name`, `address`, `phone`, `position`) VALUES
(1, 0, 'Admin', 'Admin address', '089898989', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

DROP TABLE IF EXISTS `vacancies`;
CREATE TABLE `vacancies` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `vname` varchar(255) NOT NULL,
  `vimage` varchar(255) NOT NULL DEFAULT '1',
  `vdescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`id`, `userid`, `vname`, `vimage`, `vdescription`) VALUES
(0, 0, 'Testing', '1', 'For Testing'),
(1, 0, 'testing 2', '1', 'testing 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravue`
--
DROP DATABASE IF EXISTS `laravue`;
CREATE DATABASE IF NOT EXISTS `laravue` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravue`;
--
-- Database: `maxpos`
--
DROP DATABASE IF EXISTS `maxpos`;
CREATE DATABASE IF NOT EXISTS `maxpos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `maxpos`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `First` varchar(255) DEFAULT NULL,
  `Last` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Permissions_Id` tinyint(4) NOT NULL DEFAULT '0',
  `login_session` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `First`, `Last`, `Email`, `Password`, `Permissions_Id`, `login_session`) VALUES
(1, NULL, NULL, 'admin@admin.com', 'admin', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_des`
--

DROP TABLE IF EXISTS `billing_des`;
CREATE TABLE `billing_des` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

DROP TABLE IF EXISTS `outlet`;
CREATE TABLE `outlet` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Province` varchar(255) NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Amount` varchar(255) NOT NULL,
  `outlet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trans_des`
--

DROP TABLE IF EXISTS `trans_des`;
CREATE TABLE `trans_des` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_des`
--
ALTER TABLE `billing_des`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_des`
--
ALTER TABLE `trans_des`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_des`
--
ALTER TABLE `billing_des`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans_des`
--
ALTER TABLE `trans_des`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `pointofsales`
--
DROP DATABASE IF EXISTS `pointofsales`;
CREATE DATABASE IF NOT EXISTS `pointofsales` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pointofsales`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
