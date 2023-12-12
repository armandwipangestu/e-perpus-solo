-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2023 at 03:07 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_perpus_solo`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `id` int NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`id`, `author`, `created_at`, `updated_at`) VALUES
(6, 'R. Sandhika Galih dan Acep Hendra', '2023-11-29 06:29:26', '2023-11-29 06:29:26'),
(7, 'George R. R. Martin', '2023-11-29 06:29:34', '2023-11-29 06:29:34'),
(8, 'J. K. Rowling', '2023-11-29 06:29:41', '2023-11-29 06:29:41'),
(9, 'Eric Robertson', '2023-11-30 05:58:19', '2023-11-30 05:58:19'),
(10, 'C.S. Lewis', '2023-11-30 08:10:26', '2023-11-30 08:10:26'),
(11, 'Mary Tillworth', '2023-11-30 11:51:03', '2023-11-30 11:51:03'),
(12, 'Jagdish N. Bhagwati', '2023-11-30 11:52:44', '2023-11-30 11:52:44'),
(13, 'Sonia Sander', '2023-11-30 11:55:27', '2023-11-30 11:55:27'),
(14, 'Art Baltazar', '2023-11-30 11:57:30', '2023-11-30 11:57:30'),
(15, 'Hilary Campbell', '2023-11-30 12:00:07', '2023-11-30 12:00:07'),
(16, 'Morgan Housel', '2023-11-30 12:02:27', '2023-11-30 12:02:27'),
(17, 'Patrick King', '2023-12-03 08:16:37', '2023-12-03 08:16:37'),
(18, 'Tere Liye', '2023-12-07 05:45:58', '2023-12-07 05:45:58'),
(19, 'Brian W. Kernighan, Dennis MacAlistair Ritchie, B. W. Kernighan, Ritchie Kernighan, Kernighan, Ritchie, and Dennis M. Ritchi', '2023-12-07 05:53:27', '2023-12-07 05:53:27'),
(20, 'Programming Languages Project', '2023-12-07 05:56:48', '2023-12-07 05:56:48'),
(21, 'Motivation Diary', '2023-12-07 05:59:33', '2023-12-07 05:59:33'),
(22, 'Raymond Gething', '2023-12-07 06:02:23', '2023-12-07 06:02:23'),
(23, 'Brian H. Ross', '2023-12-07 06:05:24', '2023-12-07 06:05:24'),
(24, 'Lambert Deckers', '2023-12-07 06:11:19', '2023-12-07 06:11:19'),
(25, 'Lucy Score', '2023-12-07 06:17:35', '2023-12-07 06:17:35'),
(26, 'Emily Henry', '2023-12-07 06:27:21', '2023-12-07 06:27:21'),
(27, 'Ali Hazelwood', '2023-12-07 06:30:11', '2023-12-07 06:30:11'),
(28, 'Ashley Herring Blake', '2023-12-07 06:36:42', '2023-12-07 06:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Education', '2023-12-03 07:51:47', '2023-12-03 08:09:18'),
(2, 'Motivation', '2023-12-03 07:56:06', '2023-12-03 07:56:06'),
(4, 'Fiction', '2023-12-03 08:09:24', '2023-12-03 08:09:24'),
(6, 'Romance', '2023-12-07 05:47:12', '2023-12-07 05:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `book_data`
--

CREATE TABLE `book_data` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  `synopsis` varchar(2000) NOT NULL,
  `language` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `total_page` int NOT NULL,
  `quantity_available` int NOT NULL,
  `publisher_id` int NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_data`
--

