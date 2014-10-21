-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2014 at 08:19 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
`comment_id` int(10) unsigned NOT NULL,
  `comment_text` text NOT NULL,
  `comment_author` varchar(50) NOT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_author`, `comment_created`, `post_id`) VALUES
(1, 'Thanks for expressing your thoughts. Door-to-door marketing can be effective too in many cases, especially when there’s a tradition in doing it properly. In my personal opinion, a business blog can bring a lot of advantages too, but one has to evaluate if their business could benefit from it. I wish you good luck.', 'Anonymouse', '2014-09-10 11:39:47', 1),
(13, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.', 'Anonymouse', '2014-10-20 05:50:25', 1),
(14, 'Lorem Ipsum, giving information on its origins, as', 'Anonymouse', '2014-10-20 06:09:57', 1),
(15, 'You mention here some great points that’s highlights the important of a business website blog. Currently, i’m working as Online Marketing Executive for a local software company. But they mostly believe in traditional marketing (Door-to-Door Marketing) and they believe traditional marketing is the best.', 'Anonymouse', '2014-10-20 06:20:03', 4),
(17, 'she was very young Milk Ushijima saw a calf being born on television and was greatly moved. Now she''s enrolled in Toto School of Veterinary Medicine, and she thought her campus life was going to begin, but unfortunately... it turns out she''s a complete airhead! She''s a - ', 'lilleke', '2014-10-20 06:39:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(10) unsigned NOT NULL,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'Top Five Things to Learn from the Greggs vs Google Twitter Debacle', 'This is a guest contribution from Mark Potter. Greggs is the UK’s largest bakery chain, famed for its sausage rolls and steak bakes. They have always enjoyed a strong social media presence, winning a Digital Impact Award in 2013 for a ‘Sandwich Maker’ Facebook app. As a relatively low-budget food chain, they are a popular', '2014-09-04 11:42:53', 1),
(2, 'Be a Better Blogger by Doing as Little as Possible', 'When you make the decision to grow your blog and hopefully create an income from it, it can be so easy to fall into the trap of doing everything all at once in the name of getting as much exposure as you can. You’re blogging every day, you’re promoting those posts to your Facebook, Twitter', '2014-09-04 11:42:59', 1),
(4, 'How Blogging In College Got Me My First Job', 'This is a guest contribution from PR specialist Caitlin Dodds. I remember sitting alone in the airport with three hours to kill before my flight to Madrid. Squirming on the hard plastic chairs at my boarding gate with my laptop perched on my knees, I typed my first post on my new study abroad blog', '2014-09-17 13:13:58', 1),
(5, 'Your Blog as Part of an Overarching Business Strategy', 'This is a guest contribution from Sabina Stoiciu. So you have a business blog (you DO have a blog for your business, yes?). Well it’s a great decision, and a decision that is growing in popularity. In a 2012 HubSpot study, 62% of respondents claimed to run a company blog. A number which has consistently grown', '2014-09-17 13:47:42', 1),
(8, '10 Things I Wish I Knew About Blogging: Webinar', 'In 2002 I stumbled upon an article about ‘Blogging’. I didn’t know it at the time but that moment changed my life. Read more about Darren or contact him. Connect with me on Twitter at , Facebook, Google+ and LinkedIn', '2014-09-22 12:31:13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(1, 1),
(2, 5),
(4, 5),
(5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
`tag_id` int(10) unsigned NOT NULL,
  `tag_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'lillepood'),
(4, 'Test'),
(5, 'technology'),
(8, 'flower');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) unsigned NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'demo', 'demo', 0),
(3, 'lilleke', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`comment_id`), ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
 ADD PRIMARY KEY (`post_id`,`tag_id`), ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `post` (`post_id`);
SET FOREIGN_KEY_CHECKS=1;
