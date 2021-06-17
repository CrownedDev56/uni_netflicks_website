-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2019 at 10:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `17122851`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `watched` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`ID`, `name`, `genre_id`, `rating_id`, `watched`, `description`, `path`) VALUES
(1, 'Avengers: infinity war', 1, 4, 1, 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe. ', 'uploads/movies/Infinity_war.jpg'),
(2, 'Avengers: Age of Ultron', 1, 4, 0, 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan. ', 'uploads/movies/age_of_ultron.jpg'),
(3, 'Split', 5, 3, 1, 'Though Kevin (James McAvoy) has evidenced 23 personalities to his trusted psychiatrist, Dr. Fletcher (Betty Buckley), there remains one still submerged who is set to materialize and dominate all of the others. Compelled to abduct three teenage girls led by the willful, observant Casey, Kevin reaches a war for survival among all of those contained within him -- as well as everyone around him -- as the walls between his compartments shatter.', '	\r\nuploads/movies/split.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genre_type`
--

CREATE TABLE `genre_type` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre_type`
--

INSERT INTO `genre_type` (`ID`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'pending'),
(5, 'Thriller ');

-- --------------------------------------------------------

--
-- Table structure for table `next releases`
--

CREATE TABLE `next releases` (
  `ID` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `ID` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`ID`, `star`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tv_eps`
--

CREATE TABLE `tv_eps` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `season` int(11) NOT NULL,
  `series id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tv_eps`
--

INSERT INTO `tv_eps` (`ID`, `name`, `description`, `season`, `series id`) VALUES
(1, '1. The Strongest Man', 'Saitama is determined to become a superhero. After years of training he becomes strong and faces all sorts of monsters to protect humanity.', 1, 1),
(2, '2. The Lone Cyborg', 'Genos is a cyborg who fights for justice. After having seen Saitama in action, he asks if he can become his student…', 1, 1),
(3, '3. The Obsessive Scientist', 'Doctor Genus tries to subvert Earth’s evolution, creating a series of monsters. He sends one of his creatures to kidnap Saitama, to study his body.', 1, 1),
(4, '4. The Modern Ninja', 'The Paradisers are a group of men led by Hammerhead who want a world without work. Speed -o\'-Sound Sonic confronts them and kills them all except one.', 1, 1),
(5, '5. The Ultimate Mentor ', 'Genos and Saitama take the exam to become heroes and pass it easily. Genos, in particular, attracts the attention of the Hero Association…', 1, 1),
(6, '6. The Terrifying City', 'The Hero Association detects intense mysterious activity in the ‘ghost quarter’ of Z city and sends some of its members to resolve the matter.', 1, 1),
(7, '7. The Ultimate Disciple ', 'Z city is threatened by a meteorite. The heroes of class S try to prevent a human catastrophe, but all their attempts seem to be in vain', 1, 1),
(8, '8. The Deep Sea King', 'The Earth is threatened by the arrival of the abyssals, from the sea. Various heroes try to stop them, but they are regularly defeated.', 1, 1),
(9, '9. Unyielding Justice', 'The Earth is threatened by the arrival of the abyssals, from the sea. Various heroes try to stop them, but they are regularly defeated.', 1, 1),
(10, '10. Unparalleled Peril', 'All the heroes of class S are summoned to respond to a threat that could lead to the end of the world and has already destroyed city A.', 1, 1),
(11, '11. The Dominator of the Universe', 'A creature leaves the alien spaceship which destroyed city A and attacks the heroes of class S. Saitama gets on board and kills most of the crew', 1, 1),
(12, '12. The Strongest Hero', 'While the heroes are fighting hard against Melzargald, Saitama has to deal with the head of the aliens, the mighty Lord Boros, in an epic encounter.', 1, 1),
(13, '1. Ejaculation', 'As Andrew falls under the spell of the randy Hormone Monster, his buddy Nick becomes obsessed with the lack of changes in his own body.', 1, 2),
(14, '2. Everybody Bleeds', 'A field trip goes from awkward to mortifying as Jessi navigates the demands of coupledom and gets her first period -- inside the Statue of Liberty.', 1, 2),
(15, '3. Am I Gay?', 'A trailer for a new movie starring The Rock leaves Andrew questioning his sexuality. Jessi and Nick\'s budding romance turns ugly fast', 1, 2),
(16, '4. Sleepover: A Harrowing Ordeal of Emotional Brut', 'While the boys head to Jay\'s for a testosterone-fueled sleepover, Jessi throws a party of her own and gets caught up in mean-girl drama', 1, 2),
(17, '5. Girls Are Horny Too', 'A steamy novel making the rounds at school inspires Jessi to explore her own sexuality -- and leaves the boys totally confused about what girls want.', 1, 2),
(18, '6. Pillow Talk', 'Nick drags Andrew into the city to visit an old camp crush, but the day doesn\'t go as planned. Jay embarks on an emotional journey with his pillow.', 1, 2),
(19, '7. Requiem for a Wet Dream', 'Andrew struggles to keep the Hormone Monster in check as he works with Missy on a science fair project. Jessi and Matthew have fun at Jay\'s expense.', 1, 2),
(20, '8. The Head Push', 'When Leah hosts a party for the high school drama crowd, Nick wrestles with a romantic dilemma, and Andrew and Missy witness a disturbing scene', 1, 2),
(21, '9. I Survived Jessi\'s Bat Mitzvah', 'Family blowups, secret liaisons and an unflattering dress make Jessi\'s bat mitzvah a night to remember.', 1, 2),
(22, '10. The Pornscape', 'Andrew tries to drown his sorrows in a sea of porn, only to become hopelessly addicted. Coach Steve becomes a suspect in a murder spree', 1, 2),
(23, '', 'Andrew struggles to blend in after a growth spurt, Nick worries his hormones are out of whack, and Jessi and Jay get a taste of the teen runaway life.', 2, 2),
(24, '1. Am I Normal?', 'A classmate\'s booming bosom sends the boys into a rapture -- and leaves the girls with a raging case of insecurity. Coach Steve drops a bombshell.', 2, 2),
(25, '2. What Is It About Boobs?', 'As Nick tries to figure out whether he has a shot with Gina, a mortifying encounter with Leah sends Andrew into a spiral of shame.', 2, 2),
(26, '3. The Shame Wizard', 'Coach Steve finally gets his chance to do sex on a lady, Nick and Andrew go on a double date, and Jessi\'s rebellious streak leads to big trouble.', 2, 2),
(27, '4. Steve the Virgin', 'An argument in sex ed class turns into a skit-tastic journey through the worlds of Planned Parenthood, contraceptives and STDs.', 2, 2),
(28, '5. The Planned Parenthood Show', 'Jessi and Nick dip into her dad\'s stash of edibles, with mind-bending results. Andrew searches for the right moment to break up with Lola.', 2, 2),
(29, '6. Drug Buddies', 'While helping Greg move into a seedy bachelor complex, the boys and their dads debate what women want -- and what it means to be a man.', 2, 2),
(30, '7. Guy Town', 'A school sleepover turns messy as Nick dishes on a makeout session and the Shame Wizard works his miserable magic on the whole class.\r\n\r\n', 2, 2),
(31, '9. Smooch or Share', 'Nick tries to lighten the mood at the sleepover with a new twist on Truth or Dare. The Shame Wizard meets his match. Jessi vows to change her ways.', 2, 2),
(32, '10. The Department of Puberty', 'After traveling through a magic portal to puberty headquarters, Nick seeks out a new Hormone Monster and Jessi bonds with the Depression Kitty.', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows`
--

CREATE TABLE `tv_shows` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `seasons` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `watched` int(11) NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tv_shows`
--

INSERT INTO `tv_shows` (`ID`, `name`, `genre_id`, `seasons`, `rating_id`, `watched`, `description`, `path`) VALUES
(1, 'one punch man', 1, 1, 4, 1, 'The most powerful superhero in the world can kill anyone with one blow. But nothing can challenge him, so he struggles with ennui and depression.', 'uploads/series/one_punch_man.jpg'),
(2, 'Big mouth', 3, 2, 4, 1, 'Teenage friends find their lives upended by the wonders and horrors of puberty in this edgy comedy from real-life pals Nick Kroll and Andrew Goldberg.', 'uploads/series/Big_mouth.png');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Type id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cost` decimal(10,0) NOT NULL,
  `no of users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Type id`, `Name`, `Cost`, `no of users`) VALUES
(1, 'Basic', '6', 1),
(2, 'Standard', '8', 2),
(3, 'Premium', '10', 4),
(4, 'pending', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `membership_id`, `active`, `first_name`, `last_name`, `email`, `phone_no`) VALUES
(1, 'alex', '534b44a19bf18d20b71ecc4eb77c572f', 1, 1, 'alexes', 'zama', 'alex@alex', '000702'),
(2, 'vastocrown', 'e0f65ff4bde09d326603b9adaff39af0', 2, 0, '', '', 'tafadzwa56@hotmail.co.uk', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_user` tinyint(1) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`ID`, `name`, `primary_user`, `account_id`) VALUES
(1, 'ChildishCrown', 1, 1),
(2, 'VastoCrown', 0, 1),
(3, 'tafadzwa', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre id` (`genre_id`),
  ADD KEY `Rating id` (`rating_id`);

--
-- Indexes for table `genre_type`
--
ALTER TABLE `genre_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `next releases`
--
ALTER TABLE `next releases`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tv_eps`
--
ALTER TABLE `tv_eps`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `series id` (`series id`);

--
-- Indexes for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre id` (`genre_id`),
  ADD KEY `Rating id` (`rating_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Type id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `membership id` (`membership_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `account id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genre_type`
--
ALTER TABLE `genre_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `next releases`
--
ALTER TABLE `next releases`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tv_shows`
--
ALTER TABLE `tv_shows`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `Type id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_ibfk_2` FOREIGN KEY (`Rating_id`) REFERENCES `stars` (`ID`),
  ADD CONSTRAINT `films_ibfk_3` FOREIGN KEY (`Genre_id`) REFERENCES `genre_type` (`ID`),
  ADD CONSTRAINT `films_ibfk_4` FOREIGN KEY (`genre_id`) REFERENCES `genre_type` (`ID`),
  ADD CONSTRAINT `films_ibfk_5` FOREIGN KEY (`rating_id`) REFERENCES `stars` (`ID`);

--
-- Constraints for table `tv_eps`
--
ALTER TABLE `tv_eps`
  ADD CONSTRAINT `tv_eps_ibfk_1` FOREIGN KEY (`series id`) REFERENCES `tv_shows` (`ID`);

--
-- Constraints for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD CONSTRAINT `tv_shows_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre_type` (`ID`),
  ADD CONSTRAINT `tv_shows_ibfk_2` FOREIGN KEY (`rating_id`) REFERENCES `stars` (`ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`membership_id`) REFERENCES `type` (`Type id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
