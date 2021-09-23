-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2021 às 20:08
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atitude_imoveis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-14 14:23:38', '2021-09-14 17:23:38', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/atitude-lp', 'yes'),
(2, 'home', 'http://localhost/atitude-lp', 'yes'),
(3, 'blogname', 'ATITUDE IMÓVEIS LTDA', 'yes'),
(4, 'blogdescription', 'Imobiliária em ARAUCÁRIA - PARANÁ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luiz.fhelipe@mixsolucoesweb.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:50:\"categoria/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categoria=$matches[1]&feed=$matches[2]\";s:45:\"categoria/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categoria=$matches[1]&feed=$matches[2]\";s:26:\"categoria/([^/]+)/embed/?$\";s:42:\"index.php?categoria=$matches[1]&embed=true\";s:38:\"categoria/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?categoria=$matches[1]&paged=$matches[2]\";s:20:\"categoria/([^/]+)/?$\";s:31:\"index.php?categoria=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"produtos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"produtos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"produtos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"produtos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"produtos/([^/]+)/embed/?$\";s:41:\"index.php?produtos=$matches[1]&embed=true\";s:29:\"produtos/([^/]+)/trackback/?$\";s:35:\"index.php?produtos=$matches[1]&tb=1\";s:37:\"produtos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&paged=$matches[2]\";s:44:\"produtos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&cpage=$matches[2]\";s:33:\"produtos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?produtos=$matches[1]&page=$matches[2]\";s:25:\"produtos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"produtos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"produtos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"produtos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'AtitudeImobiliaria', 'yes'),
(41, 'stylesheet', 'AtitudeImobiliaria', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1647192217', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1632421420;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1632461020;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1632504219;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632504390;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632504393;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632936220;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631640409;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(149, 'current_theme', 'Matrix Uniformes', 'yes'),
(150, 'theme_mods_AtitudeImobiliaria', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(160, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1632420341;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(162, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1632413440;s:7:\"checked\";a:1:{s:18:\"AtitudeImobiliaria\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(165, 'acf_version', '5.7.0-beta4', 'yes'),
(171, 'options_whatsapp', '12345-6789', 'no'),
(172, '_options_whatsapp', 'field_6140ebb12ac0a', 'no'),
(173, 'options_logo', '29', 'no'),
(174, '_options_logo', 'field_6140ec162ac0c', 'no'),
(175, 'options_instagram', 'https://www.instagram.com/imobiliariaatitude/', 'no'),
(176, '_options_instagram', 'field_6140ec947c3f1', 'no'),
(177, 'options_facebook', 'https://www.facebook.com/atitudeimoveisaraucaria', 'no'),
(178, '_options_facebook', 'field_6140ec9c7c3f2', 'no'),
(190, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(222, 'options_logo_footer', '76', 'no'),
(223, '_options_logo_footer', 'field_6144c5d7efd43', 'no'),
(224, 'options_elemento_superior', 'VENDAS EXCLUSIVAS', 'no'),
(225, '_options_elemento_superior', 'field_6144c684611df', 'no'),
(226, 'options_texto_footer', 'A Route Imóveis é a divisão imobiliaria da Indespar.', 'no'),
(227, '_options_texto_footer', 'field_6144c6a0611e0', 'no'),
(228, 'options_superior_footer', 'VENDAS EXCLUSIVAS', 'no'),
(229, '_options_superior_footer', 'field_6144c684611df', 'no'),
(230, 'options_superior_rodape', 'VENDAS EXCLUSIVAS', 'no'),
(231, '_options_superior_rodape', 'field_6144c684611df', 'no'),
(253, '_site_transient_timeout_browser_03e911a5967ec7b63385b961401fc927', '1632586399', 'no'),
(254, '_site_transient_browser_03e911a5967ec7b63385b961401fc927', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.82\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(311, 'new_admin_email', 'luiz.fhelipe@mixsolucoesweb.com.br', 'yes'),
(320, '_site_transient_timeout_php_check_0bf95b5f09d09e56bf994b7894d9087c', '1632936530', 'no'),
(321, '_site_transient_php_check_0bf95b5f09d09e56bf994b7894d9087c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(332, '_site_transient_timeout_theme_roots', '1632422146', 'no'),
(333, '_site_transient_theme_roots', 'a:1:{s:18:\"AtitudeImobiliaria\";s:7:\"/themes\";}', 'no'),
(334, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1632420346;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"5.7.0-beta4\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1631640761'),
(7, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(8, 3, '_wp_trash_meta_status', 'draft'),
(9, 3, '_wp_trash_meta_time', '1631640773'),
(10, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1632260428:1'),
(13, 8, '_wp_page_template', 'templates/home.php'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1632246989:1'),
(16, 15, '_wp_attached_file', '2021/09/banner.png'),
(17, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2021/09/banner.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x320.png\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x240.png\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"banner-1536x480.png\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"banner-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"banner-700x600.png\";s:5:\"width\";i:700;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:18:\"banner-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 16, '_wp_attached_file', '2021/09/logo.png'),
(19, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:333;s:6:\"height\";i:150;s:4:\"file\";s:16:\"2021/09/logo.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:16:\"logo-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:16:\"logo-236x150.png\";s:5:\"width\";i:236;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 8, 'titulo_inicio', '<p>IMÓVEL DE ALTO PADRÃO EM UM DOS MELHORES BAIRROS DE FAZENDA RIO GRANDE</p>'),
(21, 8, '_titulo_inicio', 'field_6140de4367c82'),
(22, 8, 'texto_inicio', 'O Jockey Residence é a opção ideal para quem busca espaço e qualidade de vida em um imóvel de alto padrão!'),
(23, 8, '_texto_inicio', 'field_6140de6267c83'),
(24, 8, 'imagem_inicio', '25'),
(25, 8, '_imagem_inicio', 'field_6140de7267c84'),
(26, 9, 'titulo_inicio', '<p>IMÓVEL DE ALTO PADRÃO EM UM DOS MELHORES BAIRROS DE FAZENDA RIO GRANDE</p>'),
(27, 9, '_titulo_inicio', 'field_6140de4367c82'),
(28, 9, 'texto_inicio', 'O Jockey Residence é a opção ideal para quem busca espaço e qualidade de vida em um imóvel de alto padrão!'),
(29, 9, '_texto_inicio', 'field_6140de6267c83'),
(30, 9, 'imagem_inicio', '25'),
(31, 9, '_imagem_inicio', 'field_6140de7267c84'),
(32, 17, '_edit_last', '1'),
(33, 17, '_edit_lock', '1632173630:1'),
(34, 25, '_wp_attached_file', '2021/09/banner2.png'),
(35, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1700;s:6:\"height\";i:562;s:4:\"file\";s:19:\"2021/09/banner2.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner2-300x99.png\";s:5:\"width\";i:300;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner2-1024x339.png\";s:5:\"width\";i:1024;s:6:\"height\";i:339;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner2-768x254.png\";s:5:\"width\";i:768;s:6:\"height\";i:254;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"banner2-1536x508.png\";s:5:\"width\";i:1536;s:6:\"height\";i:508;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:19:\"banner2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:19:\"banner2-700x562.png\";s:5:\"width\";i:700;s:6:\"height\";i:562;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:19:\"banner2-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 29, '_wp_attached_file', '2021/09/logo-1.png'),
(37, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:84;s:4:\"file\";s:18:\"2021/09/logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 32, '_wp_attached_file', '2021/09/banner3.png'),
(39, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:19:\"2021/09/banner3.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner3-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner3-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:19:\"banner3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:19:\"banner3-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:19:\"banner3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:19:\"banner3-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 8, 'imagem_segunda', '32'),
(41, 8, '_imagem_segunda', 'field_6142299bb014c'),
(42, 9, 'imagem_segunda', '32'),
(43, 9, '_imagem_segunda', 'field_6142299bb014c'),
(44, 8, 'titulo_coluna_um', 'LOCALIZAÇÃO PRIVILEGIADA'),
(45, 8, '_titulo_coluna_um', 'field_614240b336b27'),
(46, 8, 'texto_coluna_um', 'Localizado no bairro Pioneiros, um dos mais valorizados de Fazenda Rio Grande, o Jockey Residence está a 3 mínutos do centro comercial da cidade.'),
(47, 8, '_texto_coluna_um', 'field_614240c836b28'),
(48, 9, 'titulo_coluna_um', 'LOCALIZAÇÃO PRIVILEGIADA'),
(49, 9, '_titulo_coluna_um', 'field_614240b336b27'),
(50, 9, 'texto_coluna_um', 'Localizado no bairro Pioneiros, um dos mais valorizados de Fazenda Rio Grande, o Jockey Residence está a 3 mínutos do centro comercial da cidade.'),
(51, 9, '_texto_coluna_um', 'field_614240c836b28'),
(52, 8, 'titulo_coluna_dois', 'AMPLO ESPAÇO'),
(53, 8, '_titulo_coluna_dois', 'field_6142431b68d6e'),
(54, 8, 'texto_coluna_dois', 'O Jockey Residence conta com unidades de 112m² a 124m², desenhados sob um projeto inovador, com total aproveitamento do espaço e design único, oferendo aos moradores uma integração, entre sala, cozinha e espaço gourmet.'),
(55, 8, '_texto_coluna_dois', 'field_6142433168d6f'),
(56, 8, 'titulo_coluna_tres', 'DESIGN EXCLUSIVO'),
(57, 8, '_titulo_coluna_tres', 'field_6142434968d71'),
(58, 8, 'texto_coluna_tres', 'Desde a fachada as escolhas dos materiais de acabamento interno, o Jockey Residence foi pensando para oferecer ao morador a melhor experiência em conforto, eficácia de espaço e segurança.'),
(59, 8, '_texto_coluna_tres', 'field_6142435768d72'),
(60, 9, 'titulo_coluna_dois', 'AMPLO ESPAÇO'),
(61, 9, '_titulo_coluna_dois', 'field_6142431b68d6e'),
(62, 9, 'texto_coluna_dois', 'O Jockey Residence conta com unidades de 112m² a 124m², desenhados sob um projeto inovador, com total aproveitamento do espaço e design único, oferendo aos moradores uma integração, entre sala, cozinha e espaço gourmet.'),
(63, 9, '_texto_coluna_dois', 'field_6142433168d6f'),
(64, 9, 'titulo_coluna_tres', 'DESIGN EXCLUSIVO'),
(65, 9, '_titulo_coluna_tres', 'field_6142434968d71'),
(66, 9, 'texto_coluna_tres', 'Desde a fachada as escolhas dos materiais de acabamento interno, o Jockey Residence foi pensando para oferecer ao morador a melhor experiência em conforto, eficácia de espaço e segurança.'),
(67, 9, '_texto_coluna_tres', 'field_6142435768d72'),
(68, 8, 'elemento_superior', 'PROJETO / PLANTA'),
(69, 8, '_elemento_superior', 'field_61436cb52b811'),
(70, 8, 'titulo_planta', 'DESIGN EXCLUSIVO, PENSANDO EM QUEM BUSCA CONFORTO PARA A FAMÍLIA E AMIGOS.'),
(71, 8, '_titulo_planta', 'field_61436c6f2b810'),
(72, 9, 'elemento_superior', 'PROJETO / PLANTA'),
(73, 9, '_elemento_superior', 'field_61436cb52b811'),
(74, 9, 'titulo_planta', 'DESIGN EXCLUSIVO, PENSANDO EM QUEM BUSCA CONFORTO PARA A FAMÍLIA E AMIGOS.'),
(75, 9, '_titulo_planta', 'field_61436c6f2b810'),
(76, 8, 'titulo_pavimento', 'PAVIMENTO INFERIOR'),
(77, 8, '_titulo_pavimento', 'field_6143744aca72a'),
(78, 8, 'texto_pavimento', 'A área inferior oferece um projeto arrojado para aqueles que amam receber visitas. Com um amplo espaço, conta com cozinha e ambiente gourmet integrados a sala de estar com lavabo.'),
(79, 8, '_texto_pavimento', 'field_6143745cca72b'),
(80, 8, 'titulo_projeto', 'PAVIMENTO SUPERIOR'),
(81, 8, '_titulo_projeto', 'field_61437487ca72d'),
(82, 8, 'texto_projeto', 'No pavimento superior, encontram-se os quartos com banheiro social e uma suíte ampla e espaçosa com área para inclusão de closet. Um ambiente confortável e silencioso.'),
(83, 8, '_texto_projeto', 'field_614374a2ca72e'),
(84, 9, 'titulo_pavimento', 'PAVIMENTO INFERIOR'),
(85, 9, '_titulo_pavimento', 'field_6143744aca72a'),
(86, 9, 'texto_pavimento', 'A área inferior oferece um projeto arrojado para aqueles que amam receber visitas. Com um amplo espaço, conta com cozinha e ambiente gourmet integrados a sala de estar com lavabo.'),
(87, 9, '_texto_pavimento', 'field_6143745cca72b'),
(88, 9, 'titulo_projeto', 'PAVIMENTO SUPERIOR'),
(89, 9, '_titulo_projeto', 'field_61437487ca72d'),
(90, 9, 'texto_projeto', 'No pavimento superior, encontram-se os quartos com banheiro social e uma suíte ampla e espaçosa com área para inclusão de closet. Um ambiente confortável e silencioso.'),
(91, 9, '_texto_projeto', 'field_614374a2ca72e'),
(92, 53, '_wp_attached_file', '2021/09/pavimento.png'),
(93, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:702;s:4:\"file\";s:21:\"2021/09/pavimento.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pavimento-256x300.png\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pavimento-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:21:\"pavimento-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:21:\"pavimento-600x700.png\";s:5:\"width\";i:600;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:21:\"pavimento-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:21:\"pavimento-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 54, '_wp_attached_file', '2021/09/projeto.png'),
(95, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:676;s:4:\"file\";s:19:\"2021/09/projeto.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"projeto-266x300.png\";s:5:\"width\";i:266;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"projeto-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:19:\"projeto-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:19:\"projeto-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:19:\"projeto-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 8, 'imagem_pavimento', '53'),
(97, 8, '_imagem_pavimento', 'field_614375f121f82'),
(98, 8, 'imagem_projeto', '54'),
(99, 8, '_imagem_projeto', 'field_6143760221f83'),
(100, 9, 'imagem_pavimento', '53'),
(101, 9, '_imagem_pavimento', 'field_614375f121f82'),
(102, 9, 'imagem_projeto', '54'),
(103, 9, '_imagem_projeto', 'field_6143760221f83'),
(104, 8, 'superior_elemento', 'CONHEÇA'),
(105, 8, '_superior_elemento', 'field_6143855af19f1'),
(106, 8, 'titulo_whats', 'NOSSOS CORRETORES ESTÃO ONLINE PARA ATENDER VOCÊ!'),
(107, 8, '_titulo_whats', 'field_6143858ef19f2'),
(108, 9, 'superior_elemento', 'CONHEÇA'),
(109, 9, '_superior_elemento', 'field_6143855af19f1'),
(110, 9, 'titulo_whats', 'NOSSOS CORRETORES ESTÃO ONLINE PARA ATENDER VOCÊ!'),
(111, 9, '_titulo_whats', 'field_6143858ef19f2'),
(112, 8, 'texto_whats', '<p style=\"text-align: left;\">Fale conosco agora via Whats e saiba mais sobre o Jockey Residence!</p>'),
(113, 8, '_texto_whats', 'field_614386a9a9db6'),
(114, 9, 'texto_whats', '<p style=\"text-align: left;\">Fale conosco agora via Whats e saiba mais sobre o Jockey Residence!</p>'),
(115, 9, '_texto_whats', 'field_614386a9a9db6'),
(116, 60, '_wp_attached_file', '2021/09/banner_whats.png'),
(117, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:223;s:4:\"file\";s:24:\"2021/09/banner_whats.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banner_whats-300x65.png\";s:5:\"width\";i:300;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"banner_whats-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"banner_whats-768x167.png\";s:5:\"width\";i:768;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:24:\"banner_whats-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:24:\"banner_whats-700x223.png\";s:5:\"width\";i:700;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:24:\"banner_whats-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:24:\"banner_whats-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 8, 'imagem_whats', '60'),
(119, 8, '_imagem_whats', 'field_6143898b2ae9a'),
(120, 9, 'imagem_whats', '60'),
(121, 9, '_imagem_whats', 'field_6143898b2ae9a'),
(122, 8, 'superior_galeria', 'IMAGENS'),
(123, 8, '_superior_galeria', 'field_614393353e1dc'),
(124, 8, 'titulo_galeria', 'CONHEÇA O JOCKEY RESIDENCE'),
(125, 8, '_titulo_galeria', 'field_614393773e1dd'),
(126, 9, 'superior_galeria', 'IMAGENS'),
(127, 9, '_superior_galeria', 'field_614393353e1dc'),
(128, 9, 'titulo_galeria', 'CONHEÇA O JOCKEY RESIDENCE'),
(129, 9, '_titulo_galeria', 'field_614393773e1dd'),
(130, 8, 'iframe_do_mapa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14388.099008214193!2d-49.316527!3d-25.637304!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjXCsDM4JzE0LjMiUyA0OcKwMTgnNTkuNSJX!5e0!3m2!1spt-BR!2sus!4v1631821429262!5m2!1spt-BR!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(131, 8, '_iframe_do_mapa', 'field_61439d7e26225'),
(132, 9, 'iframe_do_mapa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14388.099008214193!2d-49.316527!3d-25.637304!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjXCsDM4JzE0LjMiUyA0OcKwMTgnNTkuNSJX!5e0!3m2!1spt-BR!2sus!4v1631821429262!5m2!1spt-BR!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(133, 9, '_iframe_do_mapa', 'field_61439d7e26225'),
(134, 8, 'superior_visita', 'CONHEÇA'),
(135, 8, '_superior_visita', 'field_6143a084b5e7b'),
(136, 8, 'titulo_visita', 'FAÇA UMA VISITA AO </br>IMÓVEL!'),
(137, 8, '_titulo_visita', 'field_6143a0a6b5e7c'),
(138, 8, 'texto_visita', 'Gostaria de conhecer o imóvel? Nosso corretor está pronto para atendê-lo!'),
(139, 8, '_texto_visita', 'field_6143a0d7b5e7d'),
(140, 9, 'superior_visita', 'CONHEÇA'),
(141, 9, '_superior_visita', 'field_6143a084b5e7b'),
(142, 9, 'titulo_visita', 'FAÇA UMA VISITA AO </br>IMÓVEL!'),
(143, 9, '_titulo_visita', 'field_6143a0a6b5e7c'),
(144, 9, 'texto_visita', 'Gostaria de conhecer o imóvel? Nosso corretor está pronto para atendê-lo!'),
(145, 9, '_texto_visita', 'field_6143a0d7b5e7d'),
(146, 8, 'nome_corretor', 'Jean Carlos Gonchorovski'),
(147, 8, '_nome_corretor', 'field_6143a320d1256'),
(148, 9, 'nome_corretor', 'Jean Carlos Gonchorovski'),
(149, 9, '_nome_corretor', 'field_6143a320d1256'),
(150, 8, 'creci', 'CRECI PR 1234-567'),
(151, 8, '_creci', 'field_6143a7d37daa8'),
(152, 9, 'creci', 'CRECI PR 1234-567'),
(153, 9, '_creci', 'field_6143a7d37daa8'),
(154, 76, '_wp_attached_file', '2021/09/logo_footer.png'),
(155, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:994;s:6:\"height\";i:281;s:4:\"file\";s:23:\"2021/09/logo_footer.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo_footer-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo_footer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"logo_footer-768x217.png\";s:5:\"width\";i:768;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:23:\"logo_footer-300x281.png\";s:5:\"width\";i:300;s:6:\"height\";i:281;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:23:\"logo_footer-700x281.png\";s:5:\"width\";i:700;s:6:\"height\";i:281;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:23:\"logo_footer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:23:\"logo_footer-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 8, 'superior_porcentagem', 'ANDAMENTO'),
(157, 8, '_superior_porcentagem', 'field_6144e55bd4cd3'),
(158, 8, 'titulo_porcentagem', 'OBRAS EM EM ESTÁGIO AVANÇADO'),
(159, 8, '_titulo_porcentagem', 'field_6144e59dd4cd4'),
(160, 8, 'texto_porcentagem', 'São ao todo 8 unidades com o mesmo padrão de acabamento e qualidade, com o projeto em fase avançada de finalização.\r\n\r\nAgende uma visita com nossos corretores!'),
(161, 8, '_texto_porcentagem', 'field_6144e5bad4cd5'),
(162, 9, 'superior_porcentagem', 'ANDAMENTO'),
(163, 9, '_superior_porcentagem', 'field_6144e55bd4cd3'),
(164, 9, 'titulo_porcentagem', 'OBRAS EM EM ESTÁGIO AVANÇADO'),
(165, 9, '_titulo_porcentagem', 'field_6144e59dd4cd4'),
(166, 9, 'texto_porcentagem', 'São ao todo 8 unidades com o mesmo padrão de acabamento e qualidade, com o projeto em fase avançada de finalização.\r\n\r\nAgende uma visita com nossos corretores!'),
(167, 9, '_texto_porcentagem', 'field_6144e5bad4cd5'),
(168, 8, 'porcentagem_0_conteudo', 'DOCUMENTAÇÃO'),
(169, 8, '_porcentagem_0_conteudo', 'field_6144ec0f2fe3e'),
(170, 8, 'porcentagem_0_porcentagem_interno', '100%'),
(171, 8, '_porcentagem_0_porcentagem_interno', 'field_6144ec212fe3f'),
(172, 8, 'porcentagem_1_conteudo', 'INFRAESTRUTURA <i>(água, luz, esgoto)</i>'),
(173, 8, '_porcentagem_1_conteudo', 'field_6144ec0f2fe3e'),
(174, 8, 'porcentagem_1_porcentagem_interno', '60%'),
(175, 8, '_porcentagem_1_porcentagem_interno', 'field_6144ec212fe3f'),
(176, 8, 'porcentagem_2_conteudo', 'ACABAMENTO'),
(177, 8, '_porcentagem_2_conteudo', 'field_6144ec0f2fe3e'),
(178, 8, 'porcentagem_2_porcentagem_interno', '42%'),
(179, 8, '_porcentagem_2_porcentagem_interno', 'field_6144ec212fe3f'),
(180, 8, 'porcentagem', '3'),
(181, 8, '_porcentagem', 'field_6144ebf62fe3d'),
(182, 9, 'porcentagem_0_conteudo', 'DOCUMENTAÇÃO'),
(183, 9, '_porcentagem_0_conteudo', 'field_6144ec0f2fe3e'),
(184, 9, 'porcentagem_0_porcentagem_interno', '100%'),
(185, 9, '_porcentagem_0_porcentagem_interno', 'field_6144ec212fe3f'),
(186, 9, 'porcentagem_1_conteudo', 'INFRAESTRUTURA <i>(água, luz, esgoto)</i>'),
(187, 9, '_porcentagem_1_conteudo', 'field_6144ec0f2fe3e'),
(188, 9, 'porcentagem_1_porcentagem_interno', '60%'),
(189, 9, '_porcentagem_1_porcentagem_interno', 'field_6144ec212fe3f'),
(190, 9, 'porcentagem_2_conteudo', 'ACABAMENTO'),
(191, 9, '_porcentagem_2_conteudo', 'field_6144ec0f2fe3e'),
(192, 9, 'porcentagem_2_porcentagem_interno', '42%'),
(193, 9, '_porcentagem_2_porcentagem_interno', 'field_6144ec212fe3f'),
(194, 9, 'porcentagem', '3'),
(195, 9, '_porcentagem', 'field_6144ebf62fe3d'),
(196, 8, 'whats_whats', '12345-6789'),
(197, 8, '_whats_whats', 'field_6145ebd6f7bfd'),
(198, 9, 'whats_whats', '12345-6789'),
(199, 9, '_whats_whats', 'field_6145ebd6f7bfd'),
(200, 8, 'whats_corretor', '12345-6789'),
(201, 8, '_whats_corretor', 'field_6145f1dc3d8a5'),
(202, 9, 'whats_corretor', '12345-6789'),
(203, 9, '_whats_corretor', 'field_6145f1dc3d8a5'),
(204, 89, '_wp_attached_file', '2021/09/galeria1.png'),
(205, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:92;s:6:\"height\";i:137;s:4:\"file\";s:20:\"2021/09/galeria1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 90, '_wp_attached_file', '2021/09/galeria2.png'),
(207, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:137;s:4:\"file\";s:20:\"2021/09/galeria2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"galeria2-150x137.png\";s:5:\"width\";i:150;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:20:\"galeria2-150x137.png\";s:5:\"width\";i:150;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 8, 'conteudo_galeria', 'a:14:{i:0;s:2:\"99\";i:1;s:3:\"100\";i:2;s:3:\"101\";i:3;s:3:\"102\";i:4;s:3:\"103\";i:5;s:3:\"104\";i:6;s:2:\"96\";i:7;s:2:\"97\";i:8;s:2:\"98\";i:9;s:2:\"91\";i:10;s:2:\"92\";i:11;s:2:\"93\";i:12;s:2:\"94\";i:13;s:2:\"95\";}'),
(209, 8, '_conteudo_galeria', 'field_6145f6b893111'),
(210, 9, 'conteudo_galeria', 'a:14:{i:0;s:2:\"99\";i:1;s:3:\"100\";i:2;s:3:\"101\";i:3;s:3:\"102\";i:4;s:3:\"103\";i:5;s:3:\"104\";i:6;s:2:\"96\";i:7;s:2:\"97\";i:8;s:2:\"98\";i:9;s:2:\"91\";i:10;s:2:\"92\";i:11;s:2:\"93\";i:12;s:2:\"94\";i:13;s:2:\"95\";}'),
(211, 9, '_conteudo_galeria', 'field_6145f6b893111'),
(212, 91, '_wp_attached_file', '2021/09/img-1.png'),
(213, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-1.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-1-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-1-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-1-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-1-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 92, '_wp_attached_file', '2021/09/img-2.png'),
(215, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-2.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-2-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-2-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-2-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-2-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 93, '_wp_attached_file', '2021/09/img-3.png'),
(217, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-3.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-3-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-3-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-3-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-3-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 94, '_wp_attached_file', '2021/09/img-4.png'),
(219, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-4.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-4-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-4-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-4-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-4-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 95, '_wp_attached_file', '2021/09/img-5.png'),
(221, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-5.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-5-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-5-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-5-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-5-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 96, '_wp_attached_file', '2021/09/img-6.png'),
(223, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-6.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-6-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-6-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-6-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-6-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 97, '_wp_attached_file', '2021/09/img-7.png'),
(225, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-7.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-7-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-7-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-7-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-7-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 98, '_wp_attached_file', '2021/09/img-8.png'),
(227, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-8.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-8-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-8-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-8-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-8-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 99, '_wp_attached_file', '2021/09/img-9.png'),
(229, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:17:\"2021/09/img-9.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-9-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img-9-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:17:\"img-9-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:17:\"img-9-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:17:\"img-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:17:\"img-9-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 100, '_wp_attached_file', '2021/09/img-10.png'),
(231, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:18:\"2021/09/img-10.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"img-10-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img-10-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"img-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"img-10-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"img-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:18:\"img-10-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 101, '_wp_attached_file', '2021/09/img-11.png'),
(233, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:18:\"2021/09/img-11.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"img-11-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img-11-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"img-11-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"img-11-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"img-11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:18:\"img-11-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 102, '_wp_attached_file', '2021/09/img-12.png'),
(235, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:18:\"2021/09/img-12.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"img-12-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img-12-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"img-12-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"img-12-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"img-12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:18:\"img-12-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 103, '_wp_attached_file', '2021/09/img-13.png'),
(237, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:18:\"2021/09/img-13.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"img-13-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img-13-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"img-13-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"img-13-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"img-13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:18:\"img-13-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 104, '_wp_attached_file', '2021/09/img-14.png'),
(239, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:672;s:4:\"file\";s:18:\"2021/09/img-14.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"img-14-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"img-14-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"img-14-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"img-14-700x672.png\";s:5:\"width\";i:700;s:6:\"height\";i:672;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"img-14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:18:\"img-14-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 8, 'imagem_desktop', '25'),
(241, 8, '_imagem_desktop', 'field_6140de7267c84'),
(242, 8, 'imagem_mobile', '107'),
(243, 8, '_imagem_mobile', 'field_614a020e0bc3f'),
(244, 9, 'imagem_desktop', '25'),
(245, 9, '_imagem_desktop', 'field_6140de7267c84'),
(246, 9, 'imagem_mobile', '107'),
(247, 9, '_imagem_mobile', 'field_614a020e0bc3f'),
(248, 106, '_wp_attached_file', '2021/09/bannermobile.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(249, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2021/09/bannermobile.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bannermobile-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bannermobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:24:\"bannermobile-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:24:\"bannermobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:24:\"bannermobile-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 107, '_wp_attached_file', '2021/09/banner-mobile.png'),
(251, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2021/09/banner-mobile.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banner-mobile-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banner-mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:25:\"banner-mobile-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:25:\"banner-mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:25:\"banner-mobile-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-14 14:23:38', '2021-09-14 17:23:38', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-09-14 14:23:38', '2021-09-14 17:23:38', '', 0, 'http://localhost/atitude-lp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-14 14:23:38', '2021-09-14 17:23:38', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/atitude-lp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-09-14 14:32:41', '2021-09-14 17:32:41', '', 0, 'http://localhost/atitude-lp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-14 14:23:38', '2021-09-14 17:23:38', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/atitude-lp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-09-14 14:32:53', '2021-09-14 17:32:53', '', 0, 'http://localhost/atitude-lp/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-09-14 14:32:41', '2021-09-14 17:32:41', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/atitude-lp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-09-14 14:32:41', '2021-09-14 17:32:41', '', 2, 'http://localhost/atitude-lp/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-09-14 14:32:53', '2021-09-14 17:32:53', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/atitude-lp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-09-14 14:32:53', '2021-09-14 17:32:53', '', 3, 'http://localhost/atitude-lp/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-09-14 14:33:18', '2021-09-14 17:33:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-21 14:01:53', '2021-09-21 17:01:53', '', 0, 'http://localhost/atitude-lp/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-09-14 14:33:18', '2021-09-14 17:33:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-09-14 14:33:18', '2021-09-14 17:33:18', '', 8, 'http://localhost/atitude-lp/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-09-14 14:40:34', '2021-09-14 17:40:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6140de2aaa3ec', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 0, 'http://localhost/atitude-lp/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2021-09-14 14:40:34', '2021-09-14 17:40:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Título', 'titulo_inicio', 'publish', 'closed', 'closed', '', 'field_6140de4367c82', '', '', '2021-09-15 13:40:20', '2021-09-15 16:40:20', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(12, 1, '2021-09-14 14:40:34', '2021-09-14 17:40:34', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:13:\"default_value\";s:0:\"\";s:5:\"delay\";i:0;}', 'Texto', 'texto_inicio', 'publish', 'closed', 'closed', '', 'field_6140de6267c83', '', '', '2021-09-15 13:40:20', '2021-09-15 16:40:20', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=12', 2, 'acf-field', '', 0),
(13, 1, '2021-09-14 14:40:34', '2021-09-14 17:40:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Desktop', 'imagem_desktop', 'publish', 'closed', 'closed', '', 'field_6140de7267c84', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2021-09-14 14:41:43', '2021-09-14 17:41:43', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_6140dec1736fc', '', '', '2021-09-14 14:41:43', '2021-09-14 17:41:43', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2021-09-14 15:03:23', '2021-09-14 18:03:23', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2021-09-14 15:03:23', '2021-09-14 18:03:23', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/banner.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2021-09-14 15:03:29', '2021-09-14 18:03:29', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-09-14 15:03:29', '2021-09-14 18:03:29', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-09-14 15:38:40', '2021-09-14 18:38:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"configuracoes-tema\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Configurações Gerais', 'configuracoes-gerais', 'publish', 'closed', 'closed', '', 'group_6140ea06cafb8', '', '', '2021-09-17 14:03:28', '2021-09-17 17:03:28', '', 0, 'http://localhost/atitude-lp/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2021-09-14 15:38:39', '2021-09-14 18:38:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Contato', 'contato', 'publish', 'closed', 'closed', '', 'field_6140ea162ac09', '', '', '2021-09-14 15:38:39', '2021-09-14 18:38:39', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2021-09-14 15:38:39', '2021-09-14 18:38:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'WhatsApp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_6140ebb12ac0a', '', '', '2021-09-14 15:38:39', '2021-09-14 18:38:39', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 1, '2021-09-14 15:38:40', '2021-09-14 18:38:40', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_6140ec002ac0b', '', '', '2021-09-14 15:38:40', '2021-09-14 18:38:40', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&p=20', 2, 'acf-field', '', 0),
(21, 1, '2021-09-14 15:38:40', '2021-09-14 18:38:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Topo', 'logo', 'publish', 'closed', 'closed', '', 'field_6140ec162ac0c', '', '', '2021-09-14 15:38:40', '2021-09-14 18:38:40', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&p=21', 3, 'acf-field', '', 0),
(23, 1, '2021-09-14 15:40:40', '2021-09-14 18:40:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_6140ec947c3f1', '', '', '2021-09-17 13:47:44', '2021-09-17 16:47:44', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=23', 6, 'acf-field', '', 0),
(24, 1, '2021-09-14 15:40:40', '2021-09-14 18:40:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_6140ec9c7c3f2', '', '', '2021-09-17 13:47:44', '2021-09-17 16:47:44', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=24', 7, 'acf-field', '', 0),
(25, 1, '2021-09-15 12:51:05', '2021-09-15 15:51:05', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2021-09-15 12:51:05', '2021-09-15 15:51:05', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/banner2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-09-15 14:04:30', '2021-09-15 17:04:30', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2021-09-15 14:04:30', '2021-09-15 17:04:30', '', 0, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/logo-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-09-15 14:13:22', '2021-09-15 17:13:22', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 2 - Imagem', 'area_de_conteudo_2_-_imagem', 'publish', 'closed', 'closed', '', 'field_6142298bb014b', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=30', 5, 'acf-field', '', 0),
(31, 1, '2021-09-15 14:13:22', '2021-09-15 17:13:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_segunda', 'publish', 'closed', 'closed', '', 'field_6142299bb014c', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=31', 6, 'acf-field', '', 0),
(32, 1, '2021-09-15 14:14:12', '2021-09-15 17:14:12', '', 'banner3', '', 'inherit', 'open', 'closed', '', 'banner3', '', '', '2021-09-20 18:04:53', '2021-09-20 21:04:53', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/banner3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-09-15 15:52:07', '2021-09-15 18:52:07', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Coluna 1', 'area_de_colunas', 'publish', 'closed', 'closed', '', 'field_6142407c36b25', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=33', 7, 'acf-field', '', 0),
(34, 1, '2021-09-15 15:52:07', '2021-09-15 18:52:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_coluna_um', 'publish', 'closed', 'closed', '', 'field_614240b336b27', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=34', 8, 'acf-field', '', 0),
(35, 1, '2021-09-15 15:52:07', '2021-09-15 18:52:07', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_coluna_um', 'publish', 'closed', 'closed', '', 'field_614240c836b28', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=35', 9, 'acf-field', '', 0),
(36, 1, '2021-09-15 16:02:56', '2021-09-15 19:02:56', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Coluna 2', 'area_de_coluna_2', 'publish', 'closed', 'closed', '', 'field_6142430c68d6d', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=36', 10, 'acf-field', '', 0),
(37, 1, '2021-09-15 16:02:56', '2021-09-15 19:02:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_coluna_dois', 'publish', 'closed', 'closed', '', 'field_6142431b68d6e', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=37', 11, 'acf-field', '', 0),
(38, 1, '2021-09-15 16:02:56', '2021-09-15 19:02:56', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_coluna_dois', 'publish', 'closed', 'closed', '', 'field_6142433168d6f', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=38', 12, 'acf-field', '', 0),
(39, 1, '2021-09-15 16:02:56', '2021-09-15 19:02:56', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Coluna 3', 'area_de_coluna_3', 'publish', 'closed', 'closed', '', 'field_6142433b68d70', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=39', 13, 'acf-field', '', 0),
(40, 1, '2021-09-15 16:02:56', '2021-09-15 19:02:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_coluna_tres', 'publish', 'closed', 'closed', '', 'field_6142434968d71', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=40', 14, 'acf-field', '', 0),
(41, 1, '2021-09-15 16:02:56', '2021-09-15 19:02:56', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_coluna_tres', 'publish', 'closed', 'closed', '', 'field_6142435768d72', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=41', 15, 'acf-field', '', 0),
(42, 1, '2021-09-16 13:12:57', '2021-09-16 16:12:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 3 - Projeto/Planta', 'area_de_conteudo_3_-_plantas', 'publish', 'closed', 'closed', '', 'field_61436c412b80f', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=42', 16, 'acf-field', '', 0),
(43, 1, '2021-09-16 13:12:57', '2021-09-16 16:12:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Elemento Superior', 'elemento_superior', 'publish', 'closed', 'closed', '', 'field_61436cb52b811', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=43', 17, 'acf-field', '', 0),
(44, 1, '2021-09-16 13:12:57', '2021-09-16 16:12:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_planta', 'publish', 'closed', 'closed', '', 'field_61436c6f2b810', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=44', 18, 'acf-field', '', 0),
(45, 1, '2021-09-16 13:45:36', '2021-09-16 16:45:36', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 3 - Interno 1', 'area_de_conteudo_3_-_interno', 'publish', 'closed', 'closed', '', 'field_61437428ca729', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=45', 19, 'acf-field', '', 0),
(46, 1, '2021-09-16 13:45:36', '2021-09-16 16:45:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_pavimento', 'publish', 'closed', 'closed', '', 'field_6143744aca72a', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=46', 20, 'acf-field', '', 0),
(47, 1, '2021-09-16 13:45:36', '2021-09-16 16:45:36', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_pavimento', 'publish', 'closed', 'closed', '', 'field_6143745cca72b', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=47', 21, 'acf-field', '', 0),
(48, 1, '2021-09-16 13:45:36', '2021-09-16 16:45:36', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 3 - Interno 2', 'area_de_conteudo_3_-_interno_2', 'publish', 'closed', 'closed', '', 'field_61437472ca72c', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=48', 23, 'acf-field', '', 0),
(49, 1, '2021-09-16 13:45:36', '2021-09-16 16:45:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_projeto', 'publish', 'closed', 'closed', '', 'field_61437487ca72d', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=49', 24, 'acf-field', '', 0),
(50, 1, '2021-09-16 13:45:36', '2021-09-16 16:45:36', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_projeto', 'publish', 'closed', 'closed', '', 'field_614374a2ca72e', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=50', 25, 'acf-field', '', 0),
(51, 1, '2021-09-16 13:51:45', '2021-09-16 16:51:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_pavimento', 'publish', 'closed', 'closed', '', 'field_614375f121f82', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=51', 22, 'acf-field', '', 0),
(52, 1, '2021-09-16 13:51:45', '2021-09-16 16:51:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_projeto', 'publish', 'closed', 'closed', '', 'field_6143760221f83', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=52', 26, 'acf-field', '', 0),
(53, 1, '2021-09-16 13:53:38', '2021-09-16 16:53:38', '', 'pavimento', '', 'inherit', 'open', 'closed', '', 'pavimento', '', '', '2021-09-16 13:53:38', '2021-09-16 16:53:38', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/pavimento.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2021-09-16 13:53:48', '2021-09-16 16:53:48', '', 'projeto', '', 'inherit', 'open', 'closed', '', 'projeto', '', '', '2021-09-16 13:53:48', '2021-09-16 16:53:48', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/projeto.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2021-09-16 14:59:39', '2021-09-16 17:59:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 4', 'area_de_conteudo_4_', 'publish', 'closed', 'closed', '', 'field_61438521f19f0', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=55', 27, 'acf-field', '', 0),
(56, 1, '2021-09-16 14:59:39', '2021-09-16 17:59:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Elemento Superior', 'superior_elemento', 'publish', 'closed', 'closed', '', 'field_6143855af19f1', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=56', 28, 'acf-field', '', 0),
(57, 1, '2021-09-16 14:59:40', '2021-09-16 17:59:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_whats', 'publish', 'closed', 'closed', '', 'field_6143858ef19f2', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=57', 29, 'acf-field', '', 0),
(58, 1, '2021-09-16 15:02:28', '2021-09-16 18:02:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_whats', 'publish', 'closed', 'closed', '', 'field_614386a9a9db6', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=58', 30, 'acf-field', '', 0),
(59, 1, '2021-09-16 15:14:56', '2021-09-16 18:14:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_whats', 'publish', 'closed', 'closed', '', 'field_6143898b2ae9a', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=59', 31, 'acf-field', '', 0),
(60, 1, '2021-09-16 15:16:04', '2021-09-16 18:16:04', '', 'banner_whats', '', 'inherit', 'open', 'closed', '', 'banner_whats', '', '', '2021-09-16 15:16:04', '2021-09-16 18:16:04', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/banner_whats.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2021-09-16 16:00:12', '2021-09-16 19:00:12', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 5 - Galeria', 'area_de_conteudo_5_-_galeria', 'publish', 'closed', 'closed', '', 'field_6143931b3e1db', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=61', 32, 'acf-field', '', 0),
(62, 1, '2021-09-16 16:00:12', '2021-09-16 19:00:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Elemento Superior', 'superior_galeria', 'publish', 'closed', 'closed', '', 'field_614393353e1dc', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=62', 33, 'acf-field', '', 0),
(63, 1, '2021-09-16 16:00:12', '2021-09-16 19:00:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_galeria', 'publish', 'closed', 'closed', '', 'field_614393773e1dd', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=63', 34, 'acf-field', '', 0),
(64, 1, '2021-09-16 16:40:01', '2021-09-16 19:40:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Mapa', 'mapa', 'publish', 'closed', 'closed', '', 'field_61439d7326224', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=64', 41, 'acf-field', '', 0),
(65, 1, '2021-09-16 16:40:01', '2021-09-16 19:40:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Localização', 'iframe_do_mapa', 'publish', 'closed', 'closed', '', 'field_61439d7e26225', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=65', 42, 'acf-field', '', 0),
(66, 1, '2021-09-16 16:54:25', '2021-09-16 19:54:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 7', 'area_de_conteudo_7', 'publish', 'closed', 'closed', '', 'field_6143a034b5e7a', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=66', 43, 'acf-field', '', 0),
(67, 1, '2021-09-16 16:54:25', '2021-09-16 19:54:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Elemento Superior', 'superior_visita', 'publish', 'closed', 'closed', '', 'field_6143a084b5e7b', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=67', 44, 'acf-field', '', 0),
(68, 1, '2021-09-16 16:54:25', '2021-09-16 19:54:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_visita', 'publish', 'closed', 'closed', '', 'field_6143a0a6b5e7c', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=68', 45, 'acf-field', '', 0),
(69, 1, '2021-09-16 16:54:25', '2021-09-16 19:54:25', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_visita', 'publish', 'closed', 'closed', '', 'field_6143a0d7b5e7d', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=69', 48, 'acf-field', '', 0),
(70, 1, '2021-09-16 17:05:35', '2021-09-16 20:05:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nome do Corretor', 'nome_corretor', 'publish', 'closed', 'closed', '', 'field_6143a320d1256', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=70', 46, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(71, 1, '2021-09-16 17:25:04', '2021-09-16 20:25:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Creci', 'creci', 'publish', 'closed', 'closed', '', 'field_6143a7d37daa8', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=71', 47, 'acf-field', '', 0),
(72, 1, '2021-09-17 13:44:44', '2021-09-17 16:44:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Rodapé', 'logo_footer', 'publish', 'closed', 'closed', '', 'field_6144c5d7efd43', '', '', '2021-09-17 13:47:44', '2021-09-17 16:47:44', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=72', 5, 'acf-field', '', 0),
(73, 1, '2021-09-17 13:47:44', '2021-09-17 16:47:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Rodapé', 'rodape', 'publish', 'closed', 'closed', '', 'field_6144c662611de', '', '', '2021-09-17 13:47:44', '2021-09-17 16:47:44', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&p=73', 4, 'acf-field', '', 0),
(74, 1, '2021-09-17 13:47:44', '2021-09-17 16:47:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Elemento Superior', 'superior_rodape', 'publish', 'closed', 'closed', '', 'field_6144c684611df', '', '', '2021-09-17 14:03:28', '2021-09-17 17:03:28', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=74', 8, 'acf-field', '', 0),
(75, 1, '2021-09-17 13:47:44', '2021-09-17 16:47:44', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_footer', 'publish', 'closed', 'closed', '', 'field_6144c6a0611e0', '', '', '2021-09-17 13:47:44', '2021-09-17 16:47:44', '', 17, 'http://localhost/atitude-lp/?post_type=acf-field&p=75', 9, 'acf-field', '', 0),
(76, 1, '2021-09-17 13:48:18', '2021-09-17 16:48:18', '', 'logo_footer', '', 'inherit', 'open', 'closed', '', 'logo_footer', '', '', '2021-09-17 13:48:18', '2021-09-17 16:48:18', '', 0, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/logo_footer.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2021-09-17 16:06:55', '2021-09-17 19:06:55', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 6', 'area_de_conteudo_6', 'publish', 'closed', 'closed', '', 'field_6144e4c6d4cd1', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=77', 36, 'acf-field', '', 0),
(78, 1, '2021-09-17 16:06:55', '2021-09-17 19:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Elemento Superior', 'superior_porcentagem', 'publish', 'closed', 'closed', '', 'field_6144e55bd4cd3', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=78', 37, 'acf-field', '', 0),
(79, 1, '2021-09-17 16:06:55', '2021-09-17 19:06:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_porcentagem', 'publish', 'closed', 'closed', '', 'field_6144e59dd4cd4', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=79', 38, 'acf-field', '', 0),
(80, 1, '2021-09-17 16:06:55', '2021-09-17 19:06:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_porcentagem', 'publish', 'closed', 'closed', '', 'field_6144e5bad4cd5', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=80', 39, 'acf-field', '', 0),
(83, 1, '2021-09-17 16:28:54', '2021-09-17 19:28:54', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:14:\"Adicionar Novo\";}', 'Porcentagem', 'porcentagem', 'publish', 'closed', 'closed', '', 'field_6144ebf62fe3d', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=83', 40, 'acf-field', '', 0),
(84, 1, '2021-09-17 16:28:54', '2021-09-17 19:28:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Conteúdo', 'conteudo', 'publish', 'closed', 'closed', '', 'field_6144ec0f2fe3e', '', '', '2021-09-17 16:28:54', '2021-09-17 19:28:54', '', 83, 'http://localhost/atitude-lp/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2021-09-17 16:28:54', '2021-09-17 19:28:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '%', 'porcentagem_interno', 'publish', 'closed', 'closed', '', 'field_6144ec212fe3f', '', '', '2021-09-17 16:28:54', '2021-09-17 19:28:54', '', 83, 'http://localhost/atitude-lp/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(88, 1, '2021-09-18 11:28:59', '2021-09-18 14:28:59', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:7:\"prepend\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Galeria', 'conteudo_galeria', 'publish', 'closed', 'closed', '', 'field_6145f6b893111', '', '', '2021-09-21 13:02:52', '2021-09-21 16:02:52', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&#038;p=88', 35, 'acf-field', '', 0),
(89, 1, '2021-09-18 11:37:44', '2021-09-18 14:37:44', '', 'galeria1', '', 'inherit', 'open', 'closed', '', 'galeria1', '', '', '2021-09-18 11:37:44', '2021-09-18 14:37:44', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/galeria1.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2021-09-18 11:37:45', '2021-09-18 14:37:45', '', 'galeria2', '', 'inherit', 'open', 'closed', '', 'galeria2', '', '', '2021-09-18 11:37:45', '2021-09-18 14:37:45', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/galeria2.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2021-09-20 18:51:23', '2021-09-20 21:51:23', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2021-09-20 18:51:30', '2021-09-20 21:51:30', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-1.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2021-09-20 18:51:24', '2021-09-20 21:51:24', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2021-09-20 18:51:24', '2021-09-20 21:51:24', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-2.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2021-09-20 18:51:25', '2021-09-20 21:51:25', '', 'img-3', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2021-09-20 18:51:25', '2021-09-20 21:51:25', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-3.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2021-09-20 18:51:26', '2021-09-20 21:51:26', '', 'img-4', '', 'inherit', 'open', 'closed', '', 'img-4', '', '', '2021-09-20 18:51:26', '2021-09-20 21:51:26', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-4.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2021-09-20 18:51:27', '2021-09-20 21:51:27', '', 'img-5', '', 'inherit', 'open', 'closed', '', 'img-5', '', '', '2021-09-20 18:51:27', '2021-09-20 21:51:27', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-5.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2021-09-20 18:52:36', '2021-09-20 21:52:36', '', 'img-6', '', 'inherit', 'open', 'closed', '', 'img-6', '', '', '2021-09-20 18:52:40', '2021-09-20 21:52:40', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-6.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2021-09-20 18:52:37', '2021-09-20 21:52:37', '', 'img-7', '', 'inherit', 'open', 'closed', '', 'img-7', '', '', '2021-09-20 18:52:37', '2021-09-20 21:52:37', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-7.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2021-09-20 18:52:38', '2021-09-20 21:52:38', '', 'img-8', '', 'inherit', 'open', 'closed', '', 'img-8', '', '', '2021-09-20 18:52:38', '2021-09-20 21:52:38', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-8.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2021-09-20 18:54:26', '2021-09-20 21:54:26', '', 'img-9', '', 'inherit', 'open', 'closed', '', 'img-9', '', '', '2021-09-20 18:54:32', '2021-09-20 21:54:32', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-9.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2021-09-20 18:54:27', '2021-09-20 21:54:27', '', 'img-10', '', 'inherit', 'open', 'closed', '', 'img-10', '', '', '2021-09-20 18:54:27', '2021-09-20 21:54:27', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-10.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2021-09-20 18:54:28', '2021-09-20 21:54:28', '', 'img-11', '', 'inherit', 'open', 'closed', '', 'img-11', '', '', '2021-09-20 18:54:28', '2021-09-20 21:54:28', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-11.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2021-09-20 18:54:29', '2021-09-20 21:54:29', '', 'img-12', '', 'inherit', 'open', 'closed', '', 'img-12', '', '', '2021-09-20 18:54:29', '2021-09-20 21:54:29', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-12.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2021-09-20 18:54:30', '2021-09-20 21:54:30', '', 'img-13', '', 'inherit', 'open', 'closed', '', 'img-13', '', '', '2021-09-20 18:54:30', '2021-09-20 21:54:30', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-13.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2021-09-20 18:54:30', '2021-09-20 21:54:30', '', 'img-14', '', 'inherit', 'open', 'closed', '', 'img-14', '', '', '2021-09-20 18:54:30', '2021-09-20 21:54:30', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/img-14.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2021-09-21 13:02:51', '2021-09-21 16:02:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Mobile', 'imagem_mobile', 'publish', 'closed', 'closed', '', 'field_614a020e0bc3f', '', '', '2021-09-21 13:02:51', '2021-09-21 16:02:51', '', 10, 'http://localhost/atitude-lp/?post_type=acf-field&p=105', 4, 'acf-field', '', 0),
(106, 1, '2021-09-21 13:14:03', '2021-09-21 16:14:03', '', 'bannermobile', '', 'inherit', 'open', 'closed', '', 'bannermobile', '', '', '2021-09-21 13:14:03', '2021-09-21 16:14:03', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/bannermobile.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-09-21 13:36:52', '2021-09-21 16:36:52', '', 'banner-mobile', '', 'inherit', 'open', 'closed', '', 'banner-mobile', '', '', '2021-09-21 13:36:52', '2021-09-21 16:36:52', '', 8, 'http://localhost/atitude-lp/wp-content/uploads/2021/09/banner-mobile.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mixsolucoes'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&ampampeditor=html&ampeditor=tinymce&editor=html'),
(19, 1, 'wp_user-settings-time', '1632243682'),
(20, 1, 'session_tokens', 'a:1:{s:64:\"b4233db13866cdc9673bd1e34e802be331fc17a77f73c291f08392f0ab670bb9\";a:4:{s:10:\"expiration\";i:1633191235;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36\";s:5:\"login\";i:1631981635;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mixsolucoes', '$P$BY.mvurBud9ru4K7GT9fpInemMtTis0', 'mixsolucoes', 'luiz.fhelipe@mixsolucoesweb.com.br', 'http://localhost/atitude-lp', '2021-09-14 17:23:38', '', 0, 'mixsolucoes');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
