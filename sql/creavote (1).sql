-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 juin 2025 à 13:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `creavote`
--

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `user_id` varchar(26) NOT NULL,
  `offer_id` varchar(26) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `applications`
--

INSERT INTO `applications` (`application_id`, `user_id`, `offer_id`, `applied_at`) VALUES
(1, 'usr684cbbf217144', 'off2', '2025-06-14 00:24:01'),
(2, 'usr684cbbf217144', 'off1', '2025-06-14 00:27:51'),
(3, 'usr684cc3422b4c0', 'off1', '2025-06-14 00:33:11'),
(4, 'usr684cc3422b4c0', 'off2', '2025-06-15 10:00:49'),
(5, 'usr684e9c412a979', 'off1', '2025-06-15 10:11:45'),
(6, 'usr684e9c412a979', 'off684eab76dc237', '2025-06-15 12:40:56'),
(7, 'usr684e9c412a979', 'off684fd3e597cb4', '2025-06-16 08:21:42'),
(8, 'usr684e9c412a979', 'off2', '2025-06-16 14:57:43'),
(9, 'usr684e9c412a979', 'off68513fba8ed34', '2025-06-17 11:04:24'),
(10, 'usr684e9c412a979', 'off68514a1cd56fc', '2025-06-17 11:05:16');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `design_id` varchar(26) NOT NULL,
  `user_id` varchar(26) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `design_id`, `user_id`, `comment`, `created_at`) VALUES
(3, 'dsn2', 'usr684cc3422b4c0', 'good', '2025-06-14 01:25:42'),
(4, 'dsn2', 'usr684e9c412a979', 'hh', '2025-06-15 10:26:56'),
(5, 'dsn2', 'usr684e9c412a979', 'h\r\nh\r\nh', '2025-06-15 10:27:07'),
(6, 'dsn2', 'usr684e9c412a979', 'hh', '2025-06-15 10:27:09'),
(7, 'dsn2', 'usr684e9c412a979', 'hh', '2025-06-15 10:27:11'),
(8, 'dsn1', 'usr684e9c412a979', 'hh', '2025-06-15 10:38:58'),
(9, 'dsn684e9c617e69f', 'usr684e9c412a979', 'hh', '2025-06-15 10:42:38'),
(10, 'dsn3', 'usr684e9c412a979', 'hh', '2025-06-15 10:42:44'),
(11, 'dsn3', 'usr684e9c412a979', 'hh', '2025-06-15 10:42:53'),
(12, 'dsn2', 'usr684e9c412a979', 'hh', '2025-06-15 10:42:56'),
(13, 'dsn0', 'usr684e9c412a979', 'hh', '2025-06-15 10:43:40'),
(14, 'dsn684ebf584dd5f', 'usr684e9c412a979', 'good', '2025-06-15 12:43:54'),
(15, 'dsn684ebf584dd5f', 'usr684e9c412a979', 'hhh', '2025-06-15 13:04:40'),
(16, 'dsn3', 'usr684e9c412a979', 'CC', '2025-06-16 08:24:06'),
(17, 'dsn68514bb89ff2e', 'usr684e9c412a979', 'cc', '2025-06-17 11:04:46'),
(18, 'dsn68514bec756fe', 'usr684e9c412a979', 'cc', '2025-06-17 11:08:42'),
(19, 'dsn68514bec756fe', 'usr684e9c412a979', 'cc', '2025-06-17 11:08:49'),
(20, 'dsn68514bec756fe', 'usr684e9c412a979', 'cc', '2025-06-17 11:08:51'),
(21, 'dsn68514bec756fe', 'usr684e9c412a979', 'cc', '2025-06-17 11:08:53'),
(22, 'dsn684ebf584dd5f', 'usr684cbbf217144', 'hh', '2025-06-17 14:05:52'),
(23, 'dsn68514bec756fe', 'usr684cbbf217144', 'hh', '2025-06-17 14:06:04'),
(24, 'dsn684ebf584dd5f', 'usr684cbbf217144', 'ss', '2025-06-17 14:10:44'),
(25, 'dsn3', 'usr684e9c412a979', 'ff', '2025-06-17 14:26:12'),
(26, 'dsn68514bec756fe', 'usr6852818059239', 'dd', '2025-06-18 09:14:59');