INSERT INTO `book_data` (`id`, `title`, `cover_image`, `synopsis`, `language`, `publish_date`, `total_page`, `quantity_available`, `publisher_id`, `author_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'DASAR-DASAR PEMROGRAMAN WEB', '65671b5be2f04_1701256027.webp', 'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan.\r\n\r\nSeluruh Sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya.\r\n\r\nBerdasarkan data dari World Wide Web Technology Surveys, dari seluruh website yang aktif, 88.2% menggunakan HTML dan 95.6% menggunakan CSS.\r\n\r\nBuku ini, membahas tuntas mengenai HTML dan CSS sebagai fondasi dalam pembuatan website serta dilengkapi dengan Studi Kasus yang Relevan dan sesuai trend.', 'Indonesia', '2023-10-11', 414, 19, 6, 6, 1, '2023-01-29 11:07:07', '2023-12-08 10:05:40'),
(4, 'A Game of Thrones', '65671c0be7b45_1701256203.jpg', 'Here is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.\r\n\r\nA GAME OF THRONES\r\n\r\nLong ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.\r\n\r\nHere an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.', 'English', '2002-05-28', 704, 3, 7, 7, 4, '2023-02-28 11:10:03', '2023-12-03 08:10:56'),
(5, 'Harry Potter and the Deathly Hallows', '65671c4a40316_1701256266.jpg', 'It\'s no longer safe for Harry at Hogwarts, so he and his best friends, Ron and Hermione, are on the run. Professor Dumbledore has given them clues about what they need to do to defeat the dark wizard, Lord Voldemort, once and for all, but it\'s up to them to figure out what these hints and suggestions really mean. Their cross-country odyssey has them searching desperately for the answers, while evading capture or death at every turn. At the same time, their friendship, fortitude, and sense of right and wrong are tested in ways they never could have imagined. The ultimate battle between good and evil that closes out this final chapter of the epic series takes place where Harry\'s Wizarding life began: at Hogwarts. The satisfying conclusion offers shocking last-minute twists, incredible acts of courage, powerful new forms of magic, and the resolution of many mysteries. Above all, this intense, cathartic book serves as a clear statement of the message at the heart of the Harry Potter series: that choice matters much more than destiny, and that love will always triumph over death.', 'English', '2010-01-01', 759, 4, 8, 8, 4, '2023-03-29 11:11:06', '2023-12-11 09:30:18'),
(12, 'Control Your Mind and Master Your Feelings', '65683c87640fe_1701330055.jpg', 'We oftentimes look towards the outside world to find the roots of our problems. However, most of the times, we should be looking inwards. Our mind and our emotions determine our state of being in the present moment. If those aspects are left unchecked, we can get easily overwhelmed and are left feeling unfulfilled every single day.\r\n\r\nThis book contains two manuscripts designed to help you discover the best and most efficient way to control your thoughts and master your feelings.\r\n\r\nIn the first part of the bundle called Breaking Overthinking, you will discover:\r\n\r\nHow overthinking can be detrimental to your social life.\r\nThe hidden dangers of overthinking and what can happen to you if it’s left untreated.\r\nHow to declutter your mind from all the noise of the modern world.\r\nHow overthinking affects your body, your energy levels, and your everyday mood.\r\nHow your surroundings affect your state of mind, and what you NEED to do in order to break out of that state.\r\nBad habits we perform every day and don’t even realize are destroying our sanity (and how to overcome them properly).\r\nHow to cut out toxic people from your life, which cloud your judgment and make you feel miserable.', 'English', '2019-01-01', 231, 1, 9, 9, 2, '2023-04-29 07:40:55', '2023-12-04 05:00:15'),
(13, 'Prince Caspian (Narnia)', '656843b820ad1_1701331896.jpg', '&amp;quot;Once there were four children whose names were Peter, Susan, Edmund, and Lucy, and it has been told in another book called The Lion, the Witch and the Wardrobe how they had a remarkable adventure.&amp;quot;', 'English', '1994-07-08', 256, 4, 10, 10, 4, '2023-05-29 08:11:36', '2023-12-03 08:11:31'),
(14, 'The Chronicles of Narnia (The Chronicles of Narnia)', '65684437bb814_1701332023.jpg', 'Journeys to the end of the world, fantastic creatures, and epic battle between good and evil - what more could any reader ask for in one book? The book that has it all is THE LION, THE WITCH AND THE WARDROBE, written in 1919 by C.S. Lewis. But Lewis did not stop there. Six more books followed and together they became known as The Chronicles of Narnia.\r\n\r\nFor the past fifty years, The Chronicles of Narnia has transcended the fantasy genre to become part of the canon of classic literature. Each of the seven books is a masterpiece, drawing the reader into a world where magic meets reality, and the result is a fictional world whose scope has fascinated generations.\r\n\r\nThis edition presents all seven books - unabridged - in one impressive volume. The books are presented here according to Lewis\'s preferred order, each chapter graced with an illustration by the original artist, Pauline Baynes. This edition also contains C. S. Lewis\'s essay &amp;quot;On Three Ways of Writing for Children,&amp;quot; in which he explains precisely how the magic of Narnia and the realm of fantasy appeal not only to children but to discerning readers of all ages. Deceptively simple and direct, The Chronicles of Narnia continue to captivate fans with adventures, characters, and truths that speak to all readers, even fifty years after the books were first published.\r\n--front flap\r\n\r\nContains:\r\nThe Magician\'s Nephew; The Lion, the Witch and the Wardrobe; The Horse and His Boy; Prince Caspian; The Voyage of the Dawn Treader; The Silver Chair; and The Last Battle.', 'English', '1988-01-01', 312, 2, 11, 10, 4, '2023-06-30 08:13:43', '2023-12-11 07:44:39'),
(15, 'Dora\'s puppy, Perrito!', '6568775986b37_1701345113.jpg', 'Dora and Boots have to take her grandmother\'s gift to Dora\'s new puppy, Perrito.', 'English', '2013-01-01', 31, 1, 12, 11, 4, '2023-07-30 11:51:53', '2023-12-03 08:11:46'),
(16, 'The New international economic order', '656877e68e361_1701345254.jpg', 'The New International Economic Order (NIEO) is a concept that first emerged in the mid-20th century as an effort to address the economic inequality between developed and developing countries on a global scale. NIEO aims to establish a new framework in international economic relations that is more equitable, aiming to level the playing field in the distribution of wealth and power. A book discussing this topic would likely delve into the evolution of the NIEO concept, the underlying arguments, as well as the impact and challenges of its implementation. This could include an analysis of structural changes in the global economy, the role of international institutions, and the political dynamics influencing the realization of this idea. A synopsis of the book &quot;The New International Economic Order&quot; might provide an overview of the main arguments, analytical approaches, and conclusions drawn by the author in presenting this material.', 'English', '1977-01-01', 390, 1, 13, 12, 1, '2023-08-30 11:54:14', '2023-12-03 10:12:00'),
(17, '3, 2, 1, liftoff!', '6568786f95d24_1701345391.jpg', 'Lego astronauts board the space shuttle and set to work exploring space.', 'English', '2011-01-01', 31, 2, 11, 13, 4, '2023-09-30 11:56:31', '2023-12-11 10:21:08'),
(18, 'Tiny Titans', '656878f2bdcd7_1701345522.jpg', 'The Tiny Titans have their hands full with all things small, including the fuzzy members of their Pet Club, the crazy animals that have completely overrun Wayne Manor, or the tiniest of Titans.', 'English', '2010-01-01', 157, 1, 14, 14, 4, '2023-10-30 11:58:42', '2023-12-11 08:57:08'),
(19, 'Designing patterns', '656879893c58f_1701345673.jpg', 'This book provides a guide and working tool for students and home dressmakers. It will also help build up skills and confidence in a vital area of the subject.', 'English', '1980-01-01', 123, 4, 15, 15, 1, '2023-11-30 12:01:13', '2023-12-05 19:09:51'),
(20, 'The Psychology of Money', '65687a0216653_1701345794.jpg', 'Timeless lessons on wealth, greed, and happiness doing well with money isn’t necessarily about what you know. It’s about how you behave. And behavior is hard to teach, even to really smart people. How to manage money, invest it, and make business decisions are typically considered to involve a lot of mathematical calculations, where data and formulae tell us exactly what to do. But in the real world, people don’t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your unique view of the world, ego, pride, marketing, and odd incentives are scrambled together. In the psychology of money, the author shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life’s most important matters.', 'English', '2020-09-08', 256, 5, 16, 16, 1, '2023-12-06 12:03:14', '2023-12-11 10:21:15'),
(22, 'Hujan', '65715ca0a887f_1701928096.jpg', 'Buku ini menceritakan tentang perjalanan hidup dan kisah cinta seorang wanita yang bernama Lail. Lail dipaksa menjadi yatim piatu sejak usianya masih 13 tahun. Semua bermula saat mendadak terjadi bencana gempa dan gunung meletus yang langsung meluluhlantakkan kota tempatnya tinggal.', 'Indonesia', '2018-04-16', 320, 4, 19, 18, 6, '2023-12-07 05:48:16', '2023-12-11 08:53:15'),
(23, 'The C programming language', '65715e1f32571_1701928479.jpg', 'Very well known, classic introduction to the C Programming Language. Both a text for learning, a reference, and, to some, the definition of proper C language features and use.', 'English', '1978-01-01', 228, 1, 20, 19, 1, '2023-12-07 05:54:39', '2023-12-11 08:45:56'),
(24, 'Python Data Science', '65715ee991c8d_1701928681.jpg', 'An Essential Crash Course Made Accessible to Start Working Filled with Essential Tools, Tecniques, Concepts That Helps You Learn Python Data Science', 'English', '2019-01-01', 311, 1, 21, 20, 1, '2023-12-07 05:58:01', '2023-12-11 09:32:48'),
(25, 'Live Your DREAMS Whatever They May Be ...', '65715f898ec64_1701928841.jpg', 'Ungewöhnliches Tagebuch Clustering Clustering Tagebuch Kreise Motivation - Tagebuch / Dankbarkeitsjournal / Lebensbuch / Allzweck', 'German', '2019-01-01', 124, 1, 21, 21, 2, '2023-12-07 06:00:41', '2023-12-07 06:00:58'),
(26, 'Motivation Noteook', 'default_cover.jpg', 'Inspiring Love Quotes 102 Pages for Him for Her', 'English', '2020-01-01', 123, 1, 21, 22, 2, '2023-12-07 06:03:02', '2023-12-07 06:03:02'),
(27, 'Psychology of Learning and Motivation', '657160f941e49_1701929209.jpg', 'An edition of The psychology of learning and motivation (1990)', 'English', '2017-01-01', 328, 1, 22, 23, 2, '2023-12-07 06:06:49', '2023-12-07 06:07:03'),
(28, 'The psychology of learning and motivation', '6571617e790f6_1701929342.jpg', 'advances in research and theory', 'English', '2010-01-01', 100, 1, 23, 23, 2, '2023-12-07 06:09:02', '2023-12-07 06:09:02'),
(29, 'Motivation', '65716269cba68_1701929577.jpg', 'biological, psychological, and environmental\r\n2nd ed.', 'English', '2005-01-01', 448, 1, 24, 24, 2, '2023-12-07 06:12:57', '2023-12-07 06:12:57'),
(30, 'Things We Never Got Over', '6571695084e42_1701931344.jpeg', '\"Naomi wasn\'t just running away from her wedding. She was riding to the rescue of her estranged twin to Knockemout, Virginia, a rough-around-the-edges town where disputes are settled the old-fashioned way . . . with fists and beer. Usually in that order. Too bad for Naomi her evil twin hasn\'t changed at all. After helping herself to Naomi\'s car and cash, Tina leaves her with something unexpected. The niece Naomi didn\'t know she had. Now she\'s stuck in town with no car, no job, no plan, and no home with an 11-year-old-going-on-thirty to take care of. There\'s a reason Knox doesn\'t do complications or high-maintenance relationships, especially not the romantic ones. But since Naomi\'s life imploded right in front of him, the least he can do is help her out of her jam. And just as soon as she stops getting into new trouble he can leave her alone and get back to his peaceful, solitary life. At least, that\'s the plan -- until the trouble turns to real danger.\"--', 'English', '2022-01-01', 500, 1, 25, 25, 6, '2023-12-07 06:19:12', '2023-12-07 06:44:48'),
(31, 'People We Meet on Vacation', '6571692abe6ef_1701931306.jpeg', 'Two best friends. Ten summer trips. One last chance to fall in love.\r\n\r\nPoppy and Alex. Alex and Poppy. They have nothing in common. She’s a wild child; he wears khakis. She has insatiable wanderlust; he prefers to stay home with a book. And somehow, ever since a fateful car share home from college many years ago, they are the very best of friends. For most of the year they live far apart—she’s in New York City, and he’s in their small hometown—but every summer, for a decade, they have taken one glorious week of vacation together.\r\n \r\nUntil two years ago, when they ruined everything. They haven\'t spoken since.\r\n \r\nPoppy has everything she should want, but she’s stuck in a rut. When someone asks when she was last truly happy, she knows, without a doubt, it was on that ill-fated, final trip with Alex. And so, she decides to convince her best friend to take one more vacation together—lay everything on the table, make it all right. Miraculously, he agrees.\r\n \r\nNow she has a week to fix everything. If only she can get around the one big truth that has always stood quietly in the middle of their seemingly perfect relationship. What could possibly go wrong?\r\n\r\n\r\nNamed a Most Anticipated Book of 2021 by Newsweek ∙ Oprah Magazine ∙ The Skimm ∙ Marie Claire ∙ Parade ∙ The Wall Street Journal ∙ Chicago Tribune ∙ PopSugar ∙ BookPage ∙ BookBub ∙ Betches ∙ SheReads ∙ Good Housekeeping ∙ BuzzFeed ∙ Business Insider ∙ Real Simple ∙ Frolic ∙ and more!', 'English', '2021-05-11', 400, 1, 26, 26, 6, '2023-12-07 06:28:50', '2023-12-11 09:26:43'),
(32, 'Check & Mate', '657168ebdd828_1701931243.jpeg', 'Mallory Greenleaf is done with chess. Every move counts nowadays; after the sport led to the destruction of her family four years earlier, Mallory’s focus is on her mom, her sisters, and the dead-end job that keeps the lights on. That is, until she begrudgingly agrees to play in one last charity tournament and inadvertently wipes the board with notorious “Kingkiller” Nolan Sawyer: current world champion and reigning Bad Boy of chess.\r\n\r\nNolan’s loss to an unknown rook-ie shocks everyone. What’s even more confusing? His desire to cross pawns again. What kind of gambit is Nolan playing? The smart move would be to walk away. Resign. Game over. But Mallory’s victory opens the door to sorely needed cash-prizes and despite everything, she can’t help feeling drawn to the enigmatic strategist....\r\n\r\nAs she rockets up the ranks, Mallory struggles to keep her family safely separated from the game that wrecked it in the first place. And as her love for the sport she so desperately wanted to hate begins to rekindle, Mallory quickly realizes that the games aren’t only on the board, the spotlight is brighter than she imagined, and the competition can be fierce (-ly attractive. And intelligent…and infuriating…)', 'English', '2023-11-07', 368, 1, 27, 27, 6, '2023-12-07 06:31:14', '2023-12-11 10:06:15'),
(33, 'Love on the Brain', '657168b05d1f8_1701931184.jpeg', 'From the New York Times bestselling author of The Love Hypothesis comes a new STEMinist rom-com in which a scientist is forced to work on a project with her nemesis—with explosive results.\r\n\r\nLike an avenging, purple-haired Jedi bringing balance to the mansplained universe, Bee Königswasser lives by a simple code: What would Marie Curie do? If NASA offered her the lead on a neuroengineering project—a literal dream come true after years scraping by on the crumbs of academia—Marie would accept without hesitation. Duh. But the mother of modern physics never had to co-lead with Levi Ward.\r\n \r\nSure, Levi is attractive in a tall, dark, and piercing-eyes kind of way. And sure, he caught her in his powerfully corded arms like a romance novel hero when she accidentally damseled in distress on her first day in the lab. But Levi made his feelings toward Bee very clear in grad school—archenemies work best employed in their own galaxies far, far away.\r\n \r\nNow, her equipment is missing, the staff is ignoring her, and Bee finds her floundering career in somewhat of a pickle. Perhaps it’s her occipital cortex playing tricks on her, but Bee could swear she can see Levi softening into an ally, backing her plays, seconding her ideas…devouring her with those eyes. And the possibilities have all her neurons firing. But when it comes time to actually make a move and put her heart on the line, there’s only one question that matters: What will Bee Königswasser do?', 'English', '2022-08-23', 368, 1, 28, 27, 6, '2023-12-07 06:35:13', '2023-12-08 15:58:48'),
(34, 'Iris Kelly Doesn\'t Date', '65716880d82e4_1701931136.jpeg', 'A fake relationship after a horrible one-night stand is anything but an act in this witty and heartfelt new romantic comedy by Ashley Herring Blake.\r\n \r\nEveryone around Iris Kelly is in love. Her best friends are all coupled up, her siblings have partners that are perfect for them, and her parents are still blissfully married. And she’s happy for all of them, truly. Iris doesn’t want any of that—dating, love, romance. She’ll stick to her commitment-free hookups, thanks very much, except no one in her life will just let her be. Everyone wants to see her settled down, but she holds firmly to her no dating rule. There’s only one problem—Iris is a romance author facing an imminent deadline for her second book, and she’s completely out of ideas.\r\n \r\nPerfectly happy to ignore her problems as per usual, Iris goes to a bar in Portland and meets a sexy stranger, Stefania, and a night of dancing and making out turns into the worst one-night stand Iris has had in her life. To get her mind off everything, Iris tries out for the lead role in a local play, a queer retelling of Much Ado About Nothing, but comes face-to-face with Stefania, whose real name turns out to be Stevie. Desperate to save face in front of her friends, Stevie asks Iris to play along as her girlfriend. Iris is shocked, but when she realizes the arrangement might provide her with some much-needed romantic content for her book, she agrees. As the two women play the part of a happy couple, lines start to blur, and they’re left wondering who will make the real first move....', 'English', '2023-10-24', 416, 1, 29, 28, 6, '2023-12-07 06:37:58', '2023-12-11 09:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `book_publisher`
--

CREATE TABLE `book_publisher` (
  `id` int NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_publisher`
--

INSERT INTO `book_publisher` (`id`, `publisher`, `created_at`, `updated_at`) VALUES
(6, 'PT Inovasi Karya Mehendra', '2023-11-29 06:11:36', '2023-11-29 06:30:08'),
(7, 'Bantam Books', '2023-11-29 06:15:45', '2023-11-29 06:30:15'),
(8, 'Arthur A. Levine Books an imprint of Scholastic Inc.', '2023-11-29 06:15:57', '2023-11-29 06:30:22'),
(9, 'Erik Robertson', '2023-11-30 05:57:48', '2023-11-30 05:57:48'),
(10, 'HarperTrophy', '2023-11-30 08:10:16', '2023-11-30 08:10:16'),
(11, 'Scholastic', '2023-11-30 08:12:23', '2023-11-30 08:12:23'),
(12, 'Random House', '2023-11-30 11:50:53', '2023-11-30 11:50:53'),
(13, 'MIT Press', '2023-11-30 11:52:34', '2023-11-30 11:52:34'),
(14, 'DC Comics', '2023-11-30 11:57:21', '2023-11-30 11:57:21'),
(15, 'Thornes', '2023-11-30 11:59:58', '2023-11-30 11:59:58'),
(16, 'Harriman House', '2023-11-30 12:02:14', '2023-11-30 12:02:14'),
(17, 'Test', '2023-12-01 11:29:04', '2023-12-01 11:29:04'),
(18, 'Pkcs Media, Inc.', '2023-12-03 08:15:33', '2023-12-03 08:15:33'),
(19, 'Gramedia Pustaka Utama', '2023-12-07 05:45:35', '2023-12-07 05:45:35'),
(20, 'Prentice-Hall', '2023-12-07 05:53:18', '2023-12-07 05:53:18'),
(21, 'Independently Published', '2023-12-07 05:56:26', '2023-12-07 05:56:26'),
(22, 'Elsevier Science &amp; Technology Books', '2023-12-07 06:05:17', '2023-12-07 06:05:17'),
(23, 'Academic Press', '2023-12-07 06:08:02', '2023-12-07 06:08:02'),
(24, 'Pearson/Allyn &amp; Bacon', '2023-12-07 06:11:01', '2023-12-07 06:11:01'),
(25, 'Center Point Large Print, 2023', '2023-12-07 06:17:21', '2023-12-07 06:17:21'),
(26, 'Penguin Publishing Group, 2021', '2023-12-07 06:27:14', '2023-12-07 06:27:14'),
(27, 'Penguin Young Readers Group, 2023', '2023-12-07 06:30:00', '2023-12-07 06:30:00'),
(28, 'Penguin, 2022', '2023-12-07 06:34:05', '2023-12-07 06:34:05'),
(29, 'Penguin Publishing Group, 2023', '2023-12-07 06:36:32', '2023-12-07 06:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2023-12-03 15:12:10', '2023-12-04 03:36:43'),
(2, 'Rejected', '2023-12-03 15:12:24', '2023-12-04 03:36:47'),
(3, 'Accepted', '2023-12-03 15:12:28', '2023-12-04 03:36:50'),
(4, 'Borrowed', '2023-12-05 18:36:11', '2023-12-05 18:36:22'),
(5, 'Returned', '2023-12-05 18:36:15', '2023-12-05 18:36:24'),
(6, 'Request Return', '2023-12-05 18:46:44', '2023-12-05 18:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_borrow`
--

CREATE TABLE `transaction_borrow` (
  `id` int NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `quantity` int NOT NULL,
  `status_id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_borrow`
--

INSERT INTO `transaction_borrow` (`id`, `borrow_date`, `return_date`, `quantity`, `status_id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(10, '2023-01-08', '2023-01-08', 1, 2, 2, 34, '2023-12-08 08:52:02', '2023-12-11 08:46:52'),
(11, '2023-01-08', '2023-01-08', 1, 3, 2, 34, '2023-12-08 08:54:23', '2023-12-11 08:47:19'),
(12, '2023-02-08', '2023-02-08', 1, 3, 2, 34, '2023-12-08 09:22:42', '2023-12-11 08:47:40'),
(13, '2023-03-08', '2023-03-08', 2, 3, 2, 2, '2023-12-08 10:04:30', '2023-12-11 08:48:06'),
(14, '2023-04-08', '2023-04-08', 1, 3, 2, 33, '2023-12-08 15:57:12', '2023-12-11 08:48:31'),
(15, '2023-05-11', '2023-05-11', 1, 3, 2, 14, '2023-12-11 07:17:02', '2023-12-11 08:48:55'),
(16, '2023-06-11', '2023-06-11', 1, 3, 2, 20, '2023-12-11 07:25:01', '2023-12-11 08:49:22'),
(17, '2023-07-11', '2023-07-11', 1, 3, 2, 23, '2023-12-11 07:35:36', '2023-12-11 08:49:38'),
(18, '2023-08-11', '2023-08-12', 1, 3, 2, 22, '2023-12-11 08:51:53', '2023-12-11 08:52:17'),
(19, '2023-09-11', '2023-09-11', 1, 3, 2, 18, '2023-12-11 08:55:04', '2023-12-11 08:55:33'),
(20, '2023-10-11', '2023-10-11', 1, 3, 2, 32, '2023-12-11 08:57:51', '2023-12-11 08:58:10'),
(21, '2023-11-11', '2023-11-11', 1, 3, 2, 31, '2023-12-11 09:23:47', '2023-12-11 09:24:24'),
(22, '2023-12-11', '2023-12-11', 1, 3, 2, 5, '2023-12-11 09:27:27', '2023-12-11 09:27:42'),
(23, '2023-12-11', '2023-12-11', 1, 3, 2, 24, '2023-12-11 09:31:25', '2023-12-11 09:31:40'),
(24, '2023-12-12', '2023-12-12', 1, 3, 2, 34, '2023-12-11 09:54:34', '2023-12-11 09:56:02'),
(25, '2023-12-11', '2023-12-11', 1, 3, 25, 32, '2023-12-11 10:02:14', '2023-12-11 10:02:57'),
(26, '2023-12-12', '2023-12-12', 1, 3, 25, 17, '2023-12-11 10:08:10', '2023-12-11 10:08:18'),
(27, '2023-12-13', '2023-12-13', 1, 3, 25, 20, '2023-12-11 10:15:45', '2023-12-11 10:16:10'),
(28, '2023-12-14', '2023-12-14', 1, 2, 25, 34, '2023-12-11 10:31:11', '2023-12-11 10:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_return`
--

CREATE TABLE `transaction_return` (
  `id` int NOT NULL,
  `return_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `fine_amount` decimal(10,0) DEFAULT NULL,
  `message` text,
  `status_id` int NOT NULL,
  `borrow_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_return`
--

INSERT INTO `transaction_return` (`id`, `return_date`, `quantity`, `fine_amount`, `message`, `status_id`, `borrow_id`, `created_at`, `updated_at`) VALUES
(3, '2023-01-09', 1, 1000, 'Hope you\'re good! Just a quick heads up – it looks like this book is fashionably late coming back to us. As a friendly reminder, there\'s a fine amount of Rp. 1000 for tardy returns.', 5, 11, '2023-12-08 08:54:45', '2023-12-11 08:50:25'),
(4, '2023-02-08', 1, 0, '', 5, 12, '2023-12-08 09:22:55', '2023-12-11 08:50:39'),
(5, '2023-03-08', 2, 0, '', 5, 13, '2023-12-08 10:04:47', '2023-12-11 08:50:53'),
(6, '2023-04-10', 1, 2000, 'Hope you\'re good! Just a quick heads up – it looks like this book is fashionably late coming back to us. As a friendly reminder, there\'s a fine amount of Rp. 2000 for tardy returns.', 5, 14, '2023-12-08 15:57:46', '2023-12-11 08:50:58'),
(7, '2023-05-11', 1, 0, '', 5, 15, '2023-12-11 07:17:12', '2023-12-11 08:51:03'),
(8, '2023-06-11', 1, 0, '', 5, 16, '2023-12-11 07:26:32', '2023-12-11 08:51:09'),
(9, '2023-07-11', 1, 0, '', 5, 17, '2023-12-11 07:43:34', '2023-12-11 08:51:13'),
(10, '2023-08-13', 1, 1000, 'Hope you\'re good! Just a quick heads up – it looks like this book is fashionably late coming back to us. As a friendly reminder, there\'s a fine amount of Rp. 1000 for tardy returns.', 5, 18, '2023-12-11 08:52:17', '2023-12-11 08:53:15'),
(11, '2023-09-11', 1, 0, '', 5, 19, '2023-12-11 08:55:34', '2023-12-11 08:57:08'),
(12, '2023-10-11', 1, 0, '', 5, 20, '2023-12-11 08:58:10', '2023-12-11 09:07:36'),
(13, '2023-11-11', 1, 0, '', 5, 21, '2023-12-11 09:24:24', '2023-12-11 09:26:43'),
(14, '2023-12-11', 1, 0, '', 5, 22, '2023-12-11 09:27:42', '2023-12-11 09:30:18'),
(15, '2023-12-11', 1, 0, '', 5, 23, '2023-12-11 09:31:40', '2023-12-11 09:32:48'),
(16, '2023-12-12', 1, 0, '', 5, 24, '2023-12-11 09:56:02', '2023-12-11 09:58:05'),
(17, '2023-12-11', 1, 0, '', 5, 25, '2023-12-11 10:02:57', '2023-12-11 10:06:15'),
(18, '2023-12-12', 1, 0, '', 5, 26, '2023-12-11 10:08:19', '2023-12-11 10:21:08'),
(19, '2023-12-13', 1, 0, '', 5, 27, '2023-12-11 10:16:10', '2023-12-11 10:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int NOT NULL,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-11-28 13:39:37', '2023-11-28 13:39:37'),
(2, 1, 2, '2023-11-28 13:39:41', '2023-11-28 13:39:41'),
(3, 2, 2, '2023-11-28 13:46:28', '2023-11-28 13:46:28'),
(4, 1, 3, '2023-11-28 13:47:10', '2023-11-28 13:47:10'),
(5, 1, 4, '2023-11-28 13:47:20', '2023-11-28 13:47:20'),
(6, 1, 5, '2023-11-28 13:49:32', '2023-11-28 13:49:32'),
(8, 2, 7, '2023-11-30 12:10:25', '2023-11-30 12:10:25'),
(9, 1, 8, '2023-12-03 15:00:46', '2023-12-03 15:00:46'),
(11, 3, 2, '2023-12-04 05:46:18', '2023-12-04 05:46:18'),
(12, 3, 6, '2023-12-04 05:46:56', '2023-12-04 05:46:56'),
(13, 3, 9, '2023-12-04 05:47:05', '2023-12-04 05:47:05'),
(14, 3, 10, '2023-12-04 05:53:09', '2023-12-04 05:53:09'),
(15, 3, 5, '2023-12-04 18:01:58', '2023-12-04 18:01:58'),
(16, 1, 6, '2023-12-05 18:11:14', '2023-12-05 18:11:14'),
(17, 1, 9, '2023-12-05 18:11:18', '2023-12-05 18:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatar_image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` char(6) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `first_name`, `last_name`, `username`, `avatar_image`, `email`, `password`, `gender`, `address`, `phone_number`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Arman Dwi', 'Pangestu', 'admin', '656844b282a67_1701332146.png', 'default@admin.com', '$2y$10$qHSMHjktzUu7Lwwv.CUaXOkBqWAsEkqhlqkgB3bjVTnb2cSQx32j2', 'Male', '1293 Fidler Drive, San Antonio, Texas, 78223', '12106496974', 1, '2023-01-28 13:35:18', '2023-11-30 08:53:44'),
(2, 'Sophia', 'Wilson', 'user', 'default_female.jpg', 'default@user.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '861 Feathers Hooves Drive, Hicksville, New York, 11612', '16317191182', 2, '2023-02-28 13:36:29', '2023-12-04 07:05:43'),
(3, 'John', 'Doe', 'john_doe', 'default_male.jpg', 'john.doe@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '123 Main St', '08123123123', 2, '2023-03-28 07:17:43', '2023-11-28 07:18:54'),
(4, 'Jane', 'Doe', 'jane_doe', 'default_female.jpg', 'jane.doe@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '456 Oak St', '08123123124', 2, '2023-04-28 07:17:43', '2023-11-28 07:19:05'),
(5, 'Michael', 'Smith', 'michael_smith', 'default_male.jpg', 'michael.smith@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '789 Pine St', '08123123125', 2, '2023-05-28 07:17:43', '2023-11-28 07:19:09'),
(6, 'Alice', 'Johnson', 'alice_johnson', 'default_female.jpg', 'alice.johnson@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '101 Cedar St', '08123123126', 2, '2023-06-28 07:17:43', '2023-11-28 07:19:12'),
(7, 'Robert', 'Williams', 'robert_williams', 'default_male.jpg', 'robert.williams@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '202 Elm St', '08123123127', 2, '2023-07-28 07:17:43', '2023-11-28 07:19:16'),
(8, 'Emily', 'Davis', 'emily_davis', 'default_female.jpg', 'emily.davis@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '303 Maple St', '08123123128', 2, '2023-08-28 07:17:43', '2023-11-28 07:19:19'),
(9, 'William', 'Brown', 'william_brown', 'default_male.jpg', 'william.brown@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '404 Birch St', '08123123129', 2, '2023-09-28 07:17:43', '2023-11-28 07:19:23'),
(10, 'Olivia', 'Jones', 'olivia_jones', 'default_female.jpg', 'olivia.jones@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '505 Pine St', '08123123130', 2, '2023-10-28 07:17:43', '2023-11-28 07:19:27'),
(11, 'James', 'Miller', 'james_miller', 'default_male.jpg', 'james.miller@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '606 Oak St', '08123123131', 2, '2023-11-28 07:17:43', '2023-11-28 07:17:43'),
(12, 'Sophia', 'Wilson', 'sophia_wilson', '6565f7cb568f5_1701181387.jpg', 'sophia.wilson@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '707 Cedar St', '08123123132', 2, '2023-12-28 07:17:43', '2023-11-28 07:23:07'),
(13, 'Ethan', 'Moore', 'ethan_moore', 'default_male.jpg', 'ethan.moore@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '808 Elm St', '08123123133', 2, '2023-02-28 07:17:43', '2023-11-28 07:20:12'),
(14, 'Ava', 'Taylor', 'ava_taylor', 'default_female.jpg', 'ava.taylor@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '909 Maple St', '08123123134', 2, '2023-03-28 07:17:43', '2023-11-28 07:20:16'),
(15, 'Mason', 'White', 'mason_white', 'default_male.jpg', 'mason.white@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '1010 Birch St', '08123123135', 2, '2023-03-28 07:17:43', '2023-11-28 07:20:25'),
(16, 'Isabella', 'Clark', 'isabella_clark', 'default_female.jpg', 'isabella.clark@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '1111 Pine St', '08123123136', 2, '2023-04-28 07:17:43', '2023-11-28 07:20:33'),
(17, 'Noah', 'Hall', 'noah_hall', 'default_male.jpg', 'noah.hall@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '1212 Oak St', '08123123137', 2, '2023-06-28 07:17:43', '2023-11-28 07:20:37'),
(18, 'Emma', 'Lewis', 'emma_lewis', 'default_female.jpg', 'emma.lewis@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '1313 Cedar St', '08123123138', 2, '2023-07-28 07:17:43', '2023-11-28 07:20:45'),
(19, 'Liam', 'Harris', 'liam_harris', 'default_male.jpg', 'liam.harris@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '1414 Elm St', '08123123139', 2, '2023-07-28 07:17:43', '2023-11-28 07:20:48'),
(20, 'Olivia', 'Scott', 'olivia_scott', 'default_female.jpg', 'olivia.scott@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '1515 Maple St', '08123123140', 2, '2023-08-28 07:17:43', '2023-11-28 07:20:52'),
(21, 'Elijah', 'Carter', 'elijah_carter', 'default_male.jpg', 'elijah.carter@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '1616 Birch St', '08123123141', 2, '2023-08-28 07:17:43', '2023-11-28 07:20:56'),
(22, 'Ava', 'Turner', 'ava_turner', 'default_female.jpg', 'ava.turner@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '1717 Pine St', '08123123142', 2, '2023-10-28 07:17:43', '2023-11-28 07:21:04'),
(23, 'Logan', 'Cooper', 'logan_cooper', 'default_male.jpg', 'logan.cooper@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Male', '1818 Oak St', '08123123143', 2, '2023-11-28 07:17:43', '2023-11-28 07:17:43'),
(24, 'Charlotte', 'Ward', 'charlotte_ward', 'default_female.jpg', 'charlotte.ward@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '1919 Cedar St', '08123123144', 2, '2023-11-28 07:17:43', '2023-11-28 07:17:43'),
(25, 'Mia', 'Bailey', 'mia_bailey', '6565f7b320fc1_1701181363.jpg', 'mia.bailey@example.com', '$2y$10$KBHwyrQlVD8YYjOJwh/Ze.f8mq/ygHyVZ34FkmO8hVhV7iL4yJAXm', 'Female', '2020 Elm St', '08123123145', 2, '2023-12-28 07:17:43', '2023-11-28 07:22:43'),
(26, 'Operator', 'System', 'operator', 'default_male.jpg', 'default@operator.com', '$2y$10$1KBuJ/LReucPykVghpjV4OsA0XiTKMmI3ma7b0hk1QBWIDq4BWimy', 'Male', 'Jl. Operator', '089123123', 3, '2023-12-04 05:48:42', '2023-12-04 05:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_log_action`
--

CREATE TABLE `user_log_action` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `action` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log_action`
--

INSERT INTO `user_log_action` (`id`, `user_id`, `action`, `created_at`, `updated_at`) VALUES
(1, 1, 'Role \"User\" granted access to menu \"User\"', '2023-11-28 13:46:28', '2023-11-28 13:46:28'),
(2, 1, 'Role \"Administrator\" granted access to menu \"Menu\"', '2023-11-28 13:47:10', '2023-11-28 13:47:10'),
(3, 1, 'Role \"Administrator\" granted access to menu \"Submenu\"', '2023-11-28 13:47:20', '2023-11-28 13:47:20'),
(4, 1, 'Menu \"Log\" has been added!', '2023-11-28 13:49:24', '2023-11-28 13:49:24'),
(5, 1, 'Role \"Administrator\" granted access to menu \"Log\"', '2023-11-28 13:49:32', '2023-11-28 13:49:32'),
(6, 1, 'Submenu \"Action\" has been added!', '2023-11-28 13:49:54', '2023-11-28 13:49:54'),
(7, 1, 'Menu \"Book Master\" has been added!', '2023-11-29 05:37:42', '2023-11-29 05:37:42'),
(8, 1, 'Role \"Administrator\" granted access to menu \"Book Master\"', '2023-11-29 05:38:20', '2023-11-29 05:38:20'),
(9, 1, 'Profile edited!', '2023-11-29 05:38:42', '2023-11-29 05:38:42'),
(10, 1, 'Submenu \"Publisher\" has been added!', '2023-11-29 05:39:41', '2023-11-29 05:39:41'),
(11, 1, 'Submenu \"Book Publisher\" has been changed!', '2023-11-29 05:39:56', '2023-11-29 05:39:56'),
(12, 1, 'Submenu \"Book Author\" has been added!', '2023-11-29 05:40:16', '2023-11-29 05:40:16'),
(13, 1, 'Submenu \"Book Data\" has been added!', '2023-11-29 05:40:35', '2023-11-29 05:40:35'),
(14, 1, 'Submenu \"Book Publisher\" has been changed!', '2023-11-29 05:45:30', '2023-11-29 05:45:30'),
(15, 1, 'Submenu \"Book Publisher\" has been changed!', '2023-11-29 05:46:13', '2023-11-29 05:46:13'),
(16, 1, 'Submenu \"Book Publisher\" has been changed!', '2023-11-29 05:48:04', '2023-11-29 05:48:04'),
(17, 1, 'Menu \"Book Master\" has been change to \"Book\"!', '2023-11-29 05:49:14', '2023-11-29 05:49:14'),
(18, 1, 'Publisher \"Test Publisher\" has been added!', '2023-11-29 06:01:14', '2023-11-29 06:01:14'),
(19, 1, 'Publisher \"Test 2\" has been added!', '2023-11-29 06:05:20', '2023-11-29 06:05:20'),
(20, 1, 'Publisher \"Test\" has been added!', '2023-11-29 06:07:34', '2023-11-29 06:07:34'),
(21, 1, 'Publisher \"Test\" has been change to \"Test 1\"!', '2023-11-29 06:08:00', '2023-11-29 06:08:00'),
(22, 1, 'Publisher \"Test 2\" has been added!', '2023-11-29 06:08:25', '2023-11-29 06:08:25'),
(23, 1, 'Publisher \"Test 3\" has been added!', '2023-11-29 06:08:29', '2023-11-29 06:08:29'),
(24, 1, 'Publisher \"Test 4\" has been added!', '2023-11-29 06:08:33', '2023-11-29 06:08:33'),
(25, 1, 'Publisher \"Test 5\" has been added!', '2023-11-29 06:08:37', '2023-11-29 06:08:37'),
(26, 1, 'Publisher \"Test 5\" has been deleted!', '2023-11-29 06:10:30', '2023-11-29 06:10:30'),
(27, 1, 'Publisher \"Test 1\" has been deleted!', '2023-11-29 06:10:58', '2023-11-29 06:10:58'),
(28, 1, 'Publisher \"Test 2\" has been deleted!', '2023-11-29 06:11:05', '2023-11-29 06:11:05'),
(29, 1, 'Publisher \"Test 3\" has been deleted!', '2023-11-29 06:11:10', '2023-11-29 06:11:10'),
(30, 1, 'Publisher \"Test 4\" has been deleted!', '2023-11-29 06:11:12', '2023-11-29 06:11:12'),
(31, 1, 'Publisher \"R. Sandhika Galih dan Acep Hendra\" has been added!', '2023-11-29 06:11:36', '2023-11-29 06:11:36'),
(32, 1, 'Publisher \"George R. R. Martin\" has been added!', '2023-11-29 06:15:45', '2023-11-29 06:15:45'),
(33, 1, 'Publisher \"J. K. Rowling\" has been added!', '2023-11-29 06:15:57', '2023-11-29 06:15:57'),
(34, 1, 'Submenu \"Book Author\" has been changed!', '2023-11-29 06:19:26', '2023-11-29 06:19:26'),
(35, 1, 'Author \"Test 1\" has been added!', '2023-11-29 06:23:38', '2023-11-29 06:23:38'),
(36, 1, 'Author \"Test 2\" has been added!', '2023-11-29 06:24:36', '2023-11-29 06:24:36'),
(37, 1, 'Author \"Test 3\" has been added!', '2023-11-29 06:24:40', '2023-11-29 06:24:40'),
(38, 1, 'Author \"Test 4\" has been added!', '2023-11-29 06:24:44', '2023-11-29 06:24:44'),
(39, 1, 'Author \"Test 5\" has been added!', '2023-11-29 06:24:48', '2023-11-29 06:24:48'),
(40, 1, 'Author \"Test 5\" has been change to \"Test 5 edit\"!', '2023-11-29 06:27:46', '2023-11-29 06:27:46'),
(41, 1, 'Author \"Test 5 edit\" has been deleted!', '2023-11-29 06:28:31', '2023-11-29 06:28:31'),
(42, 1, 'Author \"Test 4\" has been deleted!', '2023-11-29 06:28:52', '2023-11-29 06:28:52'),
(43, 1, 'Author \"Test 3\" has been deleted!', '2023-11-29 06:28:55', '2023-11-29 06:28:55'),
(44, 1, 'Author \"Test 2\" has been deleted!', '2023-11-29 06:28:58', '2023-11-29 06:28:58'),
(45, 1, 'Author \"Test 1\" has been deleted!', '2023-11-29 06:29:00', '2023-11-29 06:29:00'),
(46, 1, 'Author \"R. Sandhika Galih dan Acep Hendra\" has been added!', '2023-11-29 06:29:26', '2023-11-29 06:29:26'),
(47, 1, 'Author \"George R. R. Martin\" has been added!', '2023-11-29 06:29:34', '2023-11-29 06:29:34'),
(48, 1, 'Author \"J. K. Rowling\" has been added!', '2023-11-29 06:29:41', '2023-11-29 06:29:41'),
(49, 1, 'Publisher \"R. Sandhika Galih dan Acep Hendra\" has been change to \"PT Inovasi Karya Mehendra\"!', '2023-11-29 06:30:08', '2023-11-29 06:30:08'),
(50, 1, 'Publisher \"George R. R. Martin\" has been change to \"Bantam Books\"!', '2023-11-29 06:30:15', '2023-11-29 06:30:15'),
(51, 1, 'Publisher \"J. K. Rowling\" has been change to \"Arthur A. Levine Books an imprint of Scholastic Inc.\"!', '2023-11-29 06:30:22', '2023-11-29 06:30:22'),
(52, 1, 'Submenu \"Book Data\" has been changed!', '2023-11-29 06:33:45', '2023-11-29 06:33:45'),
(53, 1, 'Admin \"admin\" has been added a new book \"DASAR-DASAR PEMROGRAMAN WEB\"', '2023-11-29 10:57:07', '2023-11-29 10:57:07'),
(54, 1, 'Admin \"admin\" has been added a new book \"DASAR-DASAR PEMROGRAMAN WEB\"', '2023-11-29 11:07:07', '2023-11-29 11:07:07'),
(55, 1, 'Admin \"admin\" has been added a new book \"A Game of Thrones\"', '2023-11-29 11:08:53', '2023-11-29 11:08:53'),
(56, 1, 'Admin \"admin\" has been added a new book \"A Game of Thrones\"', '2023-11-29 11:10:04', '2023-11-29 11:10:04'),
(57, 1, 'Admin \"admin\" has been added a new book \"Harry Potter and the Deathly Hallows\"', '2023-11-29 11:11:06', '2023-11-29 11:11:06'),
(58, 1, 'Admin \"admin\" has been added a new book \"Testing\"', '2023-11-29 11:17:28', '2023-11-29 11:17:28'),
(59, 1, 'Publisher \"Erik Robertson\" has been added!', '2023-11-30 05:57:48', '2023-11-30 05:57:48'),
(60, 1, 'Author \"Eric Robertson\" has been added!', '2023-11-30 05:58:19', '2023-11-30 05:58:19'),
(68, 1, 'A new book \"Control Your Mind and Master Your Feelings\" has been added!', '2023-11-30 06:13:34', '2023-11-30 06:13:34'),
(69, 1, 'Book \"Control Your Mind and Master Your Feeling\" has been updated!', '2023-11-30 06:14:52', '2023-11-30 06:14:52'),
(70, 1, 'Book \"Control Your Mind and Master Your Feelings\" has been upadted!', '2023-11-30 06:21:29', '2023-11-30 06:21:29'),
(71, 1, 'Book \"Control Your Mind and Master Your Feelings\" has been change to \"Control Your Mind and Master Your Feeling\"!', '2023-11-30 06:22:23', '2023-11-30 06:22:23'),
(72, 1, 'Book \"Control Your Mind and Master Your Feeling\" has been upadted!', '2023-11-30 06:22:55', '2023-11-30 06:22:55'),
(73, 1, 'Book \"Control Your Mind and Master Your Feeling\" has been change to \"Control Your Mind and Master Your Feelings\"!', '2023-11-30 06:23:50', '2023-11-30 06:23:50'),
(74, 1, 'Book \"Control Your Mind and Master Your Feelings\" has been upadted!', '2023-11-30 06:32:53', '2023-11-30 06:32:53'),
(75, 1, 'Book \"Control Your Mind and Master Your Feelings\" has been upadted!', '2023-11-30 06:33:03', '2023-11-30 06:33:03'),
(76, 1, 'Admin \"admin\" has been deleted book data \"Control Your Mind and Master Your Feelings\"!', '2023-11-30 06:39:02', '2023-11-30 06:39:02'),
(77, 1, 'A new book \"Control Your Mind and Master Your Feelings\" has been added!', '2023-11-30 06:39:43', '2023-11-30 06:39:43'),
(78, 1, 'Admin \"admin\" has been deleted book data \"Control Your Mind and Master Your Feelings\"!', '2023-11-30 06:40:00', '2023-11-30 06:40:00'),
(79, 1, 'A new book \"Control Your Mind and Master Your Feelings\" has been added!', '2023-11-30 06:41:12', '2023-11-30 06:41:12'),
(80, 1, 'Book \"Control Your Mind and Master Your Feelings\" has been upadted!', '2023-11-30 06:41:24', '2023-11-30 06:41:24'),
(81, 1, 'Admin \"admin\" has been deleted book data \"Control Your Mind and Master Your Feelings\"!', '2023-11-30 06:41:30', '2023-11-30 06:41:30'),
(82, 1, 'A new book \"Control Your Mind and Master Your Feelings\" has been added!', '2023-11-30 07:40:55', '2023-11-30 07:40:55'),
(83, 1, 'Publisher \"HarperTrophy\" has been added!', '2023-11-30 08:10:16', '2023-11-30 08:10:16'),
(84, 1, 'Author \"C.S. Lewis\" has been added!', '2023-11-30 08:10:26', '2023-11-30 08:10:26'),
(85, 1, 'A new book \"Prince Caspian (Narnia)\" has been added!', '2023-11-30 08:11:36', '2023-11-30 08:11:36'),
(86, 1, 'Publisher \"Scholastic\" has been added!', '2023-11-30 08:12:23', '2023-11-30 08:12:23'),
(87, 1, 'A new book \"The Chronicles of Narnia (The Chronicles of Narnia)\" has been added!', '2023-11-30 08:13:43', '2023-11-30 08:13:43'),
(88, 1, 'Profile edited!', '2023-11-30 08:15:46', '2023-11-30 08:15:46'),
(89, 1, 'Publisher \"Random House\" has been added!', '2023-11-30 11:50:53', '2023-11-30 11:50:53'),
(90, 1, 'Author \"Mary Tillworth\" has been added!', '2023-11-30 11:51:03', '2023-11-30 11:51:03'),
(91, 1, 'A new book \"Dora\'s puppy, Perrito!\" has been added!', '2023-11-30 11:51:53', '2023-11-30 11:51:53'),
(92, 1, 'Publisher \"MIT Press\" has been added!', '2023-11-30 11:52:34', '2023-11-30 11:52:34'),
(93, 1, 'Author \"Jagdish N. Bhagwati\" has been added!', '2023-11-30 11:52:44', '2023-11-30 11:52:44'),
(94, 1, 'A new book \"The New international economic order\" has been added!', '2023-11-30 11:54:14', '2023-11-30 11:54:14'),
(95, 1, 'Author \"Sonia Sander\" has been added!', '2023-11-30 11:55:27', '2023-11-30 11:55:27'),
(96, 1, 'A new book \"3, 2, 1, liftoff!\" has been added!', '2023-11-30 11:56:31', '2023-11-30 11:56:31'),
(97, 1, 'Publisher \"DC Comics\" has been added!', '2023-11-30 11:57:21', '2023-11-30 11:57:21'),
(98, 1, 'Author \"Art Baltazar\" has been added!', '2023-11-30 11:57:30', '2023-11-30 11:57:30'),
(99, 1, 'A new book \"Tiny Titans\" has been added!', '2023-11-30 11:58:42', '2023-11-30 11:58:42'),
(100, 1, 'Publisher \"Thornes\" has been added!', '2023-11-30 11:59:58', '2023-11-30 11:59:58'),
(101, 1, 'Author \"Hilary Campbell\" has been added!', '2023-11-30 12:00:07', '2023-11-30 12:00:07'),
(102, 1, 'A new book \"Designing patterns\" has been added!', '2023-11-30 12:01:13', '2023-11-30 12:01:13'),
(103, 1, 'Publisher \"Harriman House\" has been added!', '2023-11-30 12:02:14', '2023-11-30 12:02:14'),
(104, 1, 'Author \"Morgan Housel\" has been added!', '2023-11-30 12:02:27', '2023-11-30 12:02:27'),
(105, 1, 'A new book \"The Psychology of Money\" has been added!', '2023-11-30 12:03:14', '2023-11-30 12:03:14'),
(106, 1, 'Menu \"Member\" has been added!', '2023-11-30 12:09:28', '2023-11-30 12:09:28'),
(107, 1, 'Submenu \"List Book\" has been added!', '2023-11-30 12:10:13', '2023-11-30 12:10:13'),
(108, 1, 'Role \"User\" granted access to menu \"Member\"', '2023-11-30 12:10:25', '2023-11-30 12:10:25'),
(109, 1, 'Submenu \"List Book\" has been deleted!', '2023-11-30 12:11:09', '2023-11-30 12:11:09'),
(110, 1, 'Submenu \"Dashboard\" has been added!', '2023-11-30 12:11:38', '2023-11-30 12:11:38'),
(111, 1, 'Submenu \"List Book\" has been added!', '2023-11-30 12:12:04', '2023-11-30 12:12:04'),
(112, 1, 'Publisher \"Test\" has been added!', '2023-12-01 11:29:04', '2023-12-01 11:29:04'),
(113, 1, 'Submenu \"Book Category\" has been added!', '2023-12-03 07:41:30', '2023-12-03 07:41:30'),
(114, 1, 'Category \"Fiction\" has been added!', '2023-12-03 07:51:47', '2023-12-03 07:51:47'),
(115, 1, 'Category \"Motivation\" has been added!', '2023-12-03 07:56:06', '2023-12-03 07:56:06'),
(116, 1, 'Category \"Test\" has been added!', '2023-12-03 07:56:13', '2023-12-03 07:56:13'),
(117, 1, 'Category \"Test\" has been change to \"Test2\"!', '2023-12-03 07:56:28', '2023-12-03 07:56:28'),
(118, 1, 'Category \"Test2\" has been change to \"Test\"!', '2023-12-03 07:56:56', '2023-12-03 07:56:56'),
(119, 1, 'Category \"Test\" has been deleted!', '2023-12-03 07:57:29', '2023-12-03 07:57:29'),
(120, 1, 'Submenu \"Book Data\" has been added!', '2023-12-03 08:08:47', '2023-12-03 08:08:47'),
(121, 1, 'Submenu \"Book Data\" has been deleted!', '2023-12-03 08:08:53', '2023-12-03 08:08:53'),
(122, 1, 'Category \"Fiction\" has been change to \"Education\"!', '2023-12-03 08:09:18', '2023-12-03 08:09:18'),
(123, 1, 'Category \"Fiction\" has been added!', '2023-12-03 08:09:24', '2023-12-03 08:09:24'),
(124, 1, 'Book \"A Game of Thrones\" has been upadted!', '2023-12-03 08:09:35', '2023-12-03 08:09:35'),
(125, 1, 'Book \"A Game of Thrones\" has been upadted!', '2023-12-03 08:10:56', '2023-12-03 08:10:56'),
(126, 1, 'Book \"Harry Potter and the Deathly Hallows\" has been upadted!', '2023-12-03 08:11:08', '2023-12-03 08:11:08'),
(127, 1, 'Book \"Control Your Mind and Master Your Feelings\" has been upadted!', '2023-12-03 08:11:23', '2023-12-03 08:11:23'),
(128, 1, 'Book \"Prince Caspian (Narnia)\" has been upadted!', '2023-12-03 08:11:31', '2023-12-03 08:11:31'),
(129, 1, 'Book \"The Chronicles of Narnia (The Chronicles of Narnia)\" has been upadted!', '2023-12-03 08:11:39', '2023-12-03 08:11:39'),
(130, 1, 'Book \"Dora\'s puppy, Perrito!\" has been upadted!', '2023-12-03 08:11:46', '2023-12-03 08:11:46'),
(131, 1, 'Book \"3, 2, 1, liftoff!\" has been upadted!', '2023-12-03 08:12:02', '2023-12-03 08:12:02'),
(132, 1, 'Book \"Tiny Titans\" has been upadted!', '2023-12-03 08:12:09', '2023-12-03 08:12:09'),
(133, 1, 'A new book \"Read People Like a Book\" has been added!', '2023-12-03 08:14:31', '2023-12-03 08:14:31'),
(134, 1, 'Publisher \"Pkcs Media, Inc.\" has been added!', '2023-12-03 08:15:33', '2023-12-03 08:15:33'),
(135, 1, 'Author \"Patrick King\" has been added!', '2023-12-03 08:16:37', '2023-12-03 08:16:37'),
(136, 1, 'Book \"Read People Like a Book\" has been upadted!', '2023-12-03 08:16:48', '2023-12-03 08:16:48'),
(137, 1, 'Admin \"admin\" has been deleted book data \"Read People Like a Book\"!', '2023-12-03 08:17:04', '2023-12-03 08:17:04'),
(138, 1, 'Book \"The New international economic order\" has been upadted!', '2023-12-03 10:12:00', '2023-12-03 10:12:00'),
(139, 1, 'Book \"Designing patterns\" has been upadted!', '2023-12-03 10:12:40', '2023-12-03 10:12:40'),
(140, 1, 'Category \"Test\" has been added!', '2023-12-03 14:33:43', '2023-12-03 14:33:43'),
(141, 1, 'Menu \"Status\" has been added!', '2023-12-03 15:00:20', '2023-12-03 15:00:20'),
(142, 1, 'Submenu \"Borrow\" has been added!', '2023-12-03 15:00:37', '2023-12-03 15:00:37'),
(143, 1, 'Role \"Administrator\" granted access to menu \"Status\"', '2023-12-03 15:00:46', '2023-12-03 15:00:46'),
(144, 1, 'Submenu \"Status Borrow\" has been changed!', '2023-12-03 15:02:07', '2023-12-03 15:02:07'),
(145, 1, 'Submenu \"List Status\" has been changed!', '2023-12-03 15:05:02', '2023-12-03 15:05:02'),
(146, 1, 'Status \"Pending\" has been added!', '2023-12-03 15:12:10', '2023-12-03 15:12:10'),
(147, 1, 'Status \"Rejected\" has been added!', '2023-12-03 15:12:24', '2023-12-03 15:12:24'),
(148, 1, 'Status \"Accepted\" has been added!', '2023-12-03 15:12:28', '2023-12-03 15:12:28'),
(149, 1, 'Status \"Test\" has been added!', '2023-12-03 15:12:35', '2023-12-03 15:12:35'),
(150, 1, 'Status \"Test\" has been deleted!', '2023-12-03 15:15:25', '2023-12-03 15:15:25'),
(151, 1, 'Status \"Testing\" has been added!', '2023-12-03 15:15:43', '2023-12-03 15:15:43'),
(152, 1, 'Status \"Testing\" has been change to \"Test\"!', '2023-12-03 15:15:48', '2023-12-03 15:15:48'),
(153, 1, 'Status \"Test\" has been deleted!', '2023-12-03 15:15:57', '2023-12-03 15:15:57'),
(154, 1, 'Category \"Test\" has been deleted!', '2023-12-04 04:59:42', '2023-12-04 04:59:42'),
(155, 2, 'Borrowed new book \"3, 2, 1, liftoff!\"!', '2023-12-04 05:03:17', '2023-12-04 05:03:17'),
(156, 1, 'Submenu \"List Borrow\" has been added!', '2023-12-04 05:17:57', '2023-12-04 05:17:57'),
(157, 1, 'Submenu \"List Return\" has been added!', '2023-12-04 05:18:26', '2023-12-04 05:18:26'),
(158, 1, 'Menu \"Request\" has been added!', '2023-12-04 05:38:18', '2023-12-04 05:38:18'),
(159, 1, 'Submenu \"Request Borrow\" has been added!', '2023-12-04 05:38:59', '2023-12-04 05:38:59'),
(160, 1, 'Role \"Administrator\" granted access to menu \"Request\"', '2023-12-04 05:39:04', '2023-12-04 05:39:04'),
(161, 1, 'Submenu \"Request Return\" has been added!', '2023-12-04 05:39:34', '2023-12-04 05:39:34'),
(162, 1, 'Role \"Operator\" has been added!', '2023-12-04 05:46:03', '2023-12-04 05:46:03'),
(163, 1, 'Role \"Operator\" granted access to menu \"User\"', '2023-12-04 05:46:18', '2023-12-04 05:46:18'),
(164, 1, 'Role \"Operator\" granted access to menu \"Book\"', '2023-12-04 05:46:56', '2023-12-04 05:46:56'),
(165, 1, 'Role \"Operator\" granted access to menu \"Request\"', '2023-12-04 05:47:05', '2023-12-04 05:47:05'),
(166, 1, 'Role \"Administrator\" granted no access to menu \"Book\"', '2023-12-04 05:47:15', '2023-12-04 05:47:15'),
(167, 1, 'Role \"Administrator\" granted no access to menu \"Request\"', '2023-12-04 05:47:19', '2023-12-04 05:47:19'),
(168, 1, 'Admin \"admin\" has been change user data \"operator\"!', '2023-12-04 05:49:15', '2023-12-04 05:49:15'),
(169, 1, 'Menu \"Operator\" has been added!', '2023-12-04 05:53:03', '2023-12-04 05:53:03'),
(170, 1, 'Role \"Operator\" granted access to menu \"Operator\"', '2023-12-04 05:53:09', '2023-12-04 05:53:09'),
(171, 1, 'Submenu \"Dashboard\" has been added!', '2023-12-04 05:53:34', '2023-12-04 05:53:34'),
(172, 2, 'Profile edited!', '2023-12-04 07:05:43', '2023-12-04 07:05:43'),
(173, 26, 'Operator has been accepted borrow!', '2023-12-04 17:46:20', '2023-12-04 17:46:20'),
(174, 26, 'Operator has been accepted borrow!', '2023-12-04 17:47:15', '2023-12-04 17:47:15'),
(175, 26, 'Operator has been rejected borrow!', '2023-12-04 17:48:01', '2023-12-04 17:48:01'),
(176, 26, 'Operator has been rejected borrow!', '2023-12-04 17:48:15', '2023-12-04 17:48:15'),
(177, 2, 'Borrowed new book \"Harry Potter and the Deathly Hallows\"!', '2023-12-04 17:55:41', '2023-12-04 17:55:41'),
(178, 1, 'Role \"Operator\" granted access to menu \"Log\"', '2023-12-04 18:01:58', '2023-12-04 18:01:58'),
(179, 1, 'Role \"Administrator\" granted access to menu \"Book\"', '2023-12-05 18:11:14', '2023-12-05 18:11:14'),
(180, 1, 'Role \"Administrator\" granted access to menu \"Request\"', '2023-12-05 18:11:18', '2023-12-05 18:11:18'),
(181, 2, 'Borrowed new book \"Harry Potter and the Deathly Hallows\"!', '2023-12-05 18:17:37', '2023-12-05 18:17:37'),
(182, 1, 'Operator has been accepted borrow!', '2023-12-05 18:23:58', '2023-12-05 18:23:58'),
(183, 1, 'Status \"Borrowed\" has been added!', '2023-12-05 18:36:11', '2023-12-05 18:36:11'),
(184, 1, 'Status \"Returned\" has been added!', '2023-12-05 18:36:15', '2023-12-05 18:36:15'),
(185, 1, 'Status \"Request Return\" has been added!', '2023-12-05 18:46:44', '2023-12-05 18:46:44'),
(186, 2, 'Borrowed new book \"3, 2, 1, liftoff!\"!', '2023-12-05 18:47:31', '2023-12-05 18:47:31'),
(187, 1, 'Operator has been accepted borrow!', '2023-12-05 18:47:46', '2023-12-05 18:47:46'),
(188, 2, 'Borrowed new book \"Designing patterns\"!', '2023-12-05 19:09:29', '2023-12-05 19:09:29'),
(189, 1, 'Operator has been accepted borrow!', '2023-12-05 19:09:51', '2023-12-05 19:09:51'),
(190, 2, 'Request return borrowed book successfully!', '2023-12-06 07:59:17', '2023-12-06 07:59:17'),
(191, 2, 'Request return borrowed book successfully!', '2023-12-06 10:32:08', '2023-12-06 10:32:08'),
(192, 1, 'Operator has been verify request return!', '2023-12-07 05:35:58', '2023-12-07 05:35:58'),
(193, 1, 'Operator has been verify request return!', '2023-12-07 05:40:37', '2023-12-07 05:40:37'),
(194, 26, 'Publisher \"Gramedia Pustaka Utama\" has been added!', '2023-12-07 05:45:35', '2023-12-07 05:45:35'),
(195, 26, 'Author \"Tere Liye\" has been added!', '2023-12-07 05:45:58', '2023-12-07 05:45:58'),
(196, 26, 'Category \"Romance\" has been added!', '2023-12-07 05:47:12', '2023-12-07 05:47:12'),
(197, 26, 'A new book \"Hujan\" has been added!', '2023-12-07 05:48:16', '2023-12-07 05:48:16'),
(198, 26, 'Publisher \"Prentice-Hall\" has been added!', '2023-12-07 05:53:18', '2023-12-07 05:53:18'),
(199, 26, 'Author \"Brian W. Kernighan, Dennis MacAlistair Ritchie, B. W. Kernighan, Ritchie Kernighan, Kernighan, Ritchie, and Dennis M. Ritchi\" has been added!', '2023-12-07 05:53:27', '2023-12-07 05:53:27'),
(200, 26, 'A new book \"The C programming language\" has been added!', '2023-12-07 05:54:39', '2023-12-07 05:54:39'),
(201, 26, 'Publisher \"Independently Published\" has been added!', '2023-12-07 05:56:26', '2023-12-07 05:56:26'),
(202, 26, 'Author \"Programming Languages Project\" has been added!', '2023-12-07 05:56:48', '2023-12-07 05:56:48'),
(203, 26, 'A new book \"Python Data Science\" has been added!', '2023-12-07 05:58:01', '2023-12-07 05:58:01'),
(204, 26, 'Author \"Motivation Diary\" has been added!', '2023-12-07 05:59:33', '2023-12-07 05:59:33'),
(205, 26, 'A new book \"Live Your DREAMS Whatever They May Be ...\" has been added!', '2023-12-07 06:00:41', '2023-12-07 06:00:41'),
(206, 26, 'Book \"Live Your DREAMS Whatever They May Be ...\" has been upadted!', '2023-12-07 06:00:58', '2023-12-07 06:00:58'),
(207, 26, 'Author \"Raymond Gething\" has been added!', '2023-12-07 06:02:23', '2023-12-07 06:02:23'),
(208, 26, 'A new book \"Motivation Noteook\" has been added!', '2023-12-07 06:03:02', '2023-12-07 06:03:02'),
(209, 26, 'Publisher \"Elsevier Science &amp; Technology Books\" has been added!', '2023-12-07 06:05:17', '2023-12-07 06:05:17'),
(210, 26, 'Author \"Brian H. Ross\" has been added!', '2023-12-07 06:05:24', '2023-12-07 06:05:24'),
(211, 26, 'A new book \"Psychology of Learning and Motivation\" has been added!', '2023-12-07 06:06:49', '2023-12-07 06:06:49'),
(212, 26, 'Book \"Psychology of Learning and Motivation\" has been upadted!', '2023-12-07 06:07:03', '2023-12-07 06:07:03'),
(213, 26, 'Publisher \"Academic Press\" has been added!', '2023-12-07 06:08:02', '2023-12-07 06:08:02'),
(214, 26, 'A new book \"The psychology of learning and motivation\" has been added!', '2023-12-07 06:09:02', '2023-12-07 06:09:02'),
(215, 26, 'Publisher \"Pearson/Allyn &amp; Bacon\" has been added!', '2023-12-07 06:11:01', '2023-12-07 06:11:01'),
(216, 26, 'Author \"Lambert Deckers\" has been added!', '2023-12-07 06:11:19', '2023-12-07 06:11:19'),
(217, 26, 'A new book \"Motivation\" has been added!', '2023-12-07 06:12:57', '2023-12-07 06:12:57'),
(218, 26, 'Publisher \"Center Point Large Print, 2023\" has been added!', '2023-12-07 06:17:21', '2023-12-07 06:17:21'),
(219, 26, 'Author \"Lucy Score\" has been added!', '2023-12-07 06:17:35', '2023-12-07 06:17:35'),
(220, 26, 'A new book \"Things We Never Got Over\" has been added!', '2023-12-07 06:19:12', '2023-12-07 06:19:12'),
(221, 26, 'Book \"Things We Never Got Over\" has been upadted!', '2023-12-07 06:22:38', '2023-12-07 06:22:38'),
(222, 26, 'Book \"Things We Never Got Over\" has been upadted!', '2023-12-07 06:25:25', '2023-12-07 06:25:25'),
(223, 26, 'Publisher \"Penguin Publishing Group, 2021\" has been added!', '2023-12-07 06:27:14', '2023-12-07 06:27:14'),
(224, 26, 'Author \"Emily Henry\" has been added!', '2023-12-07 06:27:21', '2023-12-07 06:27:21'),
(225, 26, 'A new book \"People We Meet on Vacation\" has been added!', '2023-12-07 06:28:50', '2023-12-07 06:28:50'),
(226, 26, 'Publisher \"Penguin Young Readers Group, 2023\" has been added!', '2023-12-07 06:30:00', '2023-12-07 06:30:00'),
(227, 26, 'Author \"Ali Hazelwood\" has been added!', '2023-12-07 06:30:11', '2023-12-07 06:30:11'),
(228, 26, 'A new book \"Check &amp; Mate\" has been added!', '2023-12-07 06:31:14', '2023-12-07 06:31:14'),
(229, 26, 'Publisher \"Penguin, 2022\" has been added!', '2023-12-07 06:34:05', '2023-12-07 06:34:05'),
(230, 26, 'A new book \"Love on the Brain\" has been added!', '2023-12-07 06:35:13', '2023-12-07 06:35:13'),
(231, 26, 'Publisher \"Penguin Publishing Group, 2023\" has been added!', '2023-12-07 06:36:32', '2023-12-07 06:36:32'),
(232, 26, 'Author \"Ashley Herring Blake\" has been added!', '2023-12-07 06:36:42', '2023-12-07 06:36:42'),
(233, 26, 'A new book \"Iris Kelly Doesn\'t Date\" has been added!', '2023-12-07 06:37:58', '2023-12-07 06:37:58'),
(234, 26, 'Book \"Iris Kelly Doesn\'t Date\" has been upadted!', '2023-12-07 06:38:56', '2023-12-07 06:38:56'),
(235, 26, 'Book \"Love on the Brain\" has been upadted!', '2023-12-07 06:39:44', '2023-12-07 06:39:44'),
(236, 26, 'Book \"Check &amp; Mate\" has been change to \"Check &amp;amp; Mate\"!', '2023-12-07 06:40:43', '2023-12-07 06:40:43'),
(237, 26, 'Book \"People We Meet on Vacation\" has been upadted!', '2023-12-07 06:41:46', '2023-12-07 06:41:46'),
(238, 26, 'Book \"Things We Never Got Over\" has been upadted!', '2023-12-07 06:42:24', '2023-12-07 06:42:24'),
(239, 2, 'Borrowed new book \"Iris Kelly Doesn\'t Date\"!', '2023-12-08 08:52:02', '2023-12-08 08:52:02'),
(240, 1, 'Operator has been rejected borrow!', '2023-12-08 08:53:50', '2023-12-08 08:53:50'),
(241, 2, 'Borrowed new book \"Iris Kelly Doesn\'t Date\"!', '2023-12-08 08:54:23', '2023-12-08 08:54:23'),
(242, 1, 'Operator has been accepted borrow!', '2023-12-08 08:54:45', '2023-12-08 08:54:45'),
(243, 2, 'Request return borrowed book successfully!', '2023-12-08 08:55:46', '2023-12-08 08:55:46'),
(244, 1, 'Operator has been verify request return!', '2023-12-08 09:02:03', '2023-12-08 09:02:03'),
(245, 2, 'Borrowed new book \"Iris Kelly Doesn\'t Date\"!', '2023-12-08 09:22:42', '2023-12-08 09:22:42'),
(246, 1, 'Operator has been accepted borrow!', '2023-12-08 09:22:55', '2023-12-08 09:22:55'),
(247, 2, 'Request return borrowed book successfully!', '2023-12-08 09:23:06', '2023-12-08 09:23:06'),
(248, 1, 'Operator has been verify request return!', '2023-12-08 09:32:14', '2023-12-08 09:32:14'),
(249, 2, 'Borrowed new book \"DASAR-DASAR PEMROGRAMAN WEB\"!', '2023-12-08 10:04:31', '2023-12-08 10:04:31'),
(250, 1, 'Operator has been accepted borrow!', '2023-12-08 10:04:47', '2023-12-08 10:04:47'),
(251, 2, 'Request return borrowed book successfully!', '2023-12-08 10:05:26', '2023-12-08 10:05:26'),
(252, 1, 'Operator has been verify request return!', '2023-12-08 10:05:40', '2023-12-08 10:05:40'),
(253, 1, 'Menu \"Test\" has been added!', '2023-12-08 15:33:50', '2023-12-08 15:33:50'),
(254, 1, 'Role \"Administrator\" granted access to menu \"Test\"', '2023-12-08 15:34:31', '2023-12-08 15:34:31'),
(255, 1, 'Submenu \"Testing Submenu\" has been added!', '2023-12-08 15:35:12', '2023-12-08 15:35:12'),
(256, 1, 'Role \"Administrator\" granted no access to menu \"Test\"', '2023-12-08 15:39:27', '2023-12-08 15:39:27'),
(257, 1, 'Role \"Administrator\" granted access to menu \"Test\"', '2023-12-08 15:40:25', '2023-12-08 15:40:25'),
(258, 1, 'Role \"Administrator\" granted no access to menu \"Test\"', '2023-12-08 15:41:31', '2023-12-08 15:41:31'),
(259, 1, 'Submenu \"Testing Submenu\" has been deleted!', '2023-12-08 15:41:51', '2023-12-08 15:41:51'),
(260, 1, 'Menu \"Test\" has been deleted!', '2023-12-08 15:42:08', '2023-12-08 15:42:08'),
(261, 2, 'Borrowed new book \"Love on the Brain\"!', '2023-12-08 15:57:12', '2023-12-08 15:57:12'),
(262, 1, 'Operator has been accepted borrow!', '2023-12-08 15:57:46', '2023-12-08 15:57:46'),
(263, 2, 'Request return borrowed book successfully!', '2023-12-08 15:58:03', '2023-12-08 15:58:03'),
(264, 1, 'Operator has been verify request return!', '2023-12-08 15:58:48', '2023-12-08 15:58:48'),
(265, 2, 'Borrowed new book \"The Chronicles of Narnia (The Chronicles of Narnia)\"!', '2023-12-11 07:17:02', '2023-12-11 07:17:02'),
(266, 26, 'Operator has been accepted borrow!', '2023-12-11 07:17:12', '2023-12-11 07:17:12'),
(267, 2, 'Borrowed new book \"The Psychology of Money\"!', '2023-12-11 07:25:01', '2023-12-11 07:25:01'),
(268, 26, 'Operator has been accepted borrow!', '2023-12-11 07:26:32', '2023-12-11 07:26:32'),
(269, 2, 'Borrowed new book \"The C programming language\"!', '2023-12-11 07:35:36', '2023-12-11 07:35:36'),
(270, 26, 'Operator has been accepted borrow!', '2023-12-11 07:43:34', '2023-12-11 07:43:34'),
(271, 2, 'Request return borrowed book successfully!', '2023-12-11 07:44:24', '2023-12-11 07:44:24'),
(272, 26, 'Operator has been verify request return!', '2023-12-11 07:44:39', '2023-12-11 07:44:39'),
(273, 2, 'Request return borrowed book successfully!', '2023-12-11 08:44:55', '2023-12-11 08:44:55'),
(274, 26, 'Operator has been verify request return!', '2023-12-11 08:45:11', '2023-12-11 08:45:11'),
(275, 2, 'Request return borrowed book successfully!', '2023-12-11 08:45:46', '2023-12-11 08:45:46'),
(276, 26, 'Operator has been verify request return!', '2023-12-11 08:45:56', '2023-12-11 08:45:56'),
(277, 2, 'Borrowed new book \"Hujan\"!', '2023-12-11 08:51:54', '2023-12-11 08:51:54'),
(278, 26, 'Operator has been accepted borrow!', '2023-12-11 08:52:17', '2023-12-11 08:52:17'),
(279, 2, 'Request return borrowed book successfully!', '2023-12-11 08:52:40', '2023-12-11 08:52:40'),
(280, 26, 'Operator has been verify request return!', '2023-12-11 08:53:15', '2023-12-11 08:53:15'),
(281, 2, 'Borrowed new book \"Tiny Titans\"!', '2023-12-11 08:55:04', '2023-12-11 08:55:04'),
(282, 26, 'Operator has been accepted borrow!', '2023-12-11 08:55:33', '2023-12-11 08:55:33'),
(283, 2, 'Request return borrowed book successfully!', '2023-12-11 08:56:53', '2023-12-11 08:56:53'),
(284, 26, 'Operator has been verify request return!', '2023-12-11 08:57:08', '2023-12-11 08:57:08'),
(285, 2, 'Borrowed new book \"Check & Mate\"!', '2023-12-11 08:57:51', '2023-12-11 08:57:51'),
(286, 26, 'Operator has been accepted borrow!', '2023-12-11 08:58:10', '2023-12-11 08:58:10'),
(287, 2, 'Request return borrowed book successfully!', '2023-12-11 09:06:18', '2023-12-11 09:06:18'),
(288, 26, 'Operator has been verify request return!', '2023-12-11 09:07:36', '2023-12-11 09:07:36'),
(289, 2, 'Borrowed new book \"People We Meet on Vacation\"!', '2023-12-11 09:23:47', '2023-12-11 09:23:47'),
(290, 26, 'Operator has been accepted borrow!', '2023-12-11 09:24:24', '2023-12-11 09:24:24'),
(291, 2, 'Request return borrowed book successfully!', '2023-12-11 09:26:17', '2023-12-11 09:26:17'),
(292, 26, 'Operator has been verify request return!', '2023-12-11 09:26:43', '2023-12-11 09:26:43'),
(293, 2, 'Borrowed new book \"Harry Potter and the Deathly Hallows\"!', '2023-12-11 09:27:27', '2023-12-11 09:27:27'),
(294, 26, 'Operator has been accepted borrow!', '2023-12-11 09:27:42', '2023-12-11 09:27:42'),
(295, 2, 'Request return borrowed book successfully!', '2023-12-11 09:29:56', '2023-12-11 09:29:56'),
(296, 26, 'Operator has been verify request return!', '2023-12-11 09:30:18', '2023-12-11 09:30:18'),
(297, 2, 'Borrowed new book \"Python Data Science\"!', '2023-12-11 09:31:25', '2023-12-11 09:31:25'),
(298, 26, 'Operator has been accepted borrow!', '2023-12-11 09:31:40', '2023-12-11 09:31:40'),
(299, 2, 'Request return borrowed book successfully!', '2023-12-11 09:32:29', '2023-12-11 09:32:29'),
(300, 26, 'Operator has been verify request return!', '2023-12-11 09:32:48', '2023-12-11 09:32:48'),
(301, 1, 'Role \"Administrator\" granted access to menu \"Member\"', '2023-12-11 09:36:11', '2023-12-11 09:36:11'),
(302, 1, 'Role \"Administrator\" granted no access to menu \"Member\"', '2023-12-11 09:36:35', '2023-12-11 09:36:35'),
(303, 2, 'Borrowed new book \"Iris Kelly Doesn\'t Date\"!', '2023-12-11 09:54:34', '2023-12-11 09:54:34'),
(304, 1, 'Operator has been accepted borrow!', '2023-12-11 09:56:02', '2023-12-11 09:56:02'),
(305, 2, 'Request return borrowed book successfully!', '2023-12-11 09:57:42', '2023-12-11 09:57:42'),
(306, 1, 'Operator has been verify request return!', '2023-12-11 09:58:05', '2023-12-11 09:58:05'),
(307, 25, 'Borrowed new book \"Check & Mate\"!', '2023-12-11 10:02:14', '2023-12-11 10:02:14'),
(308, 26, 'Operator has been accepted borrow!', '2023-12-11 10:02:57', '2023-12-11 10:02:57'),
(309, 25, 'Request return borrowed book successfully!', '2023-12-11 10:05:53', '2023-12-11 10:05:53'),
(310, 26, 'Operator has been verify request return!', '2023-12-11 10:06:15', '2023-12-11 10:06:15'),
(311, 25, 'Borrowed new book \"3, 2, 1, liftoff!\"!', '2023-12-11 10:08:10', '2023-12-11 10:08:10'),
(312, 26, 'Operator has been accepted borrow!', '2023-12-11 10:08:19', '2023-12-11 10:08:19'),
(313, 25, 'Borrowed new book \"The Psychology of Money\"!', '2023-12-11 10:15:45', '2023-12-11 10:15:45'),
(314, 26, 'Operator has been accepted borrow!', '2023-12-11 10:16:10', '2023-12-11 10:16:10'),
(316, 25, 'Request return borrowed book \"3, 2, 1, liftoff!\" successfully!', '2023-12-11 10:18:35', '2023-12-11 10:18:35'),
(317, 25, 'Request return borrowed book \"The Psychology of Money\" successfully!', '2023-12-11 10:20:18', '2023-12-11 10:20:18'),
(318, 26, 'Operator has been verify request return!', '2023-12-11 10:21:08', '2023-12-11 10:21:08'),
(319, 26, 'Operator has been verify request return!', '2023-12-11 10:21:15', '2023-12-11 10:21:15'),
(320, 25, 'Borrowed new book \"Iris Kelly Doesn\'t Date\"!', '2023-12-11 10:31:11', '2023-12-11 10:31:11'),
(321, 26, 'Operator has been rejected borrow!', '2023-12-11 10:31:52', '2023-12-11 10:31:52'),
(322, 1, 'Role \"User\" has been change to \"Member\"', '2023-12-11 14:41:58', '2023-12-11 14:41:58'),
(323, 1, 'Role \"Member\" has been change to \"User\"', '2023-12-11 14:43:18', '2023-12-11 14:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int NOT NULL,
  `menu` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-11-28 13:38:54', '2023-11-28 13:38:54'),
(2, 'User', '2023-11-28 13:38:54', '2023-11-28 13:38:54'),
(3, 'Menu', '2023-11-28 13:41:25', '2023-11-28 13:41:25'),
(4, 'Submenu', '2023-11-28 13:41:25', '2023-11-28 13:41:25'),
(5, 'Log', '2023-11-28 13:49:24', '2023-11-28 13:49:24'),
(6, 'Book', '2023-11-29 05:37:41', '2023-11-29 05:49:14'),
(7, 'Member', '2023-11-30 12:09:28', '2023-11-30 12:09:28'),
(8, 'Status', '2023-12-03 15:00:20', '2023-12-03 15:00:20'),
(9, 'Request', '2023-12-04 05:38:18', '2023-12-04 05:38:18'),
(10, 'Operator', '2023-12-04 05:53:03', '2023-12-04 05:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2023-11-28 13:38:01', '2023-11-28 13:38:01'),
(2, 'User', '2023-11-28 13:38:01', '2023-12-11 14:43:18'),
(3, 'Operator', '2023-12-04 05:46:03', '2023-12-04 05:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `title`, `url`, `icon`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'admin', 'bi bi-grid-fill', 1, '2023-11-28 13:39:24', '2023-11-28 13:39:24'),
(2, 'Role Access', 'admin/role', 'fas fa-fw fa-user-tie', 1, '2023-11-28 13:42:18', '2023-11-28 13:42:18'),
(3, 'User Data', 'admin/user_data', 'fas fa-fw fa-users', 1, '2023-11-28 13:43:11', '2023-11-28 13:43:11'),
(4, 'My Profile', 'user', 'bi bi-person-vcard', 2, '2023-11-28 13:44:47', '2023-11-28 13:44:47'),
(5, 'Change Password', 'user/change_password', 'bi bi-key', 2, '2023-11-28 13:45:36', '2023-11-28 13:45:36'),
(6, 'Menu Management', 'menu', 'bi bi-folder2', 3, '2023-11-28 13:48:10', '2023-11-28 13:48:10'),
(7, 'Submenu Management', 'submenu', 'bi bi-folder2-open', 4, '2023-11-28 13:48:59', '2023-11-28 13:48:59'),
(8, 'Action', 'log', 'bi bi-book', 5, '2023-11-28 13:49:54', '2023-11-28 13:49:54'),
(9, 'Book Publisher', 'book', 'bi bi-person-vcard', 6, '2023-11-29 05:39:41', '2023-11-29 05:48:04'),
(10, 'Book Author', 'book/book_author', 'fas fa-fw fa-user', 6, '2023-11-29 05:40:16', '2023-11-29 06:19:26'),
(13, 'Dashboard', 'member', 'bi bi-grid-fill', 7, '2023-11-30 12:11:38', '2023-11-30 12:11:38'),
(14, 'List Book', 'member/list_book', 'bi bi-book', 7, '2023-11-30 12:12:04', '2023-11-30 12:12:04'),
(15, 'Book Category', 'book/book_category', 'fas fa-fw fa-tag', 6, '2023-12-03 07:41:30', '2023-12-03 07:41:30'),
(16, 'Book Data', 'book/book_data', 'bi bi-book', 6, '2023-12-03 08:08:47', '2023-12-03 08:08:47'),
(17, 'List Status', 'status', 'bi bi-book', 8, '2023-12-03 15:00:37', '2023-12-03 15:05:02'),
(18, 'List Borrow', 'member/list_borrow', 'fas fa-fw fa-download', 7, '2023-12-04 05:17:57', '2023-12-04 05:17:57'),
(19, 'List Return', 'member/list_return', 'fas fa-fw fa-upload', 7, '2023-12-04 05:18:26', '2023-12-04 05:18:26'),
(20, 'Request Borrow', 'request', 'fas fa-fw fa-download', 9, '2023-12-04 05:38:58', '2023-12-04 05:38:58'),
(21, 'Request Return', 'request/return', 'fas fa-fw fa-upload', 9, '2023-12-04 05:39:34', '2023-12-04 05:39:34'),
(22, 'Dashboard', 'operator', 'bi bi-grid-fill', 10, '2023-12-04 05:53:33', '2023-12-04 05:53:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_data`
--
ALTER TABLE `book_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_publisher`
--
ALTER TABLE `book_publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_borrow`
--
ALTER TABLE `transaction_borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_return`
--
ALTER TABLE `transaction_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log_action`
--
ALTER TABLE `user_log_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_author`
--
ALTER TABLE `book_author`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book_data`
--
ALTER TABLE `book_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `book_publisher`
--
ALTER TABLE `book_publisher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_borrow`
--
ALTER TABLE `transaction_borrow`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transaction_return`
--
ALTER TABLE `transaction_return`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_log_action`
--
ALTER TABLE `user_log_action`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
