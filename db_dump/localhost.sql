-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 08, 2018 at 05:59 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-06 20:54:15', '2018-08-06 20:54:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/le_8_restaurant_wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/le_8_restaurant_wordpress', 'yes'),
(3, 'blogname', 'le 8 restaurant', 'yes'),
(4, 'blogdescription', 'Ozoir-la-Ferrière', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'leroyguillaume78@yahoo.fr', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:95:\"/Applications/MAMP/htdocs/le_8_restaurant_wordpress/wp-content/themes/seos-restaurant/style.css\";i:2;s:99:\"/Applications/MAMP/htdocs/le_8_restaurant_wordpress/wp-content/themes/seos-restaurant/functions.php\";i:3;s:104:\"/Applications/MAMP/htdocs/le_8_restaurant_wordpress/wp-content/themes/seos-restaurant/css/no-sidebar.css\";i:4;s:100:\"/Applications/MAMP/htdocs/le_8_restaurant_wordpress/wp-content/themes/seos-restaurant/css/to-top.css\";i:5;s:99:\"/Applications/MAMP/htdocs/le_8_restaurant_wordpress/wp-content/themes/seos-restaurant/css/style.css\";}', 'no'),
(40, 'template', 'seos-restaurant', 'yes'),
(41, 'stylesheet', 'seos-restaurant', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '23', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', 'GCQ>Zo=,3F=b8O.$QS)Mt@91CyM^Vj:T=98J5_n#PmY<pzvm+w(S43=0*}QpGtxZ', 'no'),
(109, 'nonce_salt', 'Y44SH#*tCAp1<B<n%g3|I.6P}%^3juBFQwH{@%e&W_b|(T8#|{7suyk$q:]OW,m!', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:5:{i:1533750855;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533761655;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533761728;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533763714;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533589554;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533747453;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533747453;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(124, 'auth_key', 'gSa=:[5H/Ldk|tzQwt|#!Hqgw6P% G``VH!o0K2T*RP/EB20iXT/*2uTEr.$e]bW', 'no'),
(125, 'auth_salt', '7Z7dpT4I{#+C,1kfG>#NEX;PRmh4$[=-3waK%W#aRb f<j|,xkBeZnGBI`.7p:Kl', 'no'),
(126, 'logged_in_key', '|DYi{d1&P]rTb~l6Jl*$b]ACj]_rMz}(n3BJ7cX]oqRH%y#^~;H>a<~lP^lj#3_!', 'no'),
(127, 'logged_in_salt', '9LzlC>)O1+JWB)r][4Bk{g;v;=^SOj|{v=U7wI93t&)klCrDH$JQB|zl{DOhJoYs', 'no'),
(128, '_site_transient_timeout_browser_7d24cde6e86162adf81386d192f2cad2', '1534193729', 'no'),
(129, '_site_transient_browser_7d24cde6e86162adf81386d192f2cad2', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"11.1.2\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(146, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533747453;s:7:\"checked\";a:4:{s:15:\"seos-restaurant\";s:5:\"2.1.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(147, 'current_theme', 'SEOS Restaurant', 'yes'),
(148, 'theme_mods_seos-restaurant', 'a:27:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:37:\"seos_restaurant_gallery_section_title\";s:0:\"\";s:31:\"seos_restaurant_image_gallery_1\";s:117:\"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.35.jpeg\";s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:6:\"custom\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:12:\"header_image\";s:100:\"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:8;s:3:\"url\";s:100:\"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg\";s:13:\"thumbnail_url\";s:100:\"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg\";s:6:\"height\";i:996;s:5:\"width\";i:1500;}s:22:\"custom_header_position\";s:3:\"all\";s:21:\"custom_header_overlay\";s:0:\"\";s:32:\"seos_restaurant_gallery_activate\";i:1;s:31:\"seos_restaurant_image_gallery_2\";s:117:\"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.29.jpeg\";s:31:\"seos_restaurant_image_gallery_3\";s:117:\"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.32.jpeg\";s:31:\"seos_restaurant_image_gallery_4\";s:0:\"\";s:29:\"seos_restaurant_image_title_1\";s:11:\"Nos Sorbets\";s:29:\"seos_restaurant_image_title_2\";s:15:\"Salade de boeuf\";s:16:\"header_textcolor\";s:6:\"e85176\";s:16:\"background_color\";s:6:\"4f4f4f\";s:29:\"seos_restaurant_sidebar_width\";s:2:\"10\";s:32:\"seos_restaurant_sidebar_position\";s:1:\"3\";s:13:\"header_height\";i:400;s:27:\"seos_restaurant_box_1_title\";s:0:\"\";s:26:\"seos_restaurant_box_1_text\";s:0:\"\";s:15:\"background_size\";s:4:\"auto\";s:21:\"background_attachment\";s:6:\"scroll\";}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(167, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(209, '_transient_is_multi_author', '0', 'yes'),
(215, '_site_transient_timeout_theme_roots', '1533749253', 'no'),
(216, '_site_transient_theme_roots', 'a:4:{s:15:\"seos-restaurant\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2018/08/le_8_hero_img.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1360;s:4:\"file\";s:25:\"2018/08/le_8_hero_img.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"le_8_hero_img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"le_8_hero_img-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"le_8_hero_img-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"le_8_hero_img-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1533589877'),
(7, 5, '_wp_attachment_is_custom_background', 'seos-restaurant'),
(8, 7, '_edit_lock', '1533589985:1'),
(9, 8, '_wp_attached_file', '2018/08/cropped-le_8_hero_img.jpg'),
(10, 8, '_wp_attachment_context', 'custom-header'),
(11, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:996;s:4:\"file\";s:33:\"2018/08/cropped-le_8_hero_img.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-le_8_hero_img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-le_8_hero_img-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"cropped-le_8_hero_img-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"cropped-le_8_hero_img-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:5;}'),
(12, 8, '_wp_attachment_custom_header_last_used_seos-restaurant', '1533589999'),
(13, 8, '_wp_attachment_is_custom_header', 'seos-restaurant'),
(14, 7, '_wp_trash_meta_status', 'publish'),
(15, 7, '_wp_trash_meta_time', '1533589999'),
(16, 9, '_wp_trash_meta_status', 'publish'),
(17, 9, '_wp_trash_meta_time', '1533590040'),
(18, 10, '_wp_attached_file', '2018/08/WhatsApp-Image-2018-08-04-at-14.46.29.jpeg'),
(19, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:50:\"2018/08/WhatsApp-Image-2018-08-04-at-14.46.29.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.29-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.29-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.29-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2018-08-04-at-14.46.29-1024x1024.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, '_wp_attached_file', '2018/08/WhatsApp-Image-2018-08-04-at-14.46.31.jpeg'),
(21, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:50:\"2018/08/WhatsApp-Image-2018-08-04-at-14.46.31.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.31-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.31-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.31-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2018-08-04-at-14.46.31-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 12, '_wp_attached_file', '2018/08/WhatsApp-Image-2018-08-04-at-14.46.32.jpeg'),
(23, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:50:\"2018/08/WhatsApp-Image-2018-08-04-at-14.46.32.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.32-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.32-225x300.jpeg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2018-08-04-at-14.46.32-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2018-08-04-at-14.46.32-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 13, '_wp_attached_file', '2018/08/WhatsApp-Image-2018-08-04-at-14.46.34.jpeg'),
(25, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:50:\"2018/08/WhatsApp-Image-2018-08-04-at-14.46.34.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.34-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.34-225x300.jpeg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2018-08-04-at-14.46.34-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2018-08-04-at-14.46.34-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 14, '_wp_attached_file', '2018/08/WhatsApp-Image-2018-08-04-at-14.46.35.jpeg'),
(27, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:50:\"2018/08/WhatsApp-Image-2018-08-04-at-14.46.35.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.35-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.35-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2018-08-04-at-14.46.35-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2018-08-04-at-14.46.35-1024x1024.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 15, '_edit_lock', '1533590280:1'),
(29, 15, '_wp_trash_meta_status', 'publish'),
(30, 15, '_wp_trash_meta_time', '1533590280'),
(31, 16, '_edit_lock', '1533590345:1'),
(32, 16, '_wp_trash_meta_status', 'publish'),
(33, 16, '_wp_trash_meta_time', '1533590393'),
(34, 17, '_edit_lock', '1533590460:1'),
(35, 17, '_wp_trash_meta_status', 'publish'),
(36, 17, '_wp_trash_meta_time', '1533590463'),
(37, 18, '_edit_lock', '1533590651:1'),
(38, 18, '_wp_trash_meta_status', 'publish'),
(39, 18, '_wp_trash_meta_time', '1533590674'),
(40, 19, '_edit_lock', '1533590759:1'),
(41, 19, '_wp_trash_meta_status', 'publish'),
(42, 19, '_wp_trash_meta_time', '1533590763'),
(52, 21, '_edit_last', '1'),
(53, 21, '_edit_lock', '1533590973:1'),
(54, 21, '_wp_page_template', 'default'),
(55, 23, '_edit_last', '1'),
(56, 23, '_edit_lock', '1533591010:1'),
(57, 23, '_wp_page_template', 'default'),
(58, 25, '_edit_last', '1'),
(59, 25, '_edit_lock', '1533592442:1'),
(60, 25, '_wp_page_template', 'default'),
(106, 32, '_menu_item_type', 'custom'),
(107, 32, '_menu_item_menu_item_parent', '0'),
(108, 32, '_menu_item_object_id', '32'),
(109, 32, '_menu_item_object', 'custom'),
(110, 32, '_menu_item_target', ''),
(111, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 32, '_menu_item_xfn', ''),
(113, 32, '_menu_item_url', 'http://localhost:8888/le_8_restaurant_wordpress/'),
(115, 33, '_menu_item_type', 'post_type'),
(116, 33, '_menu_item_menu_item_parent', '0'),
(117, 33, '_menu_item_object_id', '23'),
(118, 33, '_menu_item_object', 'page'),
(119, 33, '_menu_item_target', ''),
(120, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 33, '_menu_item_xfn', ''),
(122, 33, '_menu_item_url', ''),
(123, 33, '_menu_item_orphaned', '1533591518'),
(124, 34, '_menu_item_type', 'post_type'),
(125, 34, '_menu_item_menu_item_parent', '0'),
(126, 34, '_menu_item_object_id', '25'),
(127, 34, '_menu_item_object', 'page'),
(128, 34, '_menu_item_target', ''),
(129, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 34, '_menu_item_xfn', ''),
(131, 34, '_menu_item_url', ''),
(133, 35, '_menu_item_type', 'post_type'),
(134, 35, '_menu_item_menu_item_parent', '0'),
(135, 35, '_menu_item_object_id', '21'),
(136, 35, '_menu_item_object', 'page'),
(137, 35, '_menu_item_target', ''),
(138, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 35, '_menu_item_xfn', ''),
(140, 35, '_menu_item_url', ''),
(151, 37, '_menu_item_type', 'post_type'),
(152, 37, '_menu_item_menu_item_parent', '0'),
(153, 37, '_menu_item_object_id', '23'),
(154, 37, '_menu_item_object', 'page'),
(155, 37, '_menu_item_target', ''),
(156, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 37, '_menu_item_xfn', ''),
(158, 37, '_menu_item_url', ''),
(159, 37, '_menu_item_orphaned', '1533591658'),
(160, 1, '_edit_lock', '1533591715:1'),
(161, 1, '_edit_last', '1'),
(164, 39, '_wp_trash_meta_status', 'publish'),
(165, 39, '_wp_trash_meta_time', '1533591842'),
(166, 1, '_wp_trash_meta_status', 'publish'),
(167, 1, '_wp_trash_meta_time', '1533591860'),
(168, 1, '_wp_desired_post_slug', 'hello-world'),
(169, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(170, 40, '_edit_lock', '1533592424:1'),
(171, 40, '_wp_trash_meta_status', 'publish'),
(172, 40, '_wp_trash_meta_time', '1533592425'),
(173, 41, '_edit_lock', '1533670027:1'),
(174, 41, '_wp_trash_meta_status', 'publish'),
(175, 41, '_wp_trash_meta_time', '1533670029');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-06 20:54:15', '2018-08-06 20:54:15', 'Venez découvrir notre restaurant traditionnel «  Le Ferrière » situé en plein cœur de la ville, à proximité d’un parc arboré et de sa charmante église.\r\nSitué dans le centre-ville d’Ozoir la ferrière, un parking est à votre disposition à 20 mètres de notre établissement afin de faciliter votre visite.\r\nLe chef Rodolphe Mirecourt,  Maitre restaurateur depuis le 25 Mars 2013, gage de qualité indispensable pour notre établissement.\r\nCelui-ci vous servira avec son équipe que des produits faits maison (selon le décret) remis au goût du jour et à base de produits bruts, mise à part nos glaces de la maison RAIMO.\r\nPour ce qui est du service en salle, Sébastien Bourgaud saura vous servir et être à votre écoute pour répondre à vos attentes.\r\n\r\nNous sommes adaptés en grande partie à l’accueil des handicapés,\r\n\r\nNous vous accueillons tous les jours, midi et soir (sauf le dimanche soir) afin de mettre en œuvre vos repas d’affaires, communions, baptêmes, mariages, ou simplement un moment privilégié entre amis, en famille ou à deux tout simplement.\r\nNous pouvons privatiser en partie ou totalement notre restaurant selon votre désir\r\n\r\nNotre équipe vous accueille dans une ambiance chaleureuse et conviviale : Tous les jours sauf le dimanche soir de 12H à 14H00 et de 19H30 à 21H45', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-08-06 21:44:20', '2018-08-06 21:44:20', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-06 20:54:15', '2018-08-06 20:54:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/le_8_restaurant_wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-06 20:54:15', '2018-08-06 20:54:15', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-06 20:54:15', '2018-08-06 20:54:15', '<h2>Who we are</h2><p>Our website address is: http://localhost:8888/le_8_restaurant_wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-06 20:54:15', '2018-08-06 20:54:15', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-06 20:55:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-06 20:55:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-06 21:10:59', '2018-08-06 21:10:59', '', 'le_8_hero_img', '', 'inherit', 'open', 'closed', '', 'le_8_hero_img', '', '', '2018-08-06 21:10:59', '2018-08-06 21:10:59', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/le_8_hero_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-08-06 21:11:17', '2018-08-06 21:11:17', '{\n    \"seos-restaurant::seos_restaurant_gallery_section_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:11:17\"\n    },\n    \"seos-restaurant::seos_restaurant_image_gallery_1\": {\n        \"value\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/le_8_hero_img.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:11:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2bfe4b26-7afe-4278-9bda-22545dd537e6', '', '', '2018-08-06 21:11:17', '2018-08-06 21:11:17', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/2bfe4b26-7afe-4278-9bda-22545dd537e6/', 0, 'customize_changeset', '', 0),
(7, 1, '2018-08-06 21:13:19', '2018-08-06 21:13:19', '{\n    \"seos-restaurant::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:12:28\"\n    },\n    \"seos-restaurant::background_preset\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:12:28\"\n    },\n    \"seos-restaurant::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:12:28\"\n    },\n    \"seos-restaurant::header_image\": {\n        \"value\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:13:19\"\n    },\n    \"seos-restaurant::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg\",\n            \"thumbnail_url\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg\",\n            \"timestamp\": 1533589986227,\n            \"attachment_id\": 8,\n            \"width\": 1500,\n            \"height\": 996\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:13:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95aa9369-581f-4fc8-ab6c-2291ebf5743e', '', '', '2018-08-06 21:13:19', '2018-08-06 21:13:19', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-08-06 21:13:05', '2018-08-06 21:13:05', '', 'cropped-le_8_hero_img.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-le_8_hero_img-jpg', '', '', '2018-08-06 21:13:05', '2018-08-06 21:13:05', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/cropped-le_8_hero_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-08-06 21:14:00', '2018-08-06 21:14:00', '{\n    \"seos-restaurant::custom_header_position\": {\n        \"value\": \"all\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:14:00\"\n    },\n    \"seos-restaurant::custom_header_overlay\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:14:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bec3a9e2-0b63-489e-b1d7-05127bd6e29b', '', '', '2018-08-06 21:14:00', '2018-08-06 21:14:00', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/bec3a9e2-0b63-489e-b1d7-05127bd6e29b/', 0, 'customize_changeset', '', 0),
(10, 1, '2018-08-06 21:15:39', '2018-08-06 21:15:39', '', 'WhatsApp Image 2018-08-04 at 14.46.29', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2018-08-04-at-14-46-29', '', '', '2018-08-06 21:15:39', '2018-08-06 21:15:39', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.29.jpeg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-08-06 21:15:40', '2018-08-06 21:15:40', '', 'WhatsApp Image 2018-08-04 at 14.46.31', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2018-08-04-at-14-46-31', '', '', '2018-08-06 21:15:40', '2018-08-06 21:15:40', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.31.jpeg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-08-06 21:15:41', '2018-08-06 21:15:41', '', 'WhatsApp Image 2018-08-04 at 14.46.32', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2018-08-04-at-14-46-32', '', '', '2018-08-06 21:15:41', '2018-08-06 21:15:41', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.32.jpeg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-08-06 21:15:43', '2018-08-06 21:15:43', '', 'WhatsApp Image 2018-08-04 at 14.46.34', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2018-08-04-at-14-46-34', '', '', '2018-08-06 21:15:43', '2018-08-06 21:15:43', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.34.jpeg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-08-06 21:15:44', '2018-08-06 21:15:44', '', 'WhatsApp Image 2018-08-04 at 14.46.35', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2018-08-04-at-14-46-35', '', '', '2018-08-06 21:15:44', '2018-08-06 21:15:44', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.35.jpeg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-08-06 21:18:00', '2018-08-06 21:18:00', '{\n    \"seos-restaurant::seos_restaurant_image_gallery_1\": {\n        \"value\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.35.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:16:00\"\n    },\n    \"seos-restaurant::seos_restaurant_gallery_activate\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:17:00\"\n    },\n    \"seos-restaurant::seos_restaurant_image_gallery_2\": {\n        \"value\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.29.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:17:00\"\n    },\n    \"seos-restaurant::seos_restaurant_image_gallery_3\": {\n        \"value\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.32.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:18:00\"\n    },\n    \"seos-restaurant::seos_restaurant_image_gallery_4\": {\n        \"value\": \"http://localhost:8888/le_8_restaurant_wordpress/wp-content/uploads/2018/08/WhatsApp-Image-2018-08-04-at-14.46.31.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:17:00\"\n    },\n    \"seos-restaurant::seos_restaurant_image_title_1\": {\n        \"value\": \"Nos Sorbets\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:18:00\"\n    },\n    \"seos-restaurant::seos_restaurant_image_title_2\": {\n        \"value\": \"Salade de boeuf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:18:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f0b206d4-7510-417a-a5c7-e10aa6814349', '', '', '2018-08-06 21:18:00', '2018-08-06 21:18:00', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2018-08-06 21:19:53', '2018-08-06 21:19:53', '{\n    \"blogdescription\": {\n        \"value\": \"Ozoir-la-Ferri\\u00e8re\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:19:53\"\n    },\n    \"blogname\": {\n        \"value\": \"le 8 restaurant\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:19:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '79f41690-5d04-4ab7-bfd0-b9f5ca89f3ea', '', '', '2018-08-06 21:19:53', '2018-08-06 21:19:53', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2018-08-06 21:21:03', '2018-08-06 21:21:03', '{\n    \"seos-restaurant::header_textcolor\": {\n        \"value\": \"#e85176\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:21:00\"\n    },\n    \"seos-restaurant::background_color\": {\n        \"value\": \"#4f4f4f\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:21:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '498dbba1-6736-4957-afd7-1c3709336e5d', '', '', '2018-08-06 21:21:03', '2018-08-06 21:21:03', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-08-06 21:24:34', '2018-08-06 21:24:34', '{\n    \"seos-restaurant::seos_restaurant_sidebar_width\": {\n        \"value\": \"50\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:23:03\"\n    },\n    \"seos-restaurant::seos_restaurant_sidebar_position\": {\n        \"value\": \"3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:23:03\"\n    },\n    \"seos-restaurant::header_height\": {\n        \"value\": \"400\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:23:03\"\n    },\n    \"seos-restaurant::nav_menu_locations[primary]\": {\n        \"value\": -6372904620509070000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:24:10\"\n    },\n    \"nav_menu[-6372904620509070000]\": {\n        \"value\": {\n            \"name\": \"Accueil\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:24:10\"\n    },\n    \"nav_menu[-6849988401491467000]\": {\n        \"value\": {\n            \"name\": \"Nos cartes\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:24:10\"\n    },\n    \"nav_menu[-2430771280462714000]\": {\n        \"value\": {\n            \"name\": \"Notre restaurant\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:24:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dddf0afa-ba46-4e3f-91e2-a3e6c85be479', '', '', '2018-08-06 21:24:34', '2018-08-06 21:24:34', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2018-08-06 21:26:03', '2018-08-06 21:26:03', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:25:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '13d4061a-d012-43e6-8bdd-b5cbdbeaf73b', '', '', '2018-08-06 21:26:03', '2018-08-06 21:26:03', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=19', 0, 'customize_changeset', '', 0),
(21, 1, '2018-08-06 21:29:33', '2018-08-06 21:29:33', 'Découvrez notre cuisine traditionnelle remise au goût du jour et ses saveurs gourmandes avec par exemple le saumon fumé maison, les noix de St Jacques, le filet de bœuf, le moelleux au chocolat, … le tout accompagné de grands vins à prix doux qui sauront égayer vos sens, d’ailleurs depuis le 25 Mars 2013 nous avons obtenue le titre de MAITRE RESTAURATEUR.\r\n\r\nTout nos menu sont « fait maison » à par nos glaces et sorbets de la maison Raimo\r\n\r\nDeux menus cartes vous sont proposés :\r\n\r\nPremier menu à 21 Euros qui ce compose d’une entrée, un plat et un dessert au choix, servi uniquement du lundi au vendredi midi (sauf week end et jours férié)\r\n\r\nDeuxième menu à 28 Euros avec entrée et plat ou plat et dessert, ou à 35 Euros avec entrée, plat et dessert.\r\n\r\nLes apéritifs ne sont pas en reste grâce à une large gamme à votre disposition avec nos cocktails maison (avec ou sans alcool) et une large sélection de whiskies haut de gamme et d’autres boissons qui sauront vous plaire.\r\n\r\nMENU MIDI à 21 € : Entrée + Plat + Dessert\r\nServi du lundi au vendredi, uniquement le midi, sauf jours fériés.\r\n\r\nEntrées :\r\n\r\nSalade de roquette, grana padano et brochette de légumes rôti\r\n\r\nMoules gratinées au beurre d’ail\r\n\r\nEffeuillé d’avocat à la coriandre, pétoncle marinée à l’huile de noix\r\n\r\nPanna cota au basilic, tartare de tomate et coulis de poivron jaune\r\n\r\n&nbsp;\r\n\r\nPlats :\r\n\r\nJoue de porc comme un tajine\r\n\r\nPavé de rumsteck, fricassée de brocolis aux échalotes\r\n\r\nFilet de perche mariné au poivre malabar, gratinée de pommes de terre au curry\r\n\r\n(Selon arrivage)\r\n\r\nTruite entière au four, mousseline de courgette au lard\r\n\r\n(Selon arrivage)\r\n\r\nDesserts :\r\n\r\nTartelette aux fruits comme un tartare\r\n\r\nMelon au sirop de menthe gingembre, meringue croquante et crème fouetté\r\n\r\nGlace ou Sorbet (2 boules)\r\n\r\nTarte fine aux pêche, glace vanille', 'Notre carte', '', 'publish', 'closed', 'closed', '', 'notre-carte', '', '', '2018-08-06 21:29:33', '2018-08-06 21:29:33', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-08-06 21:29:33', '2018-08-06 21:29:33', 'Découvrez notre cuisine traditionnelle remise au goût du jour et ses saveurs gourmandes avec par exemple le saumon fumé maison, les noix de St Jacques, le filet de bœuf, le moelleux au chocolat, … le tout accompagné de grands vins à prix doux qui sauront égayer vos sens, d’ailleurs depuis le 25 Mars 2013 nous avons obtenue le titre de MAITRE RESTAURATEUR.\r\n\r\nTout nos menu sont « fait maison » à par nos glaces et sorbets de la maison Raimo\r\n\r\nDeux menus cartes vous sont proposés :\r\n\r\nPremier menu à 21 Euros qui ce compose d’une entrée, un plat et un dessert au choix, servi uniquement du lundi au vendredi midi (sauf week end et jours férié)\r\n\r\nDeuxième menu à 28 Euros avec entrée et plat ou plat et dessert, ou à 35 Euros avec entrée, plat et dessert.\r\n\r\nLes apéritifs ne sont pas en reste grâce à une large gamme à votre disposition avec nos cocktails maison (avec ou sans alcool) et une large sélection de whiskies haut de gamme et d’autres boissons qui sauront vous plaire.\r\n\r\nMENU MIDI à 21 € : Entrée + Plat + Dessert\r\nServi du lundi au vendredi, uniquement le midi, sauf jours fériés.\r\n\r\nEntrées :\r\n\r\nSalade de roquette, grana padano et brochette de légumes rôti\r\n\r\nMoules gratinées au beurre d’ail\r\n\r\nEffeuillé d’avocat à la coriandre, pétoncle marinée à l’huile de noix\r\n\r\nPanna cota au basilic, tartare de tomate et coulis de poivron jaune\r\n\r\n&nbsp;\r\n\r\nPlats :\r\n\r\nJoue de porc comme un tajine\r\n\r\nPavé de rumsteck, fricassée de brocolis aux échalotes\r\n\r\nFilet de perche mariné au poivre malabar, gratinée de pommes de terre au curry\r\n\r\n(Selon arrivage)\r\n\r\nTruite entière au four, mousseline de courgette au lard\r\n\r\n(Selon arrivage)\r\n\r\nDesserts :\r\n\r\nTartelette aux fruits comme un tartare\r\n\r\nMelon au sirop de menthe gingembre, meringue croquante et crème fouetté\r\n\r\nGlace ou Sorbet (2 boules)\r\n\r\nTarte fine aux pêche, glace vanille', 'Notre carte', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-08-06 21:29:33', '2018-08-06 21:29:33', '', 21, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-08-06 21:30:09', '2018-08-06 21:30:09', 'Venez découvrir notre restaurant traditionnel «  Le Ferrière » situé en plein cœur de la ville, à proximité d’un parc arboré et de sa charmante église.\r\nSitué dans le centre-ville d’Ozoir la ferrière, un parking est à votre disposition à 20 mètres de notre établissement afin de faciliter votre visite.\r\nLe chef Rodolphe Mirecourt,  Maitre restaurateur depuis le 25 Mars 2013, gage de qualité indispensable pour notre établissement.\r\nCelui-ci vous servira avec son équipe que des produits faits maison (selon le décret) remis au goût du jour et à base de produits bruts, mise à part nos glaces de la maison RAIMO.\r\nPour ce qui est du service en salle, Sébastien Bourgaud saura vous servir et être à votre écoute pour répondre à vos attentes.\r\n\r\nNous sommes adaptés en grande partie à l’accueil des handicapés,\r\n\r\nNous vous accueillons tous les jours, midi et soir (sauf le dimanche soir) afin de mettre en œuvre vos repas d’affaires, communions, baptêmes, mariages, ou simplement un moment privilégié entre amis, en famille ou à deux tout simplement.\r\nNous pouvons privatiser en partie ou totalement notre restaurant selon votre désir\r\n\r\nNotre équipe vous accueille dans une ambiance chaleureuse et conviviale : Tous les jours sauf le dimanche soir de 12H à 14H00 et de 19H30 à 21H45', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-08-06 21:30:09', '2018-08-06 21:30:09', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-08-06 21:30:09', '2018-08-06 21:30:09', 'Venez découvrir notre restaurant traditionnel «  Le Ferrière » situé en plein cœur de la ville, à proximité d’un parc arboré et de sa charmante église.\r\nSitué dans le centre-ville d’Ozoir la ferrière, un parking est à votre disposition à 20 mètres de notre établissement afin de faciliter votre visite.\r\nLe chef Rodolphe Mirecourt,  Maitre restaurateur depuis le 25 Mars 2013, gage de qualité indispensable pour notre établissement.\r\nCelui-ci vous servira avec son équipe que des produits faits maison (selon le décret) remis au goût du jour et à base de produits bruts, mise à part nos glaces de la maison RAIMO.\r\nPour ce qui est du service en salle, Sébastien Bourgaud saura vous servir et être à votre écoute pour répondre à vos attentes.\r\n\r\nNous sommes adaptés en grande partie à l’accueil des handicapés,\r\n\r\nNous vous accueillons tous les jours, midi et soir (sauf le dimanche soir) afin de mettre en œuvre vos repas d’affaires, communions, baptêmes, mariages, ou simplement un moment privilégié entre amis, en famille ou à deux tout simplement.\r\nNous pouvons privatiser en partie ou totalement notre restaurant selon votre désir\r\n\r\nNotre équipe vous accueille dans une ambiance chaleureuse et conviviale : Tous les jours sauf le dimanche soir de 12H à 14H00 et de 19H30 à 21H45', 'Accueil', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-08-06 21:30:09', '2018-08-06 21:30:09', '', 23, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-08-06 21:30:56', '2018-08-06 21:30:56', 'Afin d’accompagner ces mets, une carte des vins vous est proposée, diversifiée et d’un bon rapport qualité-prix.\r\nDe plus Sébastien et son équipe seront à votre écoute et se feront un plaisir de vous concocter le cocktail du moment qui change régulièrement ou bien de vous servir le vin du mois sélectionné avec soin pour votre plaisir.', 'Le restaurant', '', 'publish', 'closed', 'closed', '', 'le-restaurant', '', '', '2018-08-06 21:30:56', '2018-08-06 21:30:56', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-08-06 21:30:56', '2018-08-06 21:30:56', 'Afin d’accompagner ces mets, une carte des vins vous est proposée, diversifiée et d’un bon rapport qualité-prix.\r\nDe plus Sébastien et son équipe seront à votre écoute et se feront un plaisir de vous concocter le cocktail du moment qui change régulièrement ou bien de vous servir le vin du mois sélectionné avec soin pour votre plaisir.', 'Le restaurant', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-08-06 21:30:56', '2018-08-06 21:30:56', '', 25, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/25-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-08-06 21:39:15', '2018-08-06 21:39:15', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-06 21:41:29', '2018-08-06 21:41:29', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-08-06 21:38:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-06 21:38:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-08-06 21:39:15', '2018-08-06 21:39:15', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-08-06 21:41:29', '2018-08-06 21:41:29', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2018-08-06 21:39:15', '2018-08-06 21:39:15', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-08-06 21:41:29', '2018-08-06 21:41:29', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=35', 3, 'nav_menu_item', '', 0),
(37, 1, '2018-08-06 21:40:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-06 21:40:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-08-06 21:41:54', '2018-08-06 21:41:54', 'Venez découvrir notre restaurant traditionnel «  Le Ferrière » situé en plein cœur de la ville, à proximité d’un parc arboré et de sa charmante église.\r\nSitué dans le centre-ville d’Ozoir la ferrière, un parking est à votre disposition à 20 mètres de notre établissement afin de faciliter votre visite.\r\nLe chef Rodolphe Mirecourt,  Maitre restaurateur depuis le 25 Mars 2013, gage de qualité indispensable pour notre établissement.\r\nCelui-ci vous servira avec son équipe que des produits faits maison (selon le décret) remis au goût du jour et à base de produits bruts, mise à part nos glaces de la maison RAIMO.\r\nPour ce qui est du service en salle, Sébastien Bourgaud saura vous servir et être à votre écoute pour répondre à vos attentes.\r\n\r\nNous sommes adaptés en grande partie à l’accueil des handicapés,\r\n\r\nNous vous accueillons tous les jours, midi et soir (sauf le dimanche soir) afin de mettre en œuvre vos repas d’affaires, communions, baptêmes, mariages, ou simplement un moment privilégié entre amis, en famille ou à deux tout simplement.\r\nNous pouvons privatiser en partie ou totalement notre restaurant selon votre désir\r\n\r\nNotre équipe vous accueille dans une ambiance chaleureuse et conviviale : Tous les jours sauf le dimanche soir de 12H à 14H00 et de 19H30 à 21H45', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-06 21:41:54', '2018-08-06 21:41:54', '', 1, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/1-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-08-06 21:44:02', '2018-08-06 21:44:02', '{\n    \"seos-restaurant::seos_restaurant_box_1_title\": {\n        \"value\": \"Not sure\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:44:02\"\n    },\n    \"seos-restaurant::seos_restaurant_box_1_text\": {\n        \"value\": \"Venez d\\u00e9couvrir notre restaurant traditionnel \\u00ab  Le Ferri\\u00e8re \\u00bb situ\\u00e9 en plein c\\u0153ur de la ville, \\u00e0 proximit\\u00e9 d\\u2019un parc arbor\\u00e9 et de sa charmante \\u00e9glise.\\nSitu\\u00e9 dans le centre-ville d\\u2019Ozoir la ferri\\u00e8re, un parking est \\u00e0 votre disposition \\u00e0 20 m\\u00e8tres de notre \\u00e9tablissement afin de faciliter votre visite.\\nLe chef Rodolphe Mirecourt,  Maitre restaurateur depuis le 25 Mars 2013, gage de qualit\\u00e9 indispensable pour notre \\u00e9tablissement.\\nCelui-ci vous servira avec son \\u00e9quipe que des produits faits maison (selon le d\\u00e9cret) remis au go\\u00fbt du jour et \\u00e0 base de produits bruts, mise \\u00e0 part nos glaces de la maison RAIMO.\\nPour ce qui est du service en salle, S\\u00e9bastien Bourgaud saura vous servir et \\u00eatre \\u00e0 votre \\u00e9coute pour r\\u00e9pondre \\u00e0 vos attentes.\\n\\nNous sommes adapt\\u00e9s en grande partie \\u00e0 l\\u2019accueil des handicap\\u00e9s,\\n\\nNous vous accueillons tous les jours, midi et soir (sauf le dimanche soir) afin de mettre en \\u0153uvre vos repas d\\u2019affaires, communions, bapt\\u00eames, mariages, ou simplement un moment privil\\u00e9gi\\u00e9 entre amis, en famille ou \\u00e0 deux tout simplement.\\nNous pouvons privatiser en partie ou totalement notre restaurant selon votre d\\u00e9sir\\n\\nNotre \\u00e9quipe vous accueille dans une ambiance chaleureuse et conviviale : Tous les jours sauf le dimanche soir de 12H \\u00e0 14H00 et de 19H30 \\u00e0 21H45\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:44:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5a8acbc2-34dd-408a-8db4-2aa1932be6b0', '', '', '2018-08-06 21:44:02', '2018-08-06 21:44:02', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/2018/08/06/5a8acbc2-34dd-408a-8db4-2aa1932be6b0/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-08-06 21:53:45', '2018-08-06 21:53:45', '{\n    \"seos-restaurant::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:50:24\"\n    },\n    \"seos-restaurant::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:50:24\"\n    },\n    \"page_on_front\": {\n        \"value\": \"23\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:52:24\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:53:24\"\n    },\n    \"seos-restaurant::seos_restaurant_box_1_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:52:24\"\n    },\n    \"seos-restaurant::seos_restaurant_box_1_text\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:52:24\"\n    },\n    \"seos-restaurant::seos_restaurant_image_gallery_4\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-06 21:53:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '41475da0-9349-4e7e-92ac-f053234cfbc8', '', '', '2018-08-06 21:53:45', '2018-08-06 21:53:45', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2018-08-07 19:27:09', '2018-08-07 19:27:09', '{\n    \"seos-restaurant::seos_restaurant_sidebar_width\": {\n        \"value\": \"10\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-07 19:26:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8603b7d4-1f18-4cd8-96f1-c91616efc7c1', '', '', '2018-08-07 19:27:09', '2018-08-07 19:27:09', '', 0, 'http://localhost:8888/le_8_restaurant_wordpress/?p=41', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(6, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(32, 6, 0),
(34, 6, 0),
(35, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gleroy'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f11eb0188ea75535dd25c48fa9375f984a9582ee8c068753b50102842bfd1878\";a:4:{s:10:\"expiration\";i:1533761728;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.2 Safari/605.1.15\";s:5:\"login\";i:1533588928;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1533590462'),
(20, 1, 'nav_menu_recently_edited', '6'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gleroy', '$P$BFM/KF0qsINDNkKzZyNAV5xZfoOGSG/', 'gleroy', 'leroyguillaume78@yahoo.fr', '', '2018-08-06 20:54:15', '', 0, 'gleroy');

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
