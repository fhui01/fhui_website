-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2020 at 04:42 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fh401`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp401_commentmeta`
--

CREATE TABLE `wp401_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp401_comments`
--

CREATE TABLE `wp401_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp401_links`
--

CREATE TABLE `wp401_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp401_mclean_refs`
--

CREATE TABLE `wp401_mclean_refs` (
  `id` bigint NOT NULL,
  `mediaId` bigint DEFAULT NULL,
  `mediaUrl` tinytext COLLATE utf8mb4_unicode_520_ci,
  `originType` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp401_mclean_scan`
--

CREATE TABLE `wp401_mclean_scan` (
  `id` bigint NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) NOT NULL,
  `postId` bigint DEFAULT NULL,
  `path` tinytext COLLATE utf8mb4_unicode_520_ci,
  `size` int DEFAULT NULL,
  `ignored` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `issue` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp401_options`
--

CREATE TABLE `wp401_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_options`
--

INSERT INTO `wp401_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/fh04_1', 'yes'),
(2, 'home', 'http://localhost/fh04_1', 'yes'),
(3, 'blogname', 'Fakultas Hukum Universitas Indonesia', 'yes'),
(4, 'blogdescription', 'Moto situs Anda bisa diletakkan di sini', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@law.ui.ac.id', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', '', 'yes'),
(20, 'default_ping_status', '', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=1&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:37:\"disable-comments/disable-comments.php\";i:2;s:31:\"disable-feeds/disable-feeds.php\";i:4;s:31:\"media-cleaner/media-cleaner.php\";i:6;s:33:\"wp-total-hacks/wp-total-hacks.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fhui', 'yes'),
(41, 'stylesheet', 'fhui', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '', 'yes'),
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
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '1', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '2', 'yes'),
(90, 'show_comments_cookies_opt_in', '', 'yes'),
(91, 'admin_email_lifespan', '1618736385', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp401_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'id_ID', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1603274386;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1603313986;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603357186;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603357210;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603357212;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603875586;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1603270799;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603270801;s:7:\"checked\";a:1:{s:4:\"fhui\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_timeout_browser_4853ba0b18950b426d4c3572e2139b70', '1603789211', 'no'),
(127, '_site_transient_browser_4853ba0b18950b426d4c3572e2139b70', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"14.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_141a8d7da406be785ba26084a46e1c00', '1603789212', 'no'),
(129, '_site_transient_php_check_141a8d7da406be785ba26084a46e1c00', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(144, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1603184429;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'current_theme', 'FHUI', 'yes'),
(146, 'theme_mods_fhui', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:1;s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'recently_activated', 'a:2:{s:9:\"og/og.php\";i:1603201380;s:43:\"disable-wp-rest-api/disable-wp-rest-api.php\";i:1603201143;}', 'yes'),
(149, 'disable_comments_options', 'a:4:{s:19:\"disabled_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";}s:17:\"remove_everywhere\";b:1;s:16:\"extra_post_types\";b:0;s:10:\"db_version\";i:6;}', 'yes'),
(150, 'classic-editor-replace', 'classic', 'yes'),
(151, 'classic-editor-allow-users', 'disallow', 'yes'),
(156, 'new_admin_email', 'admin@law.ui.ac.id', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(162, 'disable_feeds_redirect', 'on', 'yes'),
(163, 'disable_feeds_allow_main', '', 'yes'),
(172, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(177, 'iworks_rate', 'a:3:{s:7:\"plugins\";a:1:{s:9:\"og/og.php\";i:1603192111;}s:5:\"queue\";a:1:{s:32:\"235856980a103a0597068b85262c738f\";a:2:{s:6:\"plugin\";s:9:\"og/og.php\";s:7:\"show_at\";i:1603796911;}}s:4:\"done\";a:0:{}}', 'no'),
(178, 'wpmc_rating_date', '1613292845', 'no'),
(179, 'wfb_revision', '0', 'yes'),
(180, 'wfb_selfping', '1', 'yes'),
(181, 'wfb_postmetas', 'a:7:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:9:\"authordiv\";i:3;s:13:\"trackbacksdiv\";i:4;s:9:\"formatdiv\";i:5;s:16:\"tagsdiv-post_tag\";i:6;s:11:\"categorydiv\";}', 'yes'),
(182, 'wfb_pagemetas', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:9:\"authordiv\";}', 'yes'),
(183, 'wfb_hide_version', '1', 'yes'),
(184, 'wfb_remove_xmlrpc', '1', 'yes'),
(185, 'wfb_remove_more', '1', 'yes'),
(186, 'wfb_remove_excerpt', '1', 'yes'),
(187, 'wfb_disallow_pingback', '1', 'yes'),
(188, 'wfb_widget', 'a:6:{i:0;s:25:\"dashboard_recent_comments\";i:1;s:24:\"dashboard_incoming_links\";i:2;s:21:\"dashboard_quick_press\";i:3;s:23:\"dashboard_recent_drafts\";i:4;s:17:\"dashboard_primary\";i:5;s:19:\"dashboard_secondary\";}', 'yes'),
(189, '_transient_timeout_og_4_2.8.8_id_ID', '1603278733', 'no'),
(190, '_transient_og_4_2.8.8_id_ID', 'a:4:{s:2:\"og\";a:9:{s:5:\"image\";a:0:{}s:5:\"video\";a:0:{}s:11:\"description\";s:17:\"Pimpinan Fakultas\";s:4:\"type\";s:7:\"article\";s:6:\"locale\";s:5:\"id_ID\";s:9:\"site_name\";s:36:\"Fakultas Hukum Universitas Indonesia\";s:5:\"title\";s:17:\"Pimpinan Fakultas\";s:3:\"url\";s:55:\"http://localhost/fh04_1/tentang-fhui/pimpinan-fakultas/\";s:12:\"updated_time\";b:0;}s:7:\"article\";a:5:{s:3:\"tag\";a:0:{}s:14:\"published_time\";b:0;s:13:\"modified_time\";b:0;s:6:\"author\";s:31:\"http://localhost/fh04_1/author/\";s:7:\"section\";a:0:{}}s:7:\"twitter\";a:8:{s:7:\"partner\";s:4:\"ogwp\";s:4:\"site\";s:0:\"\";s:7:\"creator\";s:0:\"\";s:6:\"player\";a:0:{}s:4:\"card\";s:7:\"summary\";s:5:\"title\";s:17:\"Pimpinan Fakultas\";s:11:\"description\";s:17:\"Pimpinan Fakultas\";s:3:\"url\";s:55:\"http://localhost/fh04_1/tentang-fhui/pimpinan-fakultas/\";}s:7:\"profile\";a:3:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:8:\"username\";s:0:\"\";}}', 'no'),
(197, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603270801;s:7:\"checked\";a:5:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:37:\"disable-comments/disable-comments.php\";s:6:\"1.11.0\";s:31:\"disable-feeds/disable-feeds.php\";s:5:\"1.4.4\";s:31:\"media-cleaner/media-cleaner.php\";s:5:\"6.0.8\";s:33:\"wp-total-hacks/wp-total-hacks.php\";s:5:\"4.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"disable-comments/disable-comments.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/disable-comments\";s:4:\"slug\";s:16:\"disable-comments\";s:6:\"plugin\";s:37:\"disable-comments/disable-comments.php\";s:11:\"new_version\";s:6:\"1.11.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/disable-comments/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-comments.1.11.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/disable-comments/assets/icon-256x256.png?rev=2365558\";s:2:\"1x\";s:69:\"https://ps.w.org/disable-comments/assets/icon-128x128.png?rev=2365562\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/disable-comments/assets/banner-1544x500.png?rev=2365680\";s:2:\"1x\";s:71:\"https://ps.w.org/disable-comments/assets/banner-772x250.png?rev=2365680\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"disable-feeds/disable-feeds.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/disable-feeds\";s:4:\"slug\";s:13:\"disable-feeds\";s:6:\"plugin\";s:31:\"disable-feeds/disable-feeds.php\";s:11:\"new_version\";s:5:\"1.4.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/disable-feeds/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/disable-feeds.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:57:\"https://s.w.org/plugins/geopattern-icon/disable-feeds.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:31:\"media-cleaner/media-cleaner.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/media-cleaner\";s:4:\"slug\";s:13:\"media-cleaner\";s:6:\"plugin\";s:31:\"media-cleaner/media-cleaner.php\";s:11:\"new_version\";s:5:\"6.0.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/media-cleaner/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/media-cleaner.6.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/media-cleaner/assets/icon-256x256.png?rev=1878128\";s:2:\"1x\";s:66:\"https://ps.w.org/media-cleaner/assets/icon-128x128.png?rev=1878128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/media-cleaner/assets/banner-1544x500.png?rev=1874957\";s:2:\"1x\";s:68:\"https://ps.w.org/media-cleaner/assets/banner-772x250.png?rev=1874957\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-total-hacks/wp-total-hacks.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-total-hacks\";s:4:\"slug\";s:14:\"wp-total-hacks\";s:6:\"plugin\";s:33:\"wp-total-hacks/wp-total-hacks.php\";s:11:\"new_version\";s:5:\"4.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-total-hacks/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-total-hacks.4.7.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:65:\"https://s.w.org/plugins/geopattern-icon/wp-total-hacks_1b95bb.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/wp-total-hacks/assets/banner-772x250.png?rev=1048115\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(215, '_site_transient_timeout_theme_roots', '1603272597', 'no'),
(216, '_site_transient_theme_roots', 'a:1:{s:4:\"fhui\";s:7:\"/themes\";}', 'no'),
(217, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":8,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp401_postmeta`
--

CREATE TABLE `wp401_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_postmeta`
--

INSERT INTO `wp401_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 44, '_menu_item_type', 'post_type'),
(2, 44, '_menu_item_menu_item_parent', '0'),
(3, 44, '_menu_item_object_id', '1'),
(4, 44, '_menu_item_object', 'page'),
(5, 44, '_menu_item_target', ''),
(6, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(7, 44, '_menu_item_xfn', ''),
(8, 44, '_menu_item_url', ''),
(10, 45, '_menu_item_type', 'post_type'),
(11, 45, '_menu_item_menu_item_parent', '0'),
(12, 45, '_menu_item_object_id', '2'),
(13, 45, '_menu_item_object', 'page'),
(14, 45, '_menu_item_target', ''),
(15, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 45, '_menu_item_xfn', ''),
(17, 45, '_menu_item_url', ''),
(19, 46, '_menu_item_type', 'post_type'),
(20, 46, '_menu_item_menu_item_parent', '45'),
(21, 46, '_menu_item_object_id', '8'),
(22, 46, '_menu_item_object', 'page'),
(23, 46, '_menu_item_target', ''),
(24, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 46, '_menu_item_xfn', ''),
(26, 46, '_menu_item_url', ''),
(28, 47, '_menu_item_type', 'post_type'),
(29, 47, '_menu_item_menu_item_parent', '45'),
(30, 47, '_menu_item_object_id', '5'),
(31, 47, '_menu_item_object', 'page'),
(32, 47, '_menu_item_target', ''),
(33, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 47, '_menu_item_xfn', ''),
(35, 47, '_menu_item_url', ''),
(37, 48, '_menu_item_type', 'post_type'),
(38, 48, '_menu_item_menu_item_parent', '45'),
(39, 48, '_menu_item_object_id', '10'),
(40, 48, '_menu_item_object', 'page'),
(41, 48, '_menu_item_target', ''),
(42, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 48, '_menu_item_xfn', ''),
(44, 48, '_menu_item_url', ''),
(46, 49, '_menu_item_type', 'post_type'),
(47, 49, '_menu_item_menu_item_parent', '45'),
(48, 49, '_menu_item_object_id', '9'),
(49, 49, '_menu_item_object', 'page'),
(50, 49, '_menu_item_target', ''),
(51, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 49, '_menu_item_xfn', ''),
(53, 49, '_menu_item_url', ''),
(55, 50, '_menu_item_type', 'post_type'),
(56, 50, '_menu_item_menu_item_parent', '45'),
(57, 50, '_menu_item_object_id', '4'),
(58, 50, '_menu_item_object', 'page'),
(59, 50, '_menu_item_target', ''),
(60, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 50, '_menu_item_xfn', ''),
(62, 50, '_menu_item_url', ''),
(64, 51, '_menu_item_type', 'post_type'),
(65, 51, '_menu_item_menu_item_parent', '45'),
(66, 51, '_menu_item_object_id', '3'),
(67, 51, '_menu_item_object', 'page'),
(68, 51, '_menu_item_target', ''),
(69, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 51, '_menu_item_xfn', ''),
(71, 51, '_menu_item_url', ''),
(73, 52, '_menu_item_type', 'post_type'),
(74, 52, '_menu_item_menu_item_parent', '45'),
(75, 52, '_menu_item_object_id', '6'),
(76, 52, '_menu_item_object', 'page'),
(77, 52, '_menu_item_target', ''),
(78, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 52, '_menu_item_xfn', ''),
(80, 52, '_menu_item_url', ''),
(82, 53, '_menu_item_type', 'post_type'),
(83, 53, '_menu_item_menu_item_parent', '45'),
(84, 53, '_menu_item_object_id', '7'),
(85, 53, '_menu_item_object', 'page'),
(86, 53, '_menu_item_target', ''),
(87, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 53, '_menu_item_xfn', ''),
(89, 53, '_menu_item_url', ''),
(91, 54, '_menu_item_type', 'post_type'),
(92, 54, '_menu_item_menu_item_parent', '0'),
(93, 54, '_menu_item_object_id', '11'),
(94, 54, '_menu_item_object', 'page'),
(95, 54, '_menu_item_target', ''),
(96, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 54, '_menu_item_xfn', ''),
(98, 54, '_menu_item_url', ''),
(100, 55, '_menu_item_type', 'post_type'),
(101, 55, '_menu_item_menu_item_parent', '54'),
(102, 55, '_menu_item_object_id', '16'),
(103, 55, '_menu_item_object', 'page'),
(104, 55, '_menu_item_target', ''),
(105, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 55, '_menu_item_xfn', ''),
(107, 55, '_menu_item_url', ''),
(109, 56, '_menu_item_type', 'post_type'),
(110, 56, '_menu_item_menu_item_parent', '54'),
(111, 56, '_menu_item_object_id', '15'),
(112, 56, '_menu_item_object', 'page'),
(113, 56, '_menu_item_target', ''),
(114, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 56, '_menu_item_xfn', ''),
(116, 56, '_menu_item_url', ''),
(118, 57, '_menu_item_type', 'post_type'),
(119, 57, '_menu_item_menu_item_parent', '54'),
(120, 57, '_menu_item_object_id', '17'),
(121, 57, '_menu_item_object', 'page'),
(122, 57, '_menu_item_target', ''),
(123, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 57, '_menu_item_xfn', ''),
(125, 57, '_menu_item_url', ''),
(127, 58, '_menu_item_type', 'post_type'),
(128, 58, '_menu_item_menu_item_parent', '54'),
(129, 58, '_menu_item_object_id', '14'),
(130, 58, '_menu_item_object', 'page'),
(131, 58, '_menu_item_target', ''),
(132, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 58, '_menu_item_xfn', ''),
(134, 58, '_menu_item_url', ''),
(136, 59, '_menu_item_type', 'post_type'),
(137, 59, '_menu_item_menu_item_parent', '54'),
(138, 59, '_menu_item_object_id', '19'),
(139, 59, '_menu_item_object', 'page'),
(140, 59, '_menu_item_target', ''),
(141, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 59, '_menu_item_xfn', ''),
(143, 59, '_menu_item_url', ''),
(145, 60, '_menu_item_type', 'post_type'),
(146, 60, '_menu_item_menu_item_parent', '54'),
(147, 60, '_menu_item_object_id', '20'),
(148, 60, '_menu_item_object', 'page'),
(149, 60, '_menu_item_target', ''),
(150, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 60, '_menu_item_xfn', ''),
(152, 60, '_menu_item_url', ''),
(154, 61, '_menu_item_type', 'post_type'),
(155, 61, '_menu_item_menu_item_parent', '54'),
(156, 61, '_menu_item_object_id', '13'),
(157, 61, '_menu_item_object', 'page'),
(158, 61, '_menu_item_target', ''),
(159, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 61, '_menu_item_xfn', ''),
(161, 61, '_menu_item_url', ''),
(163, 62, '_menu_item_type', 'post_type'),
(164, 62, '_menu_item_menu_item_parent', '54'),
(165, 62, '_menu_item_object_id', '12'),
(166, 62, '_menu_item_object', 'page'),
(167, 62, '_menu_item_target', ''),
(168, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 62, '_menu_item_xfn', ''),
(170, 62, '_menu_item_url', ''),
(172, 63, '_menu_item_type', 'post_type'),
(173, 63, '_menu_item_menu_item_parent', '54'),
(174, 63, '_menu_item_object_id', '18'),
(175, 63, '_menu_item_object', 'page'),
(176, 63, '_menu_item_target', ''),
(177, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 63, '_menu_item_xfn', ''),
(179, 63, '_menu_item_url', ''),
(181, 64, '_menu_item_type', 'post_type'),
(182, 64, '_menu_item_menu_item_parent', '0'),
(183, 64, '_menu_item_object_id', '21'),
(184, 64, '_menu_item_object', 'page'),
(185, 64, '_menu_item_target', ''),
(186, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 64, '_menu_item_xfn', ''),
(188, 64, '_menu_item_url', ''),
(190, 65, '_menu_item_type', 'post_type'),
(191, 65, '_menu_item_menu_item_parent', '64'),
(192, 65, '_menu_item_object_id', '27'),
(193, 65, '_menu_item_object', 'page'),
(194, 65, '_menu_item_target', ''),
(195, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(196, 65, '_menu_item_xfn', ''),
(197, 65, '_menu_item_url', ''),
(199, 66, '_menu_item_type', 'post_type'),
(200, 66, '_menu_item_menu_item_parent', '64'),
(201, 66, '_menu_item_object_id', '26'),
(202, 66, '_menu_item_object', 'page'),
(203, 66, '_menu_item_target', ''),
(204, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 66, '_menu_item_xfn', ''),
(206, 66, '_menu_item_url', ''),
(208, 67, '_menu_item_type', 'post_type'),
(209, 67, '_menu_item_menu_item_parent', '64'),
(210, 67, '_menu_item_object_id', '29'),
(211, 67, '_menu_item_object', 'page'),
(212, 67, '_menu_item_target', ''),
(213, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(214, 67, '_menu_item_xfn', ''),
(215, 67, '_menu_item_url', ''),
(217, 68, '_menu_item_type', 'post_type'),
(218, 68, '_menu_item_menu_item_parent', '64'),
(219, 68, '_menu_item_object_id', '23'),
(220, 68, '_menu_item_object', 'page'),
(221, 68, '_menu_item_target', ''),
(222, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 68, '_menu_item_xfn', ''),
(224, 68, '_menu_item_url', ''),
(226, 69, '_menu_item_type', 'post_type'),
(227, 69, '_menu_item_menu_item_parent', '64'),
(228, 69, '_menu_item_object_id', '25'),
(229, 69, '_menu_item_object', 'page'),
(230, 69, '_menu_item_target', ''),
(231, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 69, '_menu_item_xfn', ''),
(233, 69, '_menu_item_url', ''),
(235, 70, '_menu_item_type', 'post_type'),
(236, 70, '_menu_item_menu_item_parent', '64'),
(237, 70, '_menu_item_object_id', '28'),
(238, 70, '_menu_item_object', 'page'),
(239, 70, '_menu_item_target', ''),
(240, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(241, 70, '_menu_item_xfn', ''),
(242, 70, '_menu_item_url', ''),
(244, 71, '_menu_item_type', 'post_type'),
(245, 71, '_menu_item_menu_item_parent', '64'),
(246, 71, '_menu_item_object_id', '22'),
(247, 71, '_menu_item_object', 'page'),
(248, 71, '_menu_item_target', ''),
(249, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 71, '_menu_item_xfn', ''),
(251, 71, '_menu_item_url', ''),
(253, 72, '_menu_item_type', 'post_type'),
(254, 72, '_menu_item_menu_item_parent', '64'),
(255, 72, '_menu_item_object_id', '24'),
(256, 72, '_menu_item_object', 'page'),
(257, 72, '_menu_item_target', ''),
(258, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 72, '_menu_item_xfn', ''),
(260, 72, '_menu_item_url', ''),
(262, 73, '_menu_item_type', 'post_type'),
(263, 73, '_menu_item_menu_item_parent', '0'),
(264, 73, '_menu_item_object_id', '30'),
(265, 73, '_menu_item_object', 'page'),
(266, 73, '_menu_item_target', ''),
(267, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 73, '_menu_item_xfn', ''),
(269, 73, '_menu_item_url', ''),
(271, 74, '_menu_item_type', 'post_type'),
(272, 74, '_menu_item_menu_item_parent', '73'),
(273, 74, '_menu_item_object_id', '31'),
(274, 74, '_menu_item_object', 'page'),
(275, 74, '_menu_item_target', ''),
(276, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 74, '_menu_item_xfn', ''),
(278, 74, '_menu_item_url', ''),
(280, 75, '_menu_item_type', 'post_type'),
(281, 75, '_menu_item_menu_item_parent', '73'),
(282, 75, '_menu_item_object_id', '32'),
(283, 75, '_menu_item_object', 'page'),
(284, 75, '_menu_item_target', ''),
(285, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 75, '_menu_item_xfn', ''),
(287, 75, '_menu_item_url', ''),
(289, 76, '_menu_item_type', 'post_type'),
(290, 76, '_menu_item_menu_item_parent', '73'),
(291, 76, '_menu_item_object_id', '33'),
(292, 76, '_menu_item_object', 'page'),
(293, 76, '_menu_item_target', ''),
(294, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 76, '_menu_item_xfn', ''),
(296, 76, '_menu_item_url', ''),
(298, 77, '_edit_last', '1'),
(299, 77, '_edit_lock', '1603202532:1'),
(300, 78, '_edit_last', '1'),
(301, 78, '_edit_lock', '1603202545:1'),
(302, 79, '_edit_last', '1'),
(303, 79, '_edit_lock', '1603202570:1'),
(304, 80, '_menu_item_type', 'post_type'),
(305, 80, '_menu_item_menu_item_parent', '0'),
(306, 80, '_menu_item_object_id', '79'),
(307, 80, '_menu_item_object', 'page'),
(308, 80, '_menu_item_target', ''),
(309, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(310, 80, '_menu_item_xfn', ''),
(311, 80, '_menu_item_url', ''),
(313, 81, '_menu_item_type', 'post_type'),
(314, 81, '_menu_item_menu_item_parent', '0'),
(315, 81, '_menu_item_object_id', '78'),
(316, 81, '_menu_item_object', 'page'),
(317, 81, '_menu_item_target', ''),
(318, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(319, 81, '_menu_item_xfn', ''),
(320, 81, '_menu_item_url', ''),
(322, 82, '_menu_item_type', 'post_type'),
(323, 82, '_menu_item_menu_item_parent', '0'),
(324, 82, '_menu_item_object_id', '77'),
(325, 82, '_menu_item_object', 'page'),
(326, 82, '_menu_item_target', ''),
(327, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(328, 82, '_menu_item_xfn', ''),
(329, 82, '_menu_item_url', ''),
(331, 83, '_menu_item_type', 'custom'),
(332, 83, '_menu_item_menu_item_parent', '0'),
(333, 83, '_menu_item_object_id', '83'),
(334, 83, '_menu_item_object', 'custom'),
(335, 83, '_menu_item_target', ''),
(336, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(337, 83, '_menu_item_xfn', ''),
(338, 83, '_menu_item_url', '#'),
(340, 84, '_menu_item_type', 'custom'),
(341, 84, '_menu_item_menu_item_parent', '0'),
(342, 84, '_menu_item_object_id', '84'),
(343, 84, '_menu_item_object', 'custom'),
(344, 84, '_menu_item_target', ''),
(345, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(346, 84, '_menu_item_xfn', ''),
(347, 84, '_menu_item_url', '#'),
(349, 85, '_menu_item_type', 'post_type'),
(350, 85, '_menu_item_menu_item_parent', '83'),
(351, 85, '_menu_item_object_id', '26'),
(352, 85, '_menu_item_object', 'page'),
(353, 85, '_menu_item_target', ''),
(354, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(355, 85, '_menu_item_xfn', ''),
(356, 85, '_menu_item_url', ''),
(358, 86, '_menu_item_type', 'post_type'),
(359, 86, '_menu_item_menu_item_parent', '83'),
(360, 86, '_menu_item_object_id', '29'),
(361, 86, '_menu_item_object', 'page'),
(362, 86, '_menu_item_target', ''),
(363, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(364, 86, '_menu_item_xfn', ''),
(365, 86, '_menu_item_url', ''),
(367, 87, '_menu_item_type', 'post_type'),
(368, 87, '_menu_item_menu_item_parent', '83'),
(369, 87, '_menu_item_object_id', '20'),
(370, 87, '_menu_item_object', 'page'),
(371, 87, '_menu_item_target', ''),
(372, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(373, 87, '_menu_item_xfn', ''),
(374, 87, '_menu_item_url', ''),
(376, 88, '_menu_item_type', 'post_type'),
(377, 88, '_menu_item_menu_item_parent', '83'),
(378, 88, '_menu_item_object_id', '28'),
(379, 88, '_menu_item_object', 'page'),
(380, 88, '_menu_item_target', ''),
(381, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(382, 88, '_menu_item_xfn', ''),
(383, 88, '_menu_item_url', ''),
(385, 89, '_menu_item_type', 'post_type'),
(386, 89, '_menu_item_menu_item_parent', '83'),
(387, 89, '_menu_item_object_id', '27'),
(388, 89, '_menu_item_object', 'page'),
(389, 89, '_menu_item_target', ''),
(390, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 89, '_menu_item_xfn', ''),
(392, 89, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp401_posts`
--

CREATE TABLE `wp401_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_posts`
--

INSERT INTO `wp401_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', 0, 'page', '', 0),
(2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Tentang FHUI', '', 'publish', 'closed', 'closed', '', 'tentang-fhui', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', 0, 'page', '', 0),
(3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Sejarah dan Perkembangan', '', 'publish', 'closed', 'closed', '', 'sejarah-dan-perkembangan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pimpinan Fakultas', '', 'publish', 'closed', 'closed', '', 'pimpinan-fakultas', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Dewan Guru Besar', '', 'publish', 'closed', 'closed', '', 'dewan-guru-besar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(6, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Senat Akademik', '', 'publish', 'closed', 'closed', '', 'senat-akademik', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(7, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Unit-unit Kerja', '', 'publish', 'closed', 'closed', '', 'unit-unit-kerja', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(8, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Bidang-bidang Studi', '', 'publish', 'closed', 'closed', '', 'bidang-bidang-studi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(9, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pengajar', '', 'publish', 'closed', 'closed', '', 'pengajar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Fasilitas dan Infrastrtuktur', '', 'publish', 'closed', 'closed', '', 'fasilitas-dan-infrastrtuktur', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 2, '', 0, 'page', '', 0),
(11, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pendidikan', '', 'publish', 'closed', 'closed', '', 'pendidikan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', 0, 'page', '', 0),
(12, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Program Sarjana', '', 'publish', 'closed', 'closed', '', 'program-sarjana', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(13, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Program Pascasarjana', '', 'publish', 'closed', 'closed', '', 'program-pascasarjana', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(14, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Kelas Khusus Internasional', '', 'publish', 'closed', 'closed', '', 'kelas-khusus-internasional', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(15, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Kalender Akademik', '', 'publish', 'closed', 'closed', '', 'kalender-akademik', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(16, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Aturan dan Pedoman Akademik', '', 'publish', 'closed', 'closed', '', 'aturan-dan-pedoman-akademik', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(17, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Katalog Mata Kuliah', '', 'publish', 'closed', 'closed', '', 'katalog-mata-kuliah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(18, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Sumber Daya Pembelajaran', '', 'publish', 'closed', 'closed', '', 'sumber-daya-pembelajaran', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(19, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Klinik dan Laboratorium Hukum', '', 'publish', 'closed', 'closed', '', 'klinik-dan-laboratorium-hukum', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pendidikan Lanjutan Ilmu Hukum', '', 'publish', 'closed', 'closed', '', 'pendidikan-lanjutan-ilmu-hukum', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 11, '', 0, 'page', '', 0),
(21, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Riset', '', 'publish', 'closed', 'closed', '', 'riset', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', 0, 'page', '', 0),
(22, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Riset', '', 'publish', 'closed', 'closed', '', 'riset', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(23, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pengabdian Masyarakat', '', 'publish', 'closed', 'closed', '', 'pengabdian-masyarakat', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(24, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Sumber Daya Riset', '', 'publish', 'closed', 'closed', '', 'sumber-daya-riset', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(25, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Publikasi', '', 'publish', 'closed', 'closed', '', 'publikasi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(26, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Djokosoetono Research Center', '', 'publish', 'closed', 'closed', '', 'djokosoetono-research-center', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(27, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Badan Penerbit', '', 'publish', 'closed', 'closed', '', 'badan-penerbit', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(28, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pusat Dokumentasi dan Referensi Hukum', '', 'publish', 'closed', 'closed', '', 'pusat-dokumentasi-dan-referensi-hukum', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(29, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Lembaga Konsultasi, Bantuan Hukum dan Pusat Penyelesaian Sengketa', '', 'publish', 'closed', 'closed', '', 'lembaga-konsultasi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 21, '', 0, 'page', '', 0),
(30, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Kerja Sama dan Ventura', '', 'publish', 'closed', 'closed', '', 'kerja-sama-dan-ventura', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '', 0, 'page', '', 0),
(31, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Kerja Sama Domestik', '', 'publish', 'closed', 'closed', '', 'kerja-sama-domestik', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 30, '', 0, 'page', '', 0),
(32, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Kerja Sama Internasional', '', 'publish', 'closed', 'closed', '', 'kerja-sama-internasional', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 30, '', 0, 'page', '', 0),
(33, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Ventura', '', 'publish', 'closed', 'closed', '', 'ventura', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 30, '', 0, 'page', '', 0),
(34, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Dasar-dasar Ilmu Hukum', '', 'publish', 'closed', 'closed', '', 'dasar-dasar-ilmu-hukum', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(35, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Pidana', '', 'publish', 'closed', 'closed', '', 'hukum-pidana', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(36, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Acara', '', 'publish', 'closed', 'closed', '', 'hukum-acara', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(37, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Keperdataan', '', 'publish', 'closed', 'closed', '', 'hukum-keperdataan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(38, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Tata Negara', '', 'publish', 'closed', 'closed', '', 'hukum-tata-negara', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(39, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Administrasi Negara', '', 'publish', 'closed', 'closed', '', 'hukum-administrasi-negara', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(40, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Internasional', '', 'publish', 'closed', 'closed', '', 'hukum-internasional', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(41, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum, Masyarakat dan Pembangunan', '', 'publish', 'closed', 'closed', '', 'hukum', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Adat dan Hukum Islam', '', 'publish', 'closed', 'closed', '', 'hukum-adat-dan-hukum-islam', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(43, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Hukum Ekonomi dan Teknologi', '', 'publish', 'closed', 'closed', '', 'hukum-ekonomi-dan-teknologi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 8, '', 0, 'page', '', 0),
(44, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 0, 'http://localhost/fh04_1/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 0, 'http://localhost/fh04_1/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=46', 8, 'nav_menu_item', '', 0),
(47, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=47', 5, 'nav_menu_item', '', 0),
(48, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=48', 10, 'nav_menu_item', '', 0),
(49, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=49', 9, 'nav_menu_item', '', 0),
(50, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=50', 4, 'nav_menu_item', '', 0),
(51, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=52', 6, 'nav_menu_item', '', 0),
(53, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 2, 'http://localhost/fh04_1/?p=53', 7, 'nav_menu_item', '', 0),
(54, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 0, 'http://localhost/fh04_1/?p=54', 11, 'nav_menu_item', '', 0),
(55, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=55', 15, 'nav_menu_item', '', 0),
(56, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=56', 16, 'nav_menu_item', '', 0),
(57, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=57', 17, 'nav_menu_item', '', 0),
(58, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=58', 14, 'nav_menu_item', '', 0),
(59, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=59', 19, 'nav_menu_item', '', 0),
(60, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=60', 20, 'nav_menu_item', '', 0),
(61, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=61', 13, 'nav_menu_item', '', 0),
(62, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=62', 12, 'nav_menu_item', '', 0),
(63, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 11, 'http://localhost/fh04_1/?p=63', 18, 'nav_menu_item', '', 0),
(64, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 0, 'http://localhost/fh04_1/?p=64', 21, 'nav_menu_item', '', 0),
(65, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=65', 27, 'nav_menu_item', '', 0),
(66, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=66', 24, 'nav_menu_item', '', 0),
(67, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=67', 28, 'nav_menu_item', '', 0),
(68, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=68', 25, 'nav_menu_item', '', 0),
(69, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=69', 26, 'nav_menu_item', '', 0),
(70, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=70', 29, 'nav_menu_item', '', 0),
(71, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=71', 22, 'nav_menu_item', '', 0),
(72, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 21, 'http://localhost/fh04_1/?p=72', 23, 'nav_menu_item', '', 0),
(73, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 0, 'http://localhost/fh04_1/?p=73', 30, 'nav_menu_item', '', 0),
(74, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 30, 'http://localhost/fh04_1/?p=74', 31, 'nav_menu_item', '', 0),
(75, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 30, 'http://localhost/fh04_1/?p=75', 32, 'nav_menu_item', '', 0),
(76, 1, '2020-10-20 16:07:01', '2020-10-20 09:07:01', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2020-10-20 16:07:01', '2020-10-20 09:07:01', '', 30, 'http://localhost/fh04_1/?p=76', 33, 'nav_menu_item', '', 0),
(77, 1, '2020-10-20 21:02:12', '2020-10-20 14:02:12', '', 'Penerimaan', '', 'publish', 'closed', 'closed', '', 'penerimaan', '', '', '2020-10-20 21:02:12', '2020-10-20 14:02:12', '', 0, 'http://localhost/fh04_1/?page_id=77', 0, 'page', '', 0),
(78, 1, '2020-10-20 21:02:25', '2020-10-20 14:02:25', '', 'Kemahasiswaan', '', 'publish', 'closed', 'closed', '', 'kemahasiswaan', '', '', '2020-10-20 21:02:25', '2020-10-20 14:02:25', '', 0, 'http://localhost/fh04_1/?page_id=78', 0, 'page', '', 0),
(79, 1, '2020-10-20 21:02:50', '2020-10-20 14:02:50', '', 'Alumni', '', 'publish', 'closed', 'closed', '', 'alumni', '', '', '2020-10-20 21:02:50', '2020-10-20 14:02:50', '', 0, 'http://localhost/fh04_1/?page_id=79', 0, 'page', '', 0),
(80, 1, '2020-10-20 21:04:30', '2020-10-20 14:04:30', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 0, 'http://localhost/fh04_1/?p=80', 3, 'nav_menu_item', '', 0),
(81, 1, '2020-10-20 21:04:30', '2020-10-20 14:04:30', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 0, 'http://localhost/fh04_1/?p=81', 2, 'nav_menu_item', '', 0),
(82, 1, '2020-10-20 21:04:30', '2020-10-20 14:04:30', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 0, 'http://localhost/fh04_1/?p=82', 1, 'nav_menu_item', '', 0),
(83, 1, '2020-10-20 21:04:30', '2020-10-20 14:04:30', '', 'Akses Cepat', '', 'publish', 'closed', 'closed', '', 'akses-cepat', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 0, 'http://localhost/fh04_1/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2020-10-20 21:04:30', '2020-10-20 14:04:30', '', 'Sistem Informasi', '', 'publish', 'closed', 'closed', '', 'sistem-informasi', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 0, 'http://localhost/fh04_1/?p=84', 10, 'nav_menu_item', '', 0),
(85, 1, '2020-10-21 06:16:20', '2020-10-20 23:16:20', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 21, 'http://localhost/fh04_1/?p=85', 5, 'nav_menu_item', '', 0),
(86, 1, '2020-10-21 06:16:20', '2020-10-20 23:16:20', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 21, 'http://localhost/fh04_1/?p=86', 9, 'nav_menu_item', '', 0),
(87, 1, '2020-10-21 06:16:20', '2020-10-20 23:16:20', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 11, 'http://localhost/fh04_1/?p=87', 8, 'nav_menu_item', '', 0),
(88, 1, '2020-10-21 06:16:20', '2020-10-20 23:16:20', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 21, 'http://localhost/fh04_1/?p=88', 6, 'nav_menu_item', '', 0),
(89, 1, '2020-10-21 06:16:20', '2020-10-20 23:16:20', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2020-10-21 06:16:20', '2020-10-20 23:16:20', '', 21, 'http://localhost/fh04_1/?p=89', 7, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp401_termmeta`
--

CREATE TABLE `wp401_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp401_terms`
--

CREATE TABLE `wp401_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_terms`
--

INSERT INTO `wp401_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Menu Utama', 'menu-utama', 0),
(2, 'Menu Atas', 'menu-atas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp401_term_relationships`
--

CREATE TABLE `wp401_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_term_relationships`
--

INSERT INTO `wp401_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(44, 1, 0),
(45, 1, 0),
(46, 1, 0),
(47, 1, 0),
(48, 1, 0),
(49, 1, 0),
(50, 1, 0),
(51, 1, 0),
(52, 1, 0),
(53, 1, 0),
(54, 1, 0),
(55, 1, 0),
(56, 1, 0),
(57, 1, 0),
(58, 1, 0),
(59, 1, 0),
(60, 1, 0),
(61, 1, 0),
(62, 1, 0),
(63, 1, 0),
(64, 1, 0),
(65, 1, 0),
(66, 1, 0),
(67, 1, 0),
(68, 1, 0),
(69, 1, 0),
(70, 1, 0),
(71, 1, 0),
(72, 1, 0),
(73, 1, 0),
(74, 1, 0),
(75, 1, 0),
(76, 1, 0),
(80, 2, 0),
(81, 2, 0),
(82, 2, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0),
(86, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp401_term_taxonomy`
--

CREATE TABLE `wp401_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_term_taxonomy`
--

INSERT INTO `wp401_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'nav_menu', '', 0, 33),
(2, 2, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wp401_usermeta`
--

CREATE TABLE `wp401_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_usermeta`
--

INSERT INTO `wp401_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(12, 1, 'wp401_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp401_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"51ddafca66aae31462d466b2c2833179313c3d226abd7d61b3fcdf8453656023\";a:4:{s:10:\"expiration\";i:1603357210;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\";s:5:\"login\";i:1603184410;}}'),
(17, 1, 'wp401_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp401_users`
--

CREATE TABLE `wp401_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp401_users`
--

INSERT INTO `wp401_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BbAk0pV4Q99CaW1MluPsof0h0Kd8Wp/', 'admin', 'admin@law.ui.ac.id', 'http://localhost/fh04_1', '2020-10-20 08:59:45', '', 0, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp401_commentmeta`
--
ALTER TABLE `wp401_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp401_comments`
--
ALTER TABLE `wp401_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp401_links`
--
ALTER TABLE `wp401_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp401_mclean_refs`
--
ALTER TABLE `wp401_mclean_refs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp401_mclean_scan`
--
ALTER TABLE `wp401_mclean_scan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IgnoredIndex` (`ignored`) USING BTREE;

--
-- Indexes for table `wp401_options`
--
ALTER TABLE `wp401_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp401_postmeta`
--
ALTER TABLE `wp401_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp401_posts`
--
ALTER TABLE `wp401_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp401_termmeta`
--
ALTER TABLE `wp401_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp401_terms`
--
ALTER TABLE `wp401_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp401_term_relationships`
--
ALTER TABLE `wp401_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp401_term_taxonomy`
--
ALTER TABLE `wp401_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp401_usermeta`
--
ALTER TABLE `wp401_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp401_users`
--
ALTER TABLE `wp401_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp401_commentmeta`
--
ALTER TABLE `wp401_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp401_comments`
--
ALTER TABLE `wp401_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp401_links`
--
ALTER TABLE `wp401_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp401_mclean_refs`
--
ALTER TABLE `wp401_mclean_refs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp401_mclean_scan`
--
ALTER TABLE `wp401_mclean_scan`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp401_options`
--
ALTER TABLE `wp401_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `wp401_postmeta`
--
ALTER TABLE `wp401_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `wp401_posts`
--
ALTER TABLE `wp401_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `wp401_termmeta`
--
ALTER TABLE `wp401_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp401_terms`
--
ALTER TABLE `wp401_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp401_term_taxonomy`
--
ALTER TABLE `wp401_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp401_usermeta`
--
ALTER TABLE `wp401_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp401_users`
--
ALTER TABLE `wp401_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
