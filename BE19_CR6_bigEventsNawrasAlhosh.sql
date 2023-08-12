-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2023 at 10:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE19_CR6_bigEventsNawrasAlhosh`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811091057', '2023-08-11 11:11:16', 33);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone_number`, `address`, `url`, `type`) VALUES
(1, 'Music Festival', '2023-08-25 05:31:00', 'Join us for a thrilling music festival with amazing performances!', 'https://cdn.pixabay.com/photo/2023/04/03/12/59/crowd-7896786_1280.jpg', 1000, 'info@musicfest.com', 123456789, '123 Main St', 'http://musicfest.com', 'Music'),
(2, 'Live Music Event', '2023-09-10 20:00:00', 'Experience a night of live music and great performances!', 'https://cdn.pixabay.com/photo/2023/04/03/12/59/crowd-7896788_1280.jpg', 500, 'info@livemusic.com', 987654321, '456 Elm St', 'http://livemusic.com', 'Music'),
(3, 'Marathon Race', '2023-10-15 07:00:00', 'Participate in our thrilling marathon race and test your endurance!', 'https://cdn.pixabay.com/photo/2014/01/24/13/32/marathon-250987_1280.jpg', 1000, 'info@marathonrace.com', 555888999, '789 Oak St', 'http://marathonrace.com', 'Sport'),
(4, 'Tango Dancing Night', '2023-11-20 11:00:00', 'Join us for an enchanting evening of tango dancing and music!', 'https://cdn.pixabay.com/photo/2016/11/12/11/55/sport-1818691_1280.jpg', 200, 'info@tangonight.com', 111222333, '567 Tango St', 'http://tangonight.com', 'Sport'),
(5, 'Climate Change Lecture', '2023-12-05 00:00:00', 'Join us for an informative lecture about the impact of climate change and ways to address it.', 'https://cdn.pixabay.com/photo/2017/08/06/15/39/chairs-2593531_1280.jpg', 150, 'info@climatelecture.com', 444555666, '789 Lecture Hall', 'http://climatelecture.com', 'Education'),
(6, 'Beautiful Wedding Celebration', '2023-12-25 15:00:00', 'Celebrate the union of two souls in a joyous wedding ceremony!', 'https://cdn.pixabay.com/photo/2014/10/20/13/18/wedding-495271_1280.jpg', 300, 'info@weddingcelebration.com', 777888999, '123 Wedding Ave', 'http://weddingcelebration.com', 'Education'),
(7, 'Spooky Halloween Party', '2023-10-31 23:00:00', 'Join us for a night of costumes, treats, and spooky fun at our Halloween party!', 'https://cdn.pixabay.com/photo/2016/08/18/10/03/human-1602495_1280.jpg', 250, 'info@halloweenparty.com', 666777888, '456 Haunted Lane', 'http://halloweenparty.com', 'Party'),
(8, 'Wheelchair Marathon ', '2023-09-15 00:00:00', 'Take part in an inspiring wheelchair marathon and showcase your strength!', 'https://cdn.pixabay.com/photo/2019/11/16/23/20/marathon-4631282_1280.jpg', 100, 'info@wheelchairmarathon.com', 111222333, '789 Inclusive Track', 'http://wheelchairmarathon.com', 'Sports'),
(9, 'Thrilling Skydiving Experience', '2023-11-10 18:00:00', 'Embark on an unforgettable skydiving adventure and feel the rush of freefall!', 'https://cdn.pixabay.com/photo/2017/10/16/08/03/parachutist-2856434_1280.jpg', 50, 'info@skydivingevent.com', 444555666, '123 Skydiving Dropzone', 'http://skydivingevent.com', 'Adventure'),
(10, 'Spectacular Circus Show', '2023-10-20 00:00:00', 'Experience the magic of a dazzling circus performance with breathtaking acts!', 'https://cdn.pixabay.com/photo/2017/08/10/01/02/fire-2616680_1280.jpg', 300, 'info@circusshow.com', 777888999, '456 Big Top St', 'http://circusshow.com', 'Entertainment'),
(11, 'African Music Festival', '2023-07-15 12:00:00', 'Immerse yourself in the rhythms and melodies of African music at our festival!', 'https://cdn.pixabay.com/photo/2019/09/25/06/11/music-4502666_1280.jpg', 500, 'info@africanmusicfest.com', 555888999, '789 Grove Park', 'http://africanmusicfest.com', 'Music'),
(12, 'African Music Festival', '2023-07-15 00:00:00', 'Immerse yourself in the rhythms and melodies of African music at our festival!', 'https://cdn.pixabay.com/photo/2019/09/25/06/11/music-4502666_1280.jpg', 500, 'info@africanmusicfest.com', 555888999, '789 Grove Park', 'http://africanmusicfest.com', 'Music'),
(13, 'Captured Moments: Photography Exhibition', '2023-08-05 18:30:00', 'Discover the artistry of photography with captivating images on display.', 'https://cdn.pixabay.com/photo/2019/12/26/23/17/drought-4721400_1280.jpg', 100, 'info@photographyexpo.com', 999888777, '123 Art Gallery Ave', 'http://photographyexpo.com', 'Art'),
(14, 'Street Break Dance', '2023-09-30 13:40:00', 'Witness the raw energy and creativity of street break dancers in an exciting showdown!', 'https://cdn.pixabay.com/photo/2016/11/04/03/49/dance-1796867_1280.jpg', 200, 'info@breakdanceshowdown.com', 123456789, '456 Street Square', 'http://breakdanceshowdown.com', 'Dance'),
(15, 'Epic DJ Concert Night', '2023-08-10 22:00:00', 'Get ready to dance the night away with electrifying beats at our DJ concert!', 'https://cdn.pixabay.com/photo/2023/04/03/12/59/dj-7896784_1280.jpg', 500, 'info@djconcert.com', 987654321, '123 Dancefloor Lane', 'http://djconcert.com', 'Music'),
(16, 'Medieval Age Art Exhibition', '2023-11-05 00:00:00', 'Step back in time and explore the rich artistic heritage of the medieval age.', 'https://cdn.pixabay.com/photo/2019/09/16/11/19/students-4480715_1280.jpg', 150, 'info@medievalartexpo.com', 111222333, '567 Castle Court', 'http://medievalartexpo.com', 'Art'),
(17, 'Adventurous Rafting Expedition', '2023-07-20 09:30:00', 'Embark on a thrilling rafting adventure and conquer the rapids!', 'https://cdn.pixabay.com/photo/2017/04/08/22/41/team-2214552_1280.jpg', 50, 'info@raftingevent.com', 555666777, '123 River Campsite', 'http://raftingevent.com', 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
