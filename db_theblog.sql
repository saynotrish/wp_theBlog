-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 02:52 AM
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
-- Database: `db_theblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(120, 'action_scheduler/migration_hook', 'complete', '2023-06-22 05:18:34', '2023-06-22 05:18:34', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1687411114;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1687411114;}', 1, 1, '2023-06-22 05:19:09', '2023-06-22 05:19:09', 0, NULL),
(121, 'wp_mail_smtp_summary_report_email', 'pending', '2023-06-26 14:00:00', '2023-06-26 14:00:00', '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687788000;s:18:\"\0*\0first_timestamp\";i:1687788000;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687788000;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(122, 'wp_mail_smtp_admin_notifications_update', 'complete', '2023-06-22 05:19:56', '2023-06-22 05:19:56', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-06-22 05:20:59', '2023-06-22 05:20:59', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 120, 'action created', '2023-06-22 05:17:34', '2023-06-22 05:17:34'),
(2, 120, 'action started via WP Cron', '2023-06-22 05:19:09', '2023-06-22 05:19:09'),
(3, 120, 'action complete via WP Cron', '2023-06-22 05:19:09', '2023-06-22 05:19:09'),
(4, 121, 'action created', '2023-06-22 05:19:55', '2023-06-22 05:19:55'),
(5, 122, 'action created', '2023-06-22 05:19:56', '2023-06-22 05:19:56'),
(6, 122, 'action started via WP Cron', '2023-06-22 05:20:58', '2023-06-22 05:20:58'),
(7, 122, 'action complete via WP Cron', '2023-06-22 05:20:59', '2023-06-22 05:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-20 23:58:17', '2023-06-20 23:58:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/blog2', 'yes'),
(2, 'home', 'http://localhost/blog2', 'yes'),
(3, 'blogname', 'The Blog2', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'trishaamv.sayno@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"fakerpress/fakerpress.php\";i:2;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Blog2', 'yes'),
(41, 'stylesheet', 'Blog2', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1702857497', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1687740693;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1687741098;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1687742311;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687780698;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687780803;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687823898;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687824697;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687996698;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1687308358;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1687737544;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687736883;s:7:\"checked\";a:4:{s:5:\"Blog2\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1687910339', 'no'),
(131, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1687910340', 'no'),
(133, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'current_theme', 'Blog 2', 'yes'),
(157, 'theme_mods_Blog2', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:9;s:11:\"footer_menu\";i:10;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(170, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1687781830', 'no'),
(171, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:41:\"WordCamp Iloilo City, Iloilo, Philippines\";s:3:\"url\";s:33:\"https://iloilo.wordcamp.org/2023/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2023-07-08 07:30:00\";s:8:\"end_date\";s:19:\"2023-07-08 07:30:00\";s:20:\"start_unix_timestamp\";i:1688772600;s:18:\"end_unix_timestamp\";i:1688772600;s:8:\"location\";a:4:{s:8:\"location\";s:32:\"Iloilo City, Iloilo, Philippines\";s:7:\"country\";s:2:\"PH\";s:8:\"latitude\";d:10.7151767;s:9:\"longitude\";d:122.5458439;}}}}', 'no'),
(192, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(218, 'recovery_mode_email_last_sent', '1687495375', 'yes'),
(237, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":1}', 'yes'),
(278, 'category_children', 'a:0:{}', 'yes'),
(335, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(346, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1687409645;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(348, 'secret_key', 'Z3.8p=:+wb*I>fU|>QZ!c}H SJouAM%$m_Y/Zu#:rn#~2#6gRsV++_P.UlDDQei^', 'no'),
(350, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687736883;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.6.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/fakerpress.0.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.7\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.6.1\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.8.0\";}}', 'no'),
(351, 'action_scheduler_hybrid_store_demarkation', '119', 'yes'),
(352, 'schema-ActionScheduler_StoreSchema', '6.0.1687411053', 'yes'),
(353, 'schema-ActionScheduler_LoggerSchema', '3.0.1687411053', 'yes'),
(354, 'wp_mail_smtp_initial_version', '3.8.0', 'no'),
(355, 'wp_mail_smtp_version', '3.8.0', 'no'),
(356, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:36:\"ramon.plaza@frontlinebusiness.com.ph\";s:9:\"from_name\";s:9:\"The Blog2\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:29:\"mail.frontlinebusiness.com.ph\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"user\";s:37:\"noreply@lcss.frontlinebusiness.com.ph\";s:4:\"pass\";s:72:\"t6Nk0KfLBRUGiP3y28Got2cvCMbGvjkTohX13XRlpH4j5JT5l7vWD0bMoUb3CEpRx3oDpA==\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(357, 'wp_mail_smtp_activated_time', '1687411053', 'no'),
(358, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1687411053;}', 'yes'),
(361, 'action_scheduler_lock_async-request-runner', '1687740737', 'yes'),
(365, 'wp_mail_smtp_migration_version', '5', 'yes'),
(366, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(367, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(370, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1687411067;s:9:\"dismissed\";b:0;}', 'yes'),
(372, 'action_scheduler_migration_status', 'complete', 'yes'),
(374, 'wp_mail_smtp_debug', 'a:1:{i:0;i:10;}', 'no'),
(375, 'wp_mail_smtp_mail_key', 'CRMLqPzHlgPGZ1i0yV2JjSb0DZDaEW3CQfHjOj6zi38=', 'yes'),
(377, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1687411259;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(841, '_site_transient_timeout_theme_roots', '1687738672', 'no'),
(842, '_site_transient_theme_roots', 'a:4:{s:5:\"Blog2\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(845, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1687758475', 'no'),
(846, '_transient_action_scheduler_last_pastdue_actions_check', '1687736875', 'no'),
(847, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1687780099', 'no'),
(848, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10002 milliseconds</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10004 milliseconds</p></div>', 'no'),
(885, '_transient_timeout_wp_mail_smtp_initiators_data', '1687744167', 'no'),
(886, '_transient_wp_mail_smtp_initiators_data', 'a:1:{s:74:\"C:\\xampp\\htdocs\\blog2\\wp-includes\\class-wp-recovery-mode-email-service.php\";a:3:{s:4:\"name\";s:3:\"N/A\";s:4:\"slug\";s:0:\"\";s:4:\"type\";s:7:\"unknown\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1687503586:1'),
(4, 2, '_edit_lock', '1687310345:1'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1687310497'),
(7, 2, '_wp_desired_post_slug', 'sample-page'),
(11, 3, '_wp_trash_meta_status', 'draft'),
(12, 3, '_wp_trash_meta_time', '1687313029'),
(13, 3, '_wp_desired_post_slug', 'privacy-policy'),
(14, 1, '_edit_lock', '1687506132:1'),
(50, 26, '_edit_lock', '1687331145:1'),
(56, 28, '_edit_lock', '1687328404:1'),
(57, 29, '_edit_lock', '1687331151:1'),
(60, 31, '_edit_lock', '1687331165:1'),
(63, 33, '_edit_lock', '1687331796:1'),
(79, 41, '_wp_attached_file', '2023/06/img-1.jpg'),
(80, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:17:\"2023/06/img-1.jpg\";s:8:\"filesize\";i:33452;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 1, '_thumbnail_id', '41'),
(83, 42, '_wp_attached_file', '2023/06/img-3.jpg'),
(84, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:150;s:4:\"file\";s:17:\"2023/06/img-3.jpg\";s:8:\"filesize\";i:6507;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 26, '_thumbnail_id', '42'),
(87, 43, '_wp_attached_file', '2023/06/img-4.jpg'),
(88, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:150;s:4:\"file\";s:17:\"2023/06/img-4.jpg\";s:8:\"filesize\";i:7944;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 29, '_thumbnail_id', '43'),
(91, 44, '_wp_attached_file', '2023/06/img-5.jpg'),
(92, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:150;s:4:\"file\";s:17:\"2023/06/img-5.jpg\";s:8:\"filesize\";i:5298;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 33, '_thumbnail_id', '42'),
(96, 31, '_thumbnail_id', '44'),
(99, 46, '_edit_lock', '1687394537:1'),
(100, 47, '_wp_attached_file', '2023/06/img-7.jpg'),
(101, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:240;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2023/06/img-7.jpg\";s:8:\"filesize\";i:24261;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 46, '_thumbnail_id', '47'),
(104, 49, '_edit_lock', '1687394696:1'),
(105, 50, '_wp_attached_file', '2023/06/img-6.jpg'),
(106, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:247;s:4:\"file\";s:17:\"2023/06/img-6.jpg\";s:8:\"filesize\";i:15759;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 49, '_thumbnail_id', '50'),
(110, 53, '_edit_lock', '1687394701:1'),
(111, 54, '_wp_attached_file', '2023/06/img-8.jpg'),
(112, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:245;s:4:\"file\";s:17:\"2023/06/img-8.jpg\";s:8:\"filesize\";i:17220;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 53, '_thumbnail_id', '54'),
(115, 56, '_edit_lock', '1687392389:1'),
(117, 56, '_thumbnail_id', '47'),
(118, 58, '_edit_lock', '1687392598:1'),
(120, 58, '_thumbnail_id', '50'),
(121, 58, '_wp_trash_meta_status', 'publish'),
(122, 58, '_wp_trash_meta_time', '1687392716'),
(123, 58, '_wp_desired_post_slug', 'latest-posts-5'),
(124, 56, '_wp_trash_meta_status', 'publish'),
(125, 56, '_wp_trash_meta_time', '1687392719'),
(126, 56, '_wp_desired_post_slug', 'latest-posts-4'),
(128, 49, '_edit_last', '1'),
(130, 53, '_edit_last', '1'),
(132, 60, '_edit_lock', '1687399698:1'),
(133, 61, '_wp_attached_file', '2023/06/img-9.jpg'),
(134, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:399;s:4:\"file\";s:17:\"2023/06/img-9.jpg\";s:8:\"filesize\";i:39645;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 60, '_thumbnail_id', '61'),
(137, 63, '_edit_lock', '1687404417:1'),
(138, 64, '_wp_attached_file', '2023/06/img-10.jpg'),
(139, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:449;s:4:\"file\";s:18:\"2023/06/img-10.jpg\";s:8:\"filesize\";i:18014;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 63, '_thumbnail_id', '70'),
(142, 66, '_edit_lock', '1687399829:1'),
(143, 67, '_wp_attached_file', '2023/06/img-11.jpg'),
(144, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2023/06/img-11.jpg\";s:8:\"filesize\";i:10502;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 66, '_thumbnail_id', '67'),
(147, 69, '_edit_lock', '1687404398:1'),
(148, 70, '_wp_attached_file', '2023/06/img-12.jpg'),
(149, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:178;s:4:\"file\";s:18:\"2023/06/img-12.jpg\";s:8:\"filesize\";i:8036;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 69, '_thumbnail_id', '64'),
(152, 72, '_edit_lock', '1687399860:1'),
(154, 74, '_edit_lock', '1687399854:1'),
(156, 72, '_edit_last', '1'),
(158, 76, '_edit_lock', '1687400024:1'),
(160, 78, '_edit_lock', '1687400036:1'),
(162, 80, '_edit_lock', '1687400049:1'),
(164, 82, '_edit_lock', '1687403200:1'),
(166, 84, '_wp_attached_file', '2023/06/0db35a0f-41c3-3861-a9cc-4933d957ea63.jpg'),
(167, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1248;s:6:\"height\";i:832;s:4:\"file\";s:48:\"2023/06/0db35a0f-41c3-3861-a9cc-4933d957ea63.jpg\";s:8:\"filesize\";i:80551;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(168, 84, 'fakerpress_flag', '1'),
(169, 84, '_fakerpress_orginal_url', 'https://picsum.photos/1248/832/?random'),
(170, 85, '_wp_attached_file', '2023/06/7c00ad97-343f-385c-adc8-947065576d7b.png'),
(171, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:223;s:6:\"height\";i:178;s:4:\"file\";s:48:\"2023/06/7c00ad97-343f-385c-adc8-947065576d7b.png\";s:8:\"filesize\";i:2363;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 85, 'fakerpress_flag', '1'),
(173, 85, '_fakerpress_orginal_url', 'https://via.placeholder.com/223x178/'),
(174, 86, '_wp_attached_file', '2023/06/ee3d5b5e-f01e-3d3e-a780-e83100393ba2.jpg'),
(175, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1414;s:6:\"height\";i:942;s:4:\"file\";s:48:\"2023/06/ee3d5b5e-f01e-3d3e-a780-e83100393ba2.jpg\";s:8:\"filesize\";i:140566;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(176, 86, 'fakerpress_flag', '1'),
(177, 86, '_fakerpress_orginal_url', 'https://picsum.photos/1414/942/?random'),
(178, 87, 'fakerpress_flag', '1'),
(179, 88, '_wp_attached_file', '2023/06/2e899778-4617-3a0b-af98-46d6569dce26.jpg'),
(180, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1154;s:6:\"height\";i:769;s:4:\"file\";s:48:\"2023/06/2e899778-4617-3a0b-af98-46d6569dce26.jpg\";s:8:\"filesize\";i:79206;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(181, 88, 'fakerpress_flag', '1'),
(182, 88, '_fakerpress_orginal_url', 'https://picsum.photos/1154/769/?random'),
(183, 87, '_thumbnail_id', '88'),
(184, 89, '_wp_attached_file', '2023/06/6ce5c88c-6233-383e-8c8c-1b6e7c6c3295.jpg'),
(185, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1144;s:6:\"height\";i:762;s:4:\"file\";s:48:\"2023/06/6ce5c88c-6233-383e-8c8c-1b6e7c6c3295.jpg\";s:8:\"filesize\";i:71385;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(186, 89, 'fakerpress_flag', '1'),
(187, 89, '_fakerpress_orginal_url', 'https://picsum.photos/1144/762/?random'),
(188, 90, '_wp_attached_file', '2023/06/eb4d54ab-0f90-3d8f-b7dc-6f0124796574.png'),
(189, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:598;s:6:\"height\";i:478;s:4:\"file\";s:48:\"2023/06/eb4d54ab-0f90-3d8f-b7dc-6f0124796574.png\";s:8:\"filesize\";i:6366;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 90, 'fakerpress_flag', '1'),
(191, 90, '_fakerpress_orginal_url', 'https://via.placeholder.com/598x478/'),
(192, 91, 'fakerpress_flag', '1'),
(193, 92, '_wp_attached_file', '2023/06/af68b049-feda-3a81-857a-5c399b4e5c47.jpg'),
(194, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1138;s:6:\"height\";i:758;s:4:\"file\";s:48:\"2023/06/af68b049-feda-3a81-857a-5c399b4e5c47.jpg\";s:8:\"filesize\";i:154732;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(195, 92, 'fakerpress_flag', '1'),
(196, 92, '_fakerpress_orginal_url', 'https://picsum.photos/1138/758/?random'),
(197, 91, '_thumbnail_id', '92'),
(198, 93, '_wp_attached_file', '2023/06/e0a8c17c-71dd-3de7-90ed-ff4c6d35ed6c.png'),
(199, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:515;s:6:\"height\";i:412;s:4:\"file\";s:48:\"2023/06/e0a8c17c-71dd-3de7-90ed-ff4c6d35ed6c.png\";s:8:\"filesize\";i:4648;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 93, 'fakerpress_flag', '1'),
(201, 93, '_fakerpress_orginal_url', 'https://via.placeholder.com/515x412/'),
(202, 94, '_wp_attached_file', '2023/06/7677e57d-8257-3db3-987a-e2b5d86fa2a9.png'),
(203, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:496;s:6:\"height\";i:396;s:4:\"file\";s:48:\"2023/06/7677e57d-8257-3db3-987a-e2b5d86fa2a9.png\";s:8:\"filesize\";i:5725;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 94, 'fakerpress_flag', '1'),
(205, 94, '_fakerpress_orginal_url', 'https://via.placeholder.com/496x396/'),
(206, 95, 'fakerpress_flag', '1'),
(207, 96, '_wp_attached_file', '2023/06/8ae47ccc-2dc5-3958-98b4-c58762517880.jpg'),
(208, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1349;s:6:\"height\";i:899;s:4:\"file\";s:48:\"2023/06/8ae47ccc-2dc5-3958-98b4-c58762517880.jpg\";s:8:\"filesize\";i:167430;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(209, 96, 'fakerpress_flag', '1'),
(210, 96, '_fakerpress_orginal_url', 'https://picsum.photos/1349/899/?random'),
(211, 95, '_thumbnail_id', '96'),
(212, 97, '_wp_attached_file', '2023/06/5c3dfad5-74d9-3463-bd1c-f4020186a506.jpg'),
(213, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1101;s:6:\"height\";i:734;s:4:\"file\";s:48:\"2023/06/5c3dfad5-74d9-3463-bd1c-f4020186a506.jpg\";s:8:\"filesize\";i:121608;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(214, 97, 'fakerpress_flag', '1'),
(215, 97, '_fakerpress_orginal_url', 'https://picsum.photos/1101/734/?random'),
(216, 98, '_wp_attached_file', '2023/06/90162d09-05e3-3936-b576-d3b04586c217.png'),
(217, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:524;s:6:\"height\";i:419;s:4:\"file\";s:48:\"2023/06/90162d09-05e3-3936-b576-d3b04586c217.png\";s:8:\"filesize\";i:5451;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 98, 'fakerpress_flag', '1'),
(219, 98, '_fakerpress_orginal_url', 'https://via.placeholder.com/524x419/'),
(220, 99, 'fakerpress_flag', '1'),
(221, 100, '_wp_attached_file', '2023/06/40b25114-5635-327c-bb9c-f43c2c4d6265.png'),
(222, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:330;s:6:\"height\";i:264;s:4:\"file\";s:48:\"2023/06/40b25114-5635-327c-bb9c-f43c2c4d6265.png\";s:8:\"filesize\";i:3617;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 100, 'fakerpress_flag', '1'),
(224, 100, '_fakerpress_orginal_url', 'https://via.placeholder.com/330x264/'),
(225, 99, '_thumbnail_id', '100'),
(226, 101, '_wp_attached_file', '2023/06/31726b8a-42af-318a-b727-b95d5e8abdc6.jpg'),
(227, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1112;s:6:\"height\";i:741;s:4:\"file\";s:48:\"2023/06/31726b8a-42af-318a-b727-b95d5e8abdc6.jpg\";s:8:\"filesize\";i:77131;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(228, 101, 'fakerpress_flag', '1'),
(229, 101, '_fakerpress_orginal_url', 'https://picsum.photos/1112/741/?random'),
(230, 102, 'fakerpress_flag', '1'),
(231, 102, '_thumbnail_id', 'a:0:{}'),
(232, 103, '_wp_attached_file', '2023/06/ef8ef232-7e4d-3685-b7bf-713ce826425e.jpg'),
(233, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1223;s:6:\"height\";i:815;s:4:\"file\";s:48:\"2023/06/ef8ef232-7e4d-3685-b7bf-713ce826425e.jpg\";s:8:\"filesize\";i:95745;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(234, 103, 'fakerpress_flag', '1'),
(235, 103, '_fakerpress_orginal_url', 'https://picsum.photos/1223/815/?random'),
(236, 104, 'fakerpress_flag', '1'),
(237, 105, '_wp_attached_file', '2023/06/e0ceaa7e-49ed-31db-971e-007e1db1a2dd.png'),
(238, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:429;s:6:\"height\";i:343;s:4:\"file\";s:48:\"2023/06/e0ceaa7e-49ed-31db-971e-007e1db1a2dd.png\";s:8:\"filesize\";i:4412;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 105, 'fakerpress_flag', '1'),
(240, 105, '_fakerpress_orginal_url', 'https://via.placeholder.com/429x343/'),
(241, 106, 'fakerpress_flag', '1'),
(242, 107, '_wp_attached_file', '2023/06/76c39caa-549e-39c8-baef-09a791607f19.jpg'),
(243, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1429;s:6:\"height\";i:952;s:4:\"file\";s:48:\"2023/06/76c39caa-549e-39c8-baef-09a791607f19.jpg\";s:8:\"filesize\";i:124607;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(244, 107, 'fakerpress_flag', '1'),
(245, 107, '_fakerpress_orginal_url', 'https://picsum.photos/1429/952/?random'),
(246, 106, '_thumbnail_id', '107'),
(247, 108, 'fakerpress_flag', '1'),
(248, 109, '_wp_attached_file', '2023/06/868cecc3-c8c2-3aab-aa56-939372f93302.jpg'),
(249, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1373;s:6:\"height\";i:915;s:4:\"file\";s:48:\"2023/06/868cecc3-c8c2-3aab-aa56-939372f93302.jpg\";s:8:\"filesize\";i:82279;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(250, 109, 'fakerpress_flag', '1'),
(251, 109, '_fakerpress_orginal_url', 'https://picsum.photos/1373/915/?random'),
(252, 108, '_thumbnail_id', '109'),
(253, 110, 'fakerpress_flag', '1'),
(254, 111, '_wp_attached_file', '2023/06/4e7b1868-66f5-385c-bead-371eecb5b728.png'),
(255, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:445;s:6:\"height\";i:356;s:4:\"file\";s:48:\"2023/06/4e7b1868-66f5-385c-bead-371eecb5b728.png\";s:8:\"filesize\";i:4834;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 111, 'fakerpress_flag', '1'),
(257, 111, '_fakerpress_orginal_url', 'https://via.placeholder.com/445x356/'),
(258, 110, '_thumbnail_id', '111'),
(259, 112, 'fakerpress_flag', '1'),
(260, 113, '_wp_attached_file', '2023/06/73d2df37-5912-319f-aeef-f3f5a3aad842.jpg'),
(261, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1231;s:6:\"height\";i:820;s:4:\"file\";s:48:\"2023/06/73d2df37-5912-319f-aeef-f3f5a3aad842.jpg\";s:8:\"filesize\";i:151735;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(262, 113, 'fakerpress_flag', '1'),
(263, 113, '_fakerpress_orginal_url', 'https://picsum.photos/1231/820/?random'),
(264, 112, '_thumbnail_id', '113'),
(265, 114, 'fakerpress_flag', '1'),
(266, 115, '_wp_attached_file', '2023/06/bb2d0be2-c7c3-33a8-9225-f5ff596ce63b.jpg'),
(267, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1157;s:6:\"height\";i:771;s:4:\"file\";s:48:\"2023/06/bb2d0be2-c7c3-33a8-9225-f5ff596ce63b.jpg\";s:8:\"filesize\";i:61822;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(268, 115, 'fakerpress_flag', '1'),
(269, 115, '_fakerpress_orginal_url', 'https://picsum.photos/1157/771/?random'),
(270, 114, '_thumbnail_id', '115'),
(271, 91, '_edit_lock', '1687398872:1'),
(272, 106, '_edit_lock', '1687398878:1'),
(273, 60, 'featured-size', 'featured-LG'),
(275, 60, '_edit_last', '1'),
(278, 63, 'featured-size', 'featured-md'),
(280, 63, '_edit_last', '1'),
(284, 66, 'featured-size', 'featured-md'),
(286, 66, '_edit_last', '1'),
(289, 69, '_edit_last', '1'),
(294, 69, 'featured-size', 'featured-md'),
(303, 72, 'featured-size', 'featured-sm'),
(306, 74, 'featured-size', 'featured-sm'),
(308, 74, '_edit_last', '1'),
(312, 76, 'featured-size', 'featured-sm'),
(314, 76, '_edit_last', '1'),
(316, 78, 'featured-size', 'featured-sm'),
(318, 78, '_edit_last', '1'),
(320, 80, 'featured-size', 'featured-sm'),
(322, 80, '_edit_last', '1'),
(324, 82, 'featured-size', 'featured-sm'),
(326, 82, '_edit_last', '1'),
(333, 116, '_edit_lock', '1687408244:1'),
(334, 6, '_edit_last', '1'),
(335, 117, '_menu_item_type', 'post_type'),
(336, 117, '_menu_item_menu_item_parent', '0'),
(337, 117, '_menu_item_object_id', '6'),
(338, 117, '_menu_item_object', 'page'),
(339, 117, '_menu_item_target', ''),
(340, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(341, 117, '_menu_item_xfn', ''),
(342, 117, '_menu_item_url', ''),
(344, 118, '_form', '<div class=\"form-wrapper\">\n    <label> Fullname [text* fullname]</label>\n</div>\n\n<div class=\"form-wrapper\">\n    <label> Email [email* email]</label>\n</div>\n\n<div class=\"form-wrapper\">\n    <label> Subject [text* subject]</label>\n</div>\n\n<div class=\"form-wrapper\">\n    <label> Message [textarea* message]</label>\n</div>\n\n[submit \"Submit\"]'),
(345, 118, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"[_site_title] \"[subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <trishaamv.sayno@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:145:\"From: [fullname] [email]\nSubject: [subject]\n\nMessage Body:\n[message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(346, 118, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"[_site_title] \"[subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <trishaamv.sayno@gmail.com>\";s:9:\"recipient\";s:7:\"[email]\";s:4:\"body\";s:119:\"Message Body:\n[message]\n\nito ay reply hihe\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(347, 118, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(348, 118, '_additional_settings', ''),
(349, 118, '_locale', 'en_US'),
(351, 119, '_edit_lock', '1687504749:1'),
(352, 119, '_edit_last', '1'),
(353, 121, '_menu_item_type', 'post_type'),
(354, 121, '_menu_item_menu_item_parent', '0'),
(355, 121, '_menu_item_object_id', '119'),
(356, 121, '_menu_item_object', 'page'),
(357, 121, '_menu_item_target', ''),
(358, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 121, '_menu_item_xfn', ''),
(360, 121, '_menu_item_url', ''),
(363, 1, '_edit_last', '1'),
(365, 114, '_edit_lock', '1687478662:1'),
(367, 114, '_edit_last', '1'),
(375, 1, 'reading_time', '10mins'),
(376, 1, '_encloseme', '1'),
(377, 136, '_edit_last', '1'),
(378, 136, '_edit_lock', '1687503149:1'),
(379, 137, '_wp_attached_file', '2023/06/lengleng.jpg'),
(380, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:221;s:6:\"height\";i:228;s:4:\"file\";s:20:\"2023/06/lengleng.jpg\";s:8:\"filesize\";i:6694;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 136, '_thumbnail_id', '137'),
(382, 136, 'Position', 'International Singer'),
(383, 142, '_edit_last', '1'),
(384, 142, '_edit_lock', '1687501961:1'),
(385, 143, '_wp_attached_file', '2023/06/kim.jpg'),
(386, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2023/06/kim.jpg\";s:8:\"filesize\";i:4606;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 144, '_wp_attached_file', '2023/06/kween.jpg'),
(388, 144, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:17:\"2023/06/kween.jpg\";s:8:\"filesize\";i:5718;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 142, 'Position', 'International Singer'),
(390, 142, '_thumbnail_id', '144'),
(391, 145, '_edit_last', '1'),
(392, 145, '_edit_lock', '1687501948:1'),
(393, 145, 'Position', 'International Dancer'),
(394, 145, '_thumbnail_id', '143'),
(395, 147, '_edit_last', '1'),
(396, 147, '_edit_lock', '1687501887:1'),
(397, 147, 'Position', 'Actor'),
(398, 148, '_wp_attached_file', '2023/06/psj.jpg'),
(399, 148, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:426;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2023/06/psj.jpg\";s:8:\"filesize\";i:46223;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 147, '_thumbnail_id', '148'),
(401, 149, '_edit_last', '1'),
(402, 149, '_edit_lock', '1687501881:1'),
(403, 149, 'Position', 'Actor'),
(404, 149, '_thumbnail_id', '148'),
(405, 150, '_edit_last', '1'),
(406, 150, '_edit_lock', '1687500272:1'),
(407, 150, 'Position', 'Actor'),
(408, 150, '_thumbnail_id', '148'),
(409, 151, 'Position', 'Actor'),
(410, 151, '_edit_last', '1'),
(411, 151, '_edit_lock', '1687501917:1'),
(413, 151, '_thumbnail_id', '148'),
(414, 147, 'facebook', 'https://facebook.com'),
(415, 147, 'twitter', 'https://twitter.com'),
(416, 147, 'linkedin', 'https://linkedin.com'),
(417, 147, 'email', 'https://gmail.com'),
(418, 151, 'facebook', 'https://facebook.com'),
(419, 151, 'linkedin', 'https://linkedin.com'),
(420, 151, 'twitter', 'https://twitter.com'),
(421, 151, 'email', 'https://gmail.com'),
(422, 149, 'email', 'https://gmail.com'),
(423, 149, 'facebook', 'https://facebook.com'),
(424, 149, 'linkedin', 'https://linkedin.com'),
(425, 149, 'twitter', 'https://twitter.com'),
(426, 145, 'rating', '4'),
(427, 142, 'rating', '3'),
(428, 136, 'rating', '1'),
(429, 152, '_edit_lock', '1687505237:1'),
(430, 152, '_edit_last', '1'),
(432, 152, 'page-banner', 'http://localhost/blog2/wp-content/uploads/2023/06/psjjjj.jpg'),
(433, 119, 'page-banner', 'https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg'),
(434, 154, '_wp_attached_file', '2023/06/psjjjj.jpg'),
(435, 154, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:820;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2023/06/psjjjj.jpg\";s:8:\"filesize\";i:12317;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 155, '_menu_item_type', 'post_type'),
(437, 155, '_menu_item_menu_item_parent', '0'),
(438, 155, '_menu_item_object_id', '152'),
(439, 155, '_menu_item_object', 'page'),
(440, 155, '_menu_item_target', ''),
(441, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(442, 155, '_menu_item_xfn', ''),
(443, 155, '_menu_item_url', ''),
(445, 121, '_wp_old_date', '2023-06-22'),
(446, 117, '_wp_old_date', '2023-06-22'),
(447, 156, '_menu_item_type', 'post_type'),
(448, 156, '_menu_item_menu_item_parent', '0'),
(449, 156, '_menu_item_object_id', '152'),
(450, 156, '_menu_item_object', 'page'),
(451, 156, '_menu_item_target', ''),
(452, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(453, 156, '_menu_item_xfn', ''),
(454, 156, '_menu_item_url', ''),
(456, 157, '_menu_item_type', 'post_type'),
(457, 157, '_menu_item_menu_item_parent', '0'),
(458, 157, '_menu_item_object_id', '119'),
(459, 157, '_menu_item_object', 'page'),
(460, 157, '_menu_item_target', ''),
(461, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(462, 157, '_menu_item_xfn', ''),
(463, 157, '_menu_item_url', ''),
(465, 158, '_menu_item_type', 'post_type'),
(466, 158, '_menu_item_menu_item_parent', '0'),
(467, 158, '_menu_item_object_id', '6'),
(468, 158, '_menu_item_object', 'page'),
(469, 158, '_menu_item_target', ''),
(470, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(471, 158, '_menu_item_xfn', ''),
(472, 158, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-20 23:58:17', '2023-06-20 23:58:17', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":115,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/bb2d0be2-c7c3-33a8-9225-f5ff596ce63b.jpg\" alt=\"\" class=\"wp-image-115\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->', 'Hello world!', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sit eveniet voluptates labore in magni aliquam. Velit similique non provident nisi tempore quia nobis modi harum corporis excepturi optio nesciunt quo laudantium, autem voluptate tempora? Pariatur consectetur accusamus in est at?', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-23 00:20:43', '2023-06-23 00:20:43', '', 0, 'http://localhost/blog2/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-20 23:58:17', '2023-06-20 23:58:17', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/blog2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-21 01:21:37', '2023-06-21 01:21:37', '', 0, 'http://localhost/blog2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-20 23:58:17', '2023-06-20 23:58:17', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/blog2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-06-21 02:03:49', '2023-06-21 02:03:49', '', 0, 'http://localhost/blog2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-06-20 23:59:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-20 23:59:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=4', 0, 'post', '', 0),
(5, 1, '2023-06-21 00:18:26', '2023-06-21 00:18:26', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-06-21 00:18:26', '2023-06-21 00:18:26', '', 0, 'http://localhost/blog2/2023/06/21/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-06-21 01:18:43', '2023-06-21 01:18:43', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-06-22 04:33:19', '2023-06-22 04:33:19', '', 0, 'http://localhost/blog2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-06-21 01:18:43', '2023-06-21 01:18:43', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-06-21 01:18:43', '2023-06-21 01:18:43', '', 6, 'http://localhost/blog2/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-06-21 01:21:37', '2023-06-21 01:21:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/blog2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-21 01:21:37', '2023-06-21 01:21:37', '', 2, 'http://localhost/blog2/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-06-21 02:03:49', '2023-06-21 02:03:49', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/blog2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-06-21 02:03:49', '2023-06-21 02:03:49', '', 3, 'http://localhost/blog2/?p=9', 0, 'revision', '', 0),
(24, 1, '2023-06-21 05:36:14', '2023-06-21 05:36:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 05:36:14', '2023-06-21 05:36:14', '', 1, 'http://localhost/blog2/?p=24', 0, 'revision', '', 0),
(26, 1, '2023-06-21 06:03:39', '2023-06-21 06:03:39', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni repellat tempora quo sint atque cum officiis vel vitae quia harum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur ea consequuntur sunt dolorum ipsa illum quae incidunt sed sint id consequatur, eveniet recusandae ad necessitatibus suscipit, debitis quod voluptate maiores placeat eaque architecto voluptatum quam modi. Aperiam vel odio eos.</p>\n<!-- /wp:paragraph -->', 'Uulan Na Naman', '', 'publish', 'open', 'open', '', 'uulan-na-naman', '', '', '2023-06-21 07:07:20', '2023-06-21 07:07:20', '', 0, 'http://localhost/blog2/?p=26', 0, 'post', '', 0),
(27, 1, '2023-06-21 06:03:39', '2023-06-21 06:03:39', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni repellat tempora quo sint atque cum officiis vel vitae quia harum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur ea consequuntur sunt dolorum ipsa illum quae incidunt sed sint id consequatur, eveniet recusandae ad necessitatibus suscipit, debitis quod voluptate maiores placeat eaque architecto voluptatum quam modi. Aperiam vel odio eos.</p>\n<!-- /wp:paragraph -->', 'Uulan Na Naman', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-06-21 06:03:39', '2023-06-21 06:03:39', '', 26, 'http://localhost/blog2/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-06-21 06:21:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-21 06:21:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=28', 0, 'post', '', 0),
(29, 1, '2023-06-21 06:25:22', '2023-06-21 06:25:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus tempora nesciunt quas at iusto fuga itaque odio error quasi modi!</p>\n<!-- /wp:paragraph -->', 'Wala ako pera......', '', 'publish', 'open', 'open', '', 'wala-pera', '', '', '2023-06-21 07:07:39', '2023-06-21 07:07:39', '', 0, 'http://localhost/blog2/?p=29', 0, 'post', '', 0),
(30, 1, '2023-06-21 06:25:22', '2023-06-21 06:25:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus tempora nesciunt quas at iusto fuga itaque odio error quasi modi!</p>\n<!-- /wp:paragraph -->', 'Wala Pera', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-21 06:25:22', '2023-06-21 06:25:22', '', 29, 'http://localhost/blog2/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-06-21 06:37:31', '2023-06-21 06:37:31', '', 'Ito ay pang tatlo', '', 'publish', 'open', 'open', '', 'ito-ay-pang-tatlo', '', '', '2023-06-21 07:08:26', '2023-06-21 07:08:26', '', 0, 'http://localhost/blog2/?p=31', 0, 'post', '', 0),
(32, 1, '2023-06-21 06:37:31', '2023-06-21 06:37:31', '', 'Ito ay pang tatlo', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-06-21 06:37:31', '2023-06-21 06:37:31', '', 31, 'http://localhost/blog2/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-06-21 06:37:59', '2023-06-21 06:37:59', '', 'ito ay pang apat', '', 'publish', 'open', 'open', '', 'ito-ay-pang-apat', '', '', '2023-06-21 07:08:40', '2023-06-21 07:08:40', '', 0, 'http://localhost/blog2/?p=33', 0, 'post', '', 0),
(34, 1, '2023-06-21 06:37:59', '2023-06-21 06:37:59', '', 'ito ay pang apat', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-06-21 06:37:59', '2023-06-21 06:37:59', '', 33, 'http://localhost/blog2/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-06-21 06:40:02', '2023-06-21 06:40:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus tempora nesciunt quas at iusto fuga itaque odio error quasi modi!</p>\n<!-- /wp:paragraph -->', 'Wala akong pera...........', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-21 06:40:02', '2023-06-21 06:40:02', '', 29, 'http://localhost/blog2/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-06-21 06:40:29', '2023-06-21 06:40:29', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus tempora nesciunt quas at iusto fuga itaque odio error quasi modi!</p>\n<!-- /wp:paragraph -->', 'Wala akong pera......', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-21 06:40:29', '2023-06-21 06:40:29', '', 29, 'http://localhost/blog2/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-06-21 06:40:45', '2023-06-21 06:40:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus tempora nesciunt quas at iusto fuga itaque odio error quasi modi!</p>\n<!-- /wp:paragraph -->', 'Wala ako pera......', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-21 06:40:45', '2023-06-21 06:40:45', '', 29, 'http://localhost/blog2/?p=37', 0, 'revision', '', 0),
(41, 1, '2023-06-21 07:06:46', '2023-06-21 07:06:46', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2023-06-21 07:06:46', '2023-06-21 07:06:46', '', 1, 'http://localhost/blog2/wp-content/uploads/2023/06/img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2023-06-21 07:07:11', '2023-06-21 07:07:11', '', 'img-3', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2023-06-21 07:07:11', '2023-06-21 07:07:11', '', 26, 'http://localhost/blog2/wp-content/uploads/2023/06/img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2023-06-21 07:07:35', '2023-06-21 07:07:35', '', 'img-4', '', 'inherit', 'open', 'closed', '', 'img-4', '', '', '2023-06-21 07:07:35', '2023-06-21 07:07:35', '', 29, 'http://localhost/blog2/wp-content/uploads/2023/06/img-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2023-06-21 07:07:58', '2023-06-21 07:07:58', '', 'img-5', '', 'inherit', 'open', 'closed', '', 'img-5', '', '', '2023-06-21 07:07:58', '2023-06-21 07:07:58', '', 33, 'http://localhost/blog2/wp-content/uploads/2023/06/img-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2023-06-21 23:40:18', '2023-06-21 23:40:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 23:40:18', '2023-06-21 23:40:18', '', 1, 'http://localhost/blog2/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-06-22 00:06:45', '2023-06-22 00:06:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts', '', 'publish', 'open', 'open', '', 'latest-posts', '', '', '2023-06-22 00:44:36', '2023-06-22 00:44:36', '', 0, 'http://localhost/blog2/?p=46', 0, 'post', '', 0),
(47, 1, '2023-06-22 00:06:28', '2023-06-22 00:06:28', '', 'img-7', '', 'inherit', 'open', 'closed', '', 'img-7', '', '', '2023-06-22 00:06:28', '2023-06-22 00:06:28', '', 46, 'http://localhost/blog2/wp-content/uploads/2023/06/img-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2023-06-22 00:06:45', '2023-06-22 00:06:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-06-22 00:06:45', '2023-06-22 00:06:45', '', 46, 'http://localhost/blog2/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-06-22 00:07:35', '2023-06-22 00:07:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 2', '', 'publish', 'open', 'open', '', 'latest-posts-2', '', '', '2023-06-22 00:44:56', '2023-06-22 00:44:56', '', 0, 'http://localhost/blog2/?p=49', 0, 'post', '', 0),
(50, 1, '2023-06-22 00:07:27', '2023-06-22 00:07:27', '', 'img-6', '', 'inherit', 'open', 'closed', '', 'img-6', '', '', '2023-06-22 00:07:27', '2023-06-22 00:07:27', '', 49, 'http://localhost/blog2/wp-content/uploads/2023/06/img-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-06-22 00:07:35', '2023-06-22 00:07:35', '', 'Latest Posts 2', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-06-22 00:07:35', '2023-06-22 00:07:35', '', 49, 'http://localhost/blog2/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-06-22 00:07:57', '2023-06-22 00:07:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 2', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-06-22 00:07:57', '2023-06-22 00:07:57', '', 49, 'http://localhost/blog2/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-06-22 00:08:30', '2023-06-22 00:08:30', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 3', '', 'publish', 'open', 'open', '', 'latest-posts-3', '', '', '2023-06-22 00:45:01', '2023-06-22 00:45:01', '', 0, 'http://localhost/blog2/?p=53', 0, 'post', '', 0),
(54, 1, '2023-06-22 00:08:24', '2023-06-22 00:08:24', '', 'img-8', '', 'inherit', 'open', 'closed', '', 'img-8', '', '', '2023-06-22 00:08:24', '2023-06-22 00:08:24', '', 53, 'http://localhost/blog2/wp-content/uploads/2023/06/img-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-06-22 00:08:30', '2023-06-22 00:08:30', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 3', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-06-22 00:08:30', '2023-06-22 00:08:30', '', 53, 'http://localhost/blog2/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-06-22 00:08:52', '2023-06-22 00:08:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 4', '', 'trash', 'open', 'open', '', 'latest-posts-4__trashed', '', '', '2023-06-22 00:11:59', '2023-06-22 00:11:59', '', 0, 'http://localhost/blog2/?p=56', 0, 'post', '', 0),
(57, 1, '2023-06-22 00:08:52', '2023-06-22 00:08:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 4', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-06-22 00:08:52', '2023-06-22 00:08:52', '', 56, 'http://localhost/blog2/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-06-22 00:09:23', '2023-06-22 00:09:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 5', '', 'trash', 'open', 'open', '', 'latest-posts-5__trashed', '', '', '2023-06-22 00:11:56', '2023-06-22 00:11:56', '', 0, 'http://localhost/blog2/?p=58', 0, 'post', '', 0),
(59, 1, '2023-06-22 00:09:23', '2023-06-22 00:09:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officiis saepe sit placeat eaque numquam ipsam atque magni commodi iste consectetur?</p>\n<!-- /wp:paragraph -->', 'Latest Posts 5', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-06-22 00:09:23', '2023-06-22 00:09:23', '', 58, 'http://localhost/blog2/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-06-22 01:02:53', '2023-06-22 01:02:53', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fuga id perferendis quisquam error culpa non iure blanditiis placeat rem itaque autem nihil ducimus</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', '', '', '2023-06-22 02:08:17', '2023-06-22 02:08:17', '', 0, 'http://localhost/blog2/?p=60', 0, 'post', '', 0),
(61, 1, '2023-06-22 01:02:28', '2023-06-22 01:02:28', '', 'img-9', '', 'inherit', 'open', 'closed', '', 'img-9', '', '', '2023-06-22 01:02:28', '2023-06-22 01:02:28', '', 60, 'http://localhost/blog2/wp-content/uploads/2023/06/img-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2023-06-22 01:02:53', '2023-06-22 01:02:53', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fuga id perferendis quisquam error culpa non iure blanditiis placeat rem itaque autem nihil ducimus</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-06-22 01:02:53', '2023-06-22 01:02:53', '', 60, 'http://localhost/blog2/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-06-22 01:04:55', '2023-06-22 01:04:55', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias in deserunt voluptatum ad laboriosam, aliquam quis fuga perspiciatis hic praesentium ea quae nemo aperiam aut sit recusandae ipsa? Repellendus, quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, eligendi?', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-similique-eligendi', '', '', '2023-06-22 03:26:56', '2023-06-22 03:26:56', '', 0, 'http://localhost/blog2/?p=63', 0, 'post', '', 0),
(64, 1, '2023-06-22 01:04:33', '2023-06-22 01:04:33', '', 'img-10', '', 'inherit', 'open', 'closed', '', 'img-10', '', '', '2023-06-22 01:04:33', '2023-06-22 01:04:33', '', 63, 'http://localhost/blog2/wp-content/uploads/2023/06/img-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2023-06-22 01:04:55', '2023-06-22 01:04:55', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias in deserunt voluptatum ad laboriosam, aliquam quis fuga perspiciatis hic praesentium ea quae nemo aperiam aut sit recusandae ipsa? Repellendus, quos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, eligendi?', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-06-22 01:04:55', '2023-06-22 01:04:55', '', 63, 'http://localhost/blog2/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-06-22 01:05:34', '2023-06-22 01:05:34', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias in deserunt voluptatum ad laboriosam, aliquam quis fuga perspiciatis hic praesentium ea quae nemo aperiam aut sit recusandae ipsa? Repellendus, quos.</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, eligendi?', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-similique-eligendi-2', '', '', '2023-06-22 02:10:29', '2023-06-22 02:10:29', '', 0, 'http://localhost/blog2/?p=66', 0, 'post', '', 0),
(67, 1, '2023-06-22 01:05:27', '2023-06-22 01:05:27', '', 'img-11', '', 'inherit', 'open', 'closed', '', 'img-11', '', '', '2023-06-22 01:05:27', '2023-06-22 01:05:27', '', 66, 'http://localhost/blog2/wp-content/uploads/2023/06/img-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2023-06-22 01:05:34', '2023-06-22 01:05:34', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias in deserunt voluptatum ad laboriosam, aliquam quis fuga perspiciatis hic praesentium ea quae nemo aperiam aut sit recusandae ipsa? Repellendus, quos.</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, eligendi?', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2023-06-22 01:05:34', '2023-06-22 01:05:34', '', 66, 'http://localhost/blog2/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-06-22 01:06:14', '2023-06-22 01:06:14', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias in deserunt voluptatum ad laboriosam, aliquam quis fuga perspiciatis hic praesentium ea quae nemo aperiam aut sit recusandae ipsa? Repellendus, quos.</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, eligendi?', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-similique-eligendi-3', '', '', '2023-06-22 03:26:38', '2023-06-22 03:26:38', '', 0, 'http://localhost/blog2/?p=69', 0, 'post', '', 0),
(70, 1, '2023-06-22 01:06:05', '2023-06-22 01:06:05', '', 'img-12', '', 'inherit', 'open', 'closed', '', 'img-12', '', '', '2023-06-22 01:06:05', '2023-06-22 01:06:05', '', 69, 'http://localhost/blog2/wp-content/uploads/2023/06/img-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2023-06-22 01:06:14', '2023-06-22 01:06:14', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Alias in deserunt voluptatum ad laboriosam, aliquam quis fuga perspiciatis hic praesentium ea quae nemo aperiam aut sit recusandae ipsa? Repellendus, quos.</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, eligendi?', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2023-06-22 01:06:14', '2023-06-22 01:06:14', '', 69, 'http://localhost/blog2/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-06-22 01:06:33', '2023-06-22 01:06:33', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-quia-sit', '', '', '2023-06-22 02:13:12', '2023-06-22 02:13:12', '', 0, 'http://localhost/blog2/?p=72', 0, 'post', '', 0),
(73, 1, '2023-06-22 01:06:33', '2023-06-22 01:06:33', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-06-22 01:06:33', '2023-06-22 01:06:33', '', 72, 'http://localhost/blog2/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-06-22 01:07:17', '2023-06-22 01:07:17', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-quia-sit-2', '', '', '2023-06-22 02:13:05', '2023-06-22 02:13:05', '', 0, 'http://localhost/blog2/?p=74', 0, 'post', '', 0),
(75, 1, '2023-06-22 01:07:17', '2023-06-22 01:07:17', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2023-06-22 01:07:17', '2023-06-22 01:07:17', '', 74, 'http://localhost/blog2/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-06-22 01:07:50', '2023-06-22 01:07:50', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-quia-sit-3', '', '', '2023-06-22 02:13:44', '2023-06-22 02:13:44', '', 0, 'http://localhost/blog2/?p=76', 0, 'post', '', 0),
(77, 1, '2023-06-22 01:07:50', '2023-06-22 01:07:50', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2023-06-22 01:07:50', '2023-06-22 01:07:50', '', 76, 'http://localhost/blog2/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-06-22 01:08:07', '2023-06-22 01:08:07', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-quia-sit-4', '', '', '2023-06-22 02:13:55', '2023-06-22 02:13:55', '', 0, 'http://localhost/blog2/?p=78', 0, 'post', '', 0),
(79, 1, '2023-06-22 01:08:07', '2023-06-22 01:08:07', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-06-22 01:08:07', '2023-06-22 01:08:07', '', 78, 'http://localhost/blog2/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-06-22 01:08:19', '2023-06-22 01:08:19', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-quia-sit-5', '', '', '2023-06-22 02:14:08', '2023-06-22 02:14:08', '', 0, 'http://localhost/blog2/?p=80', 0, 'post', '', 0),
(81, 1, '2023-06-22 01:08:19', '2023-06-22 01:08:19', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2023-06-22 01:08:19', '2023-06-22 01:08:19', '', 80, 'http://localhost/blog2/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-06-22 01:08:29', '2023-06-22 01:08:29', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-quia-sit-6', '', '', '2023-06-22 03:06:40', '2023-06-22 03:06:40', '', 0, 'http://localhost/blog2/?p=82', 0, 'post', '', 0),
(83, 1, '2023-06-22 01:08:29', '2023-06-22 01:08:29', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, sit.', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2023-06-22 01:08:29', '2023-06-22 01:08:29', '', 82, 'http://localhost/blog2/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-06-22 01:50:38', '2023-06-22 01:50:38', '', '0db35a0f-41c3-3861-a9cc-4933d957ea63', '', 'inherit', 'open', 'closed', '', '0db35a0f-41c3-3861-a9cc-4933d957ea63', '', '', '2023-06-22 01:50:38', '2023-06-22 01:50:38', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/0db35a0f-41c3-3861-a9cc-4933d957ea63.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2023-06-22 01:50:40', '2023-06-22 01:50:40', '', '7c00ad97-343f-385c-adc8-947065576d7b', '', 'inherit', 'open', 'closed', '', '7c00ad97-343f-385c-adc8-947065576d7b', '', '', '2023-06-22 01:50:40', '2023-06-22 01:50:40', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/7c00ad97-343f-385c-adc8-947065576d7b.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2023-06-22 01:50:48', '2023-06-22 01:50:48', '', 'ee3d5b5e-f01e-3d3e-a780-e83100393ba2', '', 'inherit', 'open', 'closed', '', 'ee3d5b5e-f01e-3d3e-a780-e83100393ba2', '', '', '2023-06-22 01:50:48', '2023-06-22 01:50:48', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/ee3d5b5e-f01e-3d3e-a780-e83100393ba2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2023-06-21 01:58:17', '2023-06-21 01:58:17', '<h4>Ipsa ipsum facilis iste ut harum maxime. Odio alias sed placeat totam. Rerum similique repellendus quae</h4>\n<img alt=\"Perspiciatis architecto\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/0db35a0f-41c3-3861-a9cc-4933d957ea63.jpg\">\n<h4>Id id atque et distinctio quisquam architecto distinctio. Quam nisi reprehenderit ipsam assumenda deserunt. Cupiditate id fuga ut reprehenderit placeat</h4>\n<p>Nisi cumque enim facere veniam et hic. Et nulla rerum et dolore. Est atque corporis non sunt aut iure. Sit repudiandae id tempore eius. Accusantium itaque qui itaque consequuntur. Est sed nobis laudantium et magni quam. Voluptatum voluptas in aperiam. Qui aliquam aperiam sit autem dolore. Labore quia aut eos voluptatem. Distinctio esse quibusdam ut architecto. Nesciunt architecto ut facere nostrum. Commodi reprehenderit aut impedit nemo repellat necessitatibus optio itaque. Facere quas laboriosam eos dicta placeat praesentium. Occaecati voluptates aut quae aperiam autem. Fugit libero nam ullam sit suscipit eaque. Tenetur doloribus error totam rerum qui ullam. Aut nobis deleniti aut nesciunt aliquid minima sequi. Est quam a et. Eum voluptas ut rerum eos est. Molestiae sit porro odit. Ex commodi ea veritatis corrupti nulla quia. Qui ratione est velit ea dolorem quis. Vero quia est voluptatum sapiente qui dolores consequatur ad. Ipsum iusto non perspiciatis dolorem. Ut distinctio ut harum unde ab ipsam. Asperiores officia sit unde. Reprehenderit pariatur autem optio. Voluptate mollitia quae architecto consequatur fugit blanditiis autem. Aut et iusto aut fuga. Aut voluptas voluptates magnam quibusdam id. Sit laborum accusantium quisquam vel ratione. Commodi labore pariatur inventore. Sed omnis quod et consequatur. Nostrum suscipit maxime nobis quia quia molestiae. Et ut reprehenderit in tempora. Molestiae ex voluptatem sit et magni libero. Quo provident excepturi quae dolorum sit. Temporibus omnis quasi numquam qui est et. Distinctio deserunt nihil laudantium voluptatibus vero. Temporibus consequatur non inventore praesentium accusantium. Placeat non dolor placeat fugiat. Facilis ea ea dolor accusamus quae sapiente aliquam. Soluta id maiores voluptas porro hic. Occaecati itaque qui ipsum illo non deleniti enim sapiente. Mollitia eligendi quo repudiandae eum sequi. In quis soluta accusamus ipsa et iusto. Ut laboriosam accusantium sit sint inventore dolore consequatur. A velit id perferendis sapiente. Est exercitationem laudantium soluta fuga quae distinctio ut. Nemo impedit enim necessitatibus vitae minima voluptas necessitatibus. Ut omnis voluptas modi non et maiores vel eaque. Voluptas sit vel ut dignissimos ut. Voluptas veritatis impedit exercitationem velit est minima ipsa. Qui quo unde quia nihil. Omnis et repellat a. Atque atque alias quae minus quia nesciunt. Aut aut vitae et ducimus.</p>\n<h4>Assumenda ratione voluptate officiis dolorum est et in. Ratione corrupti nobis sint est molestiae vero. Repellendus eum rem neque modi est quae vitae</h4>\n<p>Praesentium et odio dolorem qui. Molestiae aperiam alias iusto suscipit a. Qui veniam et praesentium Id reprehenderit molestiae natus et nesciunt dolores velit. esse sint similique <a title=\"Quia cupiditate repellendus quibusdam iure iusto.\" href=\"http://gottlieb.biz/corrupti-quisquam-quo-corporis-magnam-autem-voluptates.html\">commodi et animi ducimus.</a></p>\n<img alt=\"Sint quis aut accusantium officiis a perspiciatis earum vero\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/7c00ad97-343f-385c-adc8-947065576d7b.png\">\n<img alt=\"Tempora dignissimos eum aut ut dolorem\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/0db35a0f-41c3-3861-a9cc-4933d957ea63.jpg\">\n<img class=\"alignright\" alt=\"Error esse consequatur laborum consequatur earum ex\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/ee3d5b5e-f01e-3d3e-a780-e83100393ba2.jpg\">\n<p>Cupiditate aut in in provident totam. Rerum necessitatibus itaque quia inventore eveniet. Est rerum quia quo sed. Vel vel omnis laudantium temporibus facilis aut maiores. Dolorem ut rerum ab voluptatem dolor. Ut reiciendis fugit ut non. Dolor non exercitationem qui voluptatem. Omnis voluptas rerum et qui voluptatibus. Voluptate ab quasi quis est ut delectus blanditiis voluptatem. Quo officiis ducimus eaque non.</p>\n\n<img src=\"http://localhost/blog2/wp-content/uploads/2023/06/ee3d5b5e-f01e-3d3e-a780-e83100393ba2.jpg\">', 'Fuga ipsa quam quia repudiandae ipsum nam', 'Optio dignissimos incidunt.', 'publish', 'open', 'open', '', 'fuga-ipsa-quam-quia-repudiandae-ipsum-nam', '', '', '2023-06-21 01:58:17', '2023-06-21 01:58:17', '', 0, 'http://localhost/blog2/fuga-ipsa-quam-quia-repudiandae-ipsum-nam/', 0, 'post', '', 0),
(88, 1, '2023-06-22 01:51:06', '2023-06-22 01:51:06', '', '2e899778-4617-3a0b-af98-46d6569dce26', '', 'inherit', 'open', 'closed', '', '2e899778-4617-3a0b-af98-46d6569dce26', '', '', '2023-06-22 01:51:06', '2023-06-22 01:51:06', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/2e899778-4617-3a0b-af98-46d6569dce26.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2023-06-22 01:51:08', '2023-06-22 01:51:08', '', '6ce5c88c-6233-383e-8c8c-1b6e7c6c3295', '', 'inherit', 'open', 'closed', '', '6ce5c88c-6233-383e-8c8c-1b6e7c6c3295', '', '', '2023-06-22 01:51:08', '2023-06-22 01:51:08', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/6ce5c88c-6233-383e-8c8c-1b6e7c6c3295.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2023-06-22 01:51:10', '2023-06-22 01:51:10', '', 'eb4d54ab-0f90-3d8f-b7dc-6f0124796574', '', 'inherit', 'open', 'closed', '', 'eb4d54ab-0f90-3d8f-b7dc-6f0124796574', '', '', '2023-06-22 01:51:10', '2023-06-22 01:51:10', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/eb4d54ab-0f90-3d8f-b7dc-6f0124796574.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2023-06-21 22:25:54', '2023-06-21 22:25:54', '<h2>Non modi ut rerum est fugit vitae. Impedit et provident sed quod</h2>\n<img class=\"aligncenter\" alt=\"Facilis optio sint explicabo sunt facere aliquid illum est voluptatem\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/6ce5c88c-6233-383e-8c8c-1b6e7c6c3295.jpg\">\n<h2>Officia ratione atque dolore vel dicta libero et eos</h2>\n<p>Atque quae inventore iure soluta. amet harum et rerum aperiam sunt. Eligendi perspiciatis ratione sed quia quis. Et voluptatem iusto laboriosam. <a title=\"Ut aut ducimus iure.\" href=\"http://dietrich.info/sit-quis-rerum-laborum-voluptas-magni\">perferendis voluptatem sed esse error.</a> neque mollitia omnis Qui deserunt quia <a title=\"Omnis atque.\" href=\"http://friesen.com/\">et saepe.</a></p>\n<img class=\"alignright\" alt=\"Voluptas doloribus mollitia minima possimus\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/eb4d54ab-0f90-3d8f-b7dc-6f0124796574.png\">\n<h2>Quia dolor numquam non amet similique. Aliquid ex ut est doloribus doloremque in. In dolorem incidunt quisquam</h2>\n<p>Saepe officiis commodi sed. Tempore iusto id molestias pariatur autem cupiditate itaque sit. Veritatis veritatis quas ut voluptatem perspiciatis. Provident error nostrum temporibus similique omnis velit sed. Exercitationem soluta quo ullam ducimus quidem. Vel ut voluptas sapiente ut qui. Cupiditate porro aut minima veritatis quo non eos perspiciatis. Illum natus repudiandae ratione quidem numquam enim aut. Nulla culpa quasi voluptatem harum repellendus sed iste. Pariatur sequi voluptatibus eos corporis. Assumenda incidunt enim est possimus. Blanditiis iure consequuntur culpa unde quam sed blanditiis. Dolores molestias omnis omnis minima. Et aut sit provident aut cum doloribus recusandae delectus. Veritatis et iure asperiores provident laborum quo et ut.</p>\n<p>Corrupti ut consectetur error quae et ad quibusdam. Numquam itaque fuga et omnis aut non voluptatem. Reprehenderit magnam facere omnis optio id. Id aperiam sint omnis quasi vero quis velit. Dolores minus maxime beatae et. Aspernatur error consequuntur fugit rerum. Natus perferendis cum iste non reprehenderit at alias beatae. Exercitationem deserunt eos ex laboriosam consequatur porro enim est. Consequatur fuga eaque dicta provident aliquid commodi. Eos dolor itaque ea quia. Voluptas ut nulla quia architecto. Distinctio voluptas autem id fuga aut aspernatur dolore.</p>', 'Quasi explicabo minus hic qui porro', 'Optio voluptas ab.', 'publish', 'open', 'closed', '', 'quasi-explicabo-minus-hic-qui-porro', '', '', '2023-06-21 22:25:54', '2023-06-21 22:25:54', '', 0, 'http://localhost/blog2/quasi-explicabo-minus-hic-qui-porro/', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2023-06-22 01:51:20', '2023-06-22 01:51:20', '', 'af68b049-feda-3a81-857a-5c399b4e5c47', '', 'inherit', 'open', 'closed', '', 'af68b049-feda-3a81-857a-5c399b4e5c47', '', '', '2023-06-22 01:51:20', '2023-06-22 01:51:20', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/af68b049-feda-3a81-857a-5c399b4e5c47.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2023-06-22 01:51:26', '2023-06-22 01:51:26', '', 'e0a8c17c-71dd-3de7-90ed-ff4c6d35ed6c', '', 'inherit', 'open', 'closed', '', 'e0a8c17c-71dd-3de7-90ed-ff4c6d35ed6c', '', '', '2023-06-22 01:51:26', '2023-06-22 01:51:26', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/e0a8c17c-71dd-3de7-90ed-ff4c6d35ed6c.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2023-06-22 01:51:30', '2023-06-22 01:51:30', '', '7677e57d-8257-3db3-987a-e2b5d86fa2a9', '', 'inherit', 'open', 'closed', '', '7677e57d-8257-3db3-987a-e2b5d86fa2a9', '', '', '2023-06-22 01:51:30', '2023-06-22 01:51:30', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/7677e57d-8257-3db3-987a-e2b5d86fa2a9.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2023-06-21 22:19:04', '2023-06-21 22:19:04', '<h3>Sit at quo est. Corporis tenetur nemo est et et. Aut quisquam enim consequatur cum velit</h3>\n<img class=\"aligncenter\" alt=\"Dolor in veritatis similique\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/e0a8c17c-71dd-3de7-90ed-ff4c6d35ed6c.png\">\n<h1>Qui dolores laudantium sed tenetur. Distinctio aut et laboriosam</h1>\n<p>Quidem assumenda sunt iusto ab architecto. Eligendi nobis nostrum qui sunt. Rem rerum est est. Molestiae veritatis ut at. Velit blanditiis veritatis nesciunt ut enim aut. Iure molestiae ducimus excepturi quia autem. Voluptatem vitae animi hic tenetur. Esse aut est aut sed iure placeat. Culpa aut et tempore. Fugit ea laboriosam cum sed error in. Consequatur est et est aut vero eveniet. Ad odit id aut possimus eum assumenda. Aut odio dolorum molestias illum labore illum. Aliquid amet mollitia quibusdam saepe fugiat deserunt. Quos et sed rem quae eligendi qui. Consectetur rerum facere illum nisi harum. Id iste quis in sed velit placeat. Vitae est eligendi odio. Qui quasi quo sint natus quo. Nemo laudantium aut cupiditate est sit. Culpa et alias ut nostrum ut. Molestias dignissimos nihil qui sapiente sint occaecati.</p>\n<h3>Numquam et mollitia ratione sapiente. Aut temporibus id praesentium beatae eos. Voluptatem ad tempora ullam</h3>\n<p>Ab nihil praesentium sunt dicta facilis. Sed voluptates hic dolorem et magni. Atque enim numquam consectetur consectetur consequatur <a title=\"Adipisci voluptate sed.\" href=\"https://abshire.info/magni-qui-placeat-et-aliquid.html\">Dolorem rem architecto omnis ipsam.</a> sunt eveniet excepturi. <a title=\"Dolorum doloremque consequatur veniam.\" href=\"http://www.haley.org/consequatur-recusandae-reprehenderit-qui-nobis-qui-dolorum-eos.html\">inventore cupiditate id. Quia qui</a> voluptas tempora sequi. Nihil enim in dolorem cum sapiente autem. Ab labore aspernatur dolor. Quis praesentium dolore nihil ut omnis. nulla quos incidunt accusamus voluptatem. <a title=\"Aliquam sunt et in.\" href=\"http://www.oreilly.com/\">ut</a> accusantium sunt et et. veniam hic eos necessitatibus. id quis ipsa. Explicabo et iure neque nihil. Beatae quam <a title=\"Est porro cum nihil laboriosam.\" href=\"http://hodkiewicz.com/laudantium-est-illo-suscipit-at-corrupti-voluptatum.html\">architecto</a> recusandae consequatur quisquam. quibusdam voluptas perferendis. <a title=\"Odit.\" href=\"http://mcglynn.info/hic-sed-beatae-molestiae-in\">in fuga beatae modi</a> non magni. sapiente perferendis et ut nihil. Exercitationem ut molestias. Eveniet sunt <a title=\"Quaerat quisquam sed vero dolor nulla non qui.\" href=\"http://wiegand.net/consectetur-at-quo-labore.html\">voluptate at. Molestiae animi quis quia</a> Blanditiis perferendis aperiam sed sed Dicta cum est iusto quas. doloribus odit quasi qui sapiente Quod velit quia dignissimos nisi et molestias. Iure expedita dolor perferendis voluptas aliquam</p>\n<img class=\"alignleft\" alt=\"Velit\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/7677e57d-8257-3db3-987a-e2b5d86fa2a9.png\">', 'Omnis ut enim consequatur consequatur ratione', '', 'publish', 'open', 'closed', '', 'omnis-ut-enim-consequatur-consequatur-ratione', '', '', '2023-06-21 22:19:04', '2023-06-21 22:19:04', '', 0, 'http://localhost/blog2/omnis-ut-enim-consequatur-consequatur-ratione/', 0, 'post', '', 0),
(96, 1, '2023-06-22 01:51:33', '2023-06-22 01:51:33', '', '8ae47ccc-2dc5-3958-98b4-c58762517880', '', 'inherit', 'open', 'closed', '', '8ae47ccc-2dc5-3958-98b4-c58762517880', '', '', '2023-06-22 01:51:33', '2023-06-22 01:51:33', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/8ae47ccc-2dc5-3958-98b4-c58762517880.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2023-06-22 01:51:45', '2023-06-22 01:51:45', '', '5c3dfad5-74d9-3463-bd1c-f4020186a506', '', 'inherit', 'open', 'closed', '', '5c3dfad5-74d9-3463-bd1c-f4020186a506', '', '', '2023-06-22 01:51:45', '2023-06-22 01:51:45', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/5c3dfad5-74d9-3463-bd1c-f4020186a506.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2023-06-22 01:51:48', '2023-06-22 01:51:48', '', '90162d09-05e3-3936-b576-d3b04586c217', '', 'inherit', 'open', 'closed', '', '90162d09-05e3-3936-b576-d3b04586c217', '', '', '2023-06-22 01:51:48', '2023-06-22 01:51:48', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/90162d09-05e3-3936-b576-d3b04586c217.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2023-06-21 09:01:08', '2023-06-21 09:01:08', '<h3>Maiores rerum rerum rerum et. Omnis voluptatem et tenetur repudiandae cupiditate. Ea adipisci maiores natus autem eos tenetur eos</h3>\n<p>Esse sed repellat. consectetur atque asperiores nesciunt. ut ullam accusantium asperiores at Velit et quia quia <a title=\"Excepturi suscipit.\" href=\"http://auer.com/\">repudiandae</a> Quibusdam dolores ratione fugiat consequatur. eum totam nam cupiditate distinctio repellendus. Et ad sit eaque sit perspiciatis quidem. ut et id illo. Aliquid exercitationem voluptas sed eveniet. Tempore sequi nobis delectus. Dolorum sed at accusamus nesciunt Adipisci earum ullam dignissimos quis rerum deserunt. Culpa qui dolorum nihil voluptatem. Ducimus alias et ipsum fuga. Voluptatem hic optio qui consequatur Minima neque qui in Quo eius blanditiis qui provident saepe. Ut voluptas sunt consequuntur veniam quibusdam ducimus Corrupti quos aut necessitatibus ducimus vel laudantium</p>\n<h2>Ut impedit rerum et sint libero nemo impedit</h2>\n<img class=\"alignright\" alt=\"Quia ut commodi impedit vero\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/5c3dfad5-74d9-3463-bd1c-f4020186a506.jpg\">\n<h2>Doloribus eaque consequatur optio. Excepturi ipsa eligendi assumenda cupiditate totam</h2>\n<p>Totam voluptatem accusamus odio sint ab cum. Asperiores ut quis non dicta. Quia omnis sit aspernatur Voluptatem maxime hic. Rerum id facilis omnis distinctio. Et molestiae ea explicabo cupiditate Natus ratione accusantium ipsam quasi. Ipsa quas veritatis dicta. Cupiditate harum nobis soluta. Quod dolorum dignissimos officiis enim Optio et officia amet iste. Tenetur est dolorem repellat quaerat. sequi quas nesciunt architecto est aut. Iste minus laborum saepe enim. Labore occaecati nesciunt modi quo id. cumque ipsa est maiores. Unde optio debitis eum ex. <a title=\"Maxime consequatur dolores modi dolorum ab quisquam quos laborum facilis.\" href=\"https://turner.com/nemo-cumque-ratione-iste-consequuntur-non-architecto-eveniet-est.html\"><a title=\"Quis explicabo delectus ullam.\" href=\"http://schoen.com/nemo-cupiditate-expedita-similique-vel-recusandae\">repudiandae occaecati</a></a> repellendus perferendis saepe Voluptas dolorum nemo magnam. Omnis molestiae sit quas. Nulla eum et sit distinctio. Et deleniti tenetur qui Sit non quae repellendus nemo Et ut quia aspernatur a dicta distinctio nihil. Commodi autem quasi cum Dolores explicabo quia eos illo quis a. Sit amet illo ipsum Quam enim iste cumque ut et cupiditate Debitis ad id et possimus. Id optio optio nam. Perspiciatis mollitia adipisci quia Voluptates est laboriosam ad et. unde velit qui consectetur dolorem optio sint. Ut qui labore eveniet.</p>\n<h3>Dolorem culpa non sequi voluptatem. Qui nobis similique eligendi et rerum. Tempora totam vitae perspiciatis labore eveniet ratione vel</h3>\n<img alt=\"Culpa sint\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/90162d09-05e3-3936-b576-d3b04586c217.png\">', 'Necessitatibus excepturi nisi cum', '', 'publish', 'open', 'closed', '', 'necessitatibus-excepturi-nisi-cum', '', '', '2023-06-21 09:01:08', '2023-06-21 09:01:08', '', 0, 'http://localhost/blog2/necessitatibus-excepturi-nisi-cum/', 0, 'post', '', 0),
(100, 1, '2023-06-22 01:51:55', '2023-06-22 01:51:55', '', '40b25114-5635-327c-bb9c-f43c2c4d6265', '', 'inherit', 'open', 'closed', '', '40b25114-5635-327c-bb9c-f43c2c4d6265', '', '', '2023-06-22 01:51:55', '2023-06-22 01:51:55', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/40b25114-5635-327c-bb9c-f43c2c4d6265.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2023-06-22 01:52:06', '2023-06-22 01:52:06', '', '31726b8a-42af-318a-b727-b95d5e8abdc6', '', 'inherit', 'open', 'closed', '', '31726b8a-42af-318a-b727-b95d5e8abdc6', '', '', '2023-06-22 01:52:06', '2023-06-22 01:52:06', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/31726b8a-42af-318a-b727-b95d5e8abdc6.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2023-06-21 13:07:02', '2023-06-21 13:07:02', '<h1>Quae tenetur iusto possimus incidunt voluptas molestias</h1>\n<img alt=\"Consequatur et est et iure dolorem beatae et repellendus quas deleniti sequi\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/af68b049-feda-3a81-857a-5c399b4e5c47.jpg\">\n<h1>Et at et deleniti eum cupiditate. Maiores sunt libero inventore</h1>\n<img class=\"alignright\" alt=\"Velit consectetur et ut ut sit maxime cupiditate aut aperiam et\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/31726b8a-42af-318a-b727-b95d5e8abdc6.jpg\">\n<p>Neque natus accusantium sit id <a title=\"Soluta.\" href=\"http://www.pagac.com/ex-doloribus-perferendis-sint-praesentium.html\">officiis.</a> est aut est Consectetur possimus quisquam enim qui non <a title=\"Suscipit aut assumenda.\" href=\"http://hane.com/velit-sed-aliquam-facere-cum.html\">delectus quia. Nemo</a> labore consequatur quaerat qui pariatur Laboriosam sint itaque sed ipsam <a title=\"Aut distinctio.\" href=\"http://dickens.com/sit-blanditiis-est-explicabo\"><a title=\"Accusantium quas voluptates.\" href=\"https://kling.com/ut-quibusdam-sint-modi-voluptatem.html\">id ullam dolorem.</a></a> repellat voluptatibus est consequuntur. Molestiae quis saepe Explicabo <a title=\"Vel quis voluptatum praesentium itaque voluptatem iusto voluptas.\" href=\"https://brekke.com/repellendus-itaque-sapiente-rerum-exercitationem-aliquam-et-sunt.html\">laboriosam</a> Ut accusantium repellendus enim et quos. consequatur corrupti repellat quae et sit.</p>\n<h2>Magnam vel beatae vel. Qui et quisquam blanditiis quo veniam. Qui deleniti quo eaque in. Autem non quae distinctio</h2>\n<img class=\"alignleft\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/ee3d5b5e-f01e-3d3e-a780-e83100393ba2.jpg\">', 'Ipsa debitis quisquam quia quis natus', '', 'publish', 'open', 'open', '', 'ipsa-debitis-quisquam-quia-quis-natus', '', '', '2023-06-21 13:07:02', '2023-06-21 13:07:02', '', 0, 'http://localhost/blog2/ipsa-debitis-quisquam-quia-quis-natus/', 0, 'post', '', 0),
(103, 1, '2023-06-22 01:52:16', '2023-06-22 01:52:16', '', 'ef8ef232-7e4d-3685-b7bf-713ce826425e', '', 'inherit', 'open', 'closed', '', 'ef8ef232-7e4d-3685-b7bf-713ce826425e', '', '', '2023-06-22 01:52:16', '2023-06-22 01:52:16', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/ef8ef232-7e4d-3685-b7bf-713ce826425e.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2023-06-21 20:17:25', '2023-06-21 20:17:25', '<h1>Numquam aut et pariatur. Necessitatibus consequatur sunt et impedit exercitationem ex quo. Qui id doloremque ut qui unde consequatur molestiae</h1>\n<img src=\"http://localhost/blog2/wp-content/uploads/2023/06/ef8ef232-7e4d-3685-b7bf-713ce826425e.jpg\">\n<h4>Consequatur velit est fugiat aut ex eligendi consequatur. Praesentium ut enim deserunt id</h4>\n<p>Rerum omnis sequi eos excepturi architecto quaerat saepe. <a title=\"Vel et cumque sunt consequatur est ut.\" href=\"http://www.gutmann.com/voluptatum-fugit-adipisci-doloribus-asperiores\">dignissimos</a> doloribus quibusdam quis Sunt aut nostrum quo repellat perspiciatis vel <a title=\"Expedita ducimus in harum laborum ea et architecto odio.\" href=\"http://www.beer.biz/numquam-ipsum-corporis-voluptate-maxime-adipisci-incidunt-alias-neque.html\">Veritatis ducimus quasi et saepe dolorum. Magnam eum autem</a> velit ex voluptatem Voluptatem voluptate eaque quaerat temporibus Quos dolorem fuga aut et voluptates. Nemo a nobis <a title=\"Rerum.\" href=\"https://www.cormier.com/sit-nulla-error-illo-nobis-dolor\">est. Corporis maiores</a> enim autem qui natus similique. Similique fuga commodi exercitationem voluptatem. Velit eligendi tenetur animi. Voluptas id impedit laborum et magni. At numquam dolorum aut quod velit <a title=\"Quo sit id enim eos ullam et.\" href=\"http://www.hackett.com/dolorum-sit-assumenda-eum-facilis-vel-reprehenderit-aspernatur-quidem.html\">Molestiae consequatur nihil</a> et. Iure distinctio cupiditate quis quo ducimus. Laborum veritatis molestiae distinctio. Earum quibusdam <a title=\"Ipsam dolorem autem a totam minima voluptatem non.\" href=\"http://nolan.com/\">deserunt eum.</a> incidunt voluptas nihil. Vel est recusandae nisi. Error delectus itaque consequatur omnis. <a title=\"Aut dolorem eaque.\" href=\"http://nicolas.org/praesentium-tempore-fugit-voluptatem\">veniam sapiente asperiores aut commodi</a> molestias. Minus voluptate dolorum earum consequatur accusantium Culpa repellat alias est beatae. Illo facere nostrum nostrum ut. Animi velit ad.</p>\n<h4>Qui aliquid et harum aperiam ab rerum vero. Sunt tempora repellat neque voluptatum assumenda vel vel</h4>\n<p>Itaque iure reprehenderit culpa facere <a title=\"Voluptatem voluptas velit aliquam.\" href=\"http://www.littel.com/necessitatibus-facere-officiis-aut-debitis-quis-nam-ipsam\">sed magnam. Ratione</a> voluptatem delectus dolorem aut libero. Culpa praesentium et corporis minus. Maiores tempore nemo soluta. Dolores molestias doloribus autem rem consequatur. Dicta magnam vero fugit commodi ipsum. qui rerum beatae est beatae fugiat perspiciatis. Illo voluptas et est molestiae. Expedita porro omnis ducimus dolorem porro. Incidunt id <a title=\"Quam quia et.\" href=\"http://hettinger.com/ut-quis-saepe-totam-dicta-molestiae-ea\">unde sed accusamus pariatur placeat.</a> et eum consequuntur excepturi</p>\n<h3>Dolores dolorem unde qui temporibus. Dolorem laudantium qui consequatur</h3>\n<p>Mollitia minus repellendus ipsam neque repellat officia. Consequuntur non quidem aut eos culpa. ratione consectetur impedit illum. Veritatis illum repellat accusantium alias tempora. Et ut reiciendis qui aut commodi. Doloribus maxime placeat. Et repellat aut Quia assumenda sit nam tempore deserunt porro assumenda Quod non ullam iste ipsum. harum quia voluptate ad excepturi. Autem doloribus voluptas molestias hic repellat. quaerat assumenda unde nemo dolorem. A excepturi ex Sunt et error et distinctio voluptate Illo voluptatem molestiae Aut eum nobis sit. Pariatur a est numquam delectus nesciunt.</p>', 'Nisi rerum odit sunt debitis', '', 'publish', 'open', 'closed', '', 'nisi-rerum-odit-sunt-debitis', '', '', '2023-06-21 20:17:25', '2023-06-21 20:17:25', '', 0, 'http://localhost/blog2/nisi-rerum-odit-sunt-debitis/', 0, 'post', '', 0),
(105, 1, '2023-06-22 01:52:19', '2023-06-22 01:52:19', '', 'e0ceaa7e-49ed-31db-971e-007e1db1a2dd', '', 'inherit', 'open', 'closed', '', 'e0ceaa7e-49ed-31db-971e-007e1db1a2dd', '', '', '2023-06-22 01:52:19', '2023-06-22 01:52:19', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/e0ceaa7e-49ed-31db-971e-007e1db1a2dd.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2023-06-21 21:59:00', '2023-06-21 21:59:00', '<h3>Quasi eos asperiores neque quia. Explicabo veritatis non non placeat impedit</h3>\n<p>Laborum quo non et non consequatur. <a title=\"Autem et rerum.\" href=\"http://www.hessel.com/sit-ipsam-magni-beatae-natus-dignissimos\">a enim eos</a> autem consectetur id Inventore impedit aut praesentium officiis illum adipisci natus. Accusamus doloribus saepe officia voluptates voluptatem. Commodi laboriosam non aspernatur et enim Quidem et ut est autem ad. aperiam fugiat soluta distinctio aliquid earum. Illo dolores aut aut. Illum culpa qui quo ipsa. Numquam quasi qui inventore voluptate aut at. Aliquam eum ipsam et sed. Ipsum non repudiandae enim. sed occaecati sit. Et labore dignissimos explicabo non Pariatur autem velit est commodi est ratione. Dignissimos magnam praesentium et eius corporis. Et eaque dolore culpa mollitia porro. Doloribus quo omnis beatae quia sint. maiores ex delectus est autem. officia nam eligendi suscipit sit consequatur. Et et quis inventore voluptatum aliquid. Est quaerat optio. Consequatur qui corporis dolor ea. Ex cumque numquam cupiditate optio. Aut dolor id et. Nihil magni iste quidem veniam. Et ab nobis enim voluptatem quibusdam. Aspernatur voluptas <a title=\"Dolor officiis aliquam.\" href=\"http://www.feeney.com/mollitia-dignissimos-facilis-amet-animi-consequatur-qui-reprehenderit-sed\">occaecati nulla eum.</a> at qui voluptas. Sed et molestiae eaque autem. Est accusamus enim qui id Numquam quam numquam aspernatur. saepe ut enim quidem sint. optio culpa consequuntur ipsum error amet. Inventore asperiores facilis omnis voluptatem velit. Est cum eveniet incidunt repudiandae dignissimos esse. Similique et cum vel possimus.</p>\n<h2>Quia et vero ea eligendi sint. Quibusdam inventore et ut occaecati. Vero aut non commodi omnis voluptates illo dolorum</h2>\n<p>Sequi consequatur exercitationem sit nisi velit. <a title=\"Et magni praesentium fuga maiores commodi perferendis laudantium.\" href=\"http://jast.com/aut-deleniti-odit-hic-ullam-magnam-aut-consequuntur-blanditiis\">est unde</a> reiciendis cupiditate. aut nesciunt alias odit aliquid laboriosam. Rerum nemo suscipit ut laboriosam consectetur Vel sed nesciunt recusandae accusantium. Cupiditate neque aut distinctio id et. dolores explicabo quaerat earum a. Aliquam sunt harum aliquam iste voluptas. quibusdam alias et quis. Ad sit inventore voluptate quas. Debitis aut nihil omnis libero rerum non. Velit asperiores debitis vitae <a title=\"Aut.\" href=\"http://www.stracke.com/consequatur-labore-assumenda-assumenda-et\">aut fugit earum. Velit quis</a> nobis culpa eum voluptas</p>\n<h3>Omnis voluptatem aperiam unde voluptates repellendus</h3>\n<p><a title=\"Occaecati sunt ea tempore.\" href=\"http://www.mohr.net/\">Voluptates et ut eius</a> ratione est sed. quo consequatur <a title=\"Voluptatem mollitia perspiciatis assumenda sed laborum perferendis.\" href=\"http://reynolds.com/\">repudiandae</a> iure. Sunt non asperiores et quisquam. Dolorum labore dolorum placeat. Est amet <a title=\"Tenetur corrupti optio et molestiae excepturi ratione rerum exercitationem minima.\" href=\"http://champlin.com/\"><a title=\"Possimus voluptatem exercitationem commodi.\" href=\"http://halvorson.org/eos-ea-consectetur-vero\">dignissimos cupiditate et quod.</a></a> nisi quibusdam ut non. <a title=\"Cumque.\" href=\"http://okon.com/veniam-dolor-aut-eveniet-sit\">doloribus rerum rerum.</a></p>\n<h1>Dolor asperiores ut corrupti tenetur</h1>\n<p><a title=\"Ut iure optio.\" href=\"http://www.jacobs.net/ut-aut-itaque-et-molestiae\">Aut recusandae velit</a> et necessitatibus nihil. Veniam recusandae quod eos nemo sunt. est nobis atque pariatur odit. Excepturi voluptatem veritatis sit et. Ut dignissimos dicta aperiam quidem. Omnis sit <a title=\"Qui.\" href=\"http://www.ullrich.com/omnis-repudiandae-nemo-natus-enim-est.html\">veniam ipsum ut</a> In laudantium ut quo voluptas. et quasi optio Quas enim voluptas explicabo. Sunt aut minima delectus voluptatem aspernatur officiis. Cupiditate animi odit dolor <a title=\"Ut facilis ipsum.\" href=\"http://ebert.net/repellat-enim-cumque-minima-fugiat-autem-veritatis-asperiores\">Corporis fugiat rerum</a> Incidunt sit dolorum molestiae rem odio exercitationem illum. dolor autem aspernatur perferendis dolores. Velit architecto culpa id molestias et. facilis nam sit omnis illo ut <a title=\"Non et unde numquam neque.\" href=\"http://weimann.com/eveniet-unde-sunt-dignissimos-unde\">Voluptas voluptas</a> rerum aut deleniti. Eaque at est. Dolor et ut fugit <a title=\"Rerum nesciunt culpa modi quaerat sequi.\" href=\"http://hegmann.org/\">magnam necessitatibus corrupti nihil.</a> aut molestiae mollitia repudiandae. repellat ut ab accusantium amet quis. Eos voluptatibus et architecto soluta rerum. Est harum magnam modi est illum deserunt.</p>\n<p>Dolor placeat consequuntur neque sed placeat sed deserunt dolores. Eos sint reiciendis accusantium est possimus. Id sunt minima quas omnis. Eos ex unde et commodi. Quis autem dolores ea expedita voluptas soluta magni. Ut enim vel est quaerat nihil. Molestiae at in est ut rerum. Magni omnis quasi sit esse molestiae. Fuga et animi repudiandae quod velit ad omnis dolor. Adipisci dolorum excepturi eos corrupti esse. Magnam at molestiae qui tenetur voluptas quia. Placeat perferendis molestiae sit ducimus. Ratione eos inventore nesciunt expedita et dolor nam. Enim facere magnam et minus rerum sunt. Ullam dolor dolores molestias eum illo. Sed et molestias quia minus consequatur et voluptas. Ipsam voluptatibus placeat autem aspernatur aut consectetur iure vero. Aut quaerat pariatur explicabo veniam. Enim et ipsam ab veniam odit quod. Alias repudiandae minus repudiandae est quas cum. Ut laudantium voluptatem hic sed. Dignissimos enim voluptas voluptatibus eius sed qui. Assumenda nihil tempora voluptas corporis sequi officiis. Qui nemo earum earum ut nesciunt perferendis. Maiores corrupti assumenda aut laborum. Sit cum vitae aut eligendi ut quibusdam suscipit. Magni cum ea officiis recusandae quas ut iure. Iusto consequatur sit rerum. Quaerat aut magni enim est pariatur. Nulla reprehenderit quibusdam sit culpa iure qui. Neque officiis ut rerum quis. Ab eligendi voluptate dolorem praesentium. Itaque accusantium esse dignissimos ex totam. Laborum officiis ut similique sint modi. Veritatis voluptatem officiis laborum autem ut dicta. Commodi exercitationem facere voluptas magnam et officia. Et amet illo sit. Officiis omnis ut repellat. Omnis a aut omnis voluptas omnis aut. Temporibus odio praesentium eos ipsum est ducimus. Minus vitae inventore officiis nesciunt nulla iste.</p>\n<h1>Reprehenderit sed ut minima voluptas. Quis tempore consectetur est. Recusandae ratione nam fugiat sit culpa. Tempore facere reiciendis sed eveniet rerum rerum</h1>\n<p>Quidem consequatur repellendus harum distinctio. Ullam et minus non accusantium sed nam unde. Neque exercitationem itaque fugiat quo ut aut quia non. Deleniti voluptates aut aspernatur. Voluptatem quidem incidunt consequatur tempore. Qui illum atque eos. Illum officiis similique illo suscipit vero. Eum cumque voluptatem repellendus et aut. Ullam qui commodi occaecati error. Dolorum cupiditate in quo minima quae et reprehenderit. Exercitationem occaecati quo aperiam non recusandae asperiores. Voluptatum impedit quis perspiciatis distinctio.</p>\n<p>Vero sapiente qui fugiat sit aliquam. ex in nisi sequi. Autem animi numquam. Ea suscipit omnis consequatur. Pariatur ducimus hic eaque cum ut minima. Rerum voluptate quasi alias dolorem. Voluptates numquam nostrum et. Similique cupiditate dolores odio. inventore cum voluptates Doloremque quisquam et dolores in sapiente. Laboriosam rerum dolorem facilis. animi est quos provident Maiores <a title=\"Enim doloremque iusto.\" href=\"http://www.tremblay.com/vel-omnis-ut-perferendis-minima-ab\">accusantium nulla ea qui</a> Impedit ut voluptas iste. Consectetur id vel qui. omnis molestiae voluptates nostrum. eos ut iusto quis in. Nihil qui quia debitis adipisci. Voluptate quisquam similique Quae tempore dolorem. Earum non et quia aut doloremque. Consequuntur et consequuntur possimus. voluptatum labore fugit non quidem dignissimos. Doloremque qui enim dolorum qui. Quasi non quae eius quia reiciendis Corporis quam officia voluptas explicabo quae aut.</p>', 'Laudantium aut aperiam voluptates sapiente est tempora', '', 'publish', 'open', 'closed', '', 'laudantium-aut-aperiam-voluptates-sapiente-est-tempora', '', '', '2023-06-21 21:59:00', '2023-06-21 21:59:00', '', 0, 'http://localhost/blog2/laudantium-aut-aperiam-voluptates-sapiente-est-tempora/', 0, 'post', '', 0),
(107, 1, '2023-06-22 01:54:07', '2023-06-22 01:54:07', '', '76c39caa-549e-39c8-baef-09a791607f19', '', 'inherit', 'open', 'closed', '', '76c39caa-549e-39c8-baef-09a791607f19', '', '', '2023-06-22 01:54:07', '2023-06-22 01:54:07', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/76c39caa-549e-39c8-baef-09a791607f19.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2023-06-21 20:28:06', '2023-06-21 20:28:06', '<h3>Consectetur iure ratione labore aut quae aut enim. Suscipit non est ipsa ipsam et cupiditate aut</h3>\n<p>Autem <a title=\"Non.\" href=\"https://www.wehner.com/ut-voluptatibus-maiores-consequatur-dolorum-ad-est\">qui laboriosam laudantium</a> earum Libero doloribus dolorem deleniti sed <a title=\"Nesciunt excepturi.\" href=\"https://adams.com/commodi-quibusdam-sed-cumque-possimus-aut-est-officia.html\">molestias doloremque</a> Qui ex omnis delectus id. quasi vero consequatur aspernatur Repellat cum tempora est eaque expedita Non minus sunt asperiores cumque <a title=\"A deleniti.\" href=\"http://kohler.com/error-ullam-dolorem-sit-quia\">ipsum et. Inventore officiis debitis ea non</a> quidem voluptatem voluptates. Aut velit <a title=\"Aut.\" href=\"https://champlin.com/est-unde-porro-totam-tenetur-odio-id-fugiat.html\">voluptatibus.</a> suscipit dolore in modi minima Et et et <a title=\"Quidem voluptates illo enim possimus sequi.\" href=\"http://kshlerin.biz/\">non impedit. Omnis sint ad</a> nulla quam. Amet accusamus cumque sed at aspernatur. iusto omnis nobis cumque autem iure <a title=\"Veritatis laboriosam provident est.\" href=\"http://osinski.com/\">quia. Delectus qui quibusdam</a> et ducimus libero nostrum. Dolor ea dolorem sunt illo qui. Qui fugiat <a title=\"Autem perferendis eos quibusdam molestiae et ut quia odio ut eum.\" href=\"http://cartwright.com/\">temporibus</a> Et consequatur et labore quia autem deleniti. Officia sint non sunt aut hic. Est possimus sint.</p>\n<h4>Sequi qui quam qui repellendus. Quaerat architecto possimus rerum ipsum a. Corporis esse atque odio nihil temporibus ut dolorem dignissimos</h4>\n<p>Eius quis mollitia ducimus est sed sit. Qui laudantium porro at <a title=\"Sit adipisci ut officia mollitia.\" href=\"http://deckow.com/inventore-sit-maxime-minima-dolore-omnis\">Iure repellat pariatur eum. Aut</a> ut ipsum enim ipsam voluptatem. Natus ut iure in et facilis Asperiores eaque temporibus dolor alias. Ullam et ut minus et. quae laborum exercitationem Mollitia libero fuga reprehenderit impedit Explicabo distinctio repellat doloremque ut voluptas Corporis autem ut reiciendis voluptatibus alias. Accusamus quaerat non consequuntur. <a title=\"Magni ipsum quasi.\" href=\"http://wehner.com/nihil-corrupti-sunt-aut-tenetur-harum-doloribus-adipisci\">nisi voluptatum quibusdam sit</a> beatae Voluptate eaque aliquam optio Dolorem accusantium molestiae qui et a. Rerum facilis officiis porro. Ipsum temporibus quam voluptatem nisi Nisi qui repellat <a title=\"Aut.\" href=\"http://www.oreilly.com/veritatis-voluptatem-ratione-omnis-qui-aut-ea.html\">soluta dolorem nostrum.</a> reiciendis quo esse odio et minus. porro quisquam iure iusto. Ea voluptatum temporibus molestias. Non voluptatum consequuntur soluta deleniti. Quo quam est assumenda qui nulla Repellendus tempora sunt Quidem quam sed temporibus quod nisi. Vitae perferendis ducimus repellat atque modi qui. Laboriosam ab <a title=\"Enim temporibus eos.\" href=\"http://kunze.org/quia-magni-in-beatae-recusandae-aut-voluptatem-at-saepe\">sapiente</a> aliquam illum Vel reiciendis animi error sit. Facere <a title=\"Perferendis.\" href=\"http://moen.com/sed-aut-explicabo-maxime-molestiae-iure\">nulla deserunt praesentium</a> quas consequuntur. Vel aut sit Nisi quia cupiditate officia id. sed asperiores incidunt iure accusamus vel. ratione et accusantium aut.</p>\n<h3>Beatae maxime saepe nostrum id. Consequatur eum placeat voluptatem nostrum ratione</h3>\n<p>Quia sit voluptas Consequatur voluptatibus exercitationem est enim voluptates quo. Laboriosam temporibus fuga recusandae earum. Et et et omnis. Repellat praesentium <a title=\"Fugit dolore.\" href=\"http://www.cronin.com/quis-ipsa-temporibus-soluta-voluptate\">voluptatem</a> voluptas tenetur.</p>\n<p><a title=\"Ut quia repudiandae accusamus.\" href=\"https://reilly.com/ratione-tempora-deleniti-veritatis-ratione-exercitationem.html\">Magnam quia</a> qui numquam dolorum. Temporibus animi <a title=\"Harum.\" href=\"http://schamberger.net/\">molestiae eius</a> cum adipisci. Molestiae repudiandae maxime dolorum <a title=\"Voluptatem asperiores sint et.\" href=\"http://www.block.com/alias-quam-ad-consequatur-a-provident-et-dicta\">repellat. Doloremque cum et ut</a> quidem non magnam voluptates. <a title=\"Quisquam necessitatibus.\" href=\"http://johnson.com/\">omnis nesciunt delectus quae</a> <a title=\"Consectetur sit tempora sed.\" href=\"https://www.reichert.com/est-illo-ea-et-aspernatur-saepe\">Ducimus ut rerum</a> nesciunt illum <a title=\"Ut voluptates beatae culpa aut.\" href=\"https://wisozk.org/eaque-voluptatem-ipsam-minus-quis.html\">Reprehenderit doloremque quia dignissimos. Et veritatis natus est ut.</a> est laboriosam explicabo est saepe</p>\n<h2>Et natus quia deleniti quaerat</h2>\n<p>Suscipit et porro <a title=\"Id molestias odit dolores et nihil et aliquam corporis facere distinctio veniam et.\" href=\"http://www.ortiz.com/voluptatibus-nam-excepturi-dolores-earum-sit-est.html\">est. Doloribus nostrum excepturi</a> <a title=\"Quibusdam voluptatem.\" href=\"http://www.russel.org/deserunt-et-laborum-omnis-quisquam-et-et-adipisci-quae\">odio</a> quaerat est. eos quia est dolore voluptatibus. perspiciatis iusto <a title=\"Ipsam et laudantium et explicabo voluptatem at est qui.\" href=\"http://www.christiansen.com/\">modi debitis</a> Veritatis qui reprehenderit possimus iste quasi est.</p>\n<h4>Doloribus quis mollitia optio fugit voluptatum et consequatur. Qui et modi dolorum itaque</h4>\n<p>Beatae debitis rem assumenda a qui eveniet. Debitis eos rerum exercitationem illum est. Velit atque minima ad necessitatibus. Nisi doloribus autem quasi facilis non vel quos. Qui odio libero blanditiis beatae mollitia dolor blanditiis. In quam eum ipsa mollitia. Molestias earum quas qui totam. Non deserunt fuga earum aut. Non veritatis quaerat hic quis quod. Quam nesciunt nisi ut autem praesentium esse facilis harum. Voluptatem veniam aspernatur eligendi aut ipsum saepe et. Eum repellendus aut et inventore in. Sed omnis qui atque quia laborum nihil unde. Dolore quae alias deserunt aliquam maiores dolorem optio aliquam. Sed tempore reiciendis beatae et praesentium. At impedit sapiente non autem ratione quia non expedita. Commodi qui earum eius consectetur facere. Eum quia cumque ad neque. Alias est rerum ut quo. Est quibusdam mollitia sed veniam. Nesciunt debitis quia ex ut aut molestiae nesciunt. Cumque iste ut voluptate omnis. Aut alias doloribus sequi exercitationem. Ex eveniet assumenda inventore autem quia. Vel corporis tenetur deserunt sit. Debitis quaerat totam ullam quam dolor rerum molestiae dolor. Dicta ex illum veritatis assumenda quos et. Ut id doloribus ut odit debitis. Velit et sed alias iusto dignissimos. Delectus exercitationem ipsam et rerum maiores repellat quae. Quia qui sapiente explicabo voluptatum repudiandae nisi. Doloremque ea quis repudiandae perspiciatis atque nulla. Vel optio non sed accusamus. Ut voluptatem non sit. Voluptatem possimus qui culpa facere ut incidunt. Quibusdam excepturi dignissimos esse veritatis ipsum praesentium deserunt.</p>\n<p>Sed quia adipisci exercitationem autem. Voluptatem nostrum qui quis. Consectetur est odit et repudiandae. Sapiente qui et sunt inventore perferendis quidem. Et quas corporis et fuga quia.</p>', 'Repellendus neque beatae et hic', 'Excepturi sint.\n\nQuia qui.', 'publish', 'open', 'open', '', 'repellendus-neque-beatae-et-hic', '', '', '2023-06-21 20:28:06', '2023-06-21 20:28:06', '', 0, 'http://localhost/blog2/repellendus-neque-beatae-et-hic/', 0, 'post', '', 0),
(109, 1, '2023-06-22 01:54:10', '2023-06-22 01:54:10', '', '868cecc3-c8c2-3aab-aa56-939372f93302', '', 'inherit', 'open', 'closed', '', '868cecc3-c8c2-3aab-aa56-939372f93302', '', '', '2023-06-22 01:54:10', '2023-06-22 01:54:10', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/868cecc3-c8c2-3aab-aa56-939372f93302.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2023-06-21 03:04:27', '2023-06-21 03:04:27', '<h2>Rerum distinctio velit non facilis. Voluptas quam optio et odio praesentium ut autem</h2>\n<p>Quia laborum dolorum odio dignissimos. Aliquid et in aut. Officia rerum voluptatibus qui. Molestiae blanditiis velit et quia. A ullam quidem. sed modi dolor nemo Odio est natus ipsum Provident numquam nemo quos possimus architecto. Alias odit et maxime in voluptas. facere deserunt eius temporibus Quo vel nam quia quis quis hic error. minus illum magni dolores explicabo labore. Optio rerum et quia facere corporis. Earum facilis autem <a title=\"Animi velit quis natus dolor.\" href=\"http://www.renner.biz/alias-reiciendis-ut-ut-qui-nobis-eum\">esse officiis. Harum facilis incidunt commodi</a> optio dolorem. enim temporibus modi reiciendis. Ut quis temporibus non Reiciendis sunt in aliquid aperiam aut. Impedit omnis et facere nihil sit sapiente Et et impedit et ipsum repellat. Veniam debitis consequatur similique quisquam. Similique beatae doloribus deleniti quia nam.</p>\n<h2>Officiis ut iste rerum soluta voluptas minus. Vero at non laboriosam</h2>\n<p>Est autem sed et quo. Ut occaecati consequatur aperiam. Qui nesciunt iste sed repellendus voluptatem qui sunt. Excepturi et sed sed doloribus voluptatem.</p>\n<h1>In corrupti ipsum natus iure voluptatem suscipit possimus. Eum eius vel nulla hic quis. Beatae esse labore natus et cum libero inventore</h1>\n<p><a title=\"Velit amet rerum illum.\" href=\"http://www.schamberger.com/qui-vitae-dolorum-ea-possimus-qui.html\"><a title=\"Odio.\" href=\"https://funk.info/laudantium-dolores-culpa-nam-asperiores-qui-eos-sit-aspernatur.html\"><a title=\"Doloribus nihil sit mollitia.\" href=\"http://rodriguez.com/atque-accusantium-inventore-eos-aut-repellendus-consectetur-omnis.html\"><a title=\"Saepe consectetur necessitatibus.\" href=\"https://www.kohler.com/et-est-dolores-tempora-nulla-necessitatibus-tempore\"><a title=\"Est consectetur sed repudiandae dolore distinctio esse.\" href=\"http://swift.com/dolorum-molestiae-eligendi-maiores-voluptatem-ipsam-fuga.html\"><a title=\"Adipisci quo dolor voluptas qui.\" href=\"http://www.trantow.com/quia-voluptatem-consectetur-quis-repudiandae-ut\">Soluta aut</a></a></a></a></a></a> voluptas earum. Temporibus dolorem minima et quam. Exercitationem nesciunt ullam aut harum ullam non. eius est dolore dolor eius</p>\n<h3>Sed iusto veritatis dicta aut nihil. Quasi quia est modi nostrum et. Ut est libero sint voluptas</h3>\n<p>Aspernatur sint unde. Cum quia odit enim occaecati et molestiae ut. rerum repellat harum autem laudantium esse Dolorum ipsa eum. Rem ea et rerum officia qui modi. Optio iste culpa Harum consequatur rem laudantium. Repellat consequatur dolores repudiandae eos eos a. Id enim perferendis eveniet deserunt sit. ipsam hic sit excepturi vero. dolorem ipsum et Perspiciatis blanditiis voluptas rerum tenetur sequi facere reiciendis. aspernatur et quibusdam et in ut. Consectetur in iste quia recusandae nam eum. Omnis ipsam ipsum deleniti quia. Occaecati provident quia et sunt repellat. Aut sunt Cum qui eveniet beatae. voluptas esse perspiciatis distinctio. Enim rerum voluptatem ut magni. Qui molestiae ut asperiores numquam vel. Qui porro quia et est Non error quibusdam maxime delectus Nesciunt quam officia assumenda id odit. Et ut voluptatum mollitia assumenda omnis. Exercitationem eveniet vero sapiente doloremque qui. Ut qui nobis enim ea Ducimus occaecati quasi est Qui est id Aspernatur quasi ex vero neque voluptate. ut soluta natus aliquam. Et vero ut ea quia et. Ut veniam rerum corporis eveniet molestias. Qui inventore temporibus aut nesciunt. Aut animi dolores facilis et. Magnam doloremque saepe sed alias. Ad est ex. Molestiae ratione reiciendis aut ducimus. Saepe accusantium quod necessitatibus rerum ea. Totam non voluptatibus consequatur eum est. unde est voluptatem ratione Temporibus <a title=\"Quisquam.\" href=\"http://www.schimmel.com/odio-explicabo-eum-tempore-qui-aut.html\">ea</a> facilis. In reiciendis at dolorem illo. reprehenderit voluptas dolores est sit. Accusantium cum sed eius minima Qui nihil fuga dignissimos ut iure.</p>\n<p>Vero voluptas laborum magni quaerat aut. Id molestias inventore <a title=\"Non tempore reiciendis ea recusandae delectus quibusdam illum.\" href=\"http://www.feil.com/nemo-ea-et-officiis-velit-amet\">asperiores. Dolores sit nemo nisi</a> tenetur omnis aut aut. <a title=\"Consequuntur.\" href=\"http://mckenzie.org/eum-aliquam-sed-maiores-voluptatem-qui-qui.html\">nobis voluptas voluptatem voluptate facilis</a> et. Quo qui doloribus minima. Aut reprehenderit aut est aperiam. Quidem ex reiciendis in <a title=\"Sint quia nisi.\" href=\"https://abbott.com/labore-sit-blanditiis-quod-quis-voluptatum-sit.html\">Voluptates numquam sed exercitationem quos et</a> Velit ullam vel nisi. Possimus pariatur vel quo ut aliquam.</p>', 'Aut repellendus magnam repellat', 'Rem.\n\nAb.\n\nRecusandae dolores.\n\nVoluptas tenetur.', 'publish', 'open', 'open', '', 'aut-repellendus-magnam-repellat', '', '', '2023-06-21 03:04:27', '2023-06-21 03:04:27', '', 0, 'http://localhost/blog2/aut-repellendus-magnam-repellat/', 0, 'post', '', 0),
(111, 1, '2023-06-22 01:54:11', '2023-06-22 01:54:11', '', '4e7b1868-66f5-385c-bead-371eecb5b728', '', 'inherit', 'open', 'closed', '', '4e7b1868-66f5-385c-bead-371eecb5b728', '', '', '2023-06-22 01:54:11', '2023-06-22 01:54:11', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/4e7b1868-66f5-385c-bead-371eecb5b728.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2023-06-21 10:30:49', '2023-06-21 10:30:49', '<p>Et facilis facere voluptatibus cupiditate voluptatem expedita. Id libero incidunt maxime totam consequuntur eum odit. Est perferendis ut ad eaque perferendis sit. Molestias tempore enim omnis corrupti non. Labore autem repudiandae hic nam sequi recusandae non. Dolorum sed iusto earum esse eveniet error. Et ducimus consequatur nemo vel quae deleniti. Et ut quisquam eum sit. Dicta dolor est vel et pariatur. Explicabo iste nihil repellendus maiores reprehenderit. Cupiditate suscipit ex nobis odit quas. Eveniet sit eos ut adipisci ab. Non sunt numquam aliquid aliquid occaecati aut quis ex. Tempora aut molestiae repellat vel qui est autem dicta. Sequi dicta aliquam quo aliquam debitis quia voluptas. Perspiciatis placeat magnam aperiam fugiat quia dolore.</p>\n<h4>Et vel dicta eligendi maiores nesciunt sapiente et. Eos consequatur nostrum numquam laudantium doloremque. Velit dolores nihil aut</h4>\n<p>Aut recusandae repudiandae dolores id perferendis ipsum. Consequatur aut deleniti vero temporibus. Provident vitae quae vitae maiores voluptatem. Deleniti beatae voluptas consequatur sint. Ducimus quaerat veritatis et dolor nostrum. Itaque nulla eum enim optio ut illum vel. Nisi ea incidunt voluptate. Dolor est culpa sed. Delectus reprehenderit sed perferendis aut molestiae sit repellendus ea. Dolor tenetur praesentium non sit cumque sit et. Et veritatis assumenda laudantium mollitia quia. Delectus aliquid a modi beatae nulla culpa. Voluptatem adipisci dolore nam vitae veritatis dolore neque. Sed vel modi est non explicabo porro quidem. Debitis a impedit eum explicabo. Eius vitae natus molestiae eius in recusandae ex. Id debitis ducimus et et. Vel nobis non saepe consequatur distinctio. Quod ut eius autem. Sed repellendus quos animi labore ut ipsam maiores. Eos voluptas molestiae laboriosam iusto officiis voluptas molestiae ut. Ex quisquam sit est id eaque. Sit recusandae laborum dolor ut commodi. Voluptatem voluptas quia quod iure similique aliquam. Dolores rem non sapiente veritatis pariatur. Eaque et qui quos sequi ipsum atque. Laboriosam saepe qui ut deserunt numquam occaecati reprehenderit. Ut amet sit sunt quibusdam. Quis suscipit qui qui pariatur voluptatem eligendi rem. Nisi sit iste libero similique velit vel odit. Similique maiores fuga et repudiandae enim. Illum beatae esse consequatur autem. Odio vel praesentium quod et at. Nisi quam quo nisi voluptate voluptatem voluptate earum rerum. Cupiditate dolorem quam ut. Veritatis nulla ut autem aut temporibus ex exercitationem. Esse sunt et omnis repudiandae eos quo. Architecto ut sit eos autem sed voluptate officia. Vitae tenetur molestiae provident officiis hic doloribus harum voluptatem. Et sapiente natus doloribus quis. Dignissimos sed molestiae unde et eum dolor qui ullam. Illum est odit nihil inventore. Soluta ullam quam explicabo expedita non inventore ea. Est veritatis pariatur a pariatur.</p>\n<h1>Tempore cum occaecati doloribus reprehenderit</h1>\n<p>Laborum et repudiandae voluptates rem quo iusto odit. Ipsum culpa autem rerum ut optio aspernatur voluptatum. Dolorum incidunt et quos vero necessitatibus enim minus. Voluptatem quis sunt animi est sit eum.</p>\n<h1>Omnis alias amet laboriosam quas. Aut qui id voluptas odio repellat culpa eos</h1>\n<p>A aspernatur sed animi. est <a title=\"Ducimus at cupiditate quam magni et.\" href=\"http://www.rohan.com/\">dolorum</a> illum. magnam ut consequuntur consequuntur in maiores ad. consequatur <a title=\"Autem fuga saepe velit ratione est.\" href=\"http://www.huels.biz/odio-explicabo-ea-voluptatibus-eius.html\">perferendis dolorem. Id</a> ut at placeat consequuntur molestias optio. Sit nihil cumque <a title=\"Pariatur dolor temporibus porro provident fugiat et.\" href=\"https://klein.com/vel-necessitatibus-molestiae-similique-nisi.html\">ducimus sunt rerum.</a> perferendis voluptatem id accusantium.</p>\n<h3>Pariatur ut sit ut aspernatur et. Numquam mollitia velit at sunt excepturi earum commodi. Perspiciatis laudantium nisi reprehenderit</h3>\n<p>Placeat qui eveniet ex qui commodi reprehenderit et. Aliquam sequi in enim maiores aut reiciendis. Id quod aliquid et animi dolor. Necessitatibus voluptatum dicta omnis quo. Numquam voluptatibus repellendus consequuntur. Pariatur dolor beatae dolore corporis qui accusantium. Accusantium id porro doloribus saepe. Explicabo voluptatem tempore ut. Officiis nemo voluptatem saepe. Numquam culpa occaecati tempore deleniti magni sint temporibus pariatur. Est eos quos sit. Reiciendis qui ea eligendi accusamus quia quis. Ullam possimus est impedit culpa et est ut. Omnis perferendis dolores facilis voluptatem officia reprehenderit. Vel facilis iusto at voluptatem consectetur. Esse deleniti voluptatem voluptatem qui quia. Cupiditate est consequatur voluptas recusandae. Assumenda qui aut sed. Doloribus veritatis non sunt et sed.</p>\n<p>Non possimus porro et eum. Et rerum omnis et deserunt minus cum. Aliquam perferendis quos dicta expedita a voluptas. Et et a nemo est reprehenderit consequatur quis ut. Eos facere rerum libero deleniti pariatur. Nesciunt eaque inventore eos. Neque qui voluptatem enim soluta. Est nihil consequatur repellat dicta doloribus inventore qui. Impedit facere sit reiciendis alias sed commodi optio veritatis. Totam ut deserunt quibusdam hic. Eaque enim maiores quis id perferendis temporibus quae. Deleniti ipsa voluptatem doloremque eveniet. Et quod explicabo exercitationem et autem. Voluptatem cupiditate qui qui autem aut sed. Explicabo fugiat repellendus quisquam exercitationem occaecati ea. Praesentium accusantium velit quo quasi quibusdam. Quo aut totam ullam voluptas. Est sunt omnis ut corrupti libero sapiente laudantium ut. Illum voluptatem repudiandae voluptas aliquam. Omnis laborum sit in. A inventore numquam libero corporis ad iste et. Ut magnam totam aliquam aut dicta nobis qui. Quis provident omnis sapiente accusamus expedita vitae accusantium. Natus dolor sequi doloribus consequatur. Magnam odio dolor laboriosam autem.</p>\n<h3>Accusamus consequatur eaque perspiciatis id nulla. Laboriosam itaque accusamus placeat totam totam rem nostrum</h3>\n<p>Dignissimos cumque minus error quis Quidem incidunt vel consequatur totam consequatur Ipsa <a title=\"Deserunt et in quisquam et.\" href=\"http://reilly.net/sit-esse-omnis-odit-aut\">corporis</a> explicabo itaque iusto Eum vitae quo consequatur et architecto est qui. laborum asperiores porro harum. Aliquid consequatur laborum cupiditate quibusdam eligendi. Laboriosam <a title=\"Deleniti modi.\" href=\"http://eichmann.org/fugit-in-vel-facere-est-doloremque-repudiandae-rem\">qui</a> aperiam magnam et ea. officia dolores fugiat alias molestiae minima eaque. Iure est qui autem Repudiandae quis et qui quod pariatur. <a title=\"Corporis architecto quia modi est animi quas.\" href=\"http://shanahan.info/\">aspernatur</a> possimus cupiditate ut. ut nemo sapiente. Delectus sit error illum error. doloribus unde omnis dolores sit saepe. Iure quas possimus excepturi vitae quae. Inventore ratione temporibus velit <a title=\"Deserunt numquam sed.\" href=\"http://bergnaum.biz/\">sapiente. Fugit quo</a> provident quaerat odit. Similique error quod omnis quia. et rerum ut omnis placeat Quis ex quis exercitationem error deserunt alias quam. Doloremque est cumque quaerat excepturi nostrum ea sit. consectetur voluptatibus ipsa facere sed eum. Quia et odit enim doloremque magnam. Quam error <a title=\"Incidunt et.\" href=\"http://www.kuhn.org/aspernatur-mollitia-amet-et-deserunt-accusantium.html\">placeat</a></p>\n<h3>Nihil eius modi ut excepturi sequi</h3>\n<p>Aut laudantium voluptates iure perspiciatis. Assumenda molestiae inventore vel at quaerat sint. Quaerat dolorum porro magni nesciunt dignissimos. Quis facere ab in quos. Aut quisquam aut sed sed minima ea. Veritatis quae aut culpa dolor voluptatibus facere rem.</p>\n<p>Quas <a title=\"Et.\" href=\"http://www.waters.com/\">omnis sint esse. Alias dolorem quod</a> minima. Quas hic est explicabo Atque suscipit veritatis Ea voluptatum eaque aut odio. Pariatur consequatur ducimus et Fugit perferendis at hic ut enim.</p>', 'Aut enim eaque asperiores ut maiores eaque', 'Aut.\n\nHic.', 'publish', 'open', 'open', '', 'aut-enim-eaque-asperiores-ut-maiores-eaque', '', '', '2023-06-21 10:30:49', '2023-06-21 10:30:49', '', 0, 'http://localhost/blog2/aut-enim-eaque-asperiores-ut-maiores-eaque/', 0, 'post', '', 0),
(113, 1, '2023-06-22 01:54:21', '2023-06-22 01:54:21', '', '73d2df37-5912-319f-aeef-f3f5a3aad842', '', 'inherit', 'open', 'closed', '', '73d2df37-5912-319f-aeef-f3f5a3aad842', '', '', '2023-06-22 01:54:21', '2023-06-22 01:54:21', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/73d2df37-5912-319f-aeef-f3f5a3aad842.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(114, 1, '2023-06-21 01:24:54', '2023-06-21 01:24:54', '<h1>Dolores eos reiciendis quia enim. Quas dolor doloremque sequi dolor impedit rerum id. Natus dolores qui excepturi molestiae</h1>\n<a title=\"Voluptas atque asperiores.\" href=\"http://www.weber.com/dolores-aut-et-quod-dolores-qui-autem-omnis\">Fugit reprehenderit qui</a> et. Rerum maiores iusto aut Officia numquam <a title=\"Ex earum consequatur.\" href=\"http://www.morar.com/\">sit excepturi earum commodi</a> <a title=\"Consectetur molestias iste praesentium.\" href=\"http://www.beahan.org/maiores-consequatur-nam-minima-repellat-minima-excepturi\">Sapiente provident repellat et voluptate vero</a> Deleniti quibusdam <a title=\"Quo.\" href=\"https://www.collins.com/in-aliquid-distinctio-fugit\">esse quia ipsa qui quia. Suscipit</a> sequi aliquam quis molestiae sed ex eius. Blanditiis praesentium quidem beatae magni <a title=\"Dolor.\" href=\"http://howe.com/\">Quaerat</a> <a title=\"Iusto rem rerum id consequatur enim sunt tenetur.\" href=\"http://renner.com/recusandae-necessitatibus-delectus-possimus-odit-magni-exercitationem-similique\">tempore quaerat</a> <a title=\"Consequuntur voluptas nam reiciendis quia porro sit perferendis cum suscipit non.\" href=\"http://www.donnelly.com/\">Dolore accusamus reiciendis ut illo</a> Eius aut alias sint <a title=\"Quod perferendis.\" href=\"http://morissette.net/quae-minus-alias-repellat-voluptatum-laboriosam.html\">sapiente. Quaerat dolor</a> laudantium et ab sed perspiciatis. sed quia reiciendis nihil et. Odit adipisci odit unde sunt eius. Accusantium delectus occaecati. Quo molestiae perferendis voluptas sint saepe\n\nReprehenderit alias et illo quia provident aut repellendus. Vitae ipsam laborum dolores nulla laudantium molestiae. Impedit non nesciunt animi. Mollitia consectetur dolorem non nihil. Et non similique voluptatem a quos iste. Qui eum at aut qui voluptas quam labore earum. Commodi blanditiis magnam doloremque. Ut quasi minus dolores placeat ea blanditiis voluptas. Quam eveniet in modi libero qui. Quam saepe fugit voluptas aut incidunt eum nisi. Enim sequi voluptatem ad maxime. Voluptas harum aut corrupti earum. Porro mollitia adipisci incidunt. Sapiente amet eos distinctio. Aut fugit voluptatem quae distinctio sunt est. Ut commodi enim eum amet. Officia dolores temporibus officia non aut non repellendus minima. Consequuntur consequatur neque enim rem quod id qui temporibus. Aut quibusdam commodi necessitatibus nihil sed est omnis. Voluptas eum consequuntur et unde. Maxime id dolor rerum ea et accusamus quaerat. Debitis id est delectus vel consequatur consequatur. Harum voluptate eos tempore dolores et iusto magnam. Dicta non nesciunt qui nam. Voluptates vero ad consequatur aut iusto.\n<h1>Reprehenderit nisi ut earum enim. Qui reiciendis sunt nostrum voluptas nam. Aut assumenda velit qui expedita praesentium. Molestiae quia magnam dolorem aliquam</h1>\n<a title=\"Libero aspernatur provident.\" href=\"https://www.wilderman.biz/ad-ratione-pariatur-ea-sit-sit-rem-ea\"></a><a title=\"Consequatur non blanditiis voluptatem facilis placeat beatae.\" href=\"http://dach.com/saepe-soluta-quae-dolore-consequuntur.html\"></a><a title=\"Quod necessitatibus aliquam.\" href=\"http://www.wiegand.org/non-quidem-eum-mollitia-sequi\"></a><a title=\"Dolorem doloribus illo.\" href=\"http://www.oreilly.info/sed-perferendis-asperiores-ut-odit-rerum-vitae-quibusdam.html\"></a><a title=\"Officiis ipsam.\" href=\"https://farrell.com/quas-atque-ut-voluptas-et.html\"></a><a title=\"Porro explicabo sunt quae nulla cupiditate consequatur sit recusandae.\" href=\"https://white.org/ipsum-modi-saepe-delectus-velit-porro.html\">Et</a> similique dignissimos tempora quia similique. Ipsa maiores tenetur nobis quas quidem.\n\nModi similique sed voluptatem <a title=\"Ut et adipisci nam nemo ut.\" href=\"https://www.robel.com/quam-dicta-magnam-voluptas-voluptates-ea-labore-optio\"></a><a title=\"Consequatur nostrum doloribus voluptates cupiditate adipisci.\" href=\"http://aufderhar.com/officia-voluptate-vero-necessitatibus-modi-aperiam-corrupti-doloremque\">ipsa. Et non sint et est. Sed qui atque</a> aperiam est magni et recusandae. Est veritatis ut deserunt doloribus. Atque <a title=\"Vel laudantium qui ut minus rerum sed eligendi ducimus.\" href=\"http://www.torphy.com/quo-corrupti-autem-a-consequatur-eos-voluptatem\">magnam et</a> Natus repellendus totam dolorem dolore molestiae. Earum id debitis hic repudiandae et. Enim quod modi eius. Doloremque in necessitatibus sit reprehenderit <a title=\"Qui dolore at totam doloremque voluptas minus.\" href=\"https://www.cremin.biz/expedita-dolores-illum-soluta-velit-et-deleniti-sit\">eius. Eos beatae mollitia architecto molestiae</a> veritatis. Ut <a title=\"Sint libero sint.\" href=\"http://swift.com/\">nobis reiciendis</a> distinctio. necessitatibus asperiores autem beatae et nobis eaque. Et nihil est et <a title=\"Et quidem non.\" href=\"https://www.olson.com/porro-molestias-rerum-necessitatibus-iusto-dolores-ut-tempora\"></a><a title=\"Nam ut.\" href=\"http://www.lubowitz.com/corporis-tenetur-consequatur-quo-vero-nostrum-aliquid.html\">iste. Laboriosam beatae architecto qui</a> recusandae. Officiis voluptates omnis magnam fuga. aut sed mollitia explicabo tempore error. Fugiat et ullam reprehenderit. Porro at repudiandae consectetur Aut totam voluptatem maiores qui voluptate.\n<h4>Aut ab temporibus hic ea. Numquam illum id fuga nisi repellendus odio at</h4>\nQuasi qui tempora et adipisci quod rem. Blanditiis nulla expedita quo <a title=\"Voluptatem omnis id tempora minima molestiae esse molestias.\" href=\"http://lesch.com/\">debitis. Aspernatur</a> <a title=\"Provident provident.\" href=\"http://hegmann.info/accusamus-quo-dolorem-veritatis-neque-animi-soluta.html\">minus ut laudantium eos. Ipsum nesciunt</a> distinctio est. Similique numquam repellat necessitatibus. consequatur itaque et officia dolores architecto eius. Autem id molestias exercitationem exercitationem. <a title=\"Quos hic deleniti dolorem.\" href=\"http://waters.com/quia-in-aut-ut-praesentium-adipisci-nihil-harum-numquam.html\">quis deserunt deleniti</a> qui iste. Quidem sit <a title=\"Totam quasi qui non.\" href=\"https://www.mueller.com/necessitatibus-ut-qui-iste-fugit-consequatur-iste-minus\">quos accusamus rerum est aut.</a> esse alias vitae commodi debitis non. Dolorem ut officia ut qui nemo. qui vel qui. Eveniet consequuntur nihil ad possimus voluptate in minima. Aspernatur sed nobis provident officiis aperiam provident. sed <a title=\"In dolore.\" href=\"http://www.jerde.info/molestiae-facere-id-quia-alias.html\">reiciendis dolorem.</a>', 'Dolorum quia tempora nesciunt voluptatem velit', '', 'publish', 'open', 'open', '', 'dolorum-quia-tempora-nesciunt-voluptatem-velit', '', '', '2023-06-23 00:03:42', '2023-06-23 00:03:42', '', 0, 'http://localhost/blog2/dolorum-quia-tempora-nesciunt-voluptatem-velit/', 0, 'post', '', 0),
(115, 1, '2023-06-22 01:54:29', '2023-06-22 01:54:29', '', 'bb2d0be2-c7c3-33a8-9225-f5ff596ce63b', '', 'inherit', 'open', 'closed', '', 'bb2d0be2-c7c3-33a8-9225-f5ff596ce63b', '', '', '2023-06-22 01:54:29', '2023-06-22 01:54:29', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/bb2d0be2-c7c3-33a8-9225-f5ff596ce63b.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2023-06-22 04:32:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-22 04:32:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?page_id=116', 0, 'page', '', 0),
(117, 1, '2023-06-23 07:29:17', '2023-06-22 04:36:08', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2023-06-23 07:29:17', '2023-06-23 07:29:17', '', 0, 'http://localhost/blog2/?p=117', 2, 'nav_menu_item', '', 0),
(118, 1, '2023-06-22 04:54:05', '2023-06-22 04:54:05', '<div class=\"form-wrapper\">\r\n    <label> Fullname [text* fullname]</label>\r\n</div>\r\n\r\n<div class=\"form-wrapper\">\r\n    <label> Email [email* email]</label>\r\n</div>\r\n\r\n<div class=\"form-wrapper\">\r\n    <label> Subject [text* subject]</label>\r\n</div>\r\n\r\n<div class=\"form-wrapper\">\r\n    <label> Message [textarea* message]</label>\r\n</div>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[subject]\"\n[_site_title] <trishaamv.sayno@gmail.com>\n[_site_admin_email]\nFrom: [fullname] [email]\r\nSubject: [subject]\r\n\r\nMessage Body:\r\n[message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [email]\n\n\n\n1\n[_site_title] \"[subject]\"\n[_site_title] <trishaamv.sayno@gmail.com>\n[email]\nMessage Body:\r\n[message]\r\n\r\nito ay reply hihe\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-06-22 05:10:23', '2023-06-22 05:10:23', '', 0, 'http://localhost/blog2/?post_type=wpcf7_contact_form&#038;p=118', 0, 'wpcf7_contact_form', '', 0),
(119, 1, '2023-06-22 05:56:35', '2023-06-22 05:56:35', '<!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-06-23 07:19:09', '2023-06-23 07:19:09', '', 0, 'http://localhost/blog2/?page_id=119', 0, 'page', '', 0),
(120, 1, '2023-06-22 05:56:35', '2023-06-22 05:56:35', '', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-22 05:56:35', '2023-06-22 05:56:35', '', 119, 'http://localhost/blog2/?p=120', 0, 'revision', '', 0),
(121, 1, '2023-06-23 07:29:17', '2023-06-22 05:57:16', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2023-06-23 07:29:17', '2023-06-23 07:29:17', '', 0, 'http://localhost/blog2/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2023-06-22 23:44:31', '2023-06-22 23:44:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->', 'Hello world!', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sit eveniet voluptates labore in magni aliquam. Velit similique non provident nisi tempore quia nobis modi harum corporis excepturi optio nesciunt quo laudantium, autem voluptate tempora? Pariatur consectetur accusamus in est at?', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-22 23:44:31', '2023-06-22 23:44:31', '', 1, 'http://localhost/blog2/?p=122', 0, 'revision', '', 0),
(123, 1, '2023-06-22 23:51:14', '2023-06-22 23:51:14', '<h1>Dolores eos reiciendis quia enim. Quas dolor doloremque sequi dolor impedit rerum id. Natus dolores qui excepturi molestiae</h1>\n<a title=\"Voluptas atque asperiores.\" href=\"http://www.weber.com/dolores-aut-et-quod-dolores-qui-autem-omnis\">Fugit reprehenderit qui</a> et. Rerum maiores iusto aut Officia numquam <a title=\"Ex earum consequatur.\" href=\"http://www.morar.com/\">sit excepturi earum commodi</a> <a title=\"Consectetur molestias iste praesentium.\" href=\"http://www.beahan.org/maiores-consequatur-nam-minima-repellat-minima-excepturi\">Sapiente provident repellat et voluptate vero</a> Deleniti quibusdam <a title=\"Quo.\" href=\"https://www.collins.com/in-aliquid-distinctio-fugit\">esse quia ipsa qui quia. Suscipit</a> sequi aliquam quis molestiae sed ex eius. Blanditiis praesentium quidem beatae magni <a title=\"Dolor.\" href=\"http://howe.com/\">Quaerat</a> <a title=\"Iusto rem rerum id consequatur enim sunt tenetur.\" href=\"http://renner.com/recusandae-necessitatibus-delectus-possimus-odit-magni-exercitationem-similique\">tempore quaerat</a> <a title=\"Consequuntur voluptas nam reiciendis quia porro sit perferendis cum suscipit non.\" href=\"http://www.donnelly.com/\">Dolore accusamus reiciendis ut illo</a> Eius aut alias sint <a title=\"Quod perferendis.\" href=\"http://morissette.net/quae-minus-alias-repellat-voluptatum-laboriosam.html\">sapiente. Quaerat dolor</a> laudantium et ab sed perspiciatis. sed quia reiciendis nihil et. Odit adipisci odit unde sunt eius. Accusantium delectus occaecati. Quo molestiae perferendis voluptas sint saepe\n\nReprehenderit alias et illo quia provident aut repellendus. Vitae ipsam laborum dolores nulla laudantium molestiae. Impedit non nesciunt animi. Mollitia consectetur dolorem non nihil. Et non similique voluptatem a quos iste. Qui eum at aut qui voluptas quam labore earum. Commodi blanditiis magnam doloremque. Ut quasi minus dolores placeat ea blanditiis voluptas. Quam eveniet in modi libero qui. Quam saepe fugit voluptas aut incidunt eum nisi. Enim sequi voluptatem ad maxime. Voluptas harum aut corrupti earum. Porro mollitia adipisci incidunt. Sapiente amet eos distinctio. Aut fugit voluptatem quae distinctio sunt est. Ut commodi enim eum amet. Officia dolores temporibus officia non aut non repellendus minima. Consequuntur consequatur neque enim rem quod id qui temporibus. Aut quibusdam commodi necessitatibus nihil sed est omnis. Voluptas eum consequuntur et unde. Maxime id dolor rerum ea et accusamus quaerat. Debitis id est delectus vel consequatur consequatur. Harum voluptate eos tempore dolores et iusto magnam. Dicta non nesciunt qui nam. Voluptates vero ad consequatur aut iusto.\n<h1>Reprehenderit nisi ut earum enim. Qui reiciendis sunt nostrum voluptas nam. Aut assumenda velit qui expedita praesentium. Molestiae quia magnam dolorem aliquam</h1>\n<a title=\"Libero aspernatur provident.\" href=\"https://www.wilderman.biz/ad-ratione-pariatur-ea-sit-sit-rem-ea\"></a><a title=\"Consequatur non blanditiis voluptatem facilis placeat beatae.\" href=\"http://dach.com/saepe-soluta-quae-dolore-consequuntur.html\"></a><a title=\"Quod necessitatibus aliquam.\" href=\"http://www.wiegand.org/non-quidem-eum-mollitia-sequi\"></a><a title=\"Dolorem doloribus illo.\" href=\"http://www.oreilly.info/sed-perferendis-asperiores-ut-odit-rerum-vitae-quibusdam.html\"></a><a title=\"Officiis ipsam.\" href=\"https://farrell.com/quas-atque-ut-voluptas-et.html\"></a><a title=\"Porro explicabo sunt quae nulla cupiditate consequatur sit recusandae.\" href=\"https://white.org/ipsum-modi-saepe-delectus-velit-porro.html\">Et</a> similique dignissimos tempora quia similique. Ipsa maiores tenetur nobis quas quidem.\n\nModi similique sed voluptatem <a title=\"Ut et adipisci nam nemo ut.\" href=\"https://www.robel.com/quam-dicta-magnam-voluptas-voluptates-ea-labore-optio\"></a><a title=\"Consequatur nostrum doloribus voluptates cupiditate adipisci.\" href=\"http://aufderhar.com/officia-voluptate-vero-necessitatibus-modi-aperiam-corrupti-doloremque\">ipsa. Et non sint et est. Sed qui atque</a> aperiam est magni et recusandae. Est veritatis ut deserunt doloribus. Atque <a title=\"Vel laudantium qui ut minus rerum sed eligendi ducimus.\" href=\"http://www.torphy.com/quo-corrupti-autem-a-consequatur-eos-voluptatem\">magnam et</a> Natus repellendus totam dolorem dolore molestiae. Earum id debitis hic repudiandae et. Enim quod modi eius. Doloremque in necessitatibus sit reprehenderit <a title=\"Qui dolore at totam doloremque voluptas minus.\" href=\"https://www.cremin.biz/expedita-dolores-illum-soluta-velit-et-deleniti-sit\">eius. Eos beatae mollitia architecto molestiae</a> veritatis. Ut <a title=\"Sint libero sint.\" href=\"http://swift.com/\">nobis reiciendis</a> distinctio. necessitatibus asperiores autem beatae et nobis eaque. Et nihil est et <a title=\"Et quidem non.\" href=\"https://www.olson.com/porro-molestias-rerum-necessitatibus-iusto-dolores-ut-tempora\"></a><a title=\"Nam ut.\" href=\"http://www.lubowitz.com/corporis-tenetur-consequatur-quo-vero-nostrum-aliquid.html\">iste. Laboriosam beatae architecto qui</a> recusandae. Officiis voluptates omnis magnam fuga. aut sed mollitia explicabo tempore error. Fugiat et ullam reprehenderit. Porro at repudiandae consectetur Aut totam voluptatem maiores qui voluptate.\n<h4>Aut ab temporibus hic ea. Numquam illum id fuga nisi repellendus odio at</h4>\nQuasi qui tempora et adipisci quod rem. Blanditiis nulla expedita quo <a title=\"Voluptatem omnis id tempora minima molestiae esse molestias.\" href=\"http://lesch.com/\">debitis. Aspernatur</a> <a title=\"Provident provident.\" href=\"http://hegmann.info/accusamus-quo-dolorem-veritatis-neque-animi-soluta.html\">minus ut laudantium eos. Ipsum nesciunt</a> distinctio est. Similique numquam repellat necessitatibus. consequatur itaque et officia dolores architecto eius. Autem id molestias exercitationem exercitationem. <a title=\"Quos hic deleniti dolorem.\" href=\"http://waters.com/quia-in-aut-ut-praesentium-adipisci-nihil-harum-numquam.html\">quis deserunt deleniti</a> qui iste. Quidem sit <a title=\"Totam quasi qui non.\" href=\"https://www.mueller.com/necessitatibus-ut-qui-iste-fugit-consequatur-iste-minus\">quos accusamus rerum est aut.</a> esse alias vitae commodi debitis non. Dolorem ut officia ut qui nemo. qui vel qui. Eveniet consequuntur nihil ad possimus voluptate in minima. Aspernatur sed nobis provident officiis aperiam provident. sed <a title=\"In dolore.\" href=\"http://www.jerde.info/molestiae-facere-id-quia-alias.html\">reiciendis dolorem.</a>', 'Dolorum quia tempora nesciunt voluptatem velit', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2023-06-22 23:51:14', '2023-06-22 23:51:14', '', 114, 'http://localhost/blog2/?p=123', 0, 'revision', '', 0),
(125, 1, '2023-06-23 00:17:25', '2023-06-23 00:17:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":115,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/bb2d0be2-c7c3-33a8-9225-f5ff596ce63b.jpg\" alt=\"\" class=\"wp-image-115\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\",\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":54,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/img-8.jpg\" alt=\"\" class=\"wp-image-54\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Hello world!', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sit eveniet voluptates labore in magni aliquam. Velit similique non provident nisi tempore quia nobis modi harum corporis excepturi optio nesciunt quo laudantium, autem voluptate tempora? Pariatur consectetur accusamus in est at?', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-23 00:17:25', '2023-06-23 00:17:25', '', 1, 'http://localhost/blog2/?p=125', 0, 'revision', '', 0),
(127, 1, '2023-06-23 00:19:42', '2023-06-23 00:19:42', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":115,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/bb2d0be2-c7c3-33a8-9225-f5ff596ce63b.jpg\" alt=\"\" class=\"wp-image-115\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et sint quisquam ipsa sed iusto minus soluta, voluptate veritatis quasi. Molestias?</p>\n<!-- /wp:paragraph -->', 'Hello world!', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sit eveniet voluptates labore in magni aliquam. Velit similique non provident nisi tempore quia nobis modi harum corporis excepturi optio nesciunt quo laudantium, autem voluptate tempora? Pariatur consectetur accusamus in est at?', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-23 00:19:42', '2023-06-23 00:19:42', '', 1, 'http://localhost/blog2/?p=127', 0, 'revision', '', 0),
(129, 1, '2023-06-23 04:34:38', '2023-06-23 04:34:38', '<!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-23 04:34:38', '2023-06-23 04:34:38', '', 119, 'http://localhost/blog2/?p=129', 0, 'revision', '', 0),
(130, 1, '2023-06-23 04:37:20', '2023-06-23 04:37:20', '<!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-23 04:37:20', '2023-06-23 04:37:20', '', 119, 'http://localhost/blog2/?p=130', 0, 'revision', '', 0),
(131, 1, '2023-06-23 04:38:26', '2023-06-23 04:38:26', '', 'Footer Menu', '', 'publish', 'closed', 'closed', '', 'footer-menu', '', '', '2023-06-23 04:38:26', '2023-06-23 04:38:26', '', 0, 'http://localhost/blog2/footer-menu/', 0, 'wp_navigation', '', 0),
(133, 1, '2023-06-23 04:40:15', '2023-06-23 04:40:15', '<!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-23 04:40:15', '2023-06-23 04:40:15', '', 119, 'http://localhost/blog2/?p=133', 0, 'revision', '', 0),
(134, 1, '2023-06-23 04:40:37', '2023-06-23 04:40:37', '<!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-23 04:40:37', '2023-06-23 04:40:37', '', 119, 'http://localhost/blog2/?p=134', 0, 'revision', '', 0),
(135, 1, '2023-06-23 05:08:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:08:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=featurepost&p=135', 0, 'featurepost', '', 0),
(136, 1, '2023-06-23 05:24:51', '2023-06-23 05:24:51', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste laboriosam, dolorem placeat culpa aliquid corrupti ratione aut hic nam totam!</div>\r\n</div>', 'Camille Ann Marca', '', 'publish', 'closed', 'closed', '', 'camille-ann-marca', '', '', '2023-06-23 06:35:16', '2023-06-23 06:35:16', '', 0, 'http://localhost/blog2/?post_type=testimonials&#038;p=136', 0, 'testimonials', '', 0),
(137, 1, '2023-06-23 05:23:58', '2023-06-23 05:23:58', '', 'lengleng', '', 'inherit', 'open', 'closed', '', 'lengleng', '', '', '2023-06-23 05:23:58', '2023-06-23 05:23:58', '', 136, 'http://localhost/blog2/wp-content/uploads/2023/06/lengleng.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2023-06-23 05:45:59', '2023-06-23 05:45:59', '<!-- wp:html -->\n<img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgWFhUYGBgZGBkaGBgYGBgYGRgYGBgaGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHjQhISsxNDE0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0ND80Mf/AABEIAQsAvQMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAACAAEEBQYDB//EAD8QAAIBAgIHBQUHAwMEAwAAAAECAAMRBCEFEjFBUWFxBiKBkaEyQrHB0RNSYnKCsvAjksIUouEHM2PxFTRT/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAIDAQQF/8QAIREBAQEBAAICAwEBAQAAAAAAAAECEQMhMUESIjJRYRP/2gAMAwEAAhEDEQA/AMZaK0eKacgIrRRTAVoxAg1qoQXMgV8UxJFwLblvcdTbLfM62TrtVxyKbWJ/m7jOlHEB/ZAPK4Epjihf2d/tZE+oz6Ex0xBBDbSGt1UDMW4Wy5Q9j0vVIIy5jZmCNoMLVlQ2KcrrC652NrZniegFoVDShGTi/MC1usGLUJO9JOU5UGDAEfzkRJ1FItreOtCnJ9FOU5UUk2msnaaQaLDtEBCtM60No1odo0wB1YrR4oArRrQo0AFhBtOhgzehkI8eNOhMozNYX4QpGx72TiN4423HzmCINatc6zEG3sjhvH1+k5rhnbuICWYFidll2liTsFt8WEolyu/2Cel7n4+s12CooEVr91zTD2FxqipsJ4EB78wOAia1+Loxj8lJguxtZ11mZVBzAN7nnyjYjsjXGxkPUkfKepvSFjaVuJSc/wD766tPBjnHl+J0fVpjvqbA9RK+2e/rY2PLnPS8UgN5h9NIFLAHfs/n/qX8e/yQ8vjmfcdNFVQOQ97PbewFvWaikkxmHYhGJ3hjnvuAuXQ2PjNZ2fxP2tIE+0vdbmQAQfIiNqJ96tKSSUggU1ncCSrSAj2itHmAEaFGgDRRRGAKKKNAFBMKCYBlIoop0plImklJpm27M9BJcFlBFuMwIHZqg9ViqgkqoAA2Zlra1za1tfzE1WCSspemaSaj911YMcxcggHcbnMXFxtva8fsNgmSnXYDv6+oL8EUEHp35d//ABOJcq3+oZVX21suqzXOa5XUZgWz2bZzeTXdWO3xZ5mVb0KjJTuTfVAGYFx1O+0pH0diKhL/AOoZFOY3kgbwNwkzTdUimFvbWO2cMRo0V6RBZgSqgWNtTVtcp+Yg35G0jn/arYqqmBcd5a2sRkVYHPxztM12jwp9sjMZN03es2GH0OaVyXa1gNXaO6AL3O82z5yq09Yo/wCVvhL+PX7ciPlz+rFlybZ7wfLYOmfrNh2QU/YnK3fNjxGqnzuJkKdNmJVVLEZgAeXynpOjsKKdNEHugC/EjaZfyXk45MxLRYdolEKQOGPFaPAAIjQjGMAExo8UAExRGKAMTGiMUAykUQinSmUUeNMDVdjnGo4/Gb+KoZpsS1kYjcpsJiOzNTVdlv7QBtzU288x5TV4nFBE1mOXxO4CcHlzzdd/i95il0vUeoEH2LhSF1jYDUvY3ZibHb7pOwyboZ70rkEFWZcwRrBTZXAOdiJEraaJFijhea7PnOlHFBlupy6EW85tl/HnFLOX274+vlMpphe4+VyVIHU5fOXtd5UYhr3PDPy2S3izyIeS99Mxh6ZLimntXSxBFi+sgLddo8J6MqzPdm8LSYCogWy3UELqk2sb3bM2v59JpAI+72ufpRR7RRAa0RiigDQTCjGADBhRjAGMaOY0AaNEYoBlooop0JlGjxQDphquo6v91gfDf6Xm4Wzrx4H6TByy0fpZ6Y1faXdxEh5sXXufLo8PkmfVaXEYAaty5P4crCRCAotIL6bBuNh3g5EdRI1TSIMhnOvt1XSVVe+Uq8a4tqjads4Y7SYUZGRMG7Pd7EgbeHG06M/Dn0vuyFMrhUuNusfAsbekvLTjg3DIpC6uWaWsUO9SOU7zNfKJRo8aYDRRzGgDGNCMGAMYJhGMYAxgwjGMAGNHigGXjR7RWnQmaKPaK0Aa0JREonVEmULmjh6FanaqgJAybMNzAYZjOQcR2dUC6OwvubvfC0nYOkyorkdxmYKeOrq63q3xlgqXnHrVzr09DHNZlZvDdjGZg1SqNXgg7xHC5yHkZtOz+hULgBAEpC4G4v7t77T73gOMSHKarRmG1KarvPebqf4B4TM71q+y75memY01o4oddBce8vEcRzErkYEXGybjE0tbIyp0hokPZl7htYWGRAyAIlZr/XNxno071sHUTat+ayPfOxyPA5TWHjRRQBRo8aACYxiigCgmFBMAYxo8EwDM2itCinQmG0WrHM1HZbsz9uPtatxTuQijIuRkbkbEBuMsyb7LRbZJ7bJ1Q4DAVKzatNGc77bB+ZjkviZtdG9kqdFPtMSdc+6ikhCx2Lfa3oNuU1WCwqIuqiqiDcoCjrYSKCatZSfZX2RwA3nmflI6308yzXaesBVp4cAdykXewsAzuLADcO6cuUhU2M7jCs9fEYhz/wB1gEHCkgIT+65bxE7NQsLyG77dnjnMpOiMOXqLf2Rmeg/5tNazSp0DRshfjkOg/wCZYVWyP8udw8TlGzORDy67Qp3iTuHx2n5es6imCM4SoFW3rx4nxNz4wl2R0kV8NIeJ0ejbVB575c2gEAQb1k62hlHsuRyIuPS1pAqYF12re3DP0mkxTd4jZacdaUxm6+Sa1xmDGltpLDAjWUd7fbePrKkw1i5GdTQYooopigwoJgDRRRQDMxQbxToTImew4BFRERfZREUf2KSfEkmeQAT0nQmP1kpHbrog/WgFJ/VA36hI+Q+V9UJIt/P59ZWaRxX2GGxFYbURgv5yLL6kS3t3Sf5Yf8zNdrM8PRpf/tiEvzVD9o3ohk1Mzt4EHYBuy8oNcXyG/ZEklaLpa9ZRuHePhs9bSE91128nV/QohEVeAAgbXQc7nogvf+7U851rvOOBzdz91VTxbvt6akq4v+pDQhBdYQaMwd5FrVQJ1vI7gHbAIOIqKd9jwM4hQdhEn1aakbB4yBVwSE3sQeRMpjdnous9A9Cwy28frM/i6eq5+luuU0H2Drsa45/WVuk6RazAZjaN9vnL67rKef10qooopzLGMUeCYA0UUUAy0cCKGqzoTEizVdksUAfs2264dPzGyOviNU/omcpJNL2OwuvikyyTWc/pXL/cVk9e4aenoNenqp4WmY08uticOm6nReoeTNqoPRnmsxYuLc5lset8VWbcEpoOq67H96+U59eot4v6cFSWvZ6lm7ndZR8T8RK9RLzRSWpdST62+Unj5W8t/U7G9+sfRIvT197s1TwY2X/aFkPSNXUpORtsQOrd0eplvSp6iqo2KoUfpFvlKz5c1+CMBhDaR6r2G35/Cawi2cF5zd84le94AzWkWshtO1QSM9UiBkN2qLssYLVm2shHMZzocVxENa6HlOjx+SRHWbVJj6OZcDI7eR6cJDmmrKGBtY8d1wd0zlVNViOEPJmf1BjV+KCDHMRkVAxRRoBmQJIppARZLpU5a0g6STb9gcN36r8EVB+skn9gmSo05vuxFO1Fz95/RUX6mTtMv6q3I6zJVmvVrHjVPoiD5TYsN8wH+pBqVeVUg/2ofnI+T4W8PzVgCJfYQWRRyEywq3IHHLzmqwxusTEN5fpU44a700vYNVW/RAWI+EvHaZyu98ZRHAufNSP8ZoWlIlpyc8ZGxGy0kNItVCZpXHFYjO0AVDcbucOrht841UtbnAyYtQNkcm+PMcYLoNhE44R1dSp2qbHiDxENgyZHvLx3iAE1NeAnGphl+6PCdFPDPlGJG/KARDRA2ZSJj8GHW49oestGp33yMRqmUxr6qes/cZhoJlrpTB++viPnKmGs/jW512FGjxorVLSSTqSTnSSTqSR7WQVNJ6F2WTVwycy5/wB7D5TCKs9A0GtqFMfgB/uJb5xW1YVTZSeRnjVbSWpjq1MnJyrL+bVAPmB6T2HFmyN0M8G7U93Ga3A028nN/QRbO3ivivPbfaOBZ16j4zW4I+0OBmU0Jm6Dn8pqcNk7jkD55SWDeX5Z1qt8enJgPNWb/KamqZisLU1sYrca2XTWIHpabOrHievoCtOZbOdAIgk0gKgkHEtlLGqLCU2kamqJlbFXh67LWDLvADDiJple4uJmcBTuQeOcuf8AUqjohObAnyt8c/KVvj/XpPy7riQ6b4I4GdxYwXpgyaiMwInCq1+skOjDYb8jIztxBHwmS+wZGBFjKHSOE1Gy9k7PpL0FeNosVhg6FT4HnOqftniF/W9ZaKO6FSQciMjBkPhVzpJJaLBRJ1UTaDgT0TRC2pU+VOn+wTzuejaOW1JB+BP2CYKWkW7jdJ4Z2vS9Y80/yqT27Sz9xuk8W7V+2D+E/uP1mT+lcT03HZlDrJfba58ppKz6jufwE/23Mo+y512BGzUv52ljpmpYMf8AxuPMW+kSfDfJ/XGV0c9q1M/jT94noDzzlH1WU8GB8jeej1IZ+C7coW+PqzraMm4V5ltKOXcIN5mi0nWCITwEoNGUCxNQ7Tkvj/LxsZ/LQt5Op+EogDl9JTYkmtiAqneFB4byfDM+Es8fiwg1RuE49l8JctWbmqf5H5ec6d65OJZn2smBptq3up2HlwncODAxrCxvuufIGQqFTXUMtyDwnNrNnL/quddWNhAdJyTBu3LxnUaPbe58IpkDEYa8jojpvuOEn41AiElieHG8rUxbN7sp4532nuo2l8Nca4Gzb0lPNYi3Gew5EdZkRKeaT1r/AEvjvzEpRCggwpJQ7bJ6RSNgANygeQE81Y5T0pdngPhMCDpp/wCm08c7Ve0nRviJ65p4/wBMzyXtlkUP4X+Kxc/0tj+Ww/6aYn7SkTvQCmf03t6astNO1Mn8F8zc/slR/wBMqephXbezE/L5STpmp7I4lmP7R8DF1/xl96U9VZ6LSe6qeKg+YvPPjPQcCv8ATT8iftEMs2OEBD1ZB0li9Rcs2OSjnGTVelqhqOKS7Bmx+UapWVO4u4fz4SPVqikpF7u2bHmZWpUZzqoLu2XQcTwGZnRjP4ztT1fyvo602rVSi/qO4DeZrkRURUXIAWA/m+RNHYJaKaozY5s33j9BunZ2vF/rTfiI+MPcc/gb9pme0XpRqJ2aynap48Qd00OksqT/AJG+Ey2BwjVXCL+ptyjeT9N83y/TMfbXYbS2uoY0qgU7CF1hw90k+k6rUBuVa43qbgjwOa+M60UCgKNgFh0GyPXZdXvWy332dDukFFZikRyNa/S4tOX2KjYJFxGJBY6py45Z852pVDaV8ee3hN3k65aSr6lM22nujqdp8BeZqTtLYjXewOS5ePvH5eEgXjeSy3k+IMep2/aXHiikzk09Gwz66Iw2MinzUGecNNv2YqlsMl9xYD8usbetx4TKA9oPYA4meX9vcMwFI7gH1ul0z87ec9O022syrwlFj8IHxWGQ2tqVS1wCCvduCDkQdkn3murYvIHslS1KGp91BfqEF/UGQ9IvrOeXd/tyPreXDUhRZ1XYBfM33AgX4XYbfWUbDOLaO9toFS+yejU01VC8AB5C0xOhqGvWQbgdY9Fz+QHjNhXrhASxjZLo2LxIRSxMzmKxerd39o+yPuj6znpXSoB1m2j2V4fibnK/AaNq4o67kpT+9vb8gPx2dZXMk91O/wCIyCpiX1UF+JPsqOLHhNdo7RyUUsubH2mO0/Qcp3w2GSkgRFCj1J4sd5jsxjfldUvOExggRKJ0URviF+1fpx9TDVGPuo58hH0Jg9TDo1rO4FQ8e8LqD0B8yZMxmGSojI4ujgqwuRdWFiLjMSSrC+ryyib1LJDZjna422kOth0PtEnleSqzhRK2pibnIXkzxHxNgLIgHFiPhxkLEYj7NNvebJfm3h8SJLxV7AtkN/AAC8zeLxBdy2wbFHBRsEri/jm0mp+V45kxooopk6K8YmNADoUi5tew2kncBtPPpNxgKf2aIqiwA2HnmbnqZh8LT13ReLqPC4v6TfgRdNiqxb3c8pwRh/q1JHsUTn+d7f4yTpBe+Og8dsj6Lu2Kq/dCKCOYsR09sydntSX0jaSYa722Ej0UADzvKi0usbhiXZV2lrC/nnyGclYXQKrZnOtwUbD1PDlM50dkjjolBRQ1XyLiyjfqjO/jYHoBI2JqYiue4luDP3VUcRfM9bGWTYUM4ZyWzOWxVABsAPAeUmILbLDbuudvMmNPRKp8B2dRTr1W+0fb3skG/Jfe8fKXpHL0g3P3j6D9oEFkG8X63Pxm2hzZxOiMDsHwg2A2C0X29pTNJqDKZxyI9IEm54fEwsputM45VV52t/M4DtchhtE7tAdJMzg5De0LfCCwRRunHGvq75R4/GkDb0HE/SbnNot45acx+udRdg2/IfPy5ynjk3zijVhooooBMvGJjmDNatezlDWq625BfxOQ+c16mUnZehamzn32sOi5fEtLoCToV+NF6ngJG7PZ1cQ34reAZh8FEk4trOxO4AnwF5G7KKfs3c7WYX6gEn90X7U+kpE/qMTxNpYM1yBwHqZBcf1Mt8mP3Seg/npNhajkd8D+bI6xlQ61zHZiDkjHpqfNhMDoghEQE1/uf3MB8AZ1Ct72r0Fz6m3wgEVkJ2ZDiflAruKaF7E22b2YnYB1NvOOlXXqFR7KWL+N9VfGxJ5AcYtNm1Mke6VfrqMGI9JsCWiaozNzvzJHhGd4zVBtBuCLg8QdhEjVXh1nBPiVXaQJWYnT6LkufO9hIWPpgnvE+chK6Ke4M+P/ADHxntZr1D1tJNUbaPWwG+V+Jra5vYi2QHL6nb4zrjqpY6jA2Uqb7iwzGXAZePSRiJbdmZyJ57fdMY0eK0koaNCigxJac6jhRckAcTDmf7QOdcC+VtkaTtFr03s5i0eghQ3W1v1AkNfxvLkHLKedf9OqrWrLc2DIQOBZWuf9o8pvk2iJqcvGy9nVRpirZah2EjV8SAvzk7QFDUoDixLedregB8ZTdoPYPOrNOMlyyta3K0nJ7Nb6cCO/fwkioMxzHw/9zm+3wnWpsHUfCb9lcNbOdUSc0nUQ4YZcCRqj3vaNiTtjUfZ8JoRNCoRr396oT4BVA9J2xhvcccvCdcF7J6n9qSPUmSdZb7ZrQunlRnw1UhDSeyOclamxvTBPukA6vA6svsRWCDMzzDtT/wDcf8qfCaXs+xOHW5J7xGZJsBuF9g6Slx9i31EvE1Nc8o2p3WN9XI2IGYNto5wXh4j/ALfiPjK+KclqW/d4qwtgBmbZZm58Sdsa0No0nVAWjQjBmAoojFNY/9k=\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-23 05:45:59', '2023-06-23 05:45:59', '', 119, 'http://localhost/blog2/?p=138', 0, 'revision', '', 0),
(140, 1, '2023-06-23 05:47:08', '2023-06-23 05:47:08', '<!-- wp:html -->\n<img src=\"https://assets-metrostyle.abs-cbn.com/prod/metrostyle/attachments/a1492dfe-a6bf-4e05-9aa1-c8152f15e680_9%20-%20vagabond%20-%20lee%20seung-gi%203.jpeg\" alt=\"\">\n            <article>\n                <h2>Park Seo-joon</h2>\n                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti, odit deserunt error odio, ad molestias aliquid quas reprehenderit sapiente quisquam eligendi voluptatum qui, id assumenda sequi. Distinctio eaque reprehenderit molestiae.</p>\n            </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2023-06-23 05:47:08', '2023-06-23 05:47:08', '', 119, 'http://localhost/blog2/?p=140', 0, 'revision', '', 0),
(141, 1, '2023-06-23 05:54:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:54:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=members&p=141', 0, 'members', '', 0),
(142, 1, '2023-06-23 06:00:15', '2023-06-23 06:00:15', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste laboriosam, dolorem placeat culpa aliquid corrupti ratione aut hic nam totam!', 'Gia Marqueses', '', 'publish', 'closed', 'closed', '', 'gia-marqueses', '', '', '2023-06-23 06:35:03', '2023-06-23 06:35:03', '', 0, 'http://localhost/blog2/?post_type=testimonials&#038;p=142', 0, 'testimonials', '', 0),
(143, 1, '2023-06-23 05:59:20', '2023-06-23 05:59:20', '', 'kim', '', 'inherit', 'open', 'closed', '', 'kim', '', '', '2023-06-23 05:59:20', '2023-06-23 05:59:20', '', 142, 'http://localhost/blog2/wp-content/uploads/2023/06/kim.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2023-06-23 05:59:22', '2023-06-23 05:59:22', '', 'kween', '', 'inherit', 'open', 'closed', '', 'kween', '', '', '2023-06-23 05:59:22', '2023-06-23 05:59:22', '', 142, 'http://localhost/blog2/wp-content/uploads/2023/06/kween.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2023-06-23 06:00:58', '2023-06-23 06:00:58', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste laboriosam, dolorem placeat culpa aliquid corrupti ratione aut hic nam totam!', 'Chelsea Lipnica', '', 'publish', 'closed', 'closed', '', 'chelsea-lipnica', '', '', '2023-06-23 06:34:50', '2023-06-23 06:34:50', '', 0, 'http://localhost/blog2/?post_type=testimonials&#038;p=145', 0, 'testimonials', '', 0),
(146, 1, '2023-06-23 06:02:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 06:02:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=members&p=146', 0, 'members', '', 0),
(147, 1, '2023-06-23 06:05:48', '2023-06-23 06:05:48', '', 'Park Seo Joon', '', 'publish', 'closed', 'closed', '', 'park-seo-joon', '', '', '2023-06-23 06:26:07', '2023-06-23 06:26:07', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=147', 0, 'members', '', 0),
(148, 1, '2023-06-23 06:05:18', '2023-06-23 06:05:18', '', 'psj', '', 'inherit', 'open', 'closed', '', 'psj', '', '', '2023-06-23 06:05:18', '2023-06-23 06:05:18', '', 147, 'http://localhost/blog2/wp-content/uploads/2023/06/psj.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2023-06-23 06:06:24', '2023-06-23 06:06:24', '', 'Park Seo Joon', '', 'publish', 'closed', 'closed', '', 'park-seo-joon-2', '', '', '2023-06-23 06:33:19', '2023-06-23 06:33:19', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=149', 0, 'members', '', 0),
(150, 1, '2023-06-23 06:06:53', '2023-06-23 06:06:53', '', 'Park Seo Joon', '', 'publish', 'closed', 'closed', '', 'park-seo-joon-3', '', '', '2023-06-23 06:06:53', '2023-06-23 06:06:53', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=150', 0, 'members', '', 0),
(151, 1, '2023-06-23 06:07:06', '2023-06-23 06:07:06', '', 'Park Seo Joon', '', 'publish', 'closed', 'closed', '', 'park-seo-joon-4', '', '', '2023-06-23 06:31:46', '2023-06-23 06:31:46', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=151', 0, 'members', '', 0),
(152, 1, '2023-06-23 06:55:44', '2023-06-23 06:55:44', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2023-06-23 07:27:07', '2023-06-23 07:27:07', '', 0, 'http://localhost/blog2/?page_id=152', 0, 'page', '', 0),
(153, 1, '2023-06-23 06:55:44', '2023-06-23 06:55:44', '', 'Members', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-06-23 06:55:44', '2023-06-23 06:55:44', '', 152, 'http://localhost/blog2/?p=153', 0, 'revision', '', 0),
(154, 1, '2023-06-23 07:26:51', '2023-06-23 07:26:51', '', 'psjjjj', '', 'inherit', 'open', 'closed', '', 'psjjjj', '', '', '2023-06-23 07:26:51', '2023-06-23 07:26:51', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/psjjjj.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2023-06-23 07:29:17', '2023-06-23 07:28:10', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2023-06-23 07:29:17', '2023-06-23 07:29:17', '', 0, 'http://localhost/blog2/?p=155', 3, 'nav_menu_item', '', 0),
(156, 1, '2023-06-23 07:32:02', '2023-06-23 07:29:31', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2023-06-23 07:32:02', '2023-06-23 07:32:02', '', 0, 'http://localhost/blog2/?p=156', 3, 'nav_menu_item', '', 0),
(157, 1, '2023-06-23 07:32:02', '2023-06-23 07:29:31', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2023-06-23 07:32:02', '2023-06-23 07:32:02', '', 0, 'http://localhost/blog2/?p=157', 1, 'nav_menu_item', '', 0),
(158, 1, '2023-06-23 07:32:02', '2023-06-23 07:29:31', ' ', '', '', 'publish', 'closed', 'closed', '', '158', '', '', '2023-06-23 07:32:02', '2023-06-23 07:32:02', '', 0, 'http://localhost/blog2/?p=158', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, 'card_sm_banner', 'card_sm-banner', 0),
(4, 'card_lg_banner', 'card_lg-banner', 0),
(5, 'Fashion', 'fashion', 0),
(6, 'feature_lg', 'feature_lg', 0),
(7, 'feature_md', 'feature_md', 0),
(8, 'feature_sm', 'feature_sm', 0),
(9, 'Header Menu', 'header-menu', 0),
(10, 'Footer Menu', 'footer-menu', 0),
(11, 'aesthetic', 'aesthetic', 0),
(12, 'bedroom', 'bedroom', 0),
(13, 'forest', 'forest', 0),
(14, 'snow', 'snow', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(1, 13, 0),
(1, 14, 0),
(5, 2, 0),
(26, 3, 0),
(29, 3, 0),
(31, 3, 0),
(33, 3, 0),
(46, 5, 0),
(49, 5, 0),
(53, 5, 0),
(56, 1, 0),
(58, 1, 0),
(60, 1, 0),
(63, 1, 0),
(66, 1, 0),
(69, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 8, 0),
(78, 8, 0),
(80, 8, 0),
(82, 8, 0),
(87, 1, 0),
(91, 1, 0),
(95, 1, 0),
(99, 1, 0),
(102, 1, 0),
(104, 1, 0),
(106, 1, 0),
(108, 1, 0),
(110, 1, 0),
(112, 1, 0),
(114, 1, 0),
(114, 11, 0),
(114, 12, 0),
(117, 9, 0),
(121, 9, 0),
(155, 9, 0),
(156, 10, 0),
(157, 10, 0),
(158, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 17),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 4),
(9, 9, 'nav_menu', '', 0, 3),
(10, 10, 'nav_menu', '', 0, 3),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Ahsirt'),
(2, 1, 'first_name', '3sha'),
(3, 1, 'last_name', 'sayn0'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8b9a505a38a2c1a56b801c94020d8561331a411afdbec6de6c2f0112f0197b34\";a:4:{s:10:\"expiration\";i:1688515137;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687305537;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:14:\"featured-image\";i:3;s:23:\"taxonomy-panel-category\";i:4;s:12:\"post-excerpt\";i:5;s:23:\"taxonomy-panel-post_tag\";}s:14:\"inactivePanels\";a:0:{}}s:9:\"_modified\";s:24:\"2023-06-22T23:50:20.761Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1687325801'),
(21, 1, 'enable_custom_fields', '1'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Ahsirt', '$P$B6c7MuYvllTEmYPifbDnkfAeWgS3lx0', 'ahsirt', 'trishaamv.sayno@gmail.com', 'http://localhost/blog2', '2023-06-20 23:58:17', '', 0, 'Ahsirt');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:27:51'),
(2, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:29:06'),
(3, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:30:34'),
(4, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:31:32'),
(5, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:32:39'),
(6, 'Mailer: Other SMTP\r\nSMTP Error: Could not connect to SMTP host. Failed to connect to serverSMTP server error: Failed to connect to server Additional SMTP info: php_network_getaddresses: getaddrinfo for mail.iskolarngbayan.pup.edu.ph failed: No such host is known.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:42:27'),
(7, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:45:50'),
(8, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:48:36'),
(9, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:49:39'),
(10, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-includes\\\\class-wp-recovery-mode-email-service.php\",\"line\":225}', 0, '2023-06-22 20:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
