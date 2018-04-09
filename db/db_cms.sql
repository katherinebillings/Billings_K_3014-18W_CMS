-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2018 at 03:54 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_age`
--

DROP TABLE IF EXISTS `tbl_age`;
CREATE TABLE IF NOT EXISTS `tbl_age` (
  `age_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `age_name` varchar(125) NOT NULL,
  `age_title` varchar(40) NOT NULL,
  `age_desc` text NOT NULL,
  PRIMARY KEY (`age_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_age`
--

INSERT INTO `tbl_age` (`age_id`, `age_name`, `age_title`, `age_desc`) VALUES
(1, 'G', 'General Audiences', 'All ages admitted. Nothing that would offend parents for viewing by children.'),
(2, 'PG', 'Parental Guidance Suggested', 'Some material may not be suitable for children. Parents urged to give \"parental guidance\". May contain some material parents might not like for their young children.'),
(3, 'PG-13', 'Parents Strongly Cautioned', 'Some material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'Restricted', 'Under 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them.'),
(5, 'NC-17', 'Adults Only', 'No One 17 and Under Admitted. Clearly adult. Children are not admitted.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Drama'),
(2, 'Sci-fi'),
(3, 'Thriller'),
(4, 'Action'),
(5, 'Comedy'),
(6, 'Adventure'),
(7, 'Fantasy'),
(8, 'Animation'),
(9, 'Family'),
(10, 'Crime'),
(11, 'Mystery'),
(12, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_desc` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_desc`, `movies_trailer`) VALUES
(1, 'donnie-darko.jpg', 'Donnie Darko', '2001', 'A troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes, after he narrowly escapes a bizarre accident.', 'donnie-darko.mp4'),
(2, '2001.jpg', '2001: A Space Odyssey', '1968', 'Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.', '2001.mp4'),
(3, 'avatar.jpg', 'Avatar', '2009', 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'avatar.mp4'),
(4, 'avengers.jpg', 'The Avengers', '2012', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'avengers.mp4'),
(5, 'back-to-the-future.jpg', 'Back to the Future', '1985', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'back-to-the-future.mp4'),
(6, 'batman-begins.jpg', 'Batman Begins', '2005', 'After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from the corruption that Scarecrow and the League of Shadows have cast upon it.', 'batman-begins.mp4'),
(7, 'despicable-me-2.jpg', 'Despicable Me 2', '2013', 'When Gru, the world\'s most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru\'s own, He has to fight back with new gadgetry, cars, and more minion madness.', 'despicable-me-2.mp4'),
(8, 'fantastic-beasts.jpg', 'Fantastic Beasts and Where to Find Them', '2016', 'The adventures of writer Newt Scamander in New York\'s secret community of witches and wizards seventy years before Harry Potter reads his book in school.', 'fantastic-beasts.mp4'),
(9, 'fight-club.jpg', 'Fight Club', '1999', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soapmaker, forming an underground fight club that evolves into something much, much more.', 'fight-club.mp4'),
(10, 'hobbit.jpg', 'The Hobbit: The Battle of the Five Armies', '2014', 'Bilbo and company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.', 'hobbit.mp4'),
(11, 'how-to-train-your-dragon.jpg', 'How to Train Your Dragon', '2010', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.', 'how-to-train-your-dragon.mp4'),
(12, 'inside-out.jpg', 'Inside Out', '2015', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'inside-out.mp4'),
(13, 'jumanji-welcome-to-the-jungle.jpg', 'Jumanji: Welcome to the Jungle', '2017', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.', 'jumanji-welcome-to-the-jungle.mp4'),
(14, 'kill-bill.jpg', 'Kill Bill: Vol. 1', '2003', 'The Bride wakens from a four-year coma. The child she carried in her womb is gone. Now she must wreak vengeance on the team of assassins who betrayed her - a team she was once part of.', 'kill-bill.mp4'),
(15, 'kingsman.jpg', 'Kingsman: The Secret Service', '2014', 'A spy organization recruits an unrefined, but promising street kid into the agency\'s ultra-competitive training program, just as a global threat emerges from a twisted tech genius.', 'kingsman.mp4'),
(16, 'last-jedi.jpg', 'Star Wars: The Last Jedi', '2017', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.', 'last-jedi.mp4'),
(17, 'matrix.jpg', 'The Matrix', '1999', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'matrix.mp4'),
(18, 'maze-runner.jpg', 'The Maze Runner', '2014', 'Thomas is deposited in a community of boys after his memory is erased, soon learning they\'re all trapped in a maze that will require him to join forces with fellow \"runners\" for a shot at escape.', 'maze-runner.mp4'),
(19, 'men-in-black.jpg', 'Men in Black', '1997', 'A police officer joins a secret organization that polices and monitors extraterrestrial interactions on Earth.', 'men-in-black.mp4'),
(20, 'monsters-inc.jpg', 'Monsters, Inc.', '2001', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.', 'monsters-inc.mp4'),
(21, 'se7en.jpg', 'Se7en', '1995', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'se7en.mp4'),
(22, 'terminator.jpg', 'The Terminator', '1984', 'A seemingly indestructible Android is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all cost', 'terminator.mp4'),
(23, 'tucker-and-dale-vs-evil.jpg', 'Tucker and Dale vs Evil', '2010', 'Affable hillbillies Tucker and Dale are on vacation at their dilapidated mountain cabin when they are mistaken for murderers by a group of preppy college students.', 'tucker-and-dale-vs-evil.mp4'),
(24, 'up.jpg', 'Up', '2009', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', 'up.mp4'),
(25, 'world\'s-end.jpg', 'The World\'s End', '2013', 'Five friends who reunite in an attempt to top their epic pub crawl from twenty years earlier unwittingly become humanity\'s only hope for survival.', 'world\'s-end.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_age`
--

DROP TABLE IF EXISTS `tbl_mov_age`;
CREATE TABLE IF NOT EXISTS `tbl_mov_age` (
  `mov_age` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `age_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_age`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_age`
--

INSERT INTO `tbl_mov_age` (`mov_age`, `movies_id`, `age_id`) VALUES
(1, 1, 4),
(2, 2, 1),
(3, 3, 3),
(4, 4, 3),
(5, 5, 2),
(6, 6, 3),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 3),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 4),
(16, 16, 3),
(17, 17, 4),
(18, 18, 3),
(19, 19, 3),
(20, 20, 1),
(21, 21, 4),
(22, 22, 4),
(23, 23, 4),
(24, 24, 2),
(25, 25, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_gen`
--

DROP TABLE IF EXISTS `tbl_mov_gen`;
CREATE TABLE IF NOT EXISTS `tbl_mov_gen` (
  `mov_gen_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_gen_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_gen`
--

INSERT INTO `tbl_mov_gen` (`mov_gen_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 6),
(5, 2, 2),
(6, 3, 4),
(7, 3, 6),
(8, 3, 7),
(9, 4, 4),
(10, 4, 6),
(11, 4, 2),
(12, 5, 2),
(13, 5, 5),
(14, 5, 6),
(15, 6, 3),
(16, 6, 4),
(17, 6, 6),
(18, 7, 5),
(19, 7, 6),
(20, 7, 8),
(21, 8, 6),
(22, 8, 9),
(23, 8, 7),
(24, 9, 1),
(25, 10, 6),
(26, 10, 7),
(27, 11, 8),
(28, 11, 4),
(29, 11, 6),
(30, 12, 8),
(31, 12, 6),
(32, 12, 5),
(33, 13, 4),
(34, 13, 5),
(35, 13, 6),
(36, 14, 4),
(37, 14, 10),
(38, 14, 3),
(39, 15, 4),
(40, 15, 5),
(41, 15, 6),
(42, 16, 4),
(43, 16, 6),
(44, 16, 7),
(45, 17, 2),
(46, 17, 4),
(47, 18, 4),
(48, 18, 11),
(49, 18, 2),
(50, 19, 6),
(51, 19, 5),
(52, 19, 9),
(53, 20, 8),
(54, 20, 5),
(55, 20, 6),
(56, 21, 10),
(57, 21, 1),
(58, 21, 11),
(59, 22, 2),
(60, 22, 4),
(61, 23, 5),
(62, 23, 12),
(63, 24, 5),
(64, 24, 6),
(65, 24, 8),
(66, 25, 4),
(67, 25, 5),
(68, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_prehash` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_new` varchar(5) NOT NULL DEFAULT 'yes',
  `user_level` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_prehash`, `user_email`, `user_date`, `user_new`, `user_level`) VALUES
(1, 'Katie', 'kbillings', '$2b$10$JBsXmkyZPMS/mQqpL.kV7u7y8mKQc2sZYQ37RiHE/4nGfQ/gfcsjK', 'password', 'kbillings@gmail.com', '2018-04-09 03:14:34', 'no', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
