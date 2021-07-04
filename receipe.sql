-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 05:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `receipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `receipe_id` int(11) NOT NULL,
  `rating` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `receipe_id`, `rating`, `created_at`) VALUES
(2, 11, '5', '2021-07-04 07:47:55'),
(3, 10, '5', '2021-07-04 07:48:52'),
(4, 11, '4', '2021-07-04 07:49:57'),
(5, 11, '5', '2021-07-04 07:50:17'),
(6, 11, '5', '2021-07-04 07:50:18'),
(7, 11, '5', '2021-07-04 07:50:19'),
(8, 11, '5', '2021-07-04 07:50:19'),
(9, 10, '5', '2021-07-04 08:39:44'),
(10, 11, '5', '2021-07-04 08:44:25'),
(11, 10, '5', '2021-07-04 08:44:36'),
(12, 10, '5', '2021-07-04 08:44:37'),
(13, 10, '5', '2021-07-04 08:44:37'),
(14, 10, '5', '2021-07-04 08:44:38'),
(15, 10, '5', '2021-07-04 08:44:39'),
(16, 10, '5', '2021-07-04 08:44:39'),
(17, 10, '5', '2021-07-04 08:44:40'),
(18, 9, '1', '2021-07-04 08:46:23'),
(19, 9, '2', '2021-07-04 08:46:26'),
(20, 9, '4', '2021-07-04 08:47:27'),
(21, 11, '1', '2021-07-04 08:48:14'),
(22, 11, '2', '2021-07-04 08:48:51'),
(23, 11, '3', '2021-07-04 08:49:20'),
(24, 1, '4', '2021-07-04 09:40:51'),
(25, 1, '4', '2021-07-04 09:42:45'),
(26, 1, '2', '2021-07-04 09:44:16'),
(27, 2, '3', '2021-07-04 10:38:57'),
(28, 2, '2', '2021-07-04 10:39:35'),
(29, 2, '3', '2021-07-04 10:42:26'),
(30, 2, '2', '2021-07-04 10:43:02'),
(31, 2, '3', '2021-07-04 10:43:11'),
(32, 1, '4', '2021-07-04 10:48:08'),
(33, 3, '1', '2021-07-04 15:00:09'),
(34, 3, '1', '2021-07-04 15:00:45'),
(35, 3, '1', '2021-07-04 15:01:04'),
(36, 1, '2', '2021-07-04 15:14:52'),
(37, 1, '4', '2021-07-04 15:24:33'),
(38, 3, '2', '2021-07-04 15:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `receipe`
--

CREATE TABLE `receipe` (
  `receipe_id` bigint(20) NOT NULL,
  `receipe_name` varchar(200) NOT NULL,
  `receipe_note` text NOT NULL,
  `description` text NOT NULL,
  `video_url` text NOT NULL,
  `img_url` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipe`
--

