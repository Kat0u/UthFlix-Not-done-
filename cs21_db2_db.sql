-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 11:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs21_db2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Action & adventure'),
(2, 'Mystery'),
(3, 'Comedies'),
(4, 'Dramas'),
(5, 'Horror'),
(6, 'Romantic'),
(7, 'Sci - Fi & Fantasy'),
(8, 'Sports'),
(9, 'Thrillers'),
(10, 'Documentaries'),
(12, 'Teen'),
(13, 'Children & family'),
(14, 'Anime'),
(15, 'Independent'),
(16, 'Foreign'),
(17, 'Music'),
(18, 'Christmas'),
(19, 'Others'),
(20, 'Cartoon');

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `Year` int(20) NOT NULL,
  `Actors` varchar(250) NOT NULL,
  `Director` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `preview`, `categoryId`, `Year`, `Actors`, `Director`, `description`) VALUES
(1, 'The Father', 'entities/thumbnails/thefather.jpg', 'entities/thumbnails/thefather.jpg', 4, 2020, 'Anthony Hopkins, Olivia Colman, Mark Gatiss ', 'Florian Zeller', ''),
(2, 'The Prestige', 'entities/thumbnails/prestige.jpg', 'entities/thumbnails/theprestige.jpg', 9, 2006, 'Cristian Bale, Hugh Jackman, Scarlett Johansson', 'Christopher Nolan', ''),
(3, 'The Silence of the Lambs', 'entities/thumbnails/silence.jpg', 'entities/thumbnails/silence.jpg', 9, 1991, 'Jodie Foster, Anthony Hopkins', 'Jonathan Demme', ''),
(4, 'Normal People', 'entities/thumbnails/normalpeople2.jpg', 'entities/thumbnails/normalpeople2.jpg', 6, 2020, 'Daisy Edgar-Jones, Paul Mescal, Desmond Eastwood', 'Lenny Abrahamson', 'Follows Marianne and Connell, from different backgrounds but the same small town in Ireland, as they weave in and out of each other\'s romantic lives.'),
(5, 'Whiplash', 'entities/thumbnails/whiplash.jpg', 'entities/thumbnails/whiplash.jpg', 17, 2014, 'Miles Teller, J.K. Simmons, Melissa Benoist', 'Damien Chazelle', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.'),
(6, 'Shutter Island', 'entities/thumbnails/shutterisland.jpg', 'entities/thumbnails/shutterisland.jpg', 9, 2010, 'Leonardo DiCaprio, Emily Mortimer, Mark Ruffalo', 'Martin Scorsese', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.'),
(7, 'Before Sunrise', 'entities/thumbnails/beforesunrise.jpg', 'entities/thumbnails/beforesunrise.jpg', 6, 1995, 'Ethan Hawke, Julie Delpy, Andrea Eckert\r\n', 'Richard Linklater', 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.\r\n'),
(8, 'The Departed', 'entities/thumbnails/thedeparted.jpg', 'entities/thumbnails/thedeparted.jpg', 2, 2006, 'Leonardo DiCaprio, Matt Damon, Jack Nicholson ', 'Martin Scorsese', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.'),
(9, 'Parasite', 'entities/thumbnails/parasite.jpg', 'entities/thumbnails/parasite.jpg', 9, 2020, 'Kang-ho Song, Sun-kyun Lee, Yeo-jeong Cho ', 'Bong Joon Ho', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.'),
(10, 'Se7en', 'entities/thumbnails/seven.jpg', 'entities/thumbnails/seven.jpg', 9, 1995, 'Morgan Freeman, Brad Pitt, Kevin Spacey', 'David Fincher', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.'),
(11, 'The Queens Gambit', 'entities/thumbnails/qg.jpg', 'entities/thumbnails/qg.jpg', 4, 2020, 'Anya Taylor-Joy, Chloe Pirrie, Bill Camp', 'Scott Frank', 'Orphaned at the tender age of nine, prodigious introvert Beth Harmon discovers and masters the game of chess in 1960s USA. But child stardom comes at a price.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `isSubscribed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `isSubscribed`) VALUES
(6, 'Giannis', 'Katounis', 'Katou', 'Em.katounis@gmail.com', '61b09a766fe87216df6cc5888e6234416b07bb02c08bfea70f00abd6ba3d5761b85ff3a28a0560c7f07f04b5265c8fe70bfdb0f43a7ad8cee26e6771466857a0', '2021-06-09 15:36:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `season` int(11) DEFAULT 0,
  `episode` int(11) DEFAULT 0,
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `season`, `episode`, `entityId`) VALUES
(1, 'Episode 1', 'At a secondary school in County Sligo, rural Ireland, a friendship sparks between the popular athlete Connell and outcast Marianne, which soon ignites into an intense romance. Connell lives at home with his kind mother, and Marianne lives in a mansion with her distant, busy mother and hateful brother. Connell\'s mother happens to be the housekeeper at Marianne\'s home. Marianne confronts Connell about her feelings for him and they kiss, but he\'s uncertain due to social pressures and keeps their acquaintance hidden.', 'entities/thumbnails/normalpeople1.jpg', 0, '2021-06-09 22:01:02', 1, 1, 4),
(2, 'Episode 2', 'Connell and Marianne\'s romance blossoms, but he is eager to keep their relationship a secret to protect his high social standing in school. Connell and Marianne have sex and they continue to grow closer. However, Connell continues to ignore her in school. Marianne acts as though it is fine, but it puts their delicate connection under strain. Connell and his mother are very close in contrast to the high tension between Marianne and her family, which continues to grow.', 'entities/thumbnails/normalpeople3.jpg', 0, '2021-06-09 22:02:24', 1, 2, 4),
(3, 'Episode 3', 'As their school days come to a close, Marianne cuts Connell off after a hurtful betrayal. Marianne turns up to a party, surprising everyone by looking glamorous. After a hurtful encounter at the party Connell drives her home, and they make up. Connell doesn\'t ask Marianne to the debs, which is the final straw. His mum expresses Marianne\'s hurt, but Connell brushes it off. Marianne stays home on the night of the debs still feeling betrayed; meanwhile Connell dances the night away with Rachel. Later on, full of beer and regret, Connell stumbles home crying, contemplating his loss.', 'entities/thumbnails/normalpeople4.jpg', 0, '2021-06-09 22:47:08', 1, 3, 4),
(4, '\"Openings\"', 'Sent to an orphanage at age 9, Beth develops an uncanny knack for chess and a growing dependence on the green tranquilizers given to the children.\r\n', 'entities/thumbnails/qg1.jpg', 0, '2021-06-09 23:57:55', 1, 1, 11),
(5, '\"Exchanges\"', 'Suddenly plunged into a confusing new life in suburbia, teenage Beth studies her high school classmates and hatches a plan to enter a chess tournament.', 'entities/thumbnails/qg2.jpg', 0, '2021-06-10 00:00:36', 1, 2, 11),
(6, '\"Doubled Pawns\"', 'The trip to Cincinnati launches Beth and her mother into a whirlwind of travel and press coverage. Beth sets her sights on the U.S. open in Las Vegas.', 'entities/thumbnails/qg3.jpg', 0, '2021-06-10 00:03:06', 1, 3, 11),
(1935, '\"Middle Game\"', 'Russian class opens the door to a new social scene. In Mexico City, Beth meets the intimidating Borgov, while her mother cozies up with a pen pal.', 'entities/thumbnails/qg4.jpg', 0, '2021-06-10 00:06:11', 1, 4, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1936;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