-- --------------------------------------------------------

--
-- Structure de la table `designs`
--

CREATE TABLE `designs` (
  `design_id` varchar(26) NOT NULL,
  `offer_id` varchar(26) DEFAULT NULL,
  `designer_id` varchar(26) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating` float DEFAULT 0,
  `votes_count` int(11) DEFAULT 0,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `designs`
--

INSERT INTO `designs` (`design_id`, `offer_id`, `designer_id`, `file_url`, `description`, `rating`, `votes_count`, `submitted_at`, `is_hidden`) VALUES
('dsn0', 'off1', 'usr684cc3422b4c0', '/Creavote/uploads/design_684cc384599ca4.54949645_groupeiki.png', '', 10, 1, '2025-06-14 00:34:12', 0),
('dsn1', 'off1', 'usr1', '/Creavote/uploads/dsn1.JPG', 'Minimalist logo concept', 9, 2, '2025-06-13 23:54:00', 0),
('dsn2', 'off1', 'usr3', '/Creavote/uploads/dsn2.JPG', 'Bold logo with tech vibe', 9, 2, '2025-06-13 23:54:00', 0),
('dsn3', 'off2', 'usr1', '/Creavote/uploads/dsn3.JPG', 'Colorful event flyer', 3, 2, '2025-06-13 23:54:00', 0),
('dsn684e9c617e69f', 'off1', 'usr684e9c412a979', '/Creavote/uploads/design_684e9c617e2e40.89343941_IMG_9379.jpg', '', 8.6667, 3, '2025-06-15 10:11:45', 0),
('dsn684ebf584dd5f', 'off684eab76dc237', 'usr684e9c412a979', '/Creavote/uploads/design_684ebf584d8468.41476756_Most_Popular_Candies_Platter__shorts__short__asmr__platter__candy__nerds__starburst__candyfunhouse.mp4', 'this is a video', 9.6667, 3, '2025-06-15 12:40:56', 0),
('dsn684fd4162222b', 'off684fd3e597cb4', 'usr684e9c412a979', '/Creavote/uploads/design_684fd41621be52.07559523_dsn3.jpg', 'VV', 9, 2, '2025-06-16 08:21:42', 0),
('dsn685030e763e44', 'off2', 'usr684e9c412a979', '/Creavote/uploads/design_685030e76386a6.66074233_IMG_9418.jpg', '', 8, 1, '2025-06-16 14:57:43', 0),
('dsn68514bb89ff2e', 'off68513fba8ed34', 'usr684e9c412a979', '/Creavote/uploads/design_68514bb89f7e77.17809769_IMG_9411.jpg', 'ff', 8.6667, 3, '2025-06-17 11:04:24', 0),
('dsn68514bec756fe', 'off68514a1cd56fc', 'usr684e9c412a979', '/Creavote/uploads/design_68514bec7518c5.13069094_Marko_Video_Background.mp4', 'dd', 8.75, 4, '2025-06-17 11:05:16', 0);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` varchar(26) NOT NULL,
  `type` enum('saved','vote','message') NOT NULL,
  `design_id` varchar(26) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `type`, `design_id`, `message`, `is_read`, `created_at`) VALUES