INSERT INTO `receipe` (`receipe_id`, `receipe_name`, `receipe_note`, `description`, `video_url`, `img_url`, `created_at`) VALUES
(1, 'Chicken Soup', '<fieldset class=\"instructions-section__fieldset\"> <legend class=\"visually-hidden instructions-section__legend\">Instructions Checklist</legend> <ul class=\"instructions-section\" data-tracking-label=\"instructions section\"> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-0\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-0\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 1</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Bring chicken, water, and 1 tablespoon salt to a boil in a large stockpot. Skim foam. Add onions, celery, and garlic. Reduce heat. Simmer, partially covered, for 30 minutes.</p></div> </div> <div id=\"div-gpt-mob-square-fixed-1\" data-tier=\"2\" class=\"ad ad-container ad-wrapper mobile-ad karma-ad\" role=\"complementary\" aria-hidden=\"true\" tabindex=\"-1\"></div> <div class=\"ad-title mobile-ad\">Advertisement</div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-1\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-1\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 2</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove breast, and set aside. Add carrots. Simmer, partially covered, for 40 minutes.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-2\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-2\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 3</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove remaining chicken; discard back and wings. Let cool slightly. Remove meat from bones, and cut into bite-size pieces.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-3\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-3\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 4</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Stir in desired amount of chicken; reserve the rest for another use. Skim fat. Season with salt.</p></div> </div> </li> </ul> </fieldset>', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Soup', 'img-01.jpg', '2021-07-03 08:46:35'),
(2, 'Chicken Lolipop', '<fieldset class=\"instructions-section__fieldset\"> <legend class=\"visually-hidden instructions-section__legend\">Instructions Checklist</legend> <ul class=\"instructions-section\" data-tracking-label=\"instructions section\"> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-0\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-0\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 1</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Bring chicken, water, and 1 tablespoon salt to a boil in a large stockpot. Skim foam. Add onions, celery, and garlic. Reduce heat. Simmer, partially covered, for 30 minutes.</p></div> </div> <div id=\"div-gpt-mob-square-fixed-1\" data-tier=\"2\" class=\"ad ad-container ad-wrapper mobile-ad karma-ad\" role=\"complementary\" aria-hidden=\"true\" tabindex=\"-1\"></div> <div class=\"ad-title mobile-ad\">Advertisement</div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-1\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-1\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 2</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove breast, and set aside. Add carrots. Simmer, partially covered, for 40 minutes.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-2\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-2\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 3</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove remaining chicken; discard back and wings. Let cool slightly. Remove meat from bones, and cut into bite-size pieces.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-3\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-3\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 4</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Stir in desired amount of chicken; reserve the rest for another use. Skim fat. Season with salt.</p></div> </div> </li> </ul> </fieldset>', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-02.jpg', '2021-07-03 08:46:35'),
(3, 'Chicken Lolipop', '<fieldset class=\"instructions-section__fieldset\"> <legend class=\"visually-hidden instructions-section__legend\">Instructions Checklist</legend> <ul class=\"instructions-section\" data-tracking-label=\"instructions section\"> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-0\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-0\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 1</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Bring chicken, water, and 1 tablespoon salt to a boil in a large stockpot. Skim foam. Add onions, celery, and garlic. Reduce heat. Simmer, partially covered, for 30 minutes.</p></div> </div> <div id=\"div-gpt-mob-square-fixed-1\" data-tier=\"2\" class=\"ad ad-container ad-wrapper mobile-ad karma-ad\" role=\"complementary\" aria-hidden=\"true\" tabindex=\"-1\"></div> <div class=\"ad-title mobile-ad\">Advertisement</div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-1\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-1\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 2</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove breast, and set aside. Add carrots. Simmer, partially covered, for 40 minutes.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-2\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-2\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 3</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove remaining chicken; discard back and wings. Let cool slightly. Remove meat from bones, and cut into bite-size pieces.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-3\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-3\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 4</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Stir in desired amount of chicken; reserve the rest for another use. Skim fat. Season with salt.</p></div> </div> </li> </ul> </fieldset>', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-03.jpg', '2021-07-03 08:46:35'),
(4, 'Chicken Lolipop', '<fieldset class=\"instructions-section__fieldset\"> <legend class=\"visually-hidden instructions-section__legend\">Instructions Checklist</legend> <ul class=\"instructions-section\" data-tracking-label=\"instructions section\"> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-0\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-0\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 1</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Bring chicken, water, and 1 tablespoon salt to a boil in a large stockpot. Skim foam. Add onions, celery, and garlic. Reduce heat. Simmer, partially covered, for 30 minutes.</p></div> </div> <div id=\"div-gpt-mob-square-fixed-1\" data-tier=\"2\" class=\"ad ad-container ad-wrapper mobile-ad karma-ad\" role=\"complementary\" aria-hidden=\"true\" tabindex=\"-1\"></div> <div class=\"ad-title mobile-ad\">Advertisement</div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-1\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-1\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 2</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove breast, and set aside. Add carrots. Simmer, partially covered, for 40 minutes.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-2\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-2\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 3</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Remove remaining chicken; discard back and wings. Let cool slightly. Remove meat from bones, and cut into bite-size pieces.</p></div> </div> </li> <li class=\"subcontainer instructions-section-item\" data-tracking-zone=\"recipe-interaction\"> <label class=\"checkbox-list\" for=\"recipe-instructions-label-0-3\"> <input class=\"checkbox-list-input\" type=\"checkbox\" value=\"\" data-tracking-label=\"directions clicked\" id=\"recipe-instructions-label-0-3\"> <span class=\"checkbox-list-checkmark\"> <span class=\"checkbox-list-text\">Step 4</span> </span> </label> <div class=\"section-body\"><div class=\"paragraph\"><p>Stir in desired amount of chicken; reserve the rest for another use. Skim fat. Season with salt.</p></div> </div> </li> </ul> </fieldset>', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-04.jpg', '2021-07-03 08:46:35'),
(5, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-05.jpg', '2021-07-03 08:46:35'),
(6, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-06.jpg', '2021-07-03 08:46:35'),
(7, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-07.jpg', '2021-07-03 08:46:35'),
(8, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-08.jpg', '2021-07-03 08:46:35'),
(9, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-09.jpg', '2021-07-03 08:46:35'),
(10, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-01.jpg', '2021-07-03 08:46:35'),
(11, 'Chicken Lolipop', '', 'Chicken, sweet corn, potato, ginger, butter', 'Chicken Lolipop', 'img-01.jpg', '2021-07-03 08:46:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `receipe`
--
ALTER TABLE `receipe`
  ADD PRIMARY KEY (`receipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `receipe`
--
ALTER TABLE `receipe`
  MODIFY `receipe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