(1, 'usr2', 'saved', 'dsn1', 'Your design was saved by Hafsa_Elmalki!', 0, '2025-06-14 00:07:21'),
(2, 'usr3', 'vote', 'dsn3', 'Your design received a new vote!', 0, '2025-06-14 00:07:21'),
(3, 'usr1', 'message', NULL, 'You have a new message from a client.', 0, '2025-06-14 00:07:21'),
(4, 'usr1', 'message', NULL, 'A new offer \"STARTUP LOGOPpdd\" has been posted!', 0, '2025-06-17 11:09:23'),
(5, 'usr2', 'message', NULL, 'A new offer \"STARTUP LOGOPpdd\" has been posted!', 0, '2025-06-17 11:09:23'),
(6, 'usr3', 'message', NULL, 'A new offer \"STARTUP LOGOPpdd\" has been posted!', 0, '2025-06-17 11:09:23'),
(7, 'usr684cc3422b4c0', 'message', NULL, 'A new offer \"STARTUP LOGOPpdd\" has been posted!', 1, '2025-06-17 11:09:23'),
(8, 'usr684cbbf217144', 'message', NULL, 'A new offer \"STARTUP LOGOPpdd\" has been posted!', 1, '2025-06-17 11:09:23'),
(9, 'usr1', 'message', NULL, 'A new offer \"sss\" has been posted!', 0, '2025-06-17 11:10:49'),
(10, 'usr684e9c412a979', 'message', NULL, 'A new offer \"sss\" has been posted!', 1, '2025-06-17 11:10:49'),
(11, 'usr2', 'message', NULL, 'A new offer \"sss\" has been posted!', 0, '2025-06-17 11:10:49'),
(12, 'usr3', 'message', NULL, 'A new offer \"sss\" has been posted!', 0, '2025-06-17 11:10:49'),
(13, 'usr684cbbf217144', 'message', NULL, 'A new offer \"sss\" has been posted!', 1, '2025-06-17 11:10:49'),
(14, 'usr1', 'message', NULL, 'A new offer \"ssssss\" has been posted!', 0, '2025-06-17 11:11:59'),
(15, 'usr2', 'message', NULL, 'A new offer \"ssssss\" has been posted!', 0, '2025-06-17 11:11:59'),
(16, 'usr3', 'message', NULL, 'A new offer \"ssssss\" has been posted!', 0, '2025-06-17 11:11:59'),
(17, 'usr684cc3422b4c0', 'message', NULL, 'A new offer \"ssssss\" has been posted!', 1, '2025-06-17 11:11:59'),
(18, 'usr684cbbf217144', 'message', NULL, 'A new offer \"ssssss\" has been posted!', 1, '2025-06-17 11:11:59'),
(19, 'usr684cc3422b4c0', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-17 11:24:37'),
(20, 'usr684cc3422b4c0', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-17 11:25:04'),
(21, 'usr684cc3422b4c0', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-17 11:25:09'),
(22, 'usr684cc3422b4c0', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-17 11:42:08'),
(23, 'usr1', 'message', NULL, 'A new offer \"logo\" has been posted!', 0, '2025-06-17 12:39:05'),
(24, 'usr684e9c412a979', 'message', NULL, 'A new offer \"logo\" has been posted!', 1, '2025-06-17 12:39:05'),
(25, 'usr2', 'message', NULL, 'A new offer \"logo\" has been posted!', 0, '2025-06-17 12:39:05'),
(26, 'usr3', 'message', NULL, 'A new offer \"logo\" has been posted!', 0, '2025-06-17 12:39:05'),
(27, 'usr684cbbf217144', 'message', NULL, 'A new offer \"logo\" has been posted!', 1, '2025-06-17 12:39:05'),
(28, 'usr684cc3422b4c0', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-17 12:40:57'),
(29, 'usr684cc3422b4c0', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-17 12:41:01'),
(30, 'usr6852818059239', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-18 09:14:04'),
(31, 'usr6852818059239', 'message', NULL, 'You updated your profile picture!', 1, '2025-06-18 09:14:07');

-- --------------------------------------------------------

--
-- Structure de la table `offers`
--

CREATE TABLE `offers` (
  `offer_id` varchar(26) NOT NULL,
  `user_id` varchar(26) DEFAULT NULL,
  `offer_title` varchar(50) NOT NULL,
  `category` varchar(25) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(25) DEFAULT NULL,
  `offer_start` date DEFAULT NULL,
  `offer_end` date DEFAULT NULL,
  `offer_budget` float NOT NULL,
  `is_payed` tinyint(1) DEFAULT 0,
  `date_payment` timestamp NULL DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `vote_status` int(1) DEFAULT 0,
  `total_votes` int(11) DEFAULT 0,
  `offer_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offers`
--

INSERT INTO `offers` (`offer_id`, `user_id`, `offer_title`, `category`, `description`, `tags`, `offer_start`, `offer_end`, `offer_budget`, `is_payed`, `date_payment`, `amount`, `vote_status`, `total_votes`, `offer_image`) VALUES
('', 'usr684e9c412a979', 'STARTUP LOGO', 'logo', 'fff', 'logo,txt', '2025-06-15', '2025-12-12', 2000, 0, NULL, NULL, 0, 0, NULL),
('off1', 'usr2', 'Logo Design for Startup', 'Logo', 'Design a modern logo for a tech startup.', 'logo,tech', '2025-06-01', '2025-06-30', 500, 1, '2025-06-01 09:00:00', 500, 1, 10, NULL),
('off2', 'usr2', 'Flyer for Event', 'Print', 'Create a flyer for our upcoming event.', 'flyer,event', '2025-06-10', '2025-06-20', 200, 0, NULL, NULL, 0, 0, NULL),
('off684eab76dc237', 'usr684e9c412a979', 'STARTUP LOGOd', 'ddd', 'ddd', 'logo,txt,deco', '2025-06-15', '2025-06-28', 6000, 0, NULL, NULL, 0, 0, NULL),
('off684fd3e597cb4', 'usr684e9c412a979', 'STARTUP LOGOs', 'logo', 'vv', 'logo , big', '2025-06-16', '2025-06-19', 2000, 0, NULL, NULL, 0, 0, NULL),
('off68513fba8ed34', 'usr684e9c412a979', 'STARTUP LOGOP', 'PP', 'PP', 'logo,txt', '2025-06-17', '2025-06-22', 5000, 0, NULL, NULL, 0, 0, '/uploads/offer_68513fba8ed3a4.96505851.jpg'),
('off68514a1cd56fc', 'usr684e9c412a979', 'STARTUP LOGOPp', 'logos', 'test', 'logo,txt,deco', '2025-06-17', '2025-06-21', 7000, 0, NULL, NULL, 0, 0, '/Creavote/uploads/offer_68514a1cd57060.85937365.jpg'),
('off68514ce3716d9', 'usr684e9c412a979', 'STARTUP LOGOPpdd', 'ddd', 'dddd', 'logo , big', '2025-06-17', '2025-06-26', 3800, 0, NULL, NULL, 0, 0, '/Creavote/uploads/offer_68514ce3716e85.86311727.png'),
('off68514d39541aa', 'usr684cc3422b4c0', 'sss', 'ssss', 'ssss', 'logo,txt,deco', '2025-06-17', '2025-06-27', 30000, 0, NULL, NULL, 0, 0, '/Creavote/uploads/offer_68514d39541b45.00318850.jpg'),
('off68514d7f0e9c0', 'usr684e9c412a979', 'ssssss', 'ssssss', 'sssssss', 'logo , big', '2025-06-17', '2025-06-28', 19000, 0, NULL, NULL, 0, 0, '/Creavote/uploads/offer_68514d7f0e9cb4.11820888.jpg'),
('off685161e98d6c4', 'usr684cc3422b4c0', 'logo', 'logo', 'logo', 'logo,txt,deco', '2025-06-17', '2025-06-18', 2000, 0, NULL, NULL, 0, 0, '/Creavote/uploads/offer_685161e98d6cc5.76628430.png');

-- --------------------------------------------------------

--
-- Structure de la table `prizes`
--

CREATE TABLE `prizes` (
  `prize_id` int(11) NOT NULL,
  `user_id` varchar(26) DEFAULT NULL,
  `offer_id` varchar(26) DEFAULT NULL,
  `amount` float NOT NULL,
  `type` enum('designer','voter') NOT NULL,
  `awarded_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saves`
--

CREATE TABLE `saves` (
  `save_id` int(11) NOT NULL,
  `user_id` varchar(26) DEFAULT NULL,
  `design_id` varchar(26) DEFAULT NULL,
  `saved_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `saves`
--

INSERT INTO `saves` (`save_id`, `user_id`, `design_id`, `saved_at`) VALUES
(1, 'usr1', 'dsn2', '2025-06-14 00:05:00'),
(2, 'usr2', 'dsn1', '2025-06-14 00:05:00'),
(3, 'usr3', 'dsn1', '2025-06-14 00:05:00'),
(4, 'usr3', 'dsn3', '2025-06-14 00:05:00'),
(11, 'usr684cc3422b4c0', 'dsn1', '2025-06-15 09:39:43'),
(12, 'usr684cc3422b4c0', 'dsn2', '2025-06-15 09:40:01'),
(13, 'usr684cc3422b4c0', 'dsn3', '2025-06-15 09:41:33'),
(14, 'usr684cbbf217144', 'dsn3', '2025-06-15 10:00:00'),
(16, 'usr684e9c412a979', 'dsn684e9c617e69f', '2025-06-15 10:18:39'),
(21, 'usr684e9c412a979', 'dsn0', '2025-06-15 23:19:42'),
(22, 'usr684e9c412a979', 'dsn2', '2025-06-15 23:20:29'),
(23, 'usr684cc3422b4c0', 'dsn684ebf584dd5f', '2025-06-15 23:46:59'),
(24, 'usr684cc3422b4c0', 'dsn684e9c617e69f', '2025-06-16 08:16:35'),
(25, 'usr684e9c412a979', 'dsn684ebf584dd5f', '2025-06-16 08:22:50'),
(27, 'usr684e9c412a979', 'dsn68514bb89ff2e', '2025-06-17 11:04:31'),
(28, 'usr684e9c412a979', 'dsn68514bec756fe', '2025-06-17 11:06:29'),
(33, 'usr684e9c412a979', 'dsn684fd4162222b', '2025-06-17 13:09:31'),
(35, 'usr684cbbf217144', 'dsn684fd4162222b', '2025-06-17 14:09:39'),
(36, 'usr684cbbf217144', 'dsn2', '2025-06-17 14:09:45'),
(37, 'usr684cbbf217144', 'dsn684e9c617e69f', '2025-06-17 14:09:47'),
(39, 'usr684cbbf217144', 'dsn68514bec756fe', '2025-06-17 14:09:59'),
(40, 'usr684e9c412a979', 'dsn3', '2025-06-17 14:26:07'),
(43, 'usr684e9c412a979', 'dsn685030e763e44', '2025-06-18 09:00:59'),
(44, 'usr6852818059239', 'dsn68514bec756fe', '2025-06-18 09:14:56');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(26) NOT NULL,
  `firstname` varchar(35) NOT NULL,
  `lastname` varchar(35) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(56) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) DEFAULT 0,
  `role` enum('client','designer','voter') NOT NULL,
  `rating_accuracy` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `country`, `phone`, `username`, `password`, `type`, `role`, `rating_accuracy`, `created_at`, `profile_picture`) VALUES
('usr1', 'Alice', 'Smith', 'alice@creavote.com', 'Morocco', '+212612345678', 'alice', '$2y$10$abcdefghijklmnopqrstuv', 0, 'designer', 4.8, '2025-06-13 23:54:00', NULL),
('usr2', 'Bob', 'Jones', 'bob@creavote.com', 'France', '+33612345678', 'bobj', '$2y$10$abcdefghijklmnopqrstuv', 0, 'client', 4.5, '2025-06-13 23:54:00', NULL),
('usr3', 'Carol', 'Lee', 'carol@creavote.com', 'USA', '+15551234567', 'caroll', '$2y$10$abcdefghijklmnopqrstuv', 0, 'voter', 4.9, '2025-06-13 23:54:00', NULL),
('usr684cbbf217144', 'mohamed', 'elachri', 'satayman41@gmail.com', 'Morocco', '707407425', 'mohamedelachri', '$2y$10$.YbtLlCZxCRCTcVAOm4KYe1AxpajpYvcpBgL6oK2fVPzIvVx1GjoK', 0, 'designer', 0, '2025-06-14 00:01:54', NULL),
('usr684cc3422b4c0', 'mohad', 'ela', 'aymenelachiri2@icloud.com', 'ma', '707407425', 'mohaela', '$2y$10$cR.fpmpRbvT3XyaZh.xVFuyH7Ox2l900EYOe9uLN8ocXaZOm1Hipe', 0, 'designer', 0, '2025-06-14 00:33:06', '/Creavote/uploads/profile_usr684cc3422b4c0_1750164061.jpg'),
('usr684e9c412a979', 'ayman', 'elachiri', 'aymenelachiri@icloud.com', 'us', '0707407425', 'aymanelachiri', '$2y$10$FwlRX9uWUiNK5stp/hBMOuSEjO/QPI6iVpA5d83TrtSnBfaNrN/xy', 0, 'designer', 0, '2025-06-15 10:11:13', '/uploads/profile_usr684e9c412a979_1750158423.jpg'),
('usr6852818059239', 'aym', 'el achiri', 'tes2@test.com', 'af', '0698427951', 'aymelachiri', '$2y$10$ElGiygSi1h6K190IY2U/quj3B8UDJfjETDyUT3bS8Ja4qXwSmA1Rm', 0, 'designer', 0, '2025-06-18 09:06:08', '/Creavote/uploads/profile_usr6852818059239_1750238047.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `voter_id` varchar(26) DEFAULT NULL,
  `design_id` varchar(26) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 10),
  `vote_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`vote_id`, `voter_id`, `design_id`, `rating`, `vote_date`) VALUES
(1, 'usr684cc3422b4c0', 'dsn2', 8, '2025-06-14 00:50:43'),
(2, 'usr684e9c412a979', 'dsn2', 10, '2025-06-15 11:24:31'),
(3, 'usr684e9c412a979', 'dsn1', 8, '2025-06-15 11:24:40'),
(4, 'usr684e9c412a979', 'dsn0', 10, '2025-06-15 11:25:34'),
(5, 'usr684e9c412a979', 'dsn684e9c617e69f', 9, '2025-06-15 11:56:46'),
(6, 'usr684e9c412a979', 'dsn3', 4, '2025-06-15 11:56:55'),
(7, 'usr684e9c412a979', 'dsn684ebf584dd5f', 10, '2025-06-15 12:43:44'),
(8, 'usr684cc3422b4c0', 'dsn1', 10, '2025-06-15 23:25:36'),
(9, 'usr684cc3422b4c0', 'dsn684ebf584dd5f', 10, '2025-06-15 23:42:19'),
(10, 'usr684cc3422b4c0', 'dsn3', 2, '2025-06-15 23:46:56'),
(11, 'usr684cc3422b4c0', 'dsn684e9c617e69f', 8, '2025-06-16 08:15:36'),
(12, 'usr684e9c412a979', 'dsn684fd4162222b', 9, '2025-06-16 08:22:09'),
(13, 'usr684e9c412a979', 'dsn685030e763e44', 8, '2025-06-17 10:12:06'),
(14, 'usr684e9c412a979', 'dsn68514bb89ff2e', 9, '2025-06-17 11:04:37'),
(15, 'usr684cc3422b4c0', 'dsn684fd4162222b', 9, '2025-06-17 12:08:18'),
(16, 'usr684cc3422b4c0', 'dsn68514bec756fe', 9, '2025-06-17 12:12:03'),
(17, 'usr684cc3422b4c0', 'dsn68514bb89ff2e', 8, '2025-06-17 12:12:51'),
(18, 'usr684e9c412a979', 'dsn68514bec756fe', 8, '2025-06-17 13:05:34'),
(19, 'usr684cbbf217144', 'dsn684ebf584dd5f', 9, '2025-06-17 14:05:47'),
(20, 'usr684cbbf217144', 'dsn68514bec756fe', 9, '2025-06-17 14:05:59'),
(21, 'usr684cbbf217144', 'dsn684e9c617e69f', 9, '2025-06-17 14:09:50'),
(22, 'usr6852818059239', 'dsn68514bec756fe', 9, '2025-06-18 09:15:08'),
(23, 'usr6852818059239', 'dsn68514bb89ff2e', 9, '2025-06-18 09:15:43');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`),
  ADD UNIQUE KEY `unique_application` (`user_id`,`offer_id`),
  ADD KEY `offer_id` (`offer_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `design_id` (`design_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`design_id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `designer_id` (`designer_id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `design_id` (`design_id`);

--
-- Index pour la table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`prize_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `offer_id` (`offer_id`);

--
-- Index pour la table `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`save_id`),
  ADD UNIQUE KEY `unique_save` (`user_id`,`design_id`),
  ADD KEY `design_id` (`design_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `voter_id` (`voter_id`),
  ADD KEY `design_id` (`design_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `prize_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `saves`
--
ALTER TABLE `saves`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`design_id`) REFERENCES `designs` (`design_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `designs`
--
ALTER TABLE `designs`
  ADD CONSTRAINT `designs_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `designs_ibfk_2` FOREIGN KEY (`designer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`design_id`) REFERENCES `designs` (`design_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `prizes`
--
ALTER TABLE `prizes`
  ADD CONSTRAINT `prizes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prizes_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `saves`
--
ALTER TABLE `saves`
  ADD CONSTRAINT `saves_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saves_ibfk_2` FOREIGN KEY (`design_id`) REFERENCES `designs` (`design_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`design_id`) REFERENCES `designs` (`design_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
