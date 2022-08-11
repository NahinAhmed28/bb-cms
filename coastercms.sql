-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 10:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coastercms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cc_admin_actions`
--

CREATE TABLE `cc_admin_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `controller_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inherit` int(11) NOT NULL DEFAULT 0,
  `edit_based` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_admin_actions`
--

INSERT INTO `cc_admin_actions` (`id`, `controller_id`, `action`, `inherit`, `edit_based`, `name`, `about`, `created_at`, `updated_at`) VALUES
(1, 1, 'index', -1, 0, 'Dashboard', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(2, 1, 'logs', -1, 0, 'View Admin Logs', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(3, 1, 'your-requests', -1, 0, 'View publish requests', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(4, 1, 'requests', -1, 0, 'View requests to moderate', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(5, 2, 'index', 0, 0, 'Show Page Management', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(6, 2, 'sort', 0, 0, 'Sort Pages', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(7, 2, 'add', 0, 0, 'Add Pages', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(8, 2, 'edit', 0, 0, 'Edit Pages', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(9, 2, 'delete', 0, 0, 'Delete Pages', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(10, 2, 'version-publish', 0, 0, 'Publish Versions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(11, 2, 'version-rename', 0, 1, 'Rename Versions', 'required to be logged is as author or have publishing permission', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(12, 2, 'versions', 0, 1, 'Ajax Versions Table', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(13, 2, 'request-publish', 0, 1, 'Make Requests', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(14, 2, 'request-publish-action', 0, 1, 'Action Requests (cancel/approve/deny)', 'required to be logged in as author to cancel or else have publish permissions', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(15, 2, 'requests', 0, 1, 'Ajax Requests Table', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(16, 2, 'tinymce-page-list', 5, 0, 'TinyMce Page Links', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(17, 3, 'pages', 5, 0, 'List Group Pages', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(18, 4, 'index', 0, 0, 'Show Menu Items', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(19, 4, 'sort', 0, 0, 'Sort Menu Items', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(20, 4, 'add', 0, 0, 'Add Menu Items', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(21, 4, 'delete', 0, 0, 'Delete Menu Items', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(22, 4, 'rename', 0, 0, 'Rename Menu Items', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(23, 4, 'get-levels', 19, 0, 'Get Subpage Level', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(24, 4, 'save-levels', 22, 0, 'Set Subpage Level', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(25, 5, 'index', 0, 0, 'Edit Site-wide Content', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(26, 6, 'index', 0, 0, 'View Files', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(27, 6, 'edit', 0, 0, 'Manage Files', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(28, 7, 'index', 0, 0, 'View Redirects', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(29, 7, 'edit', 0, 0, 'Manage Redirects', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(30, 7, 'import', 29, 0, 'Import Redirects', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(31, 8, 'index', 0, 0, 'Show Account Settings', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(32, 8, 'password', 0, 0, 'Change Password', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(33, 8, 'blog', 0, 0, 'Auto Blog Login', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(34, 9, 'index', 0, 0, 'Show System Settings', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(35, 9, 'update', 0, 0, 'Updates System Settings', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(36, 9, 'search', 35, 0, 'Rebuild Search Indexes', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(37, 9, 'validate-db', 35, 0, 'Validate Database', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(38, 9, 'wp-login', 33, 0, 'WordPress Auto Login Script', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(39, 10, 'index', 0, 0, 'View User List', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(40, 10, 'edit', 0, 0, 'Edit Users', 'can edit roles of users (restricted by admin level)', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(41, 10, 'add', 40, 0, 'Add Users', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(42, 10, 'delete', 40, 0, 'Remove Users', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(43, 11, 'index', 0, 0, 'Role Management', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(44, 11, 'add', 43, 0, 'Add Roles', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(45, 11, 'edit', 43, 0, 'Edit Roles', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(46, 11, 'delete', 43, 0, 'Delete Roles', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(47, 11, 'actions', 43, 0, 'Ajax Get Role Actions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(48, 11, 'pages', 43, 0, 'Set Per Page Actions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(49, 12, 'restore', 0, 0, 'Restore Deleted Item From Any User', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(50, 12, 'undo', -1, 0, 'Undo Own Actions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(51, 13, 'index', -1, 0, 'Create Repeater Row', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(52, 14, 'list', 0, 1, 'Gallery List', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(53, 14, 'edit', 0, 1, 'Edit Galleries', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(54, 14, 'update', 0, 1, 'Run Gallery Upload Manager', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(55, 14, 'sort', 0, 1, 'Sort Images', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(56, 14, 'upload', 0, 1, 'Upload Images', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(57, 14, 'delete', 0, 1, 'Delete Images', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(58, 14, 'caption', 0, 1, 'Edit Captions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(59, 15, 'list', 0, 1, 'Forms List', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(60, 15, 'submissions', 0, 1, 'View Form Submissions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(61, 15, 'csv', 0, 1, 'Export Form Submissions', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(62, 16, 'index', 0, 0, 'Show Theme Management', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(63, 16, 'update', 0, 0, 'Theme Block Updater', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(64, 16, 'beacons', 0, 0, 'Import Beacons', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(65, 16, 'beacons-update', 0, 0, 'Update Beacon Blocks', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(66, 9, 'keys', -1, 0, 'Request browser API keys', 'only keys with the string browser in can be called', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(67, 8, 'page-state', -1, 0, 'Save page list state', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(68, 8, 'language', -1, 0, 'Change current language', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(69, 9, 'upgrade', 0, 0, 'Upgrade CMS', NULL, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(70, 16, 'forms', 0, 0, 'Change Form Rules', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(71, 16, 'selects', 0, 0, 'Change Select Block Options', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(72, 16, 'manage', 0, 0, 'Add/Remove Themes', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(73, 16, 'list', 62, 0, 'View Uploaded Themes', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(74, 16, 'export', 0, 0, 'Export Uploaded Themes', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(75, 2, 'version-schedule', 10, 0, 'Schedule Versions', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(76, 17, 'index', -1, 0, 'View Search Log', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(77, 16, 'edit', -1, 0, 'Edit Theme', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(78, 8, 'name', -1, 0, 'Set Alias', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(79, 3, 'edit', 0, 0, 'Edit Group Settings', NULL, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(80, 18, 'index', -1, 0, 'Ajax Search', NULL, '2022-04-26 04:16:28', '2022-04-26 04:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `cc_admin_controllers`
--

CREATE TABLE `cc_admin_controllers` (
  `id` int(10) UNSIGNED NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_order` int(11) NOT NULL,
  `role_section` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_admin_controllers`
--

INSERT INTO `cc_admin_controllers` (`id`, `controller`, `role_name`, `role_order`, `role_section`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Dashboard', 1, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(2, 'pages', 'Pages', 1, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(3, 'groups', 'Groups', 1, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(4, 'menus', 'Menus', 2, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(5, 'blocks', 'Site-wide Content', 3, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(6, 'filemanager', 'Filemanager', 4, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(7, 'redirects', 'Redirects', 5, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(8, 'account', 'User Account', 1, 2, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(9, 'system', 'System Settings', 2, 2, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(10, 'users', 'Users', 1, 3, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(11, 'roles', 'Roles', 2, 3, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(12, 'backups', 'Backups', 3, 3, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(13, 'repeaters', 'Repeaters', 1, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(14, 'gallery', 'Galleries', 1, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(15, 'forms', 'Forms', 1, 1, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(16, 'themes', 'Themes', 3, 2, '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(17, 'search', 'Search log', 4, 3, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(18, 'adminsearch', 'Admin Search', 0, 2, '2022-04-26 04:16:28', '2022-04-26 04:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `cc_admin_logs`
--

CREATE TABLE `cc_admin_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `log` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_admin_logs`
--

INSERT INTO `cc_admin_logs` (`id`, `user_id`, `log`, `created_at`, `updated_at`) VALUES
(1, 1, 'Setup CMS', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(2, 1, 'Added page \'What to do\' (Page ID 29)', '2022-04-26 08:13:22', '2022-04-26 08:13:22'),
(3, 1, 'Change sub levels for menu item \'Meet the Team\' in \'Main Menu\' to 1', '2022-04-26 08:15:11', '2022-04-26 08:15:11'),
(4, 1, 'System settings updated', '2022-04-26 09:29:42', '2022-04-26 09:29:42'),
(5, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(6, 1, 'Updated page \'Meet the Team\' (Page ID 5)', '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(7, 1, 'Updated page \'Learn\' (Page ID 5)', '2022-04-26 10:22:18', '2022-04-26 10:22:18'),
(8, 1, 'Updated page \'Trainer\'s Corner\' (Page ID 6)', '2022-04-26 10:47:22', '2022-04-26 10:47:22'),
(9, 1, 'Updated page \'Trainer\'s Corner\' (Page ID 6)', '2022-04-26 10:47:36', '2022-04-26 10:47:36'),
(10, 1, 'Updated page \'Products & Services\' (Page ID 7)', '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(11, 1, 'Updated page \'Citizen’s Corner\' (Page ID 7)', '2022-04-26 10:48:44', '2022-04-26 10:48:44'),
(12, 1, 'Menu Item \'Learn &raquo; What to do\' deleted from \'Main Menu\'', '2022-04-26 11:12:33', '2022-04-26 11:12:33'),
(13, 1, 'Updated page \'Contact Us\' (Page ID 3)', '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(14, 1, 'Menu Item \'Contact Us\' deleted from \'Main Menu\'', '2022-04-26 11:17:38', '2022-04-26 11:17:38'),
(15, 1, 'Menu Item \'Our Blog\' deleted from \'Main Menu\'', '2022-04-26 11:17:42', '2022-04-26 11:17:42'),
(16, 1, 'Page \'What to do\' deleted (Page ID 29)', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(17, 1, 'Updated page \'Learn\' (Page ID 5)', '2022-04-26 11:22:11', '2022-04-26 11:22:11'),
(18, 1, 'Change sub levels for menu item \'Learn\' in \'Main Menu\' to 0', '2022-04-26 11:22:22', '2022-04-26 11:22:22'),
(19, 1, 'Updated page \'Mountains\' (Page ID 8)', '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(20, 1, 'Updated page \'Mountains\' (Page ID 8)', '2022-04-26 11:23:56', '2022-04-26 11:23:56'),
(21, 1, 'Updated page \'Mountains\' (Page ID 8)', '2022-04-26 11:24:27', '2022-04-26 11:24:27'),
(22, 1, 'Updated page \'Instructions for Trainers\' (Page ID 8)', '2022-04-26 11:26:38', '2022-04-26 11:26:38'),
(23, 1, 'Added page \'Video Gallery\' (Page ID 30)', '2022-04-26 11:28:39', '2022-04-26 11:28:39'),
(24, 1, 'Updated page \'Video Gallery\' (Page ID 30)', '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(25, 1, 'Updated page \'Video Gallery\' (Page ID 30)', '2022-04-26 11:30:14', '2022-04-26 11:30:14'),
(26, 1, 'Updated page \'Video Gallery\' (Page ID 30)', '2022-04-26 11:30:38', '2022-04-26 11:30:38'),
(27, 1, 'Added page \'Image Gallery\' (Page ID 31)', '2022-04-26 11:34:02', '2022-04-26 11:34:02'),
(28, 1, 'Updated page \'Image Gallery\' (Page ID 31)', '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(29, 1, 'Updated page \'Financial Literacy Booklets\' (Page ID 9)', '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(30, 1, 'Updated page \'Presentation Slides\' (Page ID 10)', '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(31, 1, 'Updated page \'Financial Diary Sample\' (Page ID 11)', '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(32, 1, 'Added page \'Student\' (Page ID 32)', '2022-04-26 11:41:26', '2022-04-26 11:41:26'),
(33, 1, 'Updated page \'Student\' (Page ID 32)', '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(34, 1, 'Menu Item \'Citizen’s Corner &raquo; Student\' deleted from \'Main Menu\'', '2022-04-26 11:42:39', '2022-04-26 11:42:39'),
(35, 1, 'Updated page \'Services\' (Page ID 12)', '2022-04-26 11:44:49', '2022-04-26 11:44:49'),
(36, 1, 'Updated page \'About Us\' (Page ID 2)', '2022-04-26 11:48:41', '2022-04-26 11:48:41'),
(37, 1, 'Updated page \'About Us\' (Page ID 2)', '2022-04-26 11:49:31', '2022-04-26 11:49:31'),
(38, 1, 'Re-ordered pages in \'Citizen’s Corner\' (Page ID 32)', '2022-04-26 11:52:55', '2022-04-26 11:52:55'),
(39, 1, 'Page \'Services\' deleted (Page ID 12)', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(40, 1, 'Page \'Travel\' deleted (Page ID 28)', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(41, 1, 'Page \'Products\' deleted (Page ID 13)', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(42, 1, 'Page \'Starter Product\' deleted (Page ID 14)', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(43, 1, 'Page \'Vouchers\' deleted (Page ID 15)', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(44, 1, 'Page \'Travelers Bundle\' deleted (Page ID 16)', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(45, 1, 'Page \'Explorers Bag\' deleted (Page ID 17)', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(46, 1, 'Page \'Survival Kit\' deleted (Page ID 18)', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(47, 1, 'Page \'Tent Pack\' deleted (Page ID 19)', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(48, 1, 'Page \'Snow Clump\' deleted (Page ID 20)', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(49, 1, 'Added page \'Women\' (Page ID 33)', '2022-04-26 11:53:42', '2022-04-26 11:53:42'),
(50, 1, 'Updated page \'Farmer\' (Page ID 34)', '2022-04-26 11:54:23', '2022-04-26 11:54:23'),
(51, 1, 'Updated page \'Non Resident Bangladeshi (NRB)\' (Page ID 35)', '2022-04-26 11:54:48', '2022-04-26 11:54:48'),
(52, 1, 'Updated page \'Marginalized people/Physically  Challenged/Workers/Social Safety  Net  Beneficiaries\' (Page ID 36)', '2022-04-26 11:55:11', '2022-04-26 11:55:11'),
(53, 1, 'Updated page \'Usage of Foreign Currency\' (Page ID 36)', '2022-04-26 11:55:44', '2022-04-26 11:55:44'),
(54, 1, 'Updated page \'CMSME\' (Page ID 37)', '2022-04-26 11:55:58', '2022-04-26 11:55:58'),
(55, 1, 'Updated page \'Payment System\' (Page ID 38)', '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(56, 1, 'Updated page \'Quiz, Games, Puzzle etc\' (Page ID 39)', '2022-04-26 11:56:31', '2022-04-26 11:56:31'),
(57, 1, 'Added page \'Marginalized people/Physically  Challenged/Workers/Social Safety  Net  Beneficiaries\' (Page ID 40)', '2022-04-26 11:57:49', '2022-04-26 11:57:49'),
(58, 1, 'Re-ordered pages in \'Citizen’s Corner\' (Page ID 40)', '2022-04-26 11:57:59', '2022-04-26 11:57:59'),
(59, 1, 'Updated page \'Contact Us\' (Page ID 3)', '2022-04-26 11:59:31', '2022-04-26 11:59:31'),
(60, 1, 'Updated Site-wide Content', '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(61, 1, 'Updated Site-wide Content', '2022-04-26 12:06:24', '2022-04-26 12:06:24'),
(62, 1, 'Updated Site-wide Content', '2022-04-26 12:06:58', '2022-04-26 12:06:58'),
(63, 1, 'Updated Site-wide Content', '2022-04-26 12:07:02', '2022-04-26 12:07:02'),
(64, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(65, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(66, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:20:41', '2022-04-26 12:20:41'),
(67, 1, 'System settings updated', '2022-04-26 12:30:22', '2022-04-26 12:30:22'),
(68, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:39:14', '2022-04-26 12:39:14'),
(69, 1, 'Added page \'Who We Are\' (Page ID 41)', '2022-04-26 12:44:00', '2022-04-26 12:44:00'),
(70, 1, 'Updated page \'Who We Are\' (Page ID 41)', '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(71, 1, 'Added page \'Who We Are\' (Page ID 42)', '2022-04-26 12:49:53', '2022-04-26 12:49:53'),
(72, 1, 'Updated page \'Who We Are\' (Page ID 42)', '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(73, 1, 'Added page \'Who We Are\' (Page ID 43)', '2022-04-26 12:51:56', '2022-04-26 12:51:56'),
(74, 1, 'Updated page \'Who We Are\' (Page ID 43)', '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(75, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:52:29', '2022-04-26 12:52:29'),
(76, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:52:33', '2022-04-26 12:52:33'),
(77, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:52:42', '2022-04-26 12:52:42'),
(78, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:52:45', '2022-04-26 12:52:45'),
(79, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:52:59', '2022-04-26 12:52:59'),
(80, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:53:03', '2022-04-26 12:53:03'),
(81, 1, 'Updated page \'Who We Are\' (Page ID 43)', '2022-04-26 12:54:02', '2022-04-26 12:54:02'),
(82, 1, 'Updated page \'Who We Are\' (Page ID 43)', '2022-04-26 12:54:08', '2022-04-26 12:54:08'),
(83, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:54:37', '2022-04-26 12:54:37'),
(84, 1, 'Updated page \'Home\' (Page ID 1)', '2022-04-26 12:54:43', '2022-04-26 12:54:43'),
(85, 1, 'User \'samsil.sd@gmail.com\' added', '2022-04-26 13:19:38', '2022-04-26 13:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `cc_admin_menu`
--

CREATE TABLE `cc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `action_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_admin_menu`
--

INSERT INTO `cc_admin_menu` (`id`, `action_id`, `parent`, `order`, `icon`, `item_name`, `item_desc`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 'fa fa-home', 'Dashboard', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(2, 5, 0, 2, 'fa fa-file-text-o', 'Pages', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(3, 18, 0, 3, 'fa fa-bars', 'Menus', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(4, 25, 0, 4, 'fa fa-globe', 'Site-wide Content', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(5, 28, 0, 5, 'fa fa-exchange', 'Redirects', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(6, 26, 0, 6, 'fa fa-folder-open', 'File Manager', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(7, 39, 0, 7, 'fa fa-user', 'Users', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25'),
(8, 43, 0, 8, 'fa fa-bullhorn', 'Roles', '', '2022-04-26 04:16:25', '2022-04-26 04:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `cc_backups`
--

CREATE TABLE `cc_backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_id` int(11) NOT NULL,
  `primary_id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_backups`
--

INSERT INTO `cc_backups` (`id`, `log_id`, `primary_id`, `model`, `data`, `created_at`, `updated_at`) VALUES
(1, 12, 8, 'CoasterCms\\Models\\MenuItem', 'O:26:\"CoasterCms\\Models\\MenuItem\":31:{s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:2:\"29\";s:5:\"order\";i:9;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";N;s:12:\"hidden_pages\";N;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:2:\"29\";s:5:\"order\";i:9;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";N;s:12:\"hidden_pages\";N;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:10:\"\0*\0_logger\";a:0:{}}', '2022-04-26 11:12:33', '2022-04-26 11:12:33'),
(2, 14, 6, 'CoasterCms\\Models\\MenuItem', 'O:26:\"CoasterCms\\Models\\MenuItem\":31:{s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:1:\"3\";s:5:\"order\";i:7;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";s:0:\"\";s:12:\"hidden_pages\";s:0:\"\";s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:1:\"3\";s:5:\"order\";i:7;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";s:0:\"\";s:12:\"hidden_pages\";s:0:\"\";s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:10:\"\0*\0_logger\";a:0:{}}', '2022-04-26 11:17:38', '2022-04-26 11:17:38'),
(3, 15, 7, 'CoasterCms\\Models\\MenuItem', 'O:26:\"CoasterCms\\Models\\MenuItem\":31:{s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:2:\"22\";s:5:\"order\";i:8;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";s:0:\"\";s:12:\"hidden_pages\";s:0:\"\";s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:2:\"22\";s:5:\"order\";i:8;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";s:0:\"\";s:12:\"hidden_pages\";s:0:\"\";s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:10:\"\0*\0_logger\";a:0:{}}', '2022-04-26 11:17:42', '2022-04-26 11:17:42'),
(4, 16, 29, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:29;s:8:\"template\";i:2;s:6:\"parent\";i:5;s:14:\"child_template\";i:0;s:5:\"order\";i:1;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:29;s:8:\"template\";i:2;s:6:\"parent\";i:5;s:14:\"child_template\";i:0;s:5:\"order\";i:1;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(5, 16, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:29;s:7:\"page_id\";i:29;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"2\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"826copaa\";s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:29;s:7:\"page_id\";i:29;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"2\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"826copaa\";s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(6, 16, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:29;s:7:\"page_id\";i:29;s:11:\"language_id\";i:1;s:3:\"url\";s:10:\"what-to-do\";s:4:\"name\";s:10:\"What to do\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:29;s:7:\"page_id\";i:29;s:11:\"language_id\";i:1;s:3:\"url\";s:10:\"what-to-do\";s:4:\"name\";s:10:\"What to do\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(7, 16, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:92;s:11:\"language_id\";i:1;s:7:\"page_id\";i:29;s:8:\"block_id\";i:34;s:7:\"content\";s:10:\"What to do\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:92;s:11:\"language_id\";i:1;s:7:\"page_id\";i:29;s:8:\"block_id\";i:34;s:7:\"content\";s:10:\"What to do\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 14:13:22\";s:10:\"updated_at\";s:19:\"2022-04-26 14:13:22\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(8, 16, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(9, 16, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(10, 16, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:21:52', '2022-04-26 11:21:52'),
(11, 34, 11, 'CoasterCms\\Models\\MenuItem', 'O:26:\"CoasterCms\\Models\\MenuItem\":31:{s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:2:\"32\";s:5:\"order\";i:8;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";N;s:12:\"hidden_pages\";N;s:10:\"created_at\";s:19:\"2022-04-26 17:41:38\";s:10:\"updated_at\";s:19:\"2022-04-26 17:41:38\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:7:\"page_id\";s:2:\"32\";s:5:\"order\";i:8;s:10:\"sub_levels\";i:0;s:11:\"custom_name\";s:0:\"\";s:17:\"custom_page_names\";N;s:12:\"hidden_pages\";N;s:10:\"created_at\";s:19:\"2022-04-26 17:41:38\";s:10:\"updated_at\";s:19:\"2022-04-26 17:41:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:10:\"\0*\0_logger\";a:0:{}}', '2022-04-26 11:42:39', '2022-04-26 11:42:39'),
(12, 39, 12, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:12;s:8:\"template\";i:5;s:6:\"parent\";i:7;s:14:\"child_template\";i:0;s:5:\"order\";i:2;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 17:52:55\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:12;s:8:\"template\";i:5;s:6:\"parent\";i:7;s:14:\"child_template\";i:0;s:5:\"order\";i:2;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 17:52:55\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(13, 39, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:12;s:7:\"page_id\";i:12;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"5\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"48cwf8y5\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:12;s:7:\"page_id\";i:12;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"5\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"48cwf8y5\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:55;s:7:\"page_id\";i:12;s:10:\"version_id\";i:2;s:8:\"template\";s:1:\"5\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"54ikmr9t\";s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:55;s:7:\"page_id\";i:12;s:10:\"version_id\";i:2;s:8:\"template\";s:1:\"5\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"54ikmr9t\";s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(14, 39, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:12;s:7:\"page_id\";i:12;s:11:\"language_id\";i:1;s:3:\"url\";s:8:\"services\";s:4:\"name\";s:8:\"Services\";s:12:\"live_version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:12;s:7:\"page_id\";i:12;s:11:\"language_id\";i:1;s:3:\"url\";s:8:\"services\";s:4:\"name\";s:8:\"Services\";s:12:\"live_version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(15, 39, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:49;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:1;s:7:\"content\";s:4:\"home\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:49;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:1;s:7:\"content\";s:4:\"home\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:50;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:33;s:7:\"content\";s:295:\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:50;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:33;s:7:\"content\";s:295:\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:51;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:36;s:7:\"content\";s:55:\"Nemo enim ipsam voluptatem quia voluptas sit aspernatur\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:51;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:36;s:7:\"content\";s:55:\"Nemo enim ipsam voluptatem quia voluptas sit aspernatur\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:52;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:34;s:7:\"content\";s:8:\"Services\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:52;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:34;s:7:\"content\";s:8:\"Services\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:195;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:19;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:195;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:19;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:196;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:20;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:196;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:20;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:197;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:21;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:197;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:21;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:198;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:36;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:198;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:36;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:199;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:33;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:199;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:33;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:200;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:35;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:200;s:11:\"language_id\";i:1;s:7:\"page_id\";i:12;s:8:\"block_id\";i:35;s:7:\"content\";s:0:\"\";s:7:\"version\";i:2;s:10:\"created_at\";s:19:\"2022-04-26 17:44:49\";s:10:\"updated_at\";s:19:\"2022-04-26 17:44:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(16, 39, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(17, 39, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(18, 39, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(19, 40, 28, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:28;s:8:\"template\";i:7;s:6:\"parent\";i:12;s:14:\"child_template\";i:0;s:5:\"order\";i:1;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:28;s:8:\"template\";i:7;s:6:\"parent\";i:12;s:14:\"child_template\";i:0;s:5:\"order\";i:1;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(20, 40, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:28;s:7:\"page_id\";i:28;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"6ege18gd\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:28;s:7:\"page_id\";i:28;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"6ege18gd\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(21, 40, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:28;s:7:\"page_id\";i:28;s:11:\"language_id\";i:1;s:3:\"url\";s:6:\"travel\";s:4:\"name\";s:6:\"Travel\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:28;s:7:\"page_id\";i:28;s:11:\"language_id\";i:1;s:3:\"url\";s:6:\"travel\";s:4:\"name\";s:6:\"Travel\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(22, 40, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(23, 40, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(24, 40, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(25, 40, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:10', '2022-04-26 11:53:10'),
(26, 41, 13, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:13;s:8:\"template\";i:5;s:6:\"parent\";i:7;s:14:\"child_template\";i:0;s:5:\"order\";i:3;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 17:52:55\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:13;s:8:\"template\";i:5;s:6:\"parent\";i:7;s:14:\"child_template\";i:0;s:5:\"order\";i:3;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 17:52:55\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(27, 41, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:13;s:7:\"page_id\";i:13;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"5\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"3ldzpq19\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:13;s:7:\"page_id\";i:13;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"5\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"3ldzpq19\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(28, 41, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:13;s:7:\"page_id\";i:13;s:11:\"language_id\";i:1;s:3:\"url\";s:5:\"range\";s:4:\"name\";s:8:\"Products\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:13;s:7:\"page_id\";i:13;s:11:\"language_id\";i:1;s:3:\"url\";s:5:\"range\";s:4:\"name\";s:8:\"Products\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15');
INSERT INTO `cc_backups` (`id`, `log_id`, `primary_id`, `model`, `data`, `created_at`, `updated_at`) VALUES
(29, 41, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:53;s:11:\"language_id\";i:1;s:7:\"page_id\";i:13;s:8:\"block_id\";i:33;s:7:\"content\";s:295:\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:53;s:11:\"language_id\";i:1;s:7:\"page_id\";i:13;s:8:\"block_id\";i:33;s:7:\"content\";s:295:\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:54;s:11:\"language_id\";i:1;s:7:\"page_id\";i:13;s:8:\"block_id\";i:36;s:7:\"content\";s:55:\"Nemo enim ipsam voluptatem quia voluptas sit aspernatur\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:54;s:11:\"language_id\";i:1;s:7:\"page_id\";i:13;s:8:\"block_id\";i:36;s:7:\"content\";s:55:\"Nemo enim ipsam voluptatem quia voluptas sit aspernatur\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:55;s:11:\"language_id\";i:1;s:7:\"page_id\";i:13;s:8:\"block_id\";i:34;s:7:\"content\";s:8:\"Products\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:55;s:11:\"language_id\";i:1;s:7:\"page_id\";i:13;s:8:\"block_id\";i:34;s:7:\"content\";s:8:\"Products\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(30, 41, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(31, 41, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(32, 41, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(33, 42, 14, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:14;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:1;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:14;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:1;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(34, 42, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:14;s:7:\"page_id\";i:14;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"4qqfe2h9\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:14;s:7:\"page_id\";i:14;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"4qqfe2h9\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(35, 42, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:14;s:7:\"page_id\";i:14;s:11:\"language_id\";i:1;s:3:\"url\";s:15:\"starter-product\";s:4:\"name\";s:15:\"Starter Product\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:14;s:7:\"page_id\";i:14;s:11:\"language_id\";i:1;s:3:\"url\";s:15:\"starter-product\";s:4:\"name\";s:15:\"Starter Product\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(36, 42, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:56;s:11:\"language_id\";i:1;s:7:\"page_id\";i:14;s:8:\"block_id\";i:34;s:7:\"content\";s:15:\"Starter Product\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:56;s:11:\"language_id\";i:1;s:7:\"page_id\";i:14;s:8:\"block_id\";i:34;s:7:\"content\";s:15:\"Starter Product\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(37, 42, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(38, 42, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(39, 42, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(40, 43, 15, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:15;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:2;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:15;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:2;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(41, 43, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:15;s:7:\"page_id\";i:15;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"bvzsxjwt\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:15;s:7:\"page_id\";i:15;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"bvzsxjwt\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(42, 43, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:15;s:7:\"page_id\";i:15;s:11:\"language_id\";i:1;s:3:\"url\";s:7:\"voucher\";s:4:\"name\";s:8:\"Vouchers\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:15;s:7:\"page_id\";i:15;s:11:\"language_id\";i:1;s:3:\"url\";s:7:\"voucher\";s:4:\"name\";s:8:\"Vouchers\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(43, 43, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:57;s:11:\"language_id\";i:1;s:7:\"page_id\";i:15;s:8:\"block_id\";i:34;s:7:\"content\";s:8:\"Vouchers\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:57;s:11:\"language_id\";i:1;s:7:\"page_id\";i:15;s:8:\"block_id\";i:34;s:7:\"content\";s:8:\"Vouchers\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(44, 43, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(45, 43, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(46, 43, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(47, 44, 16, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:16;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:3;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:16;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:3;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(48, 44, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:7:\"page_id\";i:16;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"7f7fyvil\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:7:\"page_id\";i:16;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"7f7fyvil\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(49, 44, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:16;s:7:\"page_id\";i:16;s:11:\"language_id\";i:1;s:3:\"url\";s:16:\"travelers-bundle\";s:4:\"name\";s:16:\"Travelers Bundle\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:16;s:7:\"page_id\";i:16;s:11:\"language_id\";i:1;s:3:\"url\";s:16:\"travelers-bundle\";s:4:\"name\";s:16:\"Travelers Bundle\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(50, 44, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:58;s:11:\"language_id\";i:1;s:7:\"page_id\";i:16;s:8:\"block_id\";i:34;s:7:\"content\";s:16:\"Travelers Bundle\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:58;s:11:\"language_id\";i:1;s:7:\"page_id\";i:16;s:8:\"block_id\";i:34;s:7:\"content\";s:16:\"Travelers Bundle\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(51, 44, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(52, 44, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(53, 44, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(54, 45, 17, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:17;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:4;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:17;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:4;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(55, 45, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:17;s:7:\"page_id\";i:17;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"3c788b9p\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:17;s:7:\"page_id\";i:17;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"3c788b9p\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(56, 45, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:17;s:7:\"page_id\";i:17;s:11:\"language_id\";i:1;s:3:\"url\";s:13:\"explorers-bag\";s:4:\"name\";s:13:\"Explorers Bag\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:17;s:7:\"page_id\";i:17;s:11:\"language_id\";i:1;s:3:\"url\";s:13:\"explorers-bag\";s:4:\"name\";s:13:\"Explorers Bag\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(57, 45, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:59;s:11:\"language_id\";i:1;s:7:\"page_id\";i:17;s:8:\"block_id\";i:34;s:7:\"content\";s:13:\"Explorers Bag\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:59;s:11:\"language_id\";i:1;s:7:\"page_id\";i:17;s:8:\"block_id\";i:34;s:7:\"content\";s:13:\"Explorers Bag\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(58, 45, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:15', '2022-04-26 11:53:15'),
(59, 45, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(60, 45, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(61, 46, 18, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:18;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:5;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:18;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:5;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(62, 46, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:18;s:7:\"page_id\";i:18;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"c9ry5o25\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:18;s:7:\"page_id\";i:18;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"c9ry5o25\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(63, 46, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:18;s:7:\"page_id\";i:18;s:11:\"language_id\";i:1;s:3:\"url\";s:12:\"survival-kit\";s:4:\"name\";s:12:\"Survival Kit\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:18;s:7:\"page_id\";i:18;s:11:\"language_id\";i:1;s:3:\"url\";s:12:\"survival-kit\";s:4:\"name\";s:12:\"Survival Kit\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(64, 46, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:60;s:11:\"language_id\";i:1;s:7:\"page_id\";i:18;s:8:\"block_id\";i:34;s:7:\"content\";s:12:\"Survival Kit\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:60;s:11:\"language_id\";i:1;s:7:\"page_id\";i:18;s:8:\"block_id\";i:34;s:7:\"content\";s:12:\"Survival Kit\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(65, 46, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(66, 46, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(67, 46, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(68, 47, 19, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:19;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:6;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:19;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:6;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(69, 47, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:19;s:7:\"page_id\";i:19;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"c0l6o9al\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:19;s:7:\"page_id\";i:19;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"c0l6o9al\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(70, 47, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:19;s:7:\"page_id\";i:19;s:11:\"language_id\";i:1;s:3:\"url\";s:5:\"tents\";s:4:\"name\";s:9:\"Tent Pack\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:19;s:7:\"page_id\";i:19;s:11:\"language_id\";i:1;s:3:\"url\";s:5:\"tents\";s:4:\"name\";s:9:\"Tent Pack\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16');
INSERT INTO `cc_backups` (`id`, `log_id`, `primary_id`, `model`, `data`, `created_at`, `updated_at`) VALUES
(71, 47, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:61;s:11:\"language_id\";i:1;s:7:\"page_id\";i:19;s:8:\"block_id\";i:34;s:7:\"content\";s:9:\"Tent Pack\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:61;s:11:\"language_id\";i:1;s:7:\"page_id\";i:19;s:8:\"block_id\";i:34;s:7:\"content\";s:9:\"Tent Pack\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(72, 47, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(73, 47, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(74, 47, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(75, 48, 20, '\\CoasterCms\\Models\\Page', 'O:22:\"CoasterCms\\Models\\Page\":30:{s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:20;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:7;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:20;s:8:\"template\";i:7;s:6:\"parent\";i:13;s:14:\"child_template\";i:0;s:5:\"order\";i:7;s:15:\"group_container\";i:0;s:28:\"group_container_url_priority\";i:0;s:16:\"canonical_parent\";i:0;s:4:\"link\";i:0;s:4:\"live\";i:1;s:7:\"sitemap\";i:1;s:10:\"live_start\";N;s:8:\"live_end\";N;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(76, 48, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:29:\"CoasterCms\\Models\\PageVersion\":30:{s:8:\"\0*\0table\";s:13:\"page_versions\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:20;s:7:\"page_id\";i:20;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"8p59dxcd\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:20;s:7:\"page_id\";i:20;s:10:\"version_id\";i:1;s:8:\"template\";s:1:\"7\";s:5:\"label\";N;s:11:\"preview_key\";s:8:\"8p59dxcd\";s:7:\"user_id\";i:0;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(77, 48, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"CoasterCms\\Models\\PageLang\":30:{s:8:\"\0*\0table\";s:9:\"page_lang\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:20;s:7:\"page_id\";i:20;s:11:\"language_id\";i:1;s:3:\"url\";s:4:\"snow\";s:4:\"name\";s:10:\"Snow Clump\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:20;s:7:\"page_id\";i:20;s:11:\"language_id\";i:1;s:3:\"url\";s:4:\"snow\";s:4:\"name\";s:10:\"Snow Clump\";s:12:\"live_version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(78, 48, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:27:\"CoasterCms\\Models\\PageBlock\":30:{s:8:\"\0*\0table\";s:11:\"page_blocks\";s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:62;s:11:\"language_id\";i:1;s:7:\"page_id\";i:20;s:8:\"block_id\";i:34;s:7:\"content\";s:10:\"Snow Clump\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:62;s:11:\"language_id\";i:1;s:7:\"page_id\";i:20;s:8:\"block_id\";i:34;s:7:\"content\";s:10:\"Snow Clump\";s:7:\"version\";i:1;s:10:\"created_at\";s:19:\"2022-04-26 10:18:53\";s:10:\"updated_at\";s:19:\"2022-04-26 10:18:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(79, 48, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(80, 48, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16'),
(81, 48, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-26 11:53:16', '2022-04-26 11:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `cc_blocks`
--

CREATE TABLE `cc_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `search_weight` int(11) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL DEFAULT 1,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_blocks`
--

INSERT INTO `cc_blocks` (`id`, `category_id`, `label`, `name`, `type`, `order`, `search_weight`, `active`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Category View', 'category_view', 'select', 110, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(2, 1, 'Post Date', 'post_date', 'datetime', 85, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(3, 1, 'Post Author', 'post_author', 'selectuser', 84, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(4, 1, 'Video', 'video', 'video', 110, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(5, 2, 'Categories', 'categories', 'selectmultiplewnew', 110, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(6, 1, 'Comments', 'comments', 'repeater', 130, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(7, 1, 'Email', 'email', 'string', 110, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(8, 1, 'Phone', 'phone', 'string', 120, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(9, 1, 'Address', 'address', 'text', 130, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(10, 1, 'Contact Form Text', 'contact_form_text', 'text', 145, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(11, 1, 'Contact Form', 'contact_form', 'form', 140, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(12, 1, 'Map Link', 'map_link', 'string', 150, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(13, 3, 'Carousel', 'carousel', 'repeater', 70, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(14, 1, 'Show Sub Pages', 'show_sub_pages', 'selectpage', 100, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(15, 1, 'Mini Banner', 'banner', 'repeater', 110, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(16, 4, 'Sidebar Title', 'sidebar_title', 'string', 80, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(17, 4, 'Sidebar Content', 'sidebar_content', 'richtext', 90, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(18, 1, 'Team', 'team', 'repeater', 110, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(19, 5, 'Meta Title', 'meta_title', 'string', 20, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(20, 5, 'Meta Description', 'meta_description', 'text', 30, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(21, 5, 'Meta Keywords', 'meta_keywords', 'text', 40, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(22, 6, 'Header Html', 'header_html', 'text', 50, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(23, 6, 'Logo', 'logo', 'image', 60, 1, 1, '', '2022-04-26 04:18:42', '2022-04-26 04:18:42'),
(24, 3, 'Internal Banner', 'internal_banner', 'image', 70, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(25, 7, 'Show Features', 'show_features', 'select', 120, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(26, 7, 'Features Title', 'features_title', 'string', 130, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(27, 7, 'Features Lead Text', 'features_lead_text', 'text', 140, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(28, 7, 'Feature', 'feature', 'repeater', 150, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(29, 7, 'Social', 'social', 'repeater', 160, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(30, 1, 'Scroll To Top Text', 'scroll_to_top_text', 'text', 170, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(31, 7, 'Copyright', 'copyright', 'string', 210, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(32, 7, 'Footer Html', 'footer_html', 'text', 230, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(33, 1, 'Content', 'content', 'richtext', 70, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(34, 1, 'Title', 'title', 'string', 60, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(35, 8, 'Content Image', 'content_image', 'image', 240, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(36, 1, 'Lead Text', 'lead_text', 'text', 65, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(37, 9, 'Blog Archive Page', 'blog_archive_page', 'selectpage', 130, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(38, 9, 'Blog Category Page', 'blog_category_page', 'selectpage', 120, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(39, 9, 'Blog Main Page', 'blog_main_page', 'selectpage', 100, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(40, 9, 'Blog Search Page', 'blog_search_page', 'selectpage', 110, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(41, 1, 'Comment Author', 'comment_author', 'string', 80, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(42, 1, 'Comment Content', 'comment_content', 'text', 30, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(43, 1, 'Comment Date', 'comment_date', 'datetime', 100, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(44, 1, 'Slide Image', 'slide_image', 'image', 110, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(45, 1, 'Slide Title', 'slide_title', 'string', 120, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(46, 1, 'Slide Text', 'slide_text', 'text', 130, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(47, 1, 'Slide Button Link', 'slide_button_link', 'link', 140, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(48, 1, 'Slide Button Text', 'slide_button_text', 'text', 150, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(49, 1, 'Slide Button Icon', 'slide_button_icon', 'selectclass', 160, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(50, 3, 'Banner Link', 'banner_link', 'link', 170, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(51, 3, 'Banner Image', 'banner_image', 'image', 180, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(52, 1, 'Member Image', 'member_image', 'image', 190, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(53, 1, 'Member Name', 'member_name', 'string', 200, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(54, 1, 'Member Text', 'member_text', 'text', 210, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(55, 1, 'Feature Icon', 'feature_icon', 'selectclass', 50, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(56, 1, 'Feature Title', 'feature_title', 'string', 30, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(57, 1, 'Feature Text', 'feature_text', 'text', 40, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(58, 1, 'Social Link', 'social_link', 'link', 50, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(59, 1, 'Social Icon', 'social_icon', 'selectclass', 90, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(60, 1, 'Social Name', 'social_name', 'string', 70, 1, 1, '', '2022-04-26 04:18:43', '2022-04-26 04:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `cc_block_beacons`
--

CREATE TABLE `cc_block_beacons` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Kontakt',
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `removed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_block_category`
--

CREATE TABLE `cc_block_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_block_category`
--

INSERT INTO `cc_block_category` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Main Content', 50, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(2, 'Filters', 90, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(3, 'Banners', 55, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(4, 'Sidebar', 60, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(5, 'SEO Content', 100, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(6, 'Header', 10, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(7, 'Footer', 80, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(8, 'Page Listing', 85, '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(9, 'Blog', 95, '2022-04-26 04:18:40', '2022-04-26 04:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `cc_block_form_rules`
--

CREATE TABLE `cc_block_form_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_block_form_rules`
--

INSERT INTO `cc_block_form_rules` (`id`, `form_template`, `field`, `rule`, `created_at`, `updated_at`) VALUES
(1, 'contact_form', 'name', 'required', '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(2, 'contact_form', 'email', 'required|email', '2022-04-26 04:18:40', '2022-04-26 04:18:40'),
(3, 'contact_form', 'message', 'required', '2022-04-26 04:18:40', '2022-04-26 04:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `cc_block_repeaters`
--

CREATE TABLE `cc_block_repeaters` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(11) NOT NULL,
  `blocks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_rows` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_block_repeaters`
--

INSERT INTO `cc_block_repeaters` (`id`, `block_id`, `blocks`, `item_name`, `max_rows`, `created_at`, `updated_at`) VALUES
(1, 6, '41,42,43', NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(2, 13, '44,45,46,47,48,49', NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(3, 15, '50,51', NULL, NULL, '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(4, 18, '52,53,54', NULL, NULL, '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(5, 28, '55,56,57', NULL, NULL, '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(6, 29, '58,59,60', NULL, NULL, '2022-04-26 04:18:45', '2022-04-26 04:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `cc_block_selectopts`
--

CREATE TABLE `cc_block_selectopts` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(11) NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_block_selectopts`
--

INSERT INTO `cc_block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Page list (3Cols)', '', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(2, 1, 'Page list with content (3Cols)', 'detailed', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(3, 1, 'Detailed view with page listing image', 'home', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(4, 1, 'Page list with dates (blog)', 'posts', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(5, 5, 'Cms', 'Cms', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(6, 5, 'Coaster', 'Coaster', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(7, 5, 'Travel', 'Travel', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(8, 5, 'Holiday', 'Holiday', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(9, 5, 'Relax', 'Relax', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(10, 5, 'Chill', 'Chill', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(11, 25, 'Yes', '1', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(12, 25, 'No', '0', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(13, 30, 'Default (3Cols)', '', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(14, 30, 'Detailed (3Cols)', 'detailed', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(15, 30, 'Detailed with Icon (4Cols)', 'home', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(16, 31, 'Yes', '1', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(17, 31, 'No', '0', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(18, 49, 'fa fa-arrow-down', '<i class=\"fa fa-arrow-down\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(19, 49, 'fa fa-glass', '<i class=\"fa fa-glass\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(20, 49, 'fa fa-music', '<i class=\"fa fa-music\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(21, 49, 'fa fa-search', '<i class=\"fa fa-search\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(22, 49, 'fa fa-envelope-o', '<i class=\"fa fa-envelope-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(23, 49, 'fa fa-heart', '<i class=\"fa fa-heart\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(24, 49, 'fa fa-star', '<i class=\"fa fa-star\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(25, 49, 'fa fa-star-o', '<i class=\"fa fa-star-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(26, 49, 'fa fa-user', '<i class=\"fa fa-user\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(27, 49, 'fa fa-film', '<i class=\"fa fa-film\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(28, 49, 'fa fa-th-large', '<i class=\"fa fa-th-large\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(29, 49, 'fa fa-th', '<i class=\"fa fa-th\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(30, 49, 'fa fa-th-list', '<i class=\"fa fa-th-list\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(31, 49, 'fa fa-check', '<i class=\"fa fa-check\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(32, 49, 'fa fa-times', '<i class=\"fa fa-times\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(33, 49, 'fa fa-search-plus', '<i class=\"fa fa-search-plus\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(34, 49, 'fa fa-search-minus', '<i class=\"fa fa-search-minus\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(35, 49, 'fa fa-power-off', '<i class=\"fa fa-power-off\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(36, 49, 'fa fa-signal', '<i class=\"fa fa-signal\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(37, 49, 'fa fa-cog', '<i class=\"fa fa-cog\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(38, 49, 'fa fa-trash-o', '<i class=\"fa fa-trash-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(39, 49, 'fa fa-home', '<i class=\"fa fa-home\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(40, 49, 'fa fa-file-o', '<i class=\"fa fa-file-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(41, 49, 'fa fa-clock-o', '<i class=\"fa fa-clock-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(42, 49, 'fa fa-road', '<i class=\"fa fa-road\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(43, 49, 'fa fa-download', '<i class=\"fa fa-download\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(44, 49, 'fa fa-arrow-circle-o-down', '<i class=\"fa fa-arrow-circle-o-down\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(45, 49, 'fa fa-arrow-circle-o-up', '<i class=\"fa fa-arrow-circle-o-up\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(46, 49, 'fa fa-inbox', '<i class=\"fa fa-inbox\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(47, 49, 'fa fa-play-circle-o', '<i class=\"fa fa-play-circle-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(48, 49, 'fa fa-repeat', '<i class=\"fa fa-repeat\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(49, 49, 'fa fa-refresh', '<i class=\"fa fa-refresh\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(50, 49, 'fa fa-list-alt', '<i class=\"fa fa-list-alt\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(51, 49, 'fa fa-lock', '<i class=\"fa fa-lock\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(52, 49, 'fa fa-flag', '<i class=\"fa fa-flag\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(53, 49, 'fa fa-headphones', '<i class=\"fa fa-headphones\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(54, 49, 'fa fa-volume-off', '<i class=\"fa fa-volume-off\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(55, 49, 'fa fa-volume-down', '<i class=\"fa fa-volume-down\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(56, 49, 'fa fa-volume-up', '<i class=\"fa fa-volume-up\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(57, 49, 'fa fa-qrcode', '<i class=\"fa fa-qrcode\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(58, 49, 'fa fa-barcode', '<i class=\"fa fa-barcode\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(59, 49, 'fa fa-tag', '<i class=\"fa fa-tag\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(60, 49, 'fa fa-tags', '<i class=\"fa fa-tags\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(61, 49, 'fa fa-book', '<i class=\"fa fa-book\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(62, 49, 'fa fa-bookmark', '<i class=\"fa fa-bookmark\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(63, 49, 'fa fa-print', '<i class=\"fa fa-print\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(64, 49, 'fa fa-camera', '<i class=\"fa fa-camera\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(65, 49, 'fa fa-font', '<i class=\"fa fa-font\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(66, 49, 'fa fa-bold', '<i class=\"fa fa-bold\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(67, 49, 'fa fa-italic', '<i class=\"fa fa-italic\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(68, 49, 'fa fa-text-height', '<i class=\"fa fa-text-height\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(69, 49, 'fa fa-text-width', '<i class=\"fa fa-text-width\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(70, 49, 'fa fa-align-left', '<i class=\"fa fa-align-left\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(71, 49, 'fa fa-align-center', '<i class=\"fa fa-align-center\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(72, 49, 'fa fa-align-right', '<i class=\"fa fa-align-right\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(73, 49, 'fa fa-align-justify', '<i class=\"fa fa-align-justify\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(74, 49, 'fa fa-list', '<i class=\"fa fa-list\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(75, 49, 'fa fa-outdent', '<i class=\"fa fa-outdent\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(76, 49, 'fa fa-indent', '<i class=\"fa fa-indent\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(77, 49, 'fa fa-video-camera', '<i class=\"fa fa-video-camera\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(78, 49, 'fa fa-picture-o', '<i class=\"fa fa-picture-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(79, 49, 'fa fa-pencil', '<i class=\"fa fa-pencil\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(80, 49, 'fa fa-map-marker', '<i class=\"fa fa-map-marker\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(81, 49, 'fa fa-adjust', '<i class=\"fa fa-adjust\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(82, 49, 'fa fa-tint', '<i class=\"fa fa-tint\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(83, 49, 'fa fa-pencil-square-o', '<i class=\"fa fa-pencil-square-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(84, 49, 'fa fa-share-square-o', '<i class=\"fa fa-share-square-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(85, 49, 'fa fa-check-square-o', '<i class=\"fa fa-check-square-o\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(86, 49, 'fa fa-arrows', '<i class=\"fa fa-arrows\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(87, 49, 'fa fa-step-backward', '<i class=\"fa fa-step-backward\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(88, 49, 'fa fa-fast-backward', '<i class=\"fa fa-fast-backward\"></i>', '2022-04-26 04:18:45', '2022-04-26 04:18:45'),
(89, 49, 'fa fa-backward', '<i class=\"fa fa-backward\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(90, 49, 'fa fa-play', '<i class=\"fa fa-play\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(91, 49, 'fa fa-pause', '<i class=\"fa fa-pause\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(92, 49, 'fa fa-stop', '<i class=\"fa fa-stop\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(93, 49, 'fa fa-forward', '<i class=\"fa fa-forward\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(94, 49, 'fa fa-fast-forward', '<i class=\"fa fa-fast-forward\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(95, 49, 'fa fa-step-forward', '<i class=\"fa fa-step-forward\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(96, 49, 'fa fa-eject', '<i class=\"fa fa-eject\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(97, 49, 'fa fa-chevron-left', '<i class=\"fa fa-chevron-left\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(98, 49, 'fa fa-chevron-right', '<i class=\"fa fa-chevron-right\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(99, 49, 'fa fa-plus-circle', '<i class=\"fa fa-plus-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(100, 49, 'fa fa-minus-circle', '<i class=\"fa fa-minus-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(101, 49, 'fa fa-times-circle', '<i class=\"fa fa-times-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(102, 49, 'fa fa-check-circle', '<i class=\"fa fa-check-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(103, 49, 'fa fa-question-circle', '<i class=\"fa fa-question-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(104, 49, 'fa fa-info-circle', '<i class=\"fa fa-info-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(105, 49, 'fa fa-crosshairs', '<i class=\"fa fa-crosshairs\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(106, 49, 'fa fa-times-circle-o', '<i class=\"fa fa-times-circle-o\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(107, 49, 'fa fa-check-circle-o', '<i class=\"fa fa-check-circle-o\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(108, 49, 'fa fa-ban', '<i class=\"fa fa-ban\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(109, 49, 'fa fa-arrow-left', '<i class=\"fa fa-arrow-left\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(110, 49, 'fa fa-arrow-right', '<i class=\"fa fa-arrow-right\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(111, 49, 'fa fa-arrow-up', '<i class=\"fa fa-arrow-up\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(112, 49, 'fa fa-share', '<i class=\"fa fa-share\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(113, 49, 'fa fa-expand', '<i class=\"fa fa-expand\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(114, 49, 'fa fa-compress', '<i class=\"fa fa-compress\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(115, 49, 'fa fa-plus', '<i class=\"fa fa-plus\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(116, 49, 'fa fa-minus', '<i class=\"fa fa-minus\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(117, 49, 'fa fa-asterisk', '<i class=\"fa fa-asterisk\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(118, 49, 'fa fa-exclamation-circle', '<i class=\"fa fa-exclamation-circle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(119, 49, 'fa fa-gift', '<i class=\"fa fa-gift\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(120, 49, 'fa fa-leaf', '<i class=\"fa fa-leaf\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(121, 49, 'fa fa-fire', '<i class=\"fa fa-fire\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(122, 49, 'fa fa-eye', '<i class=\"fa fa-eye\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(123, 49, 'fa fa-eye-slash', '<i class=\"fa fa-eye-slash\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(124, 49, 'fa fa-exclamation-triangle', '<i class=\"fa fa-exclamation-triangle\"></i>', '2022-04-26 04:18:46', '2022-04-26 04:18:46'),
(125, 49, 'fa fa-plane', '<i class=\"fa fa-plane\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(126, 49, 'fa fa-calendar', '<i class=\"fa fa-calendar\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(127, 49, 'fa fa-random', '<i class=\"fa fa-random\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(128, 49, 'fa fa-comment', '<i class=\"fa fa-comment\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(129, 49, 'fa fa-magnet', '<i class=\"fa fa-magnet\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(130, 49, 'fa fa-chevron-up', '<i class=\"fa fa-chevron-up\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(131, 49, 'fa fa-chevron-down', '<i class=\"fa fa-chevron-down\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(132, 49, 'fa fa-retweet', '<i class=\"fa fa-retweet\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(133, 49, 'fa fa-shopping-cart', '<i class=\"fa fa-shopping-cart\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(134, 49, 'fa fa-folder', '<i class=\"fa fa-folder\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(135, 49, 'fa fa-folder-open', '<i class=\"fa fa-folder-open\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(136, 49, 'fa fa-arrows-v', '<i class=\"fa fa-arrows-v\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(137, 49, 'fa fa-arrows-h', '<i class=\"fa fa-arrows-h\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(138, 49, 'fa fa-bar-chart', '<i class=\"fa fa-bar-chart\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(139, 49, 'fa fa-twitter-square', '<i class=\"fa fa-twitter-square\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(140, 49, 'fa fa-facebook-square', '<i class=\"fa fa-facebook-square\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(141, 49, 'fa fa-camera-retro', '<i class=\"fa fa-camera-retro\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(142, 49, 'fa fa-key', '<i class=\"fa fa-key\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(143, 49, 'fa fa-cogs', '<i class=\"fa fa-cogs\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(144, 49, 'fa fa-comments', '<i class=\"fa fa-comments\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(145, 49, 'fa fa-thumbs-o-up', '<i class=\"fa fa-thumbs-o-up\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(146, 49, 'fa fa-thumbs-o-down', '<i class=\"fa fa-thumbs-o-down\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(147, 49, 'fa fa-star-half', '<i class=\"fa fa-star-half\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(148, 49, 'fa fa-heart-o', '<i class=\"fa fa-heart-o\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(149, 49, 'fa fa-sign-out', '<i class=\"fa fa-sign-out\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(150, 49, 'fa fa-linkedin-square', '<i class=\"fa fa-linkedin-square\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(151, 49, 'fa fa-thumb-tack', '<i class=\"fa fa-thumb-tack\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(152, 49, 'fa fa-external-link', '<i class=\"fa fa-external-link\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(153, 49, 'fa fa-sign-in', '<i class=\"fa fa-sign-in\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(154, 49, 'fa fa-trophy', '<i class=\"fa fa-trophy\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(155, 49, 'fa fa-github-square', '<i class=\"fa fa-github-square\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(156, 49, 'fa fa-upload', '<i class=\"fa fa-upload\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(157, 49, 'fa fa-lemon-o', '<i class=\"fa fa-lemon-o\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(158, 49, 'fa fa-phone', '<i class=\"fa fa-phone\"></i>', '2022-04-26 04:18:47', '2022-04-26 04:18:47'),
(159, 49, 'fa fa-square-o', '<i class=\"fa fa-square-o\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(160, 49, 'fa fa-bookmark-o', '<i class=\"fa fa-bookmark-o\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(161, 49, 'fa fa-phone-square', '<i class=\"fa fa-phone-square\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(162, 49, 'fa fa-twitter', '<i class=\"fa fa-twitter\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(163, 49, 'fa fa-facebook', '<i class=\"fa fa-facebook\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(164, 49, 'fa fa-github', '<i class=\"fa fa-github\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(165, 49, 'fa fa-unlock', '<i class=\"fa fa-unlock\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(166, 49, 'fa fa-credit-card', '<i class=\"fa fa-credit-card\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(167, 49, 'fa fa-rss', '<i class=\"fa fa-rss\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(168, 49, 'fa fa-hdd-o', '<i class=\"fa fa-hdd-o\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(169, 49, 'fa fa-bullhorn', '<i class=\"fa fa-bullhorn\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(170, 49, 'fa fa-bell', '<i class=\"fa fa-bell\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(171, 49, 'fa fa-certificate', '<i class=\"fa fa-certificate\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(172, 49, 'fa fa-hand-o-right', '<i class=\"fa fa-hand-o-right\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(173, 49, 'fa fa-hand-o-left', '<i class=\"fa fa-hand-o-left\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(174, 49, 'fa fa-hand-o-up', '<i class=\"fa fa-hand-o-up\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(175, 49, 'fa fa-hand-o-down', '<i class=\"fa fa-hand-o-down\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(176, 49, 'fa fa-arrow-circle-left', '<i class=\"fa fa-arrow-circle-left\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(177, 49, 'fa fa-arrow-circle-right', '<i class=\"fa fa-arrow-circle-right\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(178, 49, 'fa fa-arrow-circle-up', '<i class=\"fa fa-arrow-circle-up\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(179, 49, 'fa fa-arrow-circle-down', '<i class=\"fa fa-arrow-circle-down\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(180, 49, 'fa fa-globe', '<i class=\"fa fa-globe\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(181, 49, 'fa fa-wrench', '<i class=\"fa fa-wrench\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(182, 49, 'fa fa-tasks', '<i class=\"fa fa-tasks\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(183, 49, 'fa fa-filter', '<i class=\"fa fa-filter\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(184, 49, 'fa fa-briefcase', '<i class=\"fa fa-briefcase\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(185, 49, 'fa fa-arrows-alt', '<i class=\"fa fa-arrows-alt\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(186, 49, 'fa fa-users', '<i class=\"fa fa-users\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(187, 49, 'fa fa-link', '<i class=\"fa fa-link\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(188, 49, 'fa fa-cloud', '<i class=\"fa fa-cloud\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(189, 49, 'fa fa-flask', '<i class=\"fa fa-flask\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(190, 49, 'fa fa-scissors', '<i class=\"fa fa-scissors\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(191, 49, 'fa fa-files-o', '<i class=\"fa fa-files-o\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(192, 49, 'fa fa-paperclip', '<i class=\"fa fa-paperclip\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(193, 49, 'fa fa-floppy-o', '<i class=\"fa fa-floppy-o\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(194, 49, 'fa fa-square', '<i class=\"fa fa-square\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(195, 49, 'fa fa-bars', '<i class=\"fa fa-bars\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(196, 49, 'fa fa-list-ul', '<i class=\"fa fa-list-ul\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(197, 49, 'fa fa-list-ol', '<i class=\"fa fa-list-ol\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(198, 49, 'fa fa-strikethrough', '<i class=\"fa fa-strikethrough\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(199, 49, 'fa fa-underline', '<i class=\"fa fa-underline\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(200, 49, 'fa fa-table', '<i class=\"fa fa-table\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(201, 49, 'fa fa-magic', '<i class=\"fa fa-magic\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(202, 49, 'fa fa-truck', '<i class=\"fa fa-truck\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(203, 49, 'fa fa-pinterest', '<i class=\"fa fa-pinterest\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(204, 49, 'fa fa-pinterest-square', '<i class=\"fa fa-pinterest-square\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(205, 49, 'fa fa-google-plus-square', '<i class=\"fa fa-google-plus-square\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(206, 49, 'fa fa-google-plus', '<i class=\"fa fa-google-plus\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(207, 49, 'fa fa-money', '<i class=\"fa fa-money\"></i>', '2022-04-26 04:18:48', '2022-04-26 04:18:48'),
(208, 49, 'fa fa-caret-down', '<i class=\"fa fa-caret-down\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(209, 49, 'fa fa-caret-up', '<i class=\"fa fa-caret-up\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(210, 49, 'fa fa-caret-left', '<i class=\"fa fa-caret-left\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(211, 49, 'fa fa-caret-right', '<i class=\"fa fa-caret-right\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(212, 49, 'fa fa-columns', '<i class=\"fa fa-columns\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(213, 49, 'fa fa-sort', '<i class=\"fa fa-sort\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(214, 49, 'fa fa-sort-desc', '<i class=\"fa fa-sort-desc\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(215, 49, 'fa fa-sort-asc', '<i class=\"fa fa-sort-asc\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(216, 49, 'fa fa-envelope', '<i class=\"fa fa-envelope\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(217, 49, 'fa fa-linkedin', '<i class=\"fa fa-linkedin\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(218, 49, 'fa fa-undo', '<i class=\"fa fa-undo\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(219, 49, 'fa fa-gavel', '<i class=\"fa fa-gavel\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(220, 49, 'fa fa-tachometer', '<i class=\"fa fa-tachometer\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(221, 49, 'fa fa-comment-o', '<i class=\"fa fa-comment-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(222, 49, 'fa fa-comments-o', '<i class=\"fa fa-comments-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(223, 49, 'fa fa-bolt', '<i class=\"fa fa-bolt\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(224, 49, 'fa fa-sitemap', '<i class=\"fa fa-sitemap\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(225, 49, 'fa fa-umbrella', '<i class=\"fa fa-umbrella\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(226, 49, 'fa fa-clipboard', '<i class=\"fa fa-clipboard\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(227, 49, 'fa fa-lightbulb-o', '<i class=\"fa fa-lightbulb-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(228, 49, 'fa fa-exchange', '<i class=\"fa fa-exchange\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(229, 49, 'fa fa-cloud-download', '<i class=\"fa fa-cloud-download\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(230, 49, 'fa fa-cloud-upload', '<i class=\"fa fa-cloud-upload\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(231, 49, 'fa fa-user-md', '<i class=\"fa fa-user-md\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(232, 49, 'fa fa-stethoscope', '<i class=\"fa fa-stethoscope\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(233, 49, 'fa fa-suitcase', '<i class=\"fa fa-suitcase\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(234, 49, 'fa fa-bell-o', '<i class=\"fa fa-bell-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(235, 49, 'fa fa-coffee', '<i class=\"fa fa-coffee\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(236, 49, 'fa fa-cutlery', '<i class=\"fa fa-cutlery\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(237, 49, 'fa fa-file-text-o', '<i class=\"fa fa-file-text-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(238, 49, 'fa fa-building-o', '<i class=\"fa fa-building-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(239, 49, 'fa fa-hospital-o', '<i class=\"fa fa-hospital-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(240, 49, 'fa fa-ambulance', '<i class=\"fa fa-ambulance\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(241, 49, 'fa fa-medkit', '<i class=\"fa fa-medkit\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(242, 49, 'fa fa-fighter-jet', '<i class=\"fa fa-fighter-jet\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(243, 49, 'fa fa-beer', '<i class=\"fa fa-beer\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(244, 49, 'fa fa-h-square', '<i class=\"fa fa-h-square\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(245, 49, 'fa fa-plus-square', '<i class=\"fa fa-plus-square\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(246, 49, 'fa fa-angle-double-left', '<i class=\"fa fa-angle-double-left\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(247, 49, 'fa fa-angle-double-right', '<i class=\"fa fa-angle-double-right\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(248, 49, 'fa fa-angle-double-up', '<i class=\"fa fa-angle-double-up\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(249, 49, 'fa fa-angle-double-down', '<i class=\"fa fa-angle-double-down\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(250, 49, 'fa fa-angle-left', '<i class=\"fa fa-angle-left\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(251, 49, 'fa fa-angle-right', '<i class=\"fa fa-angle-right\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(252, 49, 'fa fa-angle-up', '<i class=\"fa fa-angle-up\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(253, 49, 'fa fa-angle-down', '<i class=\"fa fa-angle-down\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(254, 49, 'fa fa-desktop', '<i class=\"fa fa-desktop\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(255, 49, 'fa fa-laptop', '<i class=\"fa fa-laptop\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(256, 49, 'fa fa-tablet', '<i class=\"fa fa-tablet\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(257, 49, 'fa fa-mobile', '<i class=\"fa fa-mobile\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(258, 49, 'fa fa-circle-o', '<i class=\"fa fa-circle-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(259, 49, 'fa fa-quote-left', '<i class=\"fa fa-quote-left\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(260, 49, 'fa fa-quote-right', '<i class=\"fa fa-quote-right\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(261, 49, 'fa fa-spinner', '<i class=\"fa fa-spinner\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(262, 49, 'fa fa-circle', '<i class=\"fa fa-circle\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(263, 49, 'fa fa-reply', '<i class=\"fa fa-reply\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(264, 49, 'fa fa-github-alt', '<i class=\"fa fa-github-alt\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(265, 49, 'fa fa-folder-o', '<i class=\"fa fa-folder-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(266, 49, 'fa fa-folder-open-o', '<i class=\"fa fa-folder-open-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(267, 49, 'fa fa-smile-o', '<i class=\"fa fa-smile-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(268, 49, 'fa fa-frown-o', '<i class=\"fa fa-frown-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(269, 49, 'fa fa-meh-o', '<i class=\"fa fa-meh-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(270, 49, 'fa fa-gamepad', '<i class=\"fa fa-gamepad\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(271, 49, 'fa fa-keyboard-o', '<i class=\"fa fa-keyboard-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(272, 49, 'fa fa-flag-o', '<i class=\"fa fa-flag-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(273, 49, 'fa fa-flag-checkered', '<i class=\"fa fa-flag-checkered\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(274, 49, 'fa fa-terminal', '<i class=\"fa fa-terminal\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(275, 49, 'fa fa-code', '<i class=\"fa fa-code\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(276, 49, 'fa fa-reply-all', '<i class=\"fa fa-reply-all\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(277, 49, 'fa fa-star-half-o', '<i class=\"fa fa-star-half-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(278, 49, 'fa fa-location-arrow', '<i class=\"fa fa-location-arrow\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(279, 49, 'fa fa-crop', '<i class=\"fa fa-crop\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(280, 49, 'fa fa-code-fork', '<i class=\"fa fa-code-fork\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(281, 49, 'fa fa-chain-broken', '<i class=\"fa fa-chain-broken\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(282, 49, 'fa fa-question', '<i class=\"fa fa-question\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(283, 49, 'fa fa-info', '<i class=\"fa fa-info\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(284, 49, 'fa fa-exclamation', '<i class=\"fa fa-exclamation\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(285, 49, 'fa fa-superscript', '<i class=\"fa fa-superscript\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(286, 49, 'fa fa-subscript', '<i class=\"fa fa-subscript\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(287, 49, 'fa fa-eraser', '<i class=\"fa fa-eraser\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(288, 49, 'fa fa-puzzle-piece', '<i class=\"fa fa-puzzle-piece\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(289, 49, 'fa fa-microphone', '<i class=\"fa fa-microphone\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(290, 49, 'fa fa-microphone-slash', '<i class=\"fa fa-microphone-slash\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(291, 49, 'fa fa-shield', '<i class=\"fa fa-shield\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(292, 49, 'fa fa-calendar-o', '<i class=\"fa fa-calendar-o\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(293, 49, 'fa fa-fire-extinguisher', '<i class=\"fa fa-fire-extinguisher\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(294, 49, 'fa fa-rocket', '<i class=\"fa fa-rocket\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(295, 49, 'fa fa-maxcdn', '<i class=\"fa fa-maxcdn\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(296, 49, 'fa fa-chevron-circle-left', '<i class=\"fa fa-chevron-circle-left\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(297, 49, 'fa fa-chevron-circle-right', '<i class=\"fa fa-chevron-circle-right\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(298, 49, 'fa fa-chevron-circle-up', '<i class=\"fa fa-chevron-circle-up\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(299, 49, 'fa fa-chevron-circle-down', '<i class=\"fa fa-chevron-circle-down\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(300, 49, 'fa fa-html5', '<i class=\"fa fa-html5\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(301, 49, 'fa fa-css3', '<i class=\"fa fa-css3\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(302, 49, 'fa fa-anchor', '<i class=\"fa fa-anchor\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(303, 49, 'fa fa-unlock-alt', '<i class=\"fa fa-unlock-alt\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(304, 49, 'fa fa-bullseye', '<i class=\"fa fa-bullseye\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(305, 49, 'fa fa-ellipsis-h', '<i class=\"fa fa-ellipsis-h\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(306, 49, 'fa fa-ellipsis-v', '<i class=\"fa fa-ellipsis-v\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(307, 49, 'fa fa-rss-square', '<i class=\"fa fa-rss-square\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(308, 49, 'fa fa-play-circle', '<i class=\"fa fa-play-circle\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(309, 49, 'fa fa-ticket', '<i class=\"fa fa-ticket\"></i>', '2022-04-26 04:18:49', '2022-04-26 04:18:49'),
(310, 49, 'fa fa-minus-square', '<i class=\"fa fa-minus-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(311, 49, 'fa fa-minus-square-o', '<i class=\"fa fa-minus-square-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(312, 49, 'fa fa-level-up', '<i class=\"fa fa-level-up\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(313, 49, 'fa fa-level-down', '<i class=\"fa fa-level-down\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(314, 49, 'fa fa-check-square', '<i class=\"fa fa-check-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(315, 49, 'fa fa-pencil-square', '<i class=\"fa fa-pencil-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(316, 49, 'fa fa-external-link-square', '<i class=\"fa fa-external-link-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(317, 49, 'fa fa-share-square', '<i class=\"fa fa-share-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(318, 49, 'fa fa-compass', '<i class=\"fa fa-compass\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(319, 49, 'fa fa-caret-square-o-down', '<i class=\"fa fa-caret-square-o-down\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(320, 49, 'fa fa-caret-square-o-up', '<i class=\"fa fa-caret-square-o-up\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(321, 49, 'fa fa-caret-square-o-right', '<i class=\"fa fa-caret-square-o-right\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(322, 49, 'fa fa-eur', '<i class=\"fa fa-eur\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(323, 49, 'fa fa-gbp', '<i class=\"fa fa-gbp\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(324, 49, 'fa fa-usd', '<i class=\"fa fa-usd\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(325, 49, 'fa fa-inr', '<i class=\"fa fa-inr\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(326, 49, 'fa fa-jpy', '<i class=\"fa fa-jpy\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(327, 49, 'fa fa-rub', '<i class=\"fa fa-rub\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(328, 49, 'fa fa-krw', '<i class=\"fa fa-krw\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(329, 49, 'fa fa-btc', '<i class=\"fa fa-btc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(330, 49, 'fa fa-file', '<i class=\"fa fa-file\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(331, 49, 'fa fa-file-text', '<i class=\"fa fa-file-text\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(332, 49, 'fa fa-sort-alpha-asc', '<i class=\"fa fa-sort-alpha-asc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(333, 49, 'fa fa-sort-alpha-desc', '<i class=\"fa fa-sort-alpha-desc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(334, 49, 'fa fa-sort-amount-asc', '<i class=\"fa fa-sort-amount-asc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(335, 49, 'fa fa-sort-amount-desc', '<i class=\"fa fa-sort-amount-desc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(336, 49, 'fa fa-sort-numeric-asc', '<i class=\"fa fa-sort-numeric-asc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(337, 49, 'fa fa-sort-numeric-desc', '<i class=\"fa fa-sort-numeric-desc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(338, 49, 'fa fa-thumbs-up', '<i class=\"fa fa-thumbs-up\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(339, 49, 'fa fa-thumbs-down', '<i class=\"fa fa-thumbs-down\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(340, 49, 'fa fa-youtube-square', '<i class=\"fa fa-youtube-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(341, 49, 'fa fa-youtube', '<i class=\"fa fa-youtube\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(342, 49, 'fa fa-xing', '<i class=\"fa fa-xing\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(343, 49, 'fa fa-xing-square', '<i class=\"fa fa-xing-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(344, 49, 'fa fa-youtube-play', '<i class=\"fa fa-youtube-play\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(345, 49, 'fa fa-dropbox', '<i class=\"fa fa-dropbox\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(346, 49, 'fa fa-stack-overflow', '<i class=\"fa fa-stack-overflow\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(347, 49, 'fa fa-instagram', '<i class=\"fa fa-instagram\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(348, 49, 'fa fa-flickr', '<i class=\"fa fa-flickr\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(349, 49, 'fa fa-adn', '<i class=\"fa fa-adn\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(350, 49, 'fa fa-bitbucket', '<i class=\"fa fa-bitbucket\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(351, 49, 'fa fa-bitbucket-square', '<i class=\"fa fa-bitbucket-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(352, 49, 'fa fa-tumblr', '<i class=\"fa fa-tumblr\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(353, 49, 'fa fa-tumblr-square', '<i class=\"fa fa-tumblr-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(354, 49, 'fa fa-long-arrow-down', '<i class=\"fa fa-long-arrow-down\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(355, 49, 'fa fa-long-arrow-up', '<i class=\"fa fa-long-arrow-up\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(356, 49, 'fa fa-long-arrow-left', '<i class=\"fa fa-long-arrow-left\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(357, 49, 'fa fa-long-arrow-right', '<i class=\"fa fa-long-arrow-right\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(358, 49, 'fa fa-apple', '<i class=\"fa fa-apple\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(359, 49, 'fa fa-windows', '<i class=\"fa fa-windows\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(360, 49, 'fa fa-android', '<i class=\"fa fa-android\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(361, 49, 'fa fa-linux', '<i class=\"fa fa-linux\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(362, 49, 'fa fa-dribbble', '<i class=\"fa fa-dribbble\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(363, 49, 'fa fa-skype', '<i class=\"fa fa-skype\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(364, 49, 'fa fa-foursquare', '<i class=\"fa fa-foursquare\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(365, 49, 'fa fa-trello', '<i class=\"fa fa-trello\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(366, 49, 'fa fa-female', '<i class=\"fa fa-female\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(367, 49, 'fa fa-male', '<i class=\"fa fa-male\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(368, 49, 'fa fa-gratipay', '<i class=\"fa fa-gratipay\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(369, 49, 'fa fa-sun-o', '<i class=\"fa fa-sun-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(370, 49, 'fa fa-moon-o', '<i class=\"fa fa-moon-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(371, 49, 'fa fa-archive', '<i class=\"fa fa-archive\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(372, 49, 'fa fa-bug', '<i class=\"fa fa-bug\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(373, 49, 'fa fa-vk', '<i class=\"fa fa-vk\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(374, 49, 'fa fa-weibo', '<i class=\"fa fa-weibo\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(375, 49, 'fa fa-renren', '<i class=\"fa fa-renren\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(376, 49, 'fa fa-pagelines', '<i class=\"fa fa-pagelines\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(377, 49, 'fa fa-stack-exchange', '<i class=\"fa fa-stack-exchange\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(378, 49, 'fa fa-arrow-circle-o-right', '<i class=\"fa fa-arrow-circle-o-right\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(379, 49, 'fa fa-arrow-circle-o-left', '<i class=\"fa fa-arrow-circle-o-left\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(380, 49, 'fa fa-caret-square-o-left', '<i class=\"fa fa-caret-square-o-left\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(381, 49, 'fa fa-dot-circle-o', '<i class=\"fa fa-dot-circle-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(382, 49, 'fa fa-wheelchair', '<i class=\"fa fa-wheelchair\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(383, 49, 'fa fa-vimeo-square', '<i class=\"fa fa-vimeo-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(384, 49, 'fa fa-try', '<i class=\"fa fa-try\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(385, 49, 'fa fa-plus-square-o', '<i class=\"fa fa-plus-square-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(386, 49, 'fa fa-space-shuttle', '<i class=\"fa fa-space-shuttle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(387, 49, 'fa fa-slack', '<i class=\"fa fa-slack\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(388, 49, 'fa fa-envelope-square', '<i class=\"fa fa-envelope-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(389, 49, 'fa fa-wordpress', '<i class=\"fa fa-wordpress\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(390, 49, 'fa fa-openid', '<i class=\"fa fa-openid\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(391, 49, 'fa fa-university', '<i class=\"fa fa-university\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(392, 49, 'fa fa-graduation-cap', '<i class=\"fa fa-graduation-cap\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(393, 49, 'fa fa-yahoo', '<i class=\"fa fa-yahoo\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(394, 49, 'fa fa-google', '<i class=\"fa fa-google\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(395, 49, 'fa fa-reddit', '<i class=\"fa fa-reddit\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(396, 49, 'fa fa-reddit-square', '<i class=\"fa fa-reddit-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(397, 49, 'fa fa-stumbleupon-circle', '<i class=\"fa fa-stumbleupon-circle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(398, 49, 'fa fa-stumbleupon', '<i class=\"fa fa-stumbleupon\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(399, 49, 'fa fa-delicious', '<i class=\"fa fa-delicious\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(400, 49, 'fa fa-digg', '<i class=\"fa fa-digg\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(401, 49, 'fa fa-pied-piper', '<i class=\"fa fa-pied-piper\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(402, 49, 'fa fa-pied-piper-alt', '<i class=\"fa fa-pied-piper-alt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(403, 49, 'fa fa-drupal', '<i class=\"fa fa-drupal\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(404, 49, 'fa fa-joomla', '<i class=\"fa fa-joomla\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(405, 49, 'fa fa-language', '<i class=\"fa fa-language\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(406, 49, 'fa fa-fax', '<i class=\"fa fa-fax\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(407, 49, 'fa fa-building', '<i class=\"fa fa-building\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(408, 49, 'fa fa-child', '<i class=\"fa fa-child\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(409, 49, 'fa fa-paw', '<i class=\"fa fa-paw\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(410, 49, 'fa fa-spoon', '<i class=\"fa fa-spoon\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(411, 49, 'fa fa-cube', '<i class=\"fa fa-cube\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(412, 49, 'fa fa-cubes', '<i class=\"fa fa-cubes\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(413, 49, 'fa fa-behance', '<i class=\"fa fa-behance\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(414, 49, 'fa fa-behance-square', '<i class=\"fa fa-behance-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(415, 49, 'fa fa-steam', '<i class=\"fa fa-steam\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(416, 49, 'fa fa-steam-square', '<i class=\"fa fa-steam-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(417, 49, 'fa fa-recycle', '<i class=\"fa fa-recycle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(418, 49, 'fa fa-car', '<i class=\"fa fa-car\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(419, 49, 'fa fa-taxi', '<i class=\"fa fa-taxi\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(420, 49, 'fa fa-tree', '<i class=\"fa fa-tree\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(421, 49, 'fa fa-spotify', '<i class=\"fa fa-spotify\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(422, 49, 'fa fa-deviantart', '<i class=\"fa fa-deviantart\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(423, 49, 'fa fa-soundcloud', '<i class=\"fa fa-soundcloud\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(424, 49, 'fa fa-database', '<i class=\"fa fa-database\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(425, 49, 'fa fa-file-pdf-o', '<i class=\"fa fa-file-pdf-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(426, 49, 'fa fa-file-word-o', '<i class=\"fa fa-file-word-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(427, 49, 'fa fa-file-excel-o', '<i class=\"fa fa-file-excel-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(428, 49, 'fa fa-file-powerpoint-o', '<i class=\"fa fa-file-powerpoint-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(429, 49, 'fa fa-file-image-o', '<i class=\"fa fa-file-image-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(430, 49, 'fa fa-file-archive-o', '<i class=\"fa fa-file-archive-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(431, 49, 'fa fa-file-audio-o', '<i class=\"fa fa-file-audio-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(432, 49, 'fa fa-file-video-o', '<i class=\"fa fa-file-video-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(433, 49, 'fa fa-file-code-o', '<i class=\"fa fa-file-code-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(434, 49, 'fa fa-vine', '<i class=\"fa fa-vine\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(435, 49, 'fa fa-codepen', '<i class=\"fa fa-codepen\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(436, 49, 'fa fa-jsfiddle', '<i class=\"fa fa-jsfiddle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(437, 49, 'fa fa-life-ring', '<i class=\"fa fa-life-ring\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(438, 49, 'fa fa-circle-o-notch', '<i class=\"fa fa-circle-o-notch\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(439, 49, 'fa fa-rebel', '<i class=\"fa fa-rebel\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(440, 49, 'fa fa-empire', '<i class=\"fa fa-empire\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(441, 49, 'fa fa-git-square', '<i class=\"fa fa-git-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(442, 49, 'fa fa-git', '<i class=\"fa fa-git\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(443, 49, 'fa fa-hacker-news', '<i class=\"fa fa-hacker-news\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(444, 49, 'fa fa-tencent-weibo', '<i class=\"fa fa-tencent-weibo\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(445, 49, 'fa fa-qq', '<i class=\"fa fa-qq\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(446, 49, 'fa fa-weixin', '<i class=\"fa fa-weixin\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(447, 49, 'fa fa-paper-plane', '<i class=\"fa fa-paper-plane\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(448, 49, 'fa fa-paper-plane-o', '<i class=\"fa fa-paper-plane-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(449, 49, 'fa fa-history', '<i class=\"fa fa-history\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(450, 49, 'fa fa-circle-thin', '<i class=\"fa fa-circle-thin\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(451, 49, 'fa fa-header', '<i class=\"fa fa-header\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(452, 49, 'fa fa-paragraph', '<i class=\"fa fa-paragraph\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(453, 49, 'fa fa-sliders', '<i class=\"fa fa-sliders\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(454, 49, 'fa fa-share-alt', '<i class=\"fa fa-share-alt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(455, 49, 'fa fa-share-alt-square', '<i class=\"fa fa-share-alt-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(456, 49, 'fa fa-bomb', '<i class=\"fa fa-bomb\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50');
INSERT INTO `cc_block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(457, 49, 'fa fa-futbol-o', '<i class=\"fa fa-futbol-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(458, 49, 'fa fa-tty', '<i class=\"fa fa-tty\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(459, 49, 'fa fa-binoculars', '<i class=\"fa fa-binoculars\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(460, 49, 'fa fa-plug', '<i class=\"fa fa-plug\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(461, 49, 'fa fa-slideshare', '<i class=\"fa fa-slideshare\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(462, 49, 'fa fa-twitch', '<i class=\"fa fa-twitch\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(463, 49, 'fa fa-yelp', '<i class=\"fa fa-yelp\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(464, 49, 'fa fa-newspaper-o', '<i class=\"fa fa-newspaper-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(465, 49, 'fa fa-wifi', '<i class=\"fa fa-wifi\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(466, 49, 'fa fa-calculator', '<i class=\"fa fa-calculator\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(467, 49, 'fa fa-paypal', '<i class=\"fa fa-paypal\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(468, 49, 'fa fa-google-wallet', '<i class=\"fa fa-google-wallet\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(469, 49, 'fa fa-cc-visa', '<i class=\"fa fa-cc-visa\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(470, 49, 'fa fa-cc-mastercard', '<i class=\"fa fa-cc-mastercard\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(471, 49, 'fa fa-cc-discover', '<i class=\"fa fa-cc-discover\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(472, 49, 'fa fa-cc-amex', '<i class=\"fa fa-cc-amex\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(473, 49, 'fa fa-cc-paypal', '<i class=\"fa fa-cc-paypal\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(474, 49, 'fa fa-cc-stripe', '<i class=\"fa fa-cc-stripe\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(475, 49, 'fa fa-bell-slash', '<i class=\"fa fa-bell-slash\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(476, 49, 'fa fa-bell-slash-o', '<i class=\"fa fa-bell-slash-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(477, 49, 'fa fa-trash', '<i class=\"fa fa-trash\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(478, 49, 'fa fa-copyright', '<i class=\"fa fa-copyright\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(479, 49, 'fa fa-at', '<i class=\"fa fa-at\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(480, 49, 'fa fa-eyedropper', '<i class=\"fa fa-eyedropper\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(481, 49, 'fa fa-paint-brush', '<i class=\"fa fa-paint-brush\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(482, 49, 'fa fa-birthday-cake', '<i class=\"fa fa-birthday-cake\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(483, 49, 'fa fa-area-chart', '<i class=\"fa fa-area-chart\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(484, 49, 'fa fa-pie-chart', '<i class=\"fa fa-pie-chart\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(485, 49, 'fa fa-line-chart', '<i class=\"fa fa-line-chart\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(486, 49, 'fa fa-lastfm', '<i class=\"fa fa-lastfm\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(487, 49, 'fa fa-lastfm-square', '<i class=\"fa fa-lastfm-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(488, 49, 'fa fa-toggle-off', '<i class=\"fa fa-toggle-off\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(489, 49, 'fa fa-toggle-on', '<i class=\"fa fa-toggle-on\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(490, 49, 'fa fa-bicycle', '<i class=\"fa fa-bicycle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(491, 49, 'fa fa-bus', '<i class=\"fa fa-bus\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(492, 49, 'fa fa-ioxhost', '<i class=\"fa fa-ioxhost\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(493, 49, 'fa fa-angellist', '<i class=\"fa fa-angellist\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(494, 49, 'fa fa-cc', '<i class=\"fa fa-cc\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(495, 49, 'fa fa-ils', '<i class=\"fa fa-ils\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(496, 49, 'fa fa-meanpath', '<i class=\"fa fa-meanpath\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(497, 49, 'fa fa-buysellads', '<i class=\"fa fa-buysellads\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(498, 49, 'fa fa-connectdevelop', '<i class=\"fa fa-connectdevelop\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(499, 49, 'fa fa-dashcube', '<i class=\"fa fa-dashcube\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(500, 49, 'fa fa-forumbee', '<i class=\"fa fa-forumbee\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(501, 49, 'fa fa-leanpub', '<i class=\"fa fa-leanpub\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(502, 49, 'fa fa-sellsy', '<i class=\"fa fa-sellsy\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(503, 49, 'fa fa-shirtsinbulk', '<i class=\"fa fa-shirtsinbulk\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(504, 49, 'fa fa-simplybuilt', '<i class=\"fa fa-simplybuilt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(505, 49, 'fa fa-skyatlas', '<i class=\"fa fa-skyatlas\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(506, 49, 'fa fa-cart-plus', '<i class=\"fa fa-cart-plus\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(507, 49, 'fa fa-cart-arrow-down', '<i class=\"fa fa-cart-arrow-down\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(508, 49, 'fa fa-diamond', '<i class=\"fa fa-diamond\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(509, 49, 'fa fa-ship', '<i class=\"fa fa-ship\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(510, 49, 'fa fa-user-secret', '<i class=\"fa fa-user-secret\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(511, 49, 'fa fa-motorcycle', '<i class=\"fa fa-motorcycle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(512, 49, 'fa fa-street-view', '<i class=\"fa fa-street-view\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(513, 49, 'fa fa-heartbeat', '<i class=\"fa fa-heartbeat\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(514, 49, 'fa fa-venus', '<i class=\"fa fa-venus\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(515, 49, 'fa fa-mars', '<i class=\"fa fa-mars\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(516, 49, 'fa fa-mercury', '<i class=\"fa fa-mercury\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(517, 49, 'fa fa-transgender', '<i class=\"fa fa-transgender\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(518, 49, 'fa fa-transgender-alt', '<i class=\"fa fa-transgender-alt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(519, 49, 'fa fa-venus-double', '<i class=\"fa fa-venus-double\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(520, 49, 'fa fa-mars-double', '<i class=\"fa fa-mars-double\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(521, 49, 'fa fa-venus-mars', '<i class=\"fa fa-venus-mars\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(522, 49, 'fa fa-mars-stroke', '<i class=\"fa fa-mars-stroke\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(523, 49, 'fa fa-mars-stroke-v', '<i class=\"fa fa-mars-stroke-v\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(524, 49, 'fa fa-mars-stroke-h', '<i class=\"fa fa-mars-stroke-h\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(525, 49, 'fa fa-neuter', '<i class=\"fa fa-neuter\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(526, 49, 'fa fa-genderless', '<i class=\"fa fa-genderless\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(527, 49, 'fa fa-facebook-official', '<i class=\"fa fa-facebook-official\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(528, 49, 'fa fa-pinterest-p', '<i class=\"fa fa-pinterest-p\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(529, 49, 'fa fa-whatsapp', '<i class=\"fa fa-whatsapp\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(530, 49, 'fa fa-server', '<i class=\"fa fa-server\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(531, 49, 'fa fa-user-plus', '<i class=\"fa fa-user-plus\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(532, 49, 'fa fa-user-times', '<i class=\"fa fa-user-times\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(533, 49, 'fa fa-bed', '<i class=\"fa fa-bed\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(534, 49, 'fa fa-viacoin', '<i class=\"fa fa-viacoin\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(535, 49, 'fa fa-train', '<i class=\"fa fa-train\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(536, 49, 'fa fa-subway', '<i class=\"fa fa-subway\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(537, 49, 'fa fa-medium', '<i class=\"fa fa-medium\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(538, 49, 'fa fa-y-combinator', '<i class=\"fa fa-y-combinator\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(539, 49, 'fa fa-optin-monster', '<i class=\"fa fa-optin-monster\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(540, 49, 'fa fa-opencart', '<i class=\"fa fa-opencart\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(541, 49, 'fa fa-expeditedssl', '<i class=\"fa fa-expeditedssl\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(542, 49, 'fa fa-battery-full', '<i class=\"fa fa-battery-full\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(543, 49, 'fa fa-battery-three-quarters', '<i class=\"fa fa-battery-three-quarters\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(544, 49, 'fa fa-battery-half', '<i class=\"fa fa-battery-half\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(545, 49, 'fa fa-battery-quarter', '<i class=\"fa fa-battery-quarter\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(546, 49, 'fa fa-battery-empty', '<i class=\"fa fa-battery-empty\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(547, 49, 'fa fa-mouse-pointer', '<i class=\"fa fa-mouse-pointer\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(548, 49, 'fa fa-i-cursor', '<i class=\"fa fa-i-cursor\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(549, 49, 'fa fa-object-group', '<i class=\"fa fa-object-group\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(550, 49, 'fa fa-object-ungroup', '<i class=\"fa fa-object-ungroup\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(551, 49, 'fa fa-sticky-note', '<i class=\"fa fa-sticky-note\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(552, 49, 'fa fa-sticky-note-o', '<i class=\"fa fa-sticky-note-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(553, 49, 'fa fa-cc-jcb', '<i class=\"fa fa-cc-jcb\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(554, 49, 'fa fa-cc-diners-club', '<i class=\"fa fa-cc-diners-club\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(555, 49, 'fa fa-clone', '<i class=\"fa fa-clone\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(556, 49, 'fa fa-balance-scale', '<i class=\"fa fa-balance-scale\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(557, 49, 'fa fa-hourglass-o', '<i class=\"fa fa-hourglass-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(558, 49, 'fa fa-hourglass-start', '<i class=\"fa fa-hourglass-start\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(559, 49, 'fa fa-hourglass-half', '<i class=\"fa fa-hourglass-half\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(560, 49, 'fa fa-hourglass-end', '<i class=\"fa fa-hourglass-end\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(561, 49, 'fa fa-hourglass', '<i class=\"fa fa-hourglass\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(562, 49, 'fa fa-hand-rock-o', '<i class=\"fa fa-hand-rock-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(563, 49, 'fa fa-hand-paper-o', '<i class=\"fa fa-hand-paper-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(564, 49, 'fa fa-hand-scissors-o', '<i class=\"fa fa-hand-scissors-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(565, 49, 'fa fa-hand-lizard-o', '<i class=\"fa fa-hand-lizard-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(566, 49, 'fa fa-hand-spock-o', '<i class=\"fa fa-hand-spock-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(567, 49, 'fa fa-hand-pointer-o', '<i class=\"fa fa-hand-pointer-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(568, 49, 'fa fa-hand-peace-o', '<i class=\"fa fa-hand-peace-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(569, 49, 'fa fa-trademark', '<i class=\"fa fa-trademark\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(570, 49, 'fa fa-registered', '<i class=\"fa fa-registered\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(571, 49, 'fa fa-creative-commons', '<i class=\"fa fa-creative-commons\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(572, 49, 'fa fa-gg', '<i class=\"fa fa-gg\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(573, 49, 'fa fa-gg-circle', '<i class=\"fa fa-gg-circle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(574, 49, 'fa fa-tripadvisor', '<i class=\"fa fa-tripadvisor\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(575, 49, 'fa fa-odnoklassniki', '<i class=\"fa fa-odnoklassniki\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(576, 49, 'fa fa-odnoklassniki-square', '<i class=\"fa fa-odnoklassniki-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(577, 49, 'fa fa-get-pocket', '<i class=\"fa fa-get-pocket\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(578, 49, 'fa fa-wikipedia-w', '<i class=\"fa fa-wikipedia-w\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(579, 49, 'fa fa-safari', '<i class=\"fa fa-safari\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(580, 49, 'fa fa-chrome', '<i class=\"fa fa-chrome\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(581, 49, 'fa fa-firefox', '<i class=\"fa fa-firefox\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(582, 49, 'fa fa-opera', '<i class=\"fa fa-opera\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(583, 49, 'fa fa-internet-explorer', '<i class=\"fa fa-internet-explorer\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(584, 49, 'fa fa-television', '<i class=\"fa fa-television\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(585, 49, 'fa fa-contao', '<i class=\"fa fa-contao\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(586, 49, 'fa fa-500px', '<i class=\"fa fa-500px\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(587, 49, 'fa fa-amazon', '<i class=\"fa fa-amazon\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(588, 49, 'fa fa-calendar-plus-o', '<i class=\"fa fa-calendar-plus-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(589, 49, 'fa fa-calendar-minus-o', '<i class=\"fa fa-calendar-minus-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(590, 49, 'fa fa-calendar-times-o', '<i class=\"fa fa-calendar-times-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(591, 49, 'fa fa-calendar-check-o', '<i class=\"fa fa-calendar-check-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(592, 49, 'fa fa-industry', '<i class=\"fa fa-industry\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(593, 49, 'fa fa-map-pin', '<i class=\"fa fa-map-pin\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(594, 49, 'fa fa-map-signs', '<i class=\"fa fa-map-signs\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(595, 49, 'fa fa-map-o', '<i class=\"fa fa-map-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(596, 49, 'fa fa-map', '<i class=\"fa fa-map\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(597, 49, 'fa fa-commenting', '<i class=\"fa fa-commenting\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(598, 49, 'fa fa-commenting-o', '<i class=\"fa fa-commenting-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(599, 49, 'fa fa-houzz', '<i class=\"fa fa-houzz\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(600, 49, 'fa fa-vimeo', '<i class=\"fa fa-vimeo\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(601, 49, 'fa fa-black-tie', '<i class=\"fa fa-black-tie\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(602, 49, 'fa fa-fonticons', '<i class=\"fa fa-fonticons\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(603, 49, 'fa fa-reddit-alien', '<i class=\"fa fa-reddit-alien\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(604, 49, 'fa fa-edge', '<i class=\"fa fa-edge\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(605, 49, 'fa fa-credit-card-alt', '<i class=\"fa fa-credit-card-alt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(606, 49, 'fa fa-codiepie', '<i class=\"fa fa-codiepie\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(607, 49, 'fa fa-modx', '<i class=\"fa fa-modx\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(608, 49, 'fa fa-fort-awesome', '<i class=\"fa fa-fort-awesome\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(609, 49, 'fa fa-usb', '<i class=\"fa fa-usb\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(610, 49, 'fa fa-product-hunt', '<i class=\"fa fa-product-hunt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(611, 49, 'fa fa-mixcloud', '<i class=\"fa fa-mixcloud\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(612, 49, 'fa fa-scribd', '<i class=\"fa fa-scribd\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(613, 49, 'fa fa-pause-circle', '<i class=\"fa fa-pause-circle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(614, 49, 'fa fa-pause-circle-o', '<i class=\"fa fa-pause-circle-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(615, 49, 'fa fa-stop-circle', '<i class=\"fa fa-stop-circle\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(616, 49, 'fa fa-stop-circle-o', '<i class=\"fa fa-stop-circle-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(617, 49, 'fa fa-shopping-bag', '<i class=\"fa fa-shopping-bag\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(618, 49, 'fa fa-shopping-basket', '<i class=\"fa fa-shopping-basket\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(619, 49, 'fa fa-hashtag', '<i class=\"fa fa-hashtag\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(620, 49, 'fa fa-bluetooth', '<i class=\"fa fa-bluetooth\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(621, 49, 'fa fa-bluetooth-b', '<i class=\"fa fa-bluetooth-b\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(622, 49, 'fa fa-percent', '<i class=\"fa fa-percent\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(623, 49, 'fa fa-gitlab', '<i class=\"fa fa-gitlab\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(624, 49, 'fa fa-wpbeginner', '<i class=\"fa fa-wpbeginner\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(625, 49, 'fa fa-wpforms', '<i class=\"fa fa-wpforms\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(626, 49, 'fa fa-envira', '<i class=\"fa fa-envira\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(627, 49, 'fa fa-universal-access', '<i class=\"fa fa-universal-access\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(628, 49, 'fa fa-wheelchair-alt', '<i class=\"fa fa-wheelchair-alt\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(629, 49, 'fa fa-question-circle-o', '<i class=\"fa fa-question-circle-o\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(630, 49, 'fa fa-blind', '<i class=\"fa fa-blind\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(631, 49, 'fa fa-audio-description', '<i class=\"fa fa-audio-description\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(632, 49, 'fa fa-volume-control-phone', '<i class=\"fa fa-volume-control-phone\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(633, 49, 'fa fa-braille', '<i class=\"fa fa-braille\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(634, 49, 'fa fa-assistive-listening-systems', '<i class=\"fa fa-assistive-listening-systems\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(635, 49, 'fa fa-american-sign-language-interpreting', '<i class=\"fa fa-american-sign-language-interpreting\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(636, 49, 'fa fa-deaf', '<i class=\"fa fa-deaf\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(637, 49, 'fa fa-glide', '<i class=\"fa fa-glide\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(638, 49, 'fa fa-glide-g', '<i class=\"fa fa-glide-g\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(639, 49, 'fa fa-sign-language', '<i class=\"fa fa-sign-language\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(640, 49, 'fa fa-low-vision', '<i class=\"fa fa-low-vision\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(641, 49, 'fa fa-viadeo', '<i class=\"fa fa-viadeo\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(642, 49, 'fa fa-viadeo-square', '<i class=\"fa fa-viadeo-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(643, 49, 'fa fa-snapchat', '<i class=\"fa fa-snapchat\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(644, 49, 'fa fa-snapchat-ghost', '<i class=\"fa fa-snapchat-ghost\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(645, 49, 'fa fa-snapchat-square', '<i class=\"fa fa-snapchat-square\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(646, 55, 'fa fa-signal', '<i class=\"fa fa-signal fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(647, 55, 'fa fa-glass', '<i class=\"fa fa-glass fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(648, 55, 'fa fa-music', '<i class=\"fa fa-music fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(649, 55, 'fa fa-search', '<i class=\"fa fa-search fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(650, 55, 'fa fa-envelope-o', '<i class=\"fa fa-envelope-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(651, 55, 'fa fa-heart', '<i class=\"fa fa-heart fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(652, 55, 'fa fa-star', '<i class=\"fa fa-star fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(653, 55, 'fa fa-star-o', '<i class=\"fa fa-star-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(654, 55, 'fa fa-user', '<i class=\"fa fa-user fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(655, 55, 'fa fa-film', '<i class=\"fa fa-film fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(656, 55, 'fa fa-th-large', '<i class=\"fa fa-th-large fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(657, 55, 'fa fa-th', '<i class=\"fa fa-th fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(658, 55, 'fa fa-th-list', '<i class=\"fa fa-th-list fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(659, 55, 'fa fa-check', '<i class=\"fa fa-check fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(660, 55, 'fa fa-times', '<i class=\"fa fa-times fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(661, 55, 'fa fa-search-plus', '<i class=\"fa fa-search-plus fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(662, 55, 'fa fa-search-minus', '<i class=\"fa fa-search-minus fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(663, 55, 'fa fa-power-off', '<i class=\"fa fa-power-off fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(664, 55, 'fa fa-cog', '<i class=\"fa fa-cog fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(665, 55, 'fa fa-trash-o', '<i class=\"fa fa-trash-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(666, 55, 'fa fa-home', '<i class=\"fa fa-home fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(667, 55, 'fa fa-file-o', '<i class=\"fa fa-file-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(668, 55, 'fa fa-clock-o', '<i class=\"fa fa-clock-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(669, 55, 'fa fa-road', '<i class=\"fa fa-road fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(670, 55, 'fa fa-download', '<i class=\"fa fa-download fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(671, 55, 'fa fa-arrow-circle-o-down', '<i class=\"fa fa-arrow-circle-o-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(672, 55, 'fa fa-arrow-circle-o-up', '<i class=\"fa fa-arrow-circle-o-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(673, 55, 'fa fa-inbox', '<i class=\"fa fa-inbox fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(674, 55, 'fa fa-play-circle-o', '<i class=\"fa fa-play-circle-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(675, 55, 'fa fa-repeat', '<i class=\"fa fa-repeat fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(676, 55, 'fa fa-refresh', '<i class=\"fa fa-refresh fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(677, 55, 'fa fa-list-alt', '<i class=\"fa fa-list-alt fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(678, 55, 'fa fa-lock', '<i class=\"fa fa-lock fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(679, 55, 'fa fa-flag', '<i class=\"fa fa-flag fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(680, 55, 'fa fa-headphones', '<i class=\"fa fa-headphones fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(681, 55, 'fa fa-volume-off', '<i class=\"fa fa-volume-off fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(682, 55, 'fa fa-volume-down', '<i class=\"fa fa-volume-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(683, 55, 'fa fa-volume-up', '<i class=\"fa fa-volume-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(684, 55, 'fa fa-qrcode', '<i class=\"fa fa-qrcode fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(685, 55, 'fa fa-barcode', '<i class=\"fa fa-barcode fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(686, 55, 'fa fa-tag', '<i class=\"fa fa-tag fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(687, 55, 'fa fa-tags', '<i class=\"fa fa-tags fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(688, 55, 'fa fa-book', '<i class=\"fa fa-book fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(689, 55, 'fa fa-bookmark', '<i class=\"fa fa-bookmark fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(690, 55, 'fa fa-print', '<i class=\"fa fa-print fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(691, 55, 'fa fa-camera', '<i class=\"fa fa-camera fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(692, 55, 'fa fa-font', '<i class=\"fa fa-font fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(693, 55, 'fa fa-bold', '<i class=\"fa fa-bold fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(694, 55, 'fa fa-italic', '<i class=\"fa fa-italic fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(695, 55, 'fa fa-text-height', '<i class=\"fa fa-text-height fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(696, 55, 'fa fa-text-width', '<i class=\"fa fa-text-width fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(697, 55, 'fa fa-align-left', '<i class=\"fa fa-align-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(698, 55, 'fa fa-align-center', '<i class=\"fa fa-align-center fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(699, 55, 'fa fa-align-right', '<i class=\"fa fa-align-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(700, 55, 'fa fa-align-justify', '<i class=\"fa fa-align-justify fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(701, 55, 'fa fa-list', '<i class=\"fa fa-list fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(702, 55, 'fa fa-outdent', '<i class=\"fa fa-outdent fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(703, 55, 'fa fa-indent', '<i class=\"fa fa-indent fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(704, 55, 'fa fa-video-camera', '<i class=\"fa fa-video-camera fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(705, 55, 'fa fa-picture-o', '<i class=\"fa fa-picture-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(706, 55, 'fa fa-pencil', '<i class=\"fa fa-pencil fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(707, 55, 'fa fa-map-marker', '<i class=\"fa fa-map-marker fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(708, 55, 'fa fa-adjust', '<i class=\"fa fa-adjust fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(709, 55, 'fa fa-tint', '<i class=\"fa fa-tint fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(710, 55, 'fa fa-pencil-square-o', '<i class=\"fa fa-pencil-square-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(711, 55, 'fa fa-share-square-o', '<i class=\"fa fa-share-square-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(712, 55, 'fa fa-check-square-o', '<i class=\"fa fa-check-square-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(713, 55, 'fa fa-arrows', '<i class=\"fa fa-arrows fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(714, 55, 'fa fa-step-backward', '<i class=\"fa fa-step-backward fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(715, 55, 'fa fa-fast-backward', '<i class=\"fa fa-fast-backward fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(716, 55, 'fa fa-backward', '<i class=\"fa fa-backward fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(717, 55, 'fa fa-play', '<i class=\"fa fa-play fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(718, 55, 'fa fa-pause', '<i class=\"fa fa-pause fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(719, 55, 'fa fa-stop', '<i class=\"fa fa-stop fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(720, 55, 'fa fa-forward', '<i class=\"fa fa-forward fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(721, 55, 'fa fa-fast-forward', '<i class=\"fa fa-fast-forward fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(722, 55, 'fa fa-step-forward', '<i class=\"fa fa-step-forward fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(723, 55, 'fa fa-eject', '<i class=\"fa fa-eject fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(724, 55, 'fa fa-chevron-left', '<i class=\"fa fa-chevron-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(725, 55, 'fa fa-chevron-right', '<i class=\"fa fa-chevron-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(726, 55, 'fa fa-plus-circle', '<i class=\"fa fa-plus-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(727, 55, 'fa fa-minus-circle', '<i class=\"fa fa-minus-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(728, 55, 'fa fa-times-circle', '<i class=\"fa fa-times-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(729, 55, 'fa fa-check-circle', '<i class=\"fa fa-check-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(730, 55, 'fa fa-question-circle', '<i class=\"fa fa-question-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(731, 55, 'fa fa-info-circle', '<i class=\"fa fa-info-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(732, 55, 'fa fa-crosshairs', '<i class=\"fa fa-crosshairs fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(733, 55, 'fa fa-times-circle-o', '<i class=\"fa fa-times-circle-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(734, 55, 'fa fa-check-circle-o', '<i class=\"fa fa-check-circle-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(735, 55, 'fa fa-ban', '<i class=\"fa fa-ban fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(736, 55, 'fa fa-arrow-left', '<i class=\"fa fa-arrow-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(737, 55, 'fa fa-arrow-right', '<i class=\"fa fa-arrow-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(738, 55, 'fa fa-arrow-up', '<i class=\"fa fa-arrow-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(739, 55, 'fa fa-arrow-down', '<i class=\"fa fa-arrow-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(740, 55, 'fa fa-share', '<i class=\"fa fa-share fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(741, 55, 'fa fa-expand', '<i class=\"fa fa-expand fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(742, 55, 'fa fa-compress', '<i class=\"fa fa-compress fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(743, 55, 'fa fa-plus', '<i class=\"fa fa-plus fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(744, 55, 'fa fa-minus', '<i class=\"fa fa-minus fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(745, 55, 'fa fa-asterisk', '<i class=\"fa fa-asterisk fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(746, 55, 'fa fa-exclamation-circle', '<i class=\"fa fa-exclamation-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(747, 55, 'fa fa-gift', '<i class=\"fa fa-gift fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(748, 55, 'fa fa-leaf', '<i class=\"fa fa-leaf fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(749, 55, 'fa fa-fire', '<i class=\"fa fa-fire fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(750, 55, 'fa fa-eye', '<i class=\"fa fa-eye fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(751, 55, 'fa fa-eye-slash', '<i class=\"fa fa-eye-slash fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(752, 55, 'fa fa-exclamation-triangle', '<i class=\"fa fa-exclamation-triangle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(753, 55, 'fa fa-plane', '<i class=\"fa fa-plane fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(754, 55, 'fa fa-calendar', '<i class=\"fa fa-calendar fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(755, 55, 'fa fa-random', '<i class=\"fa fa-random fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(756, 55, 'fa fa-comment', '<i class=\"fa fa-comment fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(757, 55, 'fa fa-magnet', '<i class=\"fa fa-magnet fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(758, 55, 'fa fa-chevron-up', '<i class=\"fa fa-chevron-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(759, 55, 'fa fa-chevron-down', '<i class=\"fa fa-chevron-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(760, 55, 'fa fa-retweet', '<i class=\"fa fa-retweet fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(761, 55, 'fa fa-shopping-cart', '<i class=\"fa fa-shopping-cart fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(762, 55, 'fa fa-folder', '<i class=\"fa fa-folder fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(763, 55, 'fa fa-folder-open', '<i class=\"fa fa-folder-open fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(764, 55, 'fa fa-arrows-v', '<i class=\"fa fa-arrows-v fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(765, 55, 'fa fa-arrows-h', '<i class=\"fa fa-arrows-h fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(766, 55, 'fa fa-bar-chart', '<i class=\"fa fa-bar-chart fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(767, 55, 'fa fa-twitter-square', '<i class=\"fa fa-twitter-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(768, 55, 'fa fa-facebook-square', '<i class=\"fa fa-facebook-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(769, 55, 'fa fa-camera-retro', '<i class=\"fa fa-camera-retro fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(770, 55, 'fa fa-key', '<i class=\"fa fa-key fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(771, 55, 'fa fa-cogs', '<i class=\"fa fa-cogs fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(772, 55, 'fa fa-comments', '<i class=\"fa fa-comments fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(773, 55, 'fa fa-thumbs-o-up', '<i class=\"fa fa-thumbs-o-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(774, 55, 'fa fa-thumbs-o-down', '<i class=\"fa fa-thumbs-o-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(775, 55, 'fa fa-star-half', '<i class=\"fa fa-star-half fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(776, 55, 'fa fa-heart-o', '<i class=\"fa fa-heart-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(777, 55, 'fa fa-sign-out', '<i class=\"fa fa-sign-out fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(778, 55, 'fa fa-linkedin-square', '<i class=\"fa fa-linkedin-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(779, 55, 'fa fa-thumb-tack', '<i class=\"fa fa-thumb-tack fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(780, 55, 'fa fa-external-link', '<i class=\"fa fa-external-link fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(781, 55, 'fa fa-sign-in', '<i class=\"fa fa-sign-in fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(782, 55, 'fa fa-trophy', '<i class=\"fa fa-trophy fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(783, 55, 'fa fa-github-square', '<i class=\"fa fa-github-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(784, 55, 'fa fa-upload', '<i class=\"fa fa-upload fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(785, 55, 'fa fa-lemon-o', '<i class=\"fa fa-lemon-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(786, 55, 'fa fa-phone', '<i class=\"fa fa-phone fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(787, 55, 'fa fa-square-o', '<i class=\"fa fa-square-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(788, 55, 'fa fa-bookmark-o', '<i class=\"fa fa-bookmark-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(789, 55, 'fa fa-phone-square', '<i class=\"fa fa-phone-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(790, 55, 'fa fa-twitter', '<i class=\"fa fa-twitter fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(791, 55, 'fa fa-facebook', '<i class=\"fa fa-facebook fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(792, 55, 'fa fa-github', '<i class=\"fa fa-github fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(793, 55, 'fa fa-unlock', '<i class=\"fa fa-unlock fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(794, 55, 'fa fa-credit-card', '<i class=\"fa fa-credit-card fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(795, 55, 'fa fa-rss', '<i class=\"fa fa-rss fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(796, 55, 'fa fa-hdd-o', '<i class=\"fa fa-hdd-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(797, 55, 'fa fa-bullhorn', '<i class=\"fa fa-bullhorn fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(798, 55, 'fa fa-bell', '<i class=\"fa fa-bell fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(799, 55, 'fa fa-certificate', '<i class=\"fa fa-certificate fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(800, 55, 'fa fa-hand-o-right', '<i class=\"fa fa-hand-o-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(801, 55, 'fa fa-hand-o-left', '<i class=\"fa fa-hand-o-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(802, 55, 'fa fa-hand-o-up', '<i class=\"fa fa-hand-o-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(803, 55, 'fa fa-hand-o-down', '<i class=\"fa fa-hand-o-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(804, 55, 'fa fa-arrow-circle-left', '<i class=\"fa fa-arrow-circle-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(805, 55, 'fa fa-arrow-circle-right', '<i class=\"fa fa-arrow-circle-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(806, 55, 'fa fa-arrow-circle-up', '<i class=\"fa fa-arrow-circle-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(807, 55, 'fa fa-arrow-circle-down', '<i class=\"fa fa-arrow-circle-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(808, 55, 'fa fa-globe', '<i class=\"fa fa-globe fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(809, 55, 'fa fa-wrench', '<i class=\"fa fa-wrench fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(810, 55, 'fa fa-tasks', '<i class=\"fa fa-tasks fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(811, 55, 'fa fa-filter', '<i class=\"fa fa-filter fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(812, 55, 'fa fa-briefcase', '<i class=\"fa fa-briefcase fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(813, 55, 'fa fa-arrows-alt', '<i class=\"fa fa-arrows-alt fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(814, 55, 'fa fa-users', '<i class=\"fa fa-users fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(815, 55, 'fa fa-link', '<i class=\"fa fa-link fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(816, 55, 'fa fa-cloud', '<i class=\"fa fa-cloud fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(817, 55, 'fa fa-flask', '<i class=\"fa fa-flask fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(818, 55, 'fa fa-scissors', '<i class=\"fa fa-scissors fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(819, 55, 'fa fa-files-o', '<i class=\"fa fa-files-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(820, 55, 'fa fa-paperclip', '<i class=\"fa fa-paperclip fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(821, 55, 'fa fa-floppy-o', '<i class=\"fa fa-floppy-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(822, 55, 'fa fa-square', '<i class=\"fa fa-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(823, 55, 'fa fa-bars', '<i class=\"fa fa-bars fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(824, 55, 'fa fa-list-ul', '<i class=\"fa fa-list-ul fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(825, 55, 'fa fa-list-ol', '<i class=\"fa fa-list-ol fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(826, 55, 'fa fa-strikethrough', '<i class=\"fa fa-strikethrough fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(827, 55, 'fa fa-underline', '<i class=\"fa fa-underline fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(828, 55, 'fa fa-table', '<i class=\"fa fa-table fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(829, 55, 'fa fa-magic', '<i class=\"fa fa-magic fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(830, 55, 'fa fa-truck', '<i class=\"fa fa-truck fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(831, 55, 'fa fa-pinterest', '<i class=\"fa fa-pinterest fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(832, 55, 'fa fa-pinterest-square', '<i class=\"fa fa-pinterest-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(833, 55, 'fa fa-google-plus-square', '<i class=\"fa fa-google-plus-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(834, 55, 'fa fa-google-plus', '<i class=\"fa fa-google-plus fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(835, 55, 'fa fa-money', '<i class=\"fa fa-money fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(836, 55, 'fa fa-caret-down', '<i class=\"fa fa-caret-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(837, 55, 'fa fa-caret-up', '<i class=\"fa fa-caret-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(838, 55, 'fa fa-caret-left', '<i class=\"fa fa-caret-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(839, 55, 'fa fa-caret-right', '<i class=\"fa fa-caret-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(840, 55, 'fa fa-columns', '<i class=\"fa fa-columns fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(841, 55, 'fa fa-sort', '<i class=\"fa fa-sort fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(842, 55, 'fa fa-sort-desc', '<i class=\"fa fa-sort-desc fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(843, 55, 'fa fa-sort-asc', '<i class=\"fa fa-sort-asc fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(844, 55, 'fa fa-envelope', '<i class=\"fa fa-envelope fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(845, 55, 'fa fa-linkedin', '<i class=\"fa fa-linkedin fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(846, 55, 'fa fa-undo', '<i class=\"fa fa-undo fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(847, 55, 'fa fa-gavel', '<i class=\"fa fa-gavel fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(848, 55, 'fa fa-tachometer', '<i class=\"fa fa-tachometer fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(849, 55, 'fa fa-comment-o', '<i class=\"fa fa-comment-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(850, 55, 'fa fa-comments-o', '<i class=\"fa fa-comments-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(851, 55, 'fa fa-bolt', '<i class=\"fa fa-bolt fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(852, 55, 'fa fa-sitemap', '<i class=\"fa fa-sitemap fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(853, 55, 'fa fa-umbrella', '<i class=\"fa fa-umbrella fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(854, 55, 'fa fa-clipboard', '<i class=\"fa fa-clipboard fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(855, 55, 'fa fa-lightbulb-o', '<i class=\"fa fa-lightbulb-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(856, 55, 'fa fa-exchange', '<i class=\"fa fa-exchange fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(857, 55, 'fa fa-cloud-download', '<i class=\"fa fa-cloud-download fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(858, 55, 'fa fa-cloud-upload', '<i class=\"fa fa-cloud-upload fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(859, 55, 'fa fa-user-md', '<i class=\"fa fa-user-md fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(860, 55, 'fa fa-stethoscope', '<i class=\"fa fa-stethoscope fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(861, 55, 'fa fa-suitcase', '<i class=\"fa fa-suitcase fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(862, 55, 'fa fa-bell-o', '<i class=\"fa fa-bell-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(863, 55, 'fa fa-coffee', '<i class=\"fa fa-coffee fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(864, 55, 'fa fa-cutlery', '<i class=\"fa fa-cutlery fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(865, 55, 'fa fa-file-text-o', '<i class=\"fa fa-file-text-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(866, 55, 'fa fa-building-o', '<i class=\"fa fa-building-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(867, 55, 'fa fa-hospital-o', '<i class=\"fa fa-hospital-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(868, 55, 'fa fa-ambulance', '<i class=\"fa fa-ambulance fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(869, 55, 'fa fa-medkit', '<i class=\"fa fa-medkit fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(870, 55, 'fa fa-fighter-jet', '<i class=\"fa fa-fighter-jet fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(871, 55, 'fa fa-beer', '<i class=\"fa fa-beer fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(872, 55, 'fa fa-h-square', '<i class=\"fa fa-h-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(873, 55, 'fa fa-plus-square', '<i class=\"fa fa-plus-square fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(874, 55, 'fa fa-angle-double-left', '<i class=\"fa fa-angle-double-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(875, 55, 'fa fa-angle-double-right', '<i class=\"fa fa-angle-double-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(876, 55, 'fa fa-angle-double-up', '<i class=\"fa fa-angle-double-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(877, 55, 'fa fa-angle-double-down', '<i class=\"fa fa-angle-double-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(878, 55, 'fa fa-angle-left', '<i class=\"fa fa-angle-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(879, 55, 'fa fa-angle-right', '<i class=\"fa fa-angle-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(880, 55, 'fa fa-angle-up', '<i class=\"fa fa-angle-up fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(881, 55, 'fa fa-angle-down', '<i class=\"fa fa-angle-down fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(882, 55, 'fa fa-desktop', '<i class=\"fa fa-desktop fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(883, 55, 'fa fa-laptop', '<i class=\"fa fa-laptop fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(884, 55, 'fa fa-tablet', '<i class=\"fa fa-tablet fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(885, 55, 'fa fa-mobile', '<i class=\"fa fa-mobile fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(886, 55, 'fa fa-circle-o', '<i class=\"fa fa-circle-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(887, 55, 'fa fa-quote-left', '<i class=\"fa fa-quote-left fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(888, 55, 'fa fa-quote-right', '<i class=\"fa fa-quote-right fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(889, 55, 'fa fa-spinner', '<i class=\"fa fa-spinner fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(890, 55, 'fa fa-circle', '<i class=\"fa fa-circle fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(891, 55, 'fa fa-reply', '<i class=\"fa fa-reply fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50');
INSERT INTO `cc_block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(892, 55, 'fa fa-github-alt', '<i class=\"fa fa-github-alt fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(893, 55, 'fa fa-folder-o', '<i class=\"fa fa-folder-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(894, 55, 'fa fa-folder-open-o', '<i class=\"fa fa-folder-open-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(895, 55, 'fa fa-smile-o', '<i class=\"fa fa-smile-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(896, 55, 'fa fa-frown-o', '<i class=\"fa fa-frown-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(897, 55, 'fa fa-meh-o', '<i class=\"fa fa-meh-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(898, 55, 'fa fa-gamepad', '<i class=\"fa fa-gamepad fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(899, 55, 'fa fa-keyboard-o', '<i class=\"fa fa-keyboard-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(900, 55, 'fa fa-flag-o', '<i class=\"fa fa-flag-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(901, 55, 'fa fa-flag-checkered', '<i class=\"fa fa-flag-checkered fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(902, 55, 'fa fa-terminal', '<i class=\"fa fa-terminal fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(903, 55, 'fa fa-code', '<i class=\"fa fa-code fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(904, 55, 'fa fa-reply-all', '<i class=\"fa fa-reply-all fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(905, 55, 'fa fa-star-half-o', '<i class=\"fa fa-star-half-o fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(906, 55, 'fa fa-location-arrow', '<i class=\"fa fa-location-arrow fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(907, 55, 'fa fa-crop', '<i class=\"fa fa-crop fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(908, 55, 'fa fa-code-fork', '<i class=\"fa fa-code-fork fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(909, 55, 'fa fa-chain-broken', '<i class=\"fa fa-chain-broken fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(910, 55, 'fa fa-question', '<i class=\"fa fa-question fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(911, 55, 'fa fa-info', '<i class=\"fa fa-info fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(912, 55, 'fa fa-exclamation', '<i class=\"fa fa-exclamation fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(913, 55, 'fa fa-superscript', '<i class=\"fa fa-superscript fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(914, 55, 'fa fa-subscript', '<i class=\"fa fa-subscript fa-2x\"></i>', '2022-04-26 04:18:50', '2022-04-26 04:18:50'),
(915, 55, 'fa fa-eraser', '<i class=\"fa fa-eraser fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(916, 55, 'fa fa-puzzle-piece', '<i class=\"fa fa-puzzle-piece fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(917, 55, 'fa fa-microphone', '<i class=\"fa fa-microphone fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(918, 55, 'fa fa-microphone-slash', '<i class=\"fa fa-microphone-slash fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(919, 55, 'fa fa-shield', '<i class=\"fa fa-shield fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(920, 55, 'fa fa-calendar-o', '<i class=\"fa fa-calendar-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(921, 55, 'fa fa-fire-extinguisher', '<i class=\"fa fa-fire-extinguisher fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(922, 55, 'fa fa-rocket', '<i class=\"fa fa-rocket fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(923, 55, 'fa fa-maxcdn', '<i class=\"fa fa-maxcdn fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(924, 55, 'fa fa-chevron-circle-left', '<i class=\"fa fa-chevron-circle-left fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(925, 55, 'fa fa-chevron-circle-right', '<i class=\"fa fa-chevron-circle-right fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(926, 55, 'fa fa-chevron-circle-up', '<i class=\"fa fa-chevron-circle-up fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(927, 55, 'fa fa-chevron-circle-down', '<i class=\"fa fa-chevron-circle-down fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(928, 55, 'fa fa-html5', '<i class=\"fa fa-html5 fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(929, 55, 'fa fa-css3', '<i class=\"fa fa-css3 fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(930, 55, 'fa fa-anchor', '<i class=\"fa fa-anchor fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(931, 55, 'fa fa-unlock-alt', '<i class=\"fa fa-unlock-alt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(932, 55, 'fa fa-bullseye', '<i class=\"fa fa-bullseye fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(933, 55, 'fa fa-ellipsis-h', '<i class=\"fa fa-ellipsis-h fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(934, 55, 'fa fa-ellipsis-v', '<i class=\"fa fa-ellipsis-v fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(935, 55, 'fa fa-rss-square', '<i class=\"fa fa-rss-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(936, 55, 'fa fa-play-circle', '<i class=\"fa fa-play-circle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(937, 55, 'fa fa-ticket', '<i class=\"fa fa-ticket fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(938, 55, 'fa fa-minus-square', '<i class=\"fa fa-minus-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(939, 55, 'fa fa-minus-square-o', '<i class=\"fa fa-minus-square-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(940, 55, 'fa fa-level-up', '<i class=\"fa fa-level-up fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(941, 55, 'fa fa-level-down', '<i class=\"fa fa-level-down fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(942, 55, 'fa fa-check-square', '<i class=\"fa fa-check-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(943, 55, 'fa fa-pencil-square', '<i class=\"fa fa-pencil-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(944, 55, 'fa fa-external-link-square', '<i class=\"fa fa-external-link-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(945, 55, 'fa fa-share-square', '<i class=\"fa fa-share-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(946, 55, 'fa fa-compass', '<i class=\"fa fa-compass fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(947, 55, 'fa fa-caret-square-o-down', '<i class=\"fa fa-caret-square-o-down fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(948, 55, 'fa fa-caret-square-o-up', '<i class=\"fa fa-caret-square-o-up fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(949, 55, 'fa fa-caret-square-o-right', '<i class=\"fa fa-caret-square-o-right fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(950, 55, 'fa fa-eur', '<i class=\"fa fa-eur fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(951, 55, 'fa fa-gbp', '<i class=\"fa fa-gbp fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(952, 55, 'fa fa-usd', '<i class=\"fa fa-usd fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(953, 55, 'fa fa-inr', '<i class=\"fa fa-inr fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(954, 55, 'fa fa-jpy', '<i class=\"fa fa-jpy fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(955, 55, 'fa fa-rub', '<i class=\"fa fa-rub fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(956, 55, 'fa fa-krw', '<i class=\"fa fa-krw fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(957, 55, 'fa fa-btc', '<i class=\"fa fa-btc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(958, 55, 'fa fa-file', '<i class=\"fa fa-file fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(959, 55, 'fa fa-file-text', '<i class=\"fa fa-file-text fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(960, 55, 'fa fa-sort-alpha-asc', '<i class=\"fa fa-sort-alpha-asc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(961, 55, 'fa fa-sort-alpha-desc', '<i class=\"fa fa-sort-alpha-desc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(962, 55, 'fa fa-sort-amount-asc', '<i class=\"fa fa-sort-amount-asc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(963, 55, 'fa fa-sort-amount-desc', '<i class=\"fa fa-sort-amount-desc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(964, 55, 'fa fa-sort-numeric-asc', '<i class=\"fa fa-sort-numeric-asc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(965, 55, 'fa fa-sort-numeric-desc', '<i class=\"fa fa-sort-numeric-desc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(966, 55, 'fa fa-thumbs-up', '<i class=\"fa fa-thumbs-up fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(967, 55, 'fa fa-thumbs-down', '<i class=\"fa fa-thumbs-down fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(968, 55, 'fa fa-youtube-square', '<i class=\"fa fa-youtube-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(969, 55, 'fa fa-youtube', '<i class=\"fa fa-youtube fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(970, 55, 'fa fa-xing', '<i class=\"fa fa-xing fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(971, 55, 'fa fa-xing-square', '<i class=\"fa fa-xing-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(972, 55, 'fa fa-youtube-play', '<i class=\"fa fa-youtube-play fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(973, 55, 'fa fa-dropbox', '<i class=\"fa fa-dropbox fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(974, 55, 'fa fa-stack-overflow', '<i class=\"fa fa-stack-overflow fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(975, 55, 'fa fa-instagram', '<i class=\"fa fa-instagram fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(976, 55, 'fa fa-flickr', '<i class=\"fa fa-flickr fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(977, 55, 'fa fa-adn', '<i class=\"fa fa-adn fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(978, 55, 'fa fa-bitbucket', '<i class=\"fa fa-bitbucket fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(979, 55, 'fa fa-bitbucket-square', '<i class=\"fa fa-bitbucket-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(980, 55, 'fa fa-tumblr', '<i class=\"fa fa-tumblr fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(981, 55, 'fa fa-tumblr-square', '<i class=\"fa fa-tumblr-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(982, 55, 'fa fa-long-arrow-down', '<i class=\"fa fa-long-arrow-down fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(983, 55, 'fa fa-long-arrow-up', '<i class=\"fa fa-long-arrow-up fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(984, 55, 'fa fa-long-arrow-left', '<i class=\"fa fa-long-arrow-left fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(985, 55, 'fa fa-long-arrow-right', '<i class=\"fa fa-long-arrow-right fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(986, 55, 'fa fa-apple', '<i class=\"fa fa-apple fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(987, 55, 'fa fa-windows', '<i class=\"fa fa-windows fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(988, 55, 'fa fa-android', '<i class=\"fa fa-android fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(989, 55, 'fa fa-linux', '<i class=\"fa fa-linux fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(990, 55, 'fa fa-dribbble', '<i class=\"fa fa-dribbble fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(991, 55, 'fa fa-skype', '<i class=\"fa fa-skype fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(992, 55, 'fa fa-foursquare', '<i class=\"fa fa-foursquare fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(993, 55, 'fa fa-trello', '<i class=\"fa fa-trello fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(994, 55, 'fa fa-female', '<i class=\"fa fa-female fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(995, 55, 'fa fa-male', '<i class=\"fa fa-male fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(996, 55, 'fa fa-gratipay', '<i class=\"fa fa-gratipay fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(997, 55, 'fa fa-sun-o', '<i class=\"fa fa-sun-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(998, 55, 'fa fa-moon-o', '<i class=\"fa fa-moon-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(999, 55, 'fa fa-archive', '<i class=\"fa fa-archive fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1000, 55, 'fa fa-bug', '<i class=\"fa fa-bug fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1001, 55, 'fa fa-vk', '<i class=\"fa fa-vk fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1002, 55, 'fa fa-weibo', '<i class=\"fa fa-weibo fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1003, 55, 'fa fa-renren', '<i class=\"fa fa-renren fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1004, 55, 'fa fa-pagelines', '<i class=\"fa fa-pagelines fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1005, 55, 'fa fa-stack-exchange', '<i class=\"fa fa-stack-exchange fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1006, 55, 'fa fa-arrow-circle-o-right', '<i class=\"fa fa-arrow-circle-o-right fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1007, 55, 'fa fa-arrow-circle-o-left', '<i class=\"fa fa-arrow-circle-o-left fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1008, 55, 'fa fa-caret-square-o-left', '<i class=\"fa fa-caret-square-o-left fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1009, 55, 'fa fa-dot-circle-o', '<i class=\"fa fa-dot-circle-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1010, 55, 'fa fa-wheelchair', '<i class=\"fa fa-wheelchair fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1011, 55, 'fa fa-vimeo-square', '<i class=\"fa fa-vimeo-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1012, 55, 'fa fa-try', '<i class=\"fa fa-try fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1013, 55, 'fa fa-plus-square-o', '<i class=\"fa fa-plus-square-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1014, 55, 'fa fa-space-shuttle', '<i class=\"fa fa-space-shuttle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1015, 55, 'fa fa-slack', '<i class=\"fa fa-slack fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1016, 55, 'fa fa-envelope-square', '<i class=\"fa fa-envelope-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1017, 55, 'fa fa-wordpress', '<i class=\"fa fa-wordpress fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1018, 55, 'fa fa-openid', '<i class=\"fa fa-openid fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1019, 55, 'fa fa-university', '<i class=\"fa fa-university fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1020, 55, 'fa fa-graduation-cap', '<i class=\"fa fa-graduation-cap fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1021, 55, 'fa fa-yahoo', '<i class=\"fa fa-yahoo fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1022, 55, 'fa fa-google', '<i class=\"fa fa-google fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1023, 55, 'fa fa-reddit', '<i class=\"fa fa-reddit fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1024, 55, 'fa fa-reddit-square', '<i class=\"fa fa-reddit-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1025, 55, 'fa fa-stumbleupon-circle', '<i class=\"fa fa-stumbleupon-circle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1026, 55, 'fa fa-stumbleupon', '<i class=\"fa fa-stumbleupon fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1027, 55, 'fa fa-delicious', '<i class=\"fa fa-delicious fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1028, 55, 'fa fa-digg', '<i class=\"fa fa-digg fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1029, 55, 'fa fa-pied-piper', '<i class=\"fa fa-pied-piper fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1030, 55, 'fa fa-pied-piper-alt', '<i class=\"fa fa-pied-piper-alt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1031, 55, 'fa fa-drupal', '<i class=\"fa fa-drupal fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1032, 55, 'fa fa-joomla', '<i class=\"fa fa-joomla fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1033, 55, 'fa fa-language', '<i class=\"fa fa-language fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1034, 55, 'fa fa-fax', '<i class=\"fa fa-fax fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1035, 55, 'fa fa-building', '<i class=\"fa fa-building fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1036, 55, 'fa fa-child', '<i class=\"fa fa-child fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1037, 55, 'fa fa-paw', '<i class=\"fa fa-paw fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1038, 55, 'fa fa-spoon', '<i class=\"fa fa-spoon fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1039, 55, 'fa fa-cube', '<i class=\"fa fa-cube fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1040, 55, 'fa fa-cubes', '<i class=\"fa fa-cubes fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1041, 55, 'fa fa-behance', '<i class=\"fa fa-behance fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1042, 55, 'fa fa-behance-square', '<i class=\"fa fa-behance-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1043, 55, 'fa fa-steam', '<i class=\"fa fa-steam fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1044, 55, 'fa fa-steam-square', '<i class=\"fa fa-steam-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1045, 55, 'fa fa-recycle', '<i class=\"fa fa-recycle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1046, 55, 'fa fa-car', '<i class=\"fa fa-car fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1047, 55, 'fa fa-taxi', '<i class=\"fa fa-taxi fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1048, 55, 'fa fa-tree', '<i class=\"fa fa-tree fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1049, 55, 'fa fa-spotify', '<i class=\"fa fa-spotify fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1050, 55, 'fa fa-deviantart', '<i class=\"fa fa-deviantart fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1051, 55, 'fa fa-soundcloud', '<i class=\"fa fa-soundcloud fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1052, 55, 'fa fa-database', '<i class=\"fa fa-database fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1053, 55, 'fa fa-file-pdf-o', '<i class=\"fa fa-file-pdf-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1054, 55, 'fa fa-file-word-o', '<i class=\"fa fa-file-word-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1055, 55, 'fa fa-file-excel-o', '<i class=\"fa fa-file-excel-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1056, 55, 'fa fa-file-powerpoint-o', '<i class=\"fa fa-file-powerpoint-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1057, 55, 'fa fa-file-image-o', '<i class=\"fa fa-file-image-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1058, 55, 'fa fa-file-archive-o', '<i class=\"fa fa-file-archive-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1059, 55, 'fa fa-file-audio-o', '<i class=\"fa fa-file-audio-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1060, 55, 'fa fa-file-video-o', '<i class=\"fa fa-file-video-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1061, 55, 'fa fa-file-code-o', '<i class=\"fa fa-file-code-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1062, 55, 'fa fa-vine', '<i class=\"fa fa-vine fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1063, 55, 'fa fa-codepen', '<i class=\"fa fa-codepen fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1064, 55, 'fa fa-jsfiddle', '<i class=\"fa fa-jsfiddle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1065, 55, 'fa fa-life-ring', '<i class=\"fa fa-life-ring fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1066, 55, 'fa fa-circle-o-notch', '<i class=\"fa fa-circle-o-notch fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1067, 55, 'fa fa-rebel', '<i class=\"fa fa-rebel fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1068, 55, 'fa fa-empire', '<i class=\"fa fa-empire fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1069, 55, 'fa fa-git-square', '<i class=\"fa fa-git-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1070, 55, 'fa fa-git', '<i class=\"fa fa-git fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1071, 55, 'fa fa-hacker-news', '<i class=\"fa fa-hacker-news fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1072, 55, 'fa fa-tencent-weibo', '<i class=\"fa fa-tencent-weibo fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1073, 55, 'fa fa-qq', '<i class=\"fa fa-qq fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1074, 55, 'fa fa-weixin', '<i class=\"fa fa-weixin fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1075, 55, 'fa fa-paper-plane', '<i class=\"fa fa-paper-plane fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1076, 55, 'fa fa-paper-plane-o', '<i class=\"fa fa-paper-plane-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1077, 55, 'fa fa-history', '<i class=\"fa fa-history fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1078, 55, 'fa fa-circle-thin', '<i class=\"fa fa-circle-thin fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1079, 55, 'fa fa-header', '<i class=\"fa fa-header fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1080, 55, 'fa fa-paragraph', '<i class=\"fa fa-paragraph fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1081, 55, 'fa fa-sliders', '<i class=\"fa fa-sliders fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1082, 55, 'fa fa-share-alt', '<i class=\"fa fa-share-alt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1083, 55, 'fa fa-share-alt-square', '<i class=\"fa fa-share-alt-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1084, 55, 'fa fa-bomb', '<i class=\"fa fa-bomb fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1085, 55, 'fa fa-futbol-o', '<i class=\"fa fa-futbol-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1086, 55, 'fa fa-tty', '<i class=\"fa fa-tty fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1087, 55, 'fa fa-binoculars', '<i class=\"fa fa-binoculars fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1088, 55, 'fa fa-plug', '<i class=\"fa fa-plug fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1089, 55, 'fa fa-slideshare', '<i class=\"fa fa-slideshare fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1090, 55, 'fa fa-twitch', '<i class=\"fa fa-twitch fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1091, 55, 'fa fa-yelp', '<i class=\"fa fa-yelp fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1092, 55, 'fa fa-newspaper-o', '<i class=\"fa fa-newspaper-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1093, 55, 'fa fa-wifi', '<i class=\"fa fa-wifi fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1094, 55, 'fa fa-calculator', '<i class=\"fa fa-calculator fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1095, 55, 'fa fa-paypal', '<i class=\"fa fa-paypal fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1096, 55, 'fa fa-google-wallet', '<i class=\"fa fa-google-wallet fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1097, 55, 'fa fa-cc-visa', '<i class=\"fa fa-cc-visa fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1098, 55, 'fa fa-cc-mastercard', '<i class=\"fa fa-cc-mastercard fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1099, 55, 'fa fa-cc-discover', '<i class=\"fa fa-cc-discover fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1100, 55, 'fa fa-cc-amex', '<i class=\"fa fa-cc-amex fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1101, 55, 'fa fa-cc-paypal', '<i class=\"fa fa-cc-paypal fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1102, 55, 'fa fa-cc-stripe', '<i class=\"fa fa-cc-stripe fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1103, 55, 'fa fa-bell-slash', '<i class=\"fa fa-bell-slash fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1104, 55, 'fa fa-bell-slash-o', '<i class=\"fa fa-bell-slash-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1105, 55, 'fa fa-trash', '<i class=\"fa fa-trash fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1106, 55, 'fa fa-copyright', '<i class=\"fa fa-copyright fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1107, 55, 'fa fa-at', '<i class=\"fa fa-at fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1108, 55, 'fa fa-eyedropper', '<i class=\"fa fa-eyedropper fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1109, 55, 'fa fa-paint-brush', '<i class=\"fa fa-paint-brush fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1110, 55, 'fa fa-birthday-cake', '<i class=\"fa fa-birthday-cake fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1111, 55, 'fa fa-area-chart', '<i class=\"fa fa-area-chart fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1112, 55, 'fa fa-pie-chart', '<i class=\"fa fa-pie-chart fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1113, 55, 'fa fa-line-chart', '<i class=\"fa fa-line-chart fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1114, 55, 'fa fa-lastfm', '<i class=\"fa fa-lastfm fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1115, 55, 'fa fa-lastfm-square', '<i class=\"fa fa-lastfm-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1116, 55, 'fa fa-toggle-off', '<i class=\"fa fa-toggle-off fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1117, 55, 'fa fa-toggle-on', '<i class=\"fa fa-toggle-on fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1118, 55, 'fa fa-bicycle', '<i class=\"fa fa-bicycle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1119, 55, 'fa fa-bus', '<i class=\"fa fa-bus fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1120, 55, 'fa fa-ioxhost', '<i class=\"fa fa-ioxhost fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1121, 55, 'fa fa-angellist', '<i class=\"fa fa-angellist fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1122, 55, 'fa fa-cc', '<i class=\"fa fa-cc fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1123, 55, 'fa fa-ils', '<i class=\"fa fa-ils fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1124, 55, 'fa fa-meanpath', '<i class=\"fa fa-meanpath fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1125, 55, 'fa fa-buysellads', '<i class=\"fa fa-buysellads fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1126, 55, 'fa fa-connectdevelop', '<i class=\"fa fa-connectdevelop fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1127, 55, 'fa fa-dashcube', '<i class=\"fa fa-dashcube fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1128, 55, 'fa fa-forumbee', '<i class=\"fa fa-forumbee fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1129, 55, 'fa fa-leanpub', '<i class=\"fa fa-leanpub fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1130, 55, 'fa fa-sellsy', '<i class=\"fa fa-sellsy fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1131, 55, 'fa fa-shirtsinbulk', '<i class=\"fa fa-shirtsinbulk fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1132, 55, 'fa fa-simplybuilt', '<i class=\"fa fa-simplybuilt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1133, 55, 'fa fa-skyatlas', '<i class=\"fa fa-skyatlas fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1134, 55, 'fa fa-cart-plus', '<i class=\"fa fa-cart-plus fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1135, 55, 'fa fa-cart-arrow-down', '<i class=\"fa fa-cart-arrow-down fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1136, 55, 'fa fa-diamond', '<i class=\"fa fa-diamond fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1137, 55, 'fa fa-ship', '<i class=\"fa fa-ship fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1138, 55, 'fa fa-user-secret', '<i class=\"fa fa-user-secret fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1139, 55, 'fa fa-motorcycle', '<i class=\"fa fa-motorcycle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1140, 55, 'fa fa-street-view', '<i class=\"fa fa-street-view fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1141, 55, 'fa fa-heartbeat', '<i class=\"fa fa-heartbeat fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1142, 55, 'fa fa-venus', '<i class=\"fa fa-venus fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1143, 55, 'fa fa-mars', '<i class=\"fa fa-mars fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1144, 55, 'fa fa-mercury', '<i class=\"fa fa-mercury fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1145, 55, 'fa fa-transgender', '<i class=\"fa fa-transgender fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1146, 55, 'fa fa-transgender-alt', '<i class=\"fa fa-transgender-alt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1147, 55, 'fa fa-venus-double', '<i class=\"fa fa-venus-double fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1148, 55, 'fa fa-mars-double', '<i class=\"fa fa-mars-double fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1149, 55, 'fa fa-venus-mars', '<i class=\"fa fa-venus-mars fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1150, 55, 'fa fa-mars-stroke', '<i class=\"fa fa-mars-stroke fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1151, 55, 'fa fa-mars-stroke-v', '<i class=\"fa fa-mars-stroke-v fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1152, 55, 'fa fa-mars-stroke-h', '<i class=\"fa fa-mars-stroke-h fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1153, 55, 'fa fa-neuter', '<i class=\"fa fa-neuter fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1154, 55, 'fa fa-genderless', '<i class=\"fa fa-genderless fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1155, 55, 'fa fa-facebook-official', '<i class=\"fa fa-facebook-official fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1156, 55, 'fa fa-pinterest-p', '<i class=\"fa fa-pinterest-p fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1157, 55, 'fa fa-whatsapp', '<i class=\"fa fa-whatsapp fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1158, 55, 'fa fa-server', '<i class=\"fa fa-server fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1159, 55, 'fa fa-user-plus', '<i class=\"fa fa-user-plus fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1160, 55, 'fa fa-user-times', '<i class=\"fa fa-user-times fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1161, 55, 'fa fa-bed', '<i class=\"fa fa-bed fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1162, 55, 'fa fa-viacoin', '<i class=\"fa fa-viacoin fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1163, 55, 'fa fa-train', '<i class=\"fa fa-train fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1164, 55, 'fa fa-subway', '<i class=\"fa fa-subway fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1165, 55, 'fa fa-medium', '<i class=\"fa fa-medium fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1166, 55, 'fa fa-y-combinator', '<i class=\"fa fa-y-combinator fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1167, 55, 'fa fa-optin-monster', '<i class=\"fa fa-optin-monster fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1168, 55, 'fa fa-opencart', '<i class=\"fa fa-opencart fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1169, 55, 'fa fa-expeditedssl', '<i class=\"fa fa-expeditedssl fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1170, 55, 'fa fa-battery-full', '<i class=\"fa fa-battery-full fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1171, 55, 'fa fa-battery-three-quarters', '<i class=\"fa fa-battery-three-quarters fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1172, 55, 'fa fa-battery-half', '<i class=\"fa fa-battery-half fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1173, 55, 'fa fa-battery-quarter', '<i class=\"fa fa-battery-quarter fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1174, 55, 'fa fa-battery-empty', '<i class=\"fa fa-battery-empty fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1175, 55, 'fa fa-mouse-pointer', '<i class=\"fa fa-mouse-pointer fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1176, 55, 'fa fa-i-cursor', '<i class=\"fa fa-i-cursor fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1177, 55, 'fa fa-object-group', '<i class=\"fa fa-object-group fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1178, 55, 'fa fa-object-ungroup', '<i class=\"fa fa-object-ungroup fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1179, 55, 'fa fa-sticky-note', '<i class=\"fa fa-sticky-note fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1180, 55, 'fa fa-sticky-note-o', '<i class=\"fa fa-sticky-note-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1181, 55, 'fa fa-cc-jcb', '<i class=\"fa fa-cc-jcb fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1182, 55, 'fa fa-cc-diners-club', '<i class=\"fa fa-cc-diners-club fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1183, 55, 'fa fa-clone', '<i class=\"fa fa-clone fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1184, 55, 'fa fa-balance-scale', '<i class=\"fa fa-balance-scale fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1185, 55, 'fa fa-hourglass-o', '<i class=\"fa fa-hourglass-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1186, 55, 'fa fa-hourglass-start', '<i class=\"fa fa-hourglass-start fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1187, 55, 'fa fa-hourglass-half', '<i class=\"fa fa-hourglass-half fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1188, 55, 'fa fa-hourglass-end', '<i class=\"fa fa-hourglass-end fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1189, 55, 'fa fa-hourglass', '<i class=\"fa fa-hourglass fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1190, 55, 'fa fa-hand-rock-o', '<i class=\"fa fa-hand-rock-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1191, 55, 'fa fa-hand-paper-o', '<i class=\"fa fa-hand-paper-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1192, 55, 'fa fa-hand-scissors-o', '<i class=\"fa fa-hand-scissors-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1193, 55, 'fa fa-hand-lizard-o', '<i class=\"fa fa-hand-lizard-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1194, 55, 'fa fa-hand-spock-o', '<i class=\"fa fa-hand-spock-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1195, 55, 'fa fa-hand-pointer-o', '<i class=\"fa fa-hand-pointer-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1196, 55, 'fa fa-hand-peace-o', '<i class=\"fa fa-hand-peace-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1197, 55, 'fa fa-trademark', '<i class=\"fa fa-trademark fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1198, 55, 'fa fa-registered', '<i class=\"fa fa-registered fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1199, 55, 'fa fa-creative-commons', '<i class=\"fa fa-creative-commons fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1200, 55, 'fa fa-gg', '<i class=\"fa fa-gg fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1201, 55, 'fa fa-gg-circle', '<i class=\"fa fa-gg-circle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1202, 55, 'fa fa-tripadvisor', '<i class=\"fa fa-tripadvisor fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1203, 55, 'fa fa-odnoklassniki', '<i class=\"fa fa-odnoklassniki fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1204, 55, 'fa fa-odnoklassniki-square', '<i class=\"fa fa-odnoklassniki-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1205, 55, 'fa fa-get-pocket', '<i class=\"fa fa-get-pocket fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1206, 55, 'fa fa-wikipedia-w', '<i class=\"fa fa-wikipedia-w fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1207, 55, 'fa fa-safari', '<i class=\"fa fa-safari fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1208, 55, 'fa fa-chrome', '<i class=\"fa fa-chrome fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1209, 55, 'fa fa-firefox', '<i class=\"fa fa-firefox fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1210, 55, 'fa fa-opera', '<i class=\"fa fa-opera fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1211, 55, 'fa fa-internet-explorer', '<i class=\"fa fa-internet-explorer fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1212, 55, 'fa fa-television', '<i class=\"fa fa-television fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1213, 55, 'fa fa-contao', '<i class=\"fa fa-contao fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1214, 55, 'fa fa-500px', '<i class=\"fa fa-500px fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1215, 55, 'fa fa-amazon', '<i class=\"fa fa-amazon fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1216, 55, 'fa fa-calendar-plus-o', '<i class=\"fa fa-calendar-plus-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1217, 55, 'fa fa-calendar-minus-o', '<i class=\"fa fa-calendar-minus-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1218, 55, 'fa fa-calendar-times-o', '<i class=\"fa fa-calendar-times-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1219, 55, 'fa fa-calendar-check-o', '<i class=\"fa fa-calendar-check-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1220, 55, 'fa fa-industry', '<i class=\"fa fa-industry fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1221, 55, 'fa fa-map-pin', '<i class=\"fa fa-map-pin fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1222, 55, 'fa fa-map-signs', '<i class=\"fa fa-map-signs fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1223, 55, 'fa fa-map-o', '<i class=\"fa fa-map-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1224, 55, 'fa fa-map', '<i class=\"fa fa-map fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1225, 55, 'fa fa-commenting', '<i class=\"fa fa-commenting fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1226, 55, 'fa fa-commenting-o', '<i class=\"fa fa-commenting-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1227, 55, 'fa fa-houzz', '<i class=\"fa fa-houzz fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1228, 55, 'fa fa-vimeo', '<i class=\"fa fa-vimeo fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1229, 55, 'fa fa-black-tie', '<i class=\"fa fa-black-tie fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1230, 55, 'fa fa-fonticons', '<i class=\"fa fa-fonticons fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1231, 55, 'fa fa-reddit-alien', '<i class=\"fa fa-reddit-alien fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1232, 55, 'fa fa-edge', '<i class=\"fa fa-edge fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1233, 55, 'fa fa-credit-card-alt', '<i class=\"fa fa-credit-card-alt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1234, 55, 'fa fa-codiepie', '<i class=\"fa fa-codiepie fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1235, 55, 'fa fa-modx', '<i class=\"fa fa-modx fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1236, 55, 'fa fa-fort-awesome', '<i class=\"fa fa-fort-awesome fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1237, 55, 'fa fa-usb', '<i class=\"fa fa-usb fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1238, 55, 'fa fa-product-hunt', '<i class=\"fa fa-product-hunt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1239, 55, 'fa fa-mixcloud', '<i class=\"fa fa-mixcloud fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1240, 55, 'fa fa-scribd', '<i class=\"fa fa-scribd fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1241, 55, 'fa fa-pause-circle', '<i class=\"fa fa-pause-circle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1242, 55, 'fa fa-pause-circle-o', '<i class=\"fa fa-pause-circle-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1243, 55, 'fa fa-stop-circle', '<i class=\"fa fa-stop-circle fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1244, 55, 'fa fa-stop-circle-o', '<i class=\"fa fa-stop-circle-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1245, 55, 'fa fa-shopping-bag', '<i class=\"fa fa-shopping-bag fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1246, 55, 'fa fa-shopping-basket', '<i class=\"fa fa-shopping-basket fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1247, 55, 'fa fa-hashtag', '<i class=\"fa fa-hashtag fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1248, 55, 'fa fa-bluetooth', '<i class=\"fa fa-bluetooth fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1249, 55, 'fa fa-bluetooth-b', '<i class=\"fa fa-bluetooth-b fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1250, 55, 'fa fa-percent', '<i class=\"fa fa-percent fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1251, 55, 'fa fa-gitlab', '<i class=\"fa fa-gitlab fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1252, 55, 'fa fa-wpbeginner', '<i class=\"fa fa-wpbeginner fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1253, 55, 'fa fa-wpforms', '<i class=\"fa fa-wpforms fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1254, 55, 'fa fa-envira', '<i class=\"fa fa-envira fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1255, 55, 'fa fa-universal-access', '<i class=\"fa fa-universal-access fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1256, 55, 'fa fa-wheelchair-alt', '<i class=\"fa fa-wheelchair-alt fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1257, 55, 'fa fa-question-circle-o', '<i class=\"fa fa-question-circle-o fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1258, 55, 'fa fa-blind', '<i class=\"fa fa-blind fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1259, 55, 'fa fa-audio-description', '<i class=\"fa fa-audio-description fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1260, 55, 'fa fa-volume-control-phone', '<i class=\"fa fa-volume-control-phone fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1261, 55, 'fa fa-braille', '<i class=\"fa fa-braille fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1262, 55, 'fa fa-assistive-listening-systems', '<i class=\"fa fa-assistive-listening-systems fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1263, 55, 'fa fa-american-sign-language-interpreting', '<i class=\"fa fa-american-sign-language-interpreting fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1264, 55, 'fa fa-deaf', '<i class=\"fa fa-deaf fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1265, 55, 'fa fa-glide', '<i class=\"fa fa-glide fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1266, 55, 'fa fa-glide-g', '<i class=\"fa fa-glide-g fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1267, 55, 'fa fa-sign-language', '<i class=\"fa fa-sign-language fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1268, 55, 'fa fa-low-vision', '<i class=\"fa fa-low-vision fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1269, 55, 'fa fa-viadeo', '<i class=\"fa fa-viadeo fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1270, 55, 'fa fa-viadeo-square', '<i class=\"fa fa-viadeo-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1271, 55, 'fa fa-snapchat', '<i class=\"fa fa-snapchat fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1272, 55, 'fa fa-snapchat-ghost', '<i class=\"fa fa-snapchat-ghost fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1273, 55, 'fa fa-snapchat-square', '<i class=\"fa fa-snapchat-square fa-2x\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1274, 59, 'fa fa-facebook-square', '<i class=\"fa fa-facebook-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1275, 59, 'fa fa-twitter-square', '<i class=\"fa fa-twitter-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1276, 59, 'fa fa-linkedin-square', '<i class=\"fa fa-linkedin-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1277, 59, 'fa fa-youtube', '<i class=\"fa fa-youtube\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1278, 59, 'fa fa-glass', '<i class=\"fa fa-glass\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1279, 59, 'fa fa-music', '<i class=\"fa fa-music\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1280, 59, 'fa fa-search', '<i class=\"fa fa-search\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1281, 59, 'fa fa-envelope-o', '<i class=\"fa fa-envelope-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1282, 59, 'fa fa-heart', '<i class=\"fa fa-heart\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1283, 59, 'fa fa-star', '<i class=\"fa fa-star\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1284, 59, 'fa fa-star-o', '<i class=\"fa fa-star-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1285, 59, 'fa fa-user', '<i class=\"fa fa-user\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1286, 59, 'fa fa-film', '<i class=\"fa fa-film\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1287, 59, 'fa fa-th-large', '<i class=\"fa fa-th-large\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1288, 59, 'fa fa-th', '<i class=\"fa fa-th\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1289, 59, 'fa fa-th-list', '<i class=\"fa fa-th-list\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1290, 59, 'fa fa-check', '<i class=\"fa fa-check\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1291, 59, 'fa fa-times', '<i class=\"fa fa-times\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1292, 59, 'fa fa-search-plus', '<i class=\"fa fa-search-plus\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1293, 59, 'fa fa-search-minus', '<i class=\"fa fa-search-minus\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1294, 59, 'fa fa-power-off', '<i class=\"fa fa-power-off\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1295, 59, 'fa fa-signal', '<i class=\"fa fa-signal\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1296, 59, 'fa fa-cog', '<i class=\"fa fa-cog\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1297, 59, 'fa fa-trash-o', '<i class=\"fa fa-trash-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1298, 59, 'fa fa-home', '<i class=\"fa fa-home\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1299, 59, 'fa fa-file-o', '<i class=\"fa fa-file-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1300, 59, 'fa fa-clock-o', '<i class=\"fa fa-clock-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1301, 59, 'fa fa-road', '<i class=\"fa fa-road\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1302, 59, 'fa fa-download', '<i class=\"fa fa-download\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1303, 59, 'fa fa-arrow-circle-o-down', '<i class=\"fa fa-arrow-circle-o-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1304, 59, 'fa fa-arrow-circle-o-up', '<i class=\"fa fa-arrow-circle-o-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1305, 59, 'fa fa-inbox', '<i class=\"fa fa-inbox\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1306, 59, 'fa fa-play-circle-o', '<i class=\"fa fa-play-circle-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1307, 59, 'fa fa-repeat', '<i class=\"fa fa-repeat\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1308, 59, 'fa fa-refresh', '<i class=\"fa fa-refresh\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1309, 59, 'fa fa-list-alt', '<i class=\"fa fa-list-alt\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1310, 59, 'fa fa-lock', '<i class=\"fa fa-lock\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1311, 59, 'fa fa-flag', '<i class=\"fa fa-flag\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1312, 59, 'fa fa-headphones', '<i class=\"fa fa-headphones\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1313, 59, 'fa fa-volume-off', '<i class=\"fa fa-volume-off\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51');
INSERT INTO `cc_block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1314, 59, 'fa fa-volume-down', '<i class=\"fa fa-volume-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1315, 59, 'fa fa-volume-up', '<i class=\"fa fa-volume-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1316, 59, 'fa fa-qrcode', '<i class=\"fa fa-qrcode\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1317, 59, 'fa fa-barcode', '<i class=\"fa fa-barcode\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1318, 59, 'fa fa-tag', '<i class=\"fa fa-tag\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1319, 59, 'fa fa-tags', '<i class=\"fa fa-tags\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1320, 59, 'fa fa-book', '<i class=\"fa fa-book\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1321, 59, 'fa fa-bookmark', '<i class=\"fa fa-bookmark\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1322, 59, 'fa fa-print', '<i class=\"fa fa-print\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1323, 59, 'fa fa-camera', '<i class=\"fa fa-camera\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1324, 59, 'fa fa-font', '<i class=\"fa fa-font\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1325, 59, 'fa fa-bold', '<i class=\"fa fa-bold\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1326, 59, 'fa fa-italic', '<i class=\"fa fa-italic\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1327, 59, 'fa fa-text-height', '<i class=\"fa fa-text-height\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1328, 59, 'fa fa-text-width', '<i class=\"fa fa-text-width\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1329, 59, 'fa fa-align-left', '<i class=\"fa fa-align-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1330, 59, 'fa fa-align-center', '<i class=\"fa fa-align-center\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1331, 59, 'fa fa-align-right', '<i class=\"fa fa-align-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1332, 59, 'fa fa-align-justify', '<i class=\"fa fa-align-justify\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1333, 59, 'fa fa-list', '<i class=\"fa fa-list\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1334, 59, 'fa fa-outdent', '<i class=\"fa fa-outdent\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1335, 59, 'fa fa-indent', '<i class=\"fa fa-indent\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1336, 59, 'fa fa-video-camera', '<i class=\"fa fa-video-camera\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1337, 59, 'fa fa-picture-o', '<i class=\"fa fa-picture-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1338, 59, 'fa fa-pencil', '<i class=\"fa fa-pencil\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1339, 59, 'fa fa-map-marker', '<i class=\"fa fa-map-marker\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1340, 59, 'fa fa-adjust', '<i class=\"fa fa-adjust\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1341, 59, 'fa fa-tint', '<i class=\"fa fa-tint\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1342, 59, 'fa fa-pencil-square-o', '<i class=\"fa fa-pencil-square-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1343, 59, 'fa fa-share-square-o', '<i class=\"fa fa-share-square-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1344, 59, 'fa fa-check-square-o', '<i class=\"fa fa-check-square-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1345, 59, 'fa fa-arrows', '<i class=\"fa fa-arrows\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1346, 59, 'fa fa-step-backward', '<i class=\"fa fa-step-backward\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1347, 59, 'fa fa-fast-backward', '<i class=\"fa fa-fast-backward\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1348, 59, 'fa fa-backward', '<i class=\"fa fa-backward\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1349, 59, 'fa fa-play', '<i class=\"fa fa-play\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1350, 59, 'fa fa-pause', '<i class=\"fa fa-pause\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1351, 59, 'fa fa-stop', '<i class=\"fa fa-stop\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1352, 59, 'fa fa-forward', '<i class=\"fa fa-forward\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1353, 59, 'fa fa-fast-forward', '<i class=\"fa fa-fast-forward\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1354, 59, 'fa fa-step-forward', '<i class=\"fa fa-step-forward\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1355, 59, 'fa fa-eject', '<i class=\"fa fa-eject\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1356, 59, 'fa fa-chevron-left', '<i class=\"fa fa-chevron-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1357, 59, 'fa fa-chevron-right', '<i class=\"fa fa-chevron-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1358, 59, 'fa fa-plus-circle', '<i class=\"fa fa-plus-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1359, 59, 'fa fa-minus-circle', '<i class=\"fa fa-minus-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1360, 59, 'fa fa-times-circle', '<i class=\"fa fa-times-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1361, 59, 'fa fa-check-circle', '<i class=\"fa fa-check-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1362, 59, 'fa fa-question-circle', '<i class=\"fa fa-question-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1363, 59, 'fa fa-info-circle', '<i class=\"fa fa-info-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1364, 59, 'fa fa-crosshairs', '<i class=\"fa fa-crosshairs\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1365, 59, 'fa fa-times-circle-o', '<i class=\"fa fa-times-circle-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1366, 59, 'fa fa-check-circle-o', '<i class=\"fa fa-check-circle-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1367, 59, 'fa fa-ban', '<i class=\"fa fa-ban\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1368, 59, 'fa fa-arrow-left', '<i class=\"fa fa-arrow-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1369, 59, 'fa fa-arrow-right', '<i class=\"fa fa-arrow-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1370, 59, 'fa fa-arrow-up', '<i class=\"fa fa-arrow-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1371, 59, 'fa fa-arrow-down', '<i class=\"fa fa-arrow-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1372, 59, 'fa fa-share', '<i class=\"fa fa-share\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1373, 59, 'fa fa-expand', '<i class=\"fa fa-expand\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1374, 59, 'fa fa-compress', '<i class=\"fa fa-compress\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1375, 59, 'fa fa-plus', '<i class=\"fa fa-plus\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1376, 59, 'fa fa-minus', '<i class=\"fa fa-minus\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1377, 59, 'fa fa-asterisk', '<i class=\"fa fa-asterisk\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1378, 59, 'fa fa-exclamation-circle', '<i class=\"fa fa-exclamation-circle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1379, 59, 'fa fa-gift', '<i class=\"fa fa-gift\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1380, 59, 'fa fa-leaf', '<i class=\"fa fa-leaf\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1381, 59, 'fa fa-fire', '<i class=\"fa fa-fire\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1382, 59, 'fa fa-eye', '<i class=\"fa fa-eye\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1383, 59, 'fa fa-eye-slash', '<i class=\"fa fa-eye-slash\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1384, 59, 'fa fa-exclamation-triangle', '<i class=\"fa fa-exclamation-triangle\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1385, 59, 'fa fa-plane', '<i class=\"fa fa-plane\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1386, 59, 'fa fa-calendar', '<i class=\"fa fa-calendar\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1387, 59, 'fa fa-random', '<i class=\"fa fa-random\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1388, 59, 'fa fa-comment', '<i class=\"fa fa-comment\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1389, 59, 'fa fa-magnet', '<i class=\"fa fa-magnet\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1390, 59, 'fa fa-chevron-up', '<i class=\"fa fa-chevron-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1391, 59, 'fa fa-chevron-down', '<i class=\"fa fa-chevron-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1392, 59, 'fa fa-retweet', '<i class=\"fa fa-retweet\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1393, 59, 'fa fa-shopping-cart', '<i class=\"fa fa-shopping-cart\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1394, 59, 'fa fa-folder', '<i class=\"fa fa-folder\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1395, 59, 'fa fa-folder-open', '<i class=\"fa fa-folder-open\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1396, 59, 'fa fa-arrows-v', '<i class=\"fa fa-arrows-v\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1397, 59, 'fa fa-arrows-h', '<i class=\"fa fa-arrows-h\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1398, 59, 'fa fa-bar-chart', '<i class=\"fa fa-bar-chart\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1399, 59, 'fa fa-camera-retro', '<i class=\"fa fa-camera-retro\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1400, 59, 'fa fa-key', '<i class=\"fa fa-key\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1401, 59, 'fa fa-cogs', '<i class=\"fa fa-cogs\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1402, 59, 'fa fa-comments', '<i class=\"fa fa-comments\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1403, 59, 'fa fa-thumbs-o-up', '<i class=\"fa fa-thumbs-o-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1404, 59, 'fa fa-thumbs-o-down', '<i class=\"fa fa-thumbs-o-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1405, 59, 'fa fa-star-half', '<i class=\"fa fa-star-half\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1406, 59, 'fa fa-heart-o', '<i class=\"fa fa-heart-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1407, 59, 'fa fa-sign-out', '<i class=\"fa fa-sign-out\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1408, 59, 'fa fa-thumb-tack', '<i class=\"fa fa-thumb-tack\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1409, 59, 'fa fa-external-link', '<i class=\"fa fa-external-link\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1410, 59, 'fa fa-sign-in', '<i class=\"fa fa-sign-in\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1411, 59, 'fa fa-trophy', '<i class=\"fa fa-trophy\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1412, 59, 'fa fa-github-square', '<i class=\"fa fa-github-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1413, 59, 'fa fa-upload', '<i class=\"fa fa-upload\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1414, 59, 'fa fa-lemon-o', '<i class=\"fa fa-lemon-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1415, 59, 'fa fa-phone', '<i class=\"fa fa-phone\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1416, 59, 'fa fa-square-o', '<i class=\"fa fa-square-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1417, 59, 'fa fa-bookmark-o', '<i class=\"fa fa-bookmark-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1418, 59, 'fa fa-phone-square', '<i class=\"fa fa-phone-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1419, 59, 'fa fa-twitter', '<i class=\"fa fa-twitter\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1420, 59, 'fa fa-facebook', '<i class=\"fa fa-facebook\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1421, 59, 'fa fa-github', '<i class=\"fa fa-github\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1422, 59, 'fa fa-unlock', '<i class=\"fa fa-unlock\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1423, 59, 'fa fa-credit-card', '<i class=\"fa fa-credit-card\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1424, 59, 'fa fa-rss', '<i class=\"fa fa-rss\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1425, 59, 'fa fa-hdd-o', '<i class=\"fa fa-hdd-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1426, 59, 'fa fa-bullhorn', '<i class=\"fa fa-bullhorn\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1427, 59, 'fa fa-bell', '<i class=\"fa fa-bell\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1428, 59, 'fa fa-certificate', '<i class=\"fa fa-certificate\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1429, 59, 'fa fa-hand-o-right', '<i class=\"fa fa-hand-o-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1430, 59, 'fa fa-hand-o-left', '<i class=\"fa fa-hand-o-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1431, 59, 'fa fa-hand-o-up', '<i class=\"fa fa-hand-o-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1432, 59, 'fa fa-hand-o-down', '<i class=\"fa fa-hand-o-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1433, 59, 'fa fa-arrow-circle-left', '<i class=\"fa fa-arrow-circle-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1434, 59, 'fa fa-arrow-circle-right', '<i class=\"fa fa-arrow-circle-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1435, 59, 'fa fa-arrow-circle-up', '<i class=\"fa fa-arrow-circle-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1436, 59, 'fa fa-arrow-circle-down', '<i class=\"fa fa-arrow-circle-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1437, 59, 'fa fa-globe', '<i class=\"fa fa-globe\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1438, 59, 'fa fa-wrench', '<i class=\"fa fa-wrench\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1439, 59, 'fa fa-tasks', '<i class=\"fa fa-tasks\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1440, 59, 'fa fa-filter', '<i class=\"fa fa-filter\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1441, 59, 'fa fa-briefcase', '<i class=\"fa fa-briefcase\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1442, 59, 'fa fa-arrows-alt', '<i class=\"fa fa-arrows-alt\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1443, 59, 'fa fa-users', '<i class=\"fa fa-users\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1444, 59, 'fa fa-link', '<i class=\"fa fa-link\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1445, 59, 'fa fa-cloud', '<i class=\"fa fa-cloud\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1446, 59, 'fa fa-flask', '<i class=\"fa fa-flask\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1447, 59, 'fa fa-scissors', '<i class=\"fa fa-scissors\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1448, 59, 'fa fa-files-o', '<i class=\"fa fa-files-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1449, 59, 'fa fa-paperclip', '<i class=\"fa fa-paperclip\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1450, 59, 'fa fa-floppy-o', '<i class=\"fa fa-floppy-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1451, 59, 'fa fa-square', '<i class=\"fa fa-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1452, 59, 'fa fa-bars', '<i class=\"fa fa-bars\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1453, 59, 'fa fa-list-ul', '<i class=\"fa fa-list-ul\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1454, 59, 'fa fa-list-ol', '<i class=\"fa fa-list-ol\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1455, 59, 'fa fa-strikethrough', '<i class=\"fa fa-strikethrough\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1456, 59, 'fa fa-underline', '<i class=\"fa fa-underline\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1457, 59, 'fa fa-table', '<i class=\"fa fa-table\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1458, 59, 'fa fa-magic', '<i class=\"fa fa-magic\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1459, 59, 'fa fa-truck', '<i class=\"fa fa-truck\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1460, 59, 'fa fa-pinterest', '<i class=\"fa fa-pinterest\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1461, 59, 'fa fa-pinterest-square', '<i class=\"fa fa-pinterest-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1462, 59, 'fa fa-google-plus-square', '<i class=\"fa fa-google-plus-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1463, 59, 'fa fa-google-plus', '<i class=\"fa fa-google-plus\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1464, 59, 'fa fa-money', '<i class=\"fa fa-money\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1465, 59, 'fa fa-caret-down', '<i class=\"fa fa-caret-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1466, 59, 'fa fa-caret-up', '<i class=\"fa fa-caret-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1467, 59, 'fa fa-caret-left', '<i class=\"fa fa-caret-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1468, 59, 'fa fa-caret-right', '<i class=\"fa fa-caret-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1469, 59, 'fa fa-columns', '<i class=\"fa fa-columns\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1470, 59, 'fa fa-sort', '<i class=\"fa fa-sort\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1471, 59, 'fa fa-sort-desc', '<i class=\"fa fa-sort-desc\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1472, 59, 'fa fa-sort-asc', '<i class=\"fa fa-sort-asc\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1473, 59, 'fa fa-envelope', '<i class=\"fa fa-envelope\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1474, 59, 'fa fa-linkedin', '<i class=\"fa fa-linkedin\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1475, 59, 'fa fa-undo', '<i class=\"fa fa-undo\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1476, 59, 'fa fa-gavel', '<i class=\"fa fa-gavel\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1477, 59, 'fa fa-tachometer', '<i class=\"fa fa-tachometer\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1478, 59, 'fa fa-comment-o', '<i class=\"fa fa-comment-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1479, 59, 'fa fa-comments-o', '<i class=\"fa fa-comments-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1480, 59, 'fa fa-bolt', '<i class=\"fa fa-bolt\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1481, 59, 'fa fa-sitemap', '<i class=\"fa fa-sitemap\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1482, 59, 'fa fa-umbrella', '<i class=\"fa fa-umbrella\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1483, 59, 'fa fa-clipboard', '<i class=\"fa fa-clipboard\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1484, 59, 'fa fa-lightbulb-o', '<i class=\"fa fa-lightbulb-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1485, 59, 'fa fa-exchange', '<i class=\"fa fa-exchange\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1486, 59, 'fa fa-cloud-download', '<i class=\"fa fa-cloud-download\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1487, 59, 'fa fa-cloud-upload', '<i class=\"fa fa-cloud-upload\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1488, 59, 'fa fa-user-md', '<i class=\"fa fa-user-md\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1489, 59, 'fa fa-stethoscope', '<i class=\"fa fa-stethoscope\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1490, 59, 'fa fa-suitcase', '<i class=\"fa fa-suitcase\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1491, 59, 'fa fa-bell-o', '<i class=\"fa fa-bell-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1492, 59, 'fa fa-coffee', '<i class=\"fa fa-coffee\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1493, 59, 'fa fa-cutlery', '<i class=\"fa fa-cutlery\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1494, 59, 'fa fa-file-text-o', '<i class=\"fa fa-file-text-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1495, 59, 'fa fa-building-o', '<i class=\"fa fa-building-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1496, 59, 'fa fa-hospital-o', '<i class=\"fa fa-hospital-o\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1497, 59, 'fa fa-ambulance', '<i class=\"fa fa-ambulance\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1498, 59, 'fa fa-medkit', '<i class=\"fa fa-medkit\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1499, 59, 'fa fa-fighter-jet', '<i class=\"fa fa-fighter-jet\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1500, 59, 'fa fa-beer', '<i class=\"fa fa-beer\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1501, 59, 'fa fa-h-square', '<i class=\"fa fa-h-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1502, 59, 'fa fa-plus-square', '<i class=\"fa fa-plus-square\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1503, 59, 'fa fa-angle-double-left', '<i class=\"fa fa-angle-double-left\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1504, 59, 'fa fa-angle-double-right', '<i class=\"fa fa-angle-double-right\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1505, 59, 'fa fa-angle-double-up', '<i class=\"fa fa-angle-double-up\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1506, 59, 'fa fa-angle-double-down', '<i class=\"fa fa-angle-double-down\"></i>', '2022-04-26 04:18:51', '2022-04-26 04:18:51'),
(1507, 59, 'fa fa-angle-left', '<i class=\"fa fa-angle-left\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1508, 59, 'fa fa-angle-right', '<i class=\"fa fa-angle-right\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1509, 59, 'fa fa-angle-up', '<i class=\"fa fa-angle-up\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1510, 59, 'fa fa-angle-down', '<i class=\"fa fa-angle-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1511, 59, 'fa fa-desktop', '<i class=\"fa fa-desktop\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1512, 59, 'fa fa-laptop', '<i class=\"fa fa-laptop\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1513, 59, 'fa fa-tablet', '<i class=\"fa fa-tablet\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1514, 59, 'fa fa-mobile', '<i class=\"fa fa-mobile\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1515, 59, 'fa fa-circle-o', '<i class=\"fa fa-circle-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1516, 59, 'fa fa-quote-left', '<i class=\"fa fa-quote-left\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1517, 59, 'fa fa-quote-right', '<i class=\"fa fa-quote-right\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1518, 59, 'fa fa-spinner', '<i class=\"fa fa-spinner\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1519, 59, 'fa fa-circle', '<i class=\"fa fa-circle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1520, 59, 'fa fa-reply', '<i class=\"fa fa-reply\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1521, 59, 'fa fa-github-alt', '<i class=\"fa fa-github-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1522, 59, 'fa fa-folder-o', '<i class=\"fa fa-folder-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1523, 59, 'fa fa-folder-open-o', '<i class=\"fa fa-folder-open-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1524, 59, 'fa fa-smile-o', '<i class=\"fa fa-smile-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1525, 59, 'fa fa-frown-o', '<i class=\"fa fa-frown-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1526, 59, 'fa fa-meh-o', '<i class=\"fa fa-meh-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1527, 59, 'fa fa-gamepad', '<i class=\"fa fa-gamepad\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1528, 59, 'fa fa-keyboard-o', '<i class=\"fa fa-keyboard-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1529, 59, 'fa fa-flag-o', '<i class=\"fa fa-flag-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1530, 59, 'fa fa-flag-checkered', '<i class=\"fa fa-flag-checkered\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1531, 59, 'fa fa-terminal', '<i class=\"fa fa-terminal\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1532, 59, 'fa fa-code', '<i class=\"fa fa-code\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1533, 59, 'fa fa-reply-all', '<i class=\"fa fa-reply-all\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1534, 59, 'fa fa-star-half-o', '<i class=\"fa fa-star-half-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1535, 59, 'fa fa-location-arrow', '<i class=\"fa fa-location-arrow\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1536, 59, 'fa fa-crop', '<i class=\"fa fa-crop\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1537, 59, 'fa fa-code-fork', '<i class=\"fa fa-code-fork\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1538, 59, 'fa fa-chain-broken', '<i class=\"fa fa-chain-broken\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1539, 59, 'fa fa-question', '<i class=\"fa fa-question\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1540, 59, 'fa fa-info', '<i class=\"fa fa-info\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1541, 59, 'fa fa-exclamation', '<i class=\"fa fa-exclamation\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1542, 59, 'fa fa-superscript', '<i class=\"fa fa-superscript\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1543, 59, 'fa fa-subscript', '<i class=\"fa fa-subscript\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1544, 59, 'fa fa-eraser', '<i class=\"fa fa-eraser\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1545, 59, 'fa fa-puzzle-piece', '<i class=\"fa fa-puzzle-piece\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1546, 59, 'fa fa-microphone', '<i class=\"fa fa-microphone\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1547, 59, 'fa fa-microphone-slash', '<i class=\"fa fa-microphone-slash\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1548, 59, 'fa fa-shield', '<i class=\"fa fa-shield\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1549, 59, 'fa fa-calendar-o', '<i class=\"fa fa-calendar-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1550, 59, 'fa fa-fire-extinguisher', '<i class=\"fa fa-fire-extinguisher\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1551, 59, 'fa fa-rocket', '<i class=\"fa fa-rocket\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1552, 59, 'fa fa-maxcdn', '<i class=\"fa fa-maxcdn\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1553, 59, 'fa fa-chevron-circle-left', '<i class=\"fa fa-chevron-circle-left\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1554, 59, 'fa fa-chevron-circle-right', '<i class=\"fa fa-chevron-circle-right\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1555, 59, 'fa fa-chevron-circle-up', '<i class=\"fa fa-chevron-circle-up\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1556, 59, 'fa fa-chevron-circle-down', '<i class=\"fa fa-chevron-circle-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1557, 59, 'fa fa-html5', '<i class=\"fa fa-html5\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1558, 59, 'fa fa-css3', '<i class=\"fa fa-css3\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1559, 59, 'fa fa-anchor', '<i class=\"fa fa-anchor\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1560, 59, 'fa fa-unlock-alt', '<i class=\"fa fa-unlock-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1561, 59, 'fa fa-bullseye', '<i class=\"fa fa-bullseye\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1562, 59, 'fa fa-ellipsis-h', '<i class=\"fa fa-ellipsis-h\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1563, 59, 'fa fa-ellipsis-v', '<i class=\"fa fa-ellipsis-v\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1564, 59, 'fa fa-rss-square', '<i class=\"fa fa-rss-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1565, 59, 'fa fa-play-circle', '<i class=\"fa fa-play-circle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1566, 59, 'fa fa-ticket', '<i class=\"fa fa-ticket\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1567, 59, 'fa fa-minus-square', '<i class=\"fa fa-minus-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1568, 59, 'fa fa-minus-square-o', '<i class=\"fa fa-minus-square-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1569, 59, 'fa fa-level-up', '<i class=\"fa fa-level-up\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1570, 59, 'fa fa-level-down', '<i class=\"fa fa-level-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1571, 59, 'fa fa-check-square', '<i class=\"fa fa-check-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1572, 59, 'fa fa-pencil-square', '<i class=\"fa fa-pencil-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1573, 59, 'fa fa-external-link-square', '<i class=\"fa fa-external-link-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1574, 59, 'fa fa-share-square', '<i class=\"fa fa-share-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1575, 59, 'fa fa-compass', '<i class=\"fa fa-compass\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1576, 59, 'fa fa-caret-square-o-down', '<i class=\"fa fa-caret-square-o-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1577, 59, 'fa fa-caret-square-o-up', '<i class=\"fa fa-caret-square-o-up\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1578, 59, 'fa fa-caret-square-o-right', '<i class=\"fa fa-caret-square-o-right\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1579, 59, 'fa fa-eur', '<i class=\"fa fa-eur\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1580, 59, 'fa fa-gbp', '<i class=\"fa fa-gbp\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1581, 59, 'fa fa-usd', '<i class=\"fa fa-usd\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1582, 59, 'fa fa-inr', '<i class=\"fa fa-inr\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1583, 59, 'fa fa-jpy', '<i class=\"fa fa-jpy\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1584, 59, 'fa fa-rub', '<i class=\"fa fa-rub\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1585, 59, 'fa fa-krw', '<i class=\"fa fa-krw\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1586, 59, 'fa fa-btc', '<i class=\"fa fa-btc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1587, 59, 'fa fa-file', '<i class=\"fa fa-file\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1588, 59, 'fa fa-file-text', '<i class=\"fa fa-file-text\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1589, 59, 'fa fa-sort-alpha-asc', '<i class=\"fa fa-sort-alpha-asc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1590, 59, 'fa fa-sort-alpha-desc', '<i class=\"fa fa-sort-alpha-desc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1591, 59, 'fa fa-sort-amount-asc', '<i class=\"fa fa-sort-amount-asc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1592, 59, 'fa fa-sort-amount-desc', '<i class=\"fa fa-sort-amount-desc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1593, 59, 'fa fa-sort-numeric-asc', '<i class=\"fa fa-sort-numeric-asc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1594, 59, 'fa fa-sort-numeric-desc', '<i class=\"fa fa-sort-numeric-desc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1595, 59, 'fa fa-thumbs-up', '<i class=\"fa fa-thumbs-up\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1596, 59, 'fa fa-thumbs-down', '<i class=\"fa fa-thumbs-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1597, 59, 'fa fa-youtube-square', '<i class=\"fa fa-youtube-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1598, 59, 'fa fa-xing', '<i class=\"fa fa-xing\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1599, 59, 'fa fa-xing-square', '<i class=\"fa fa-xing-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1600, 59, 'fa fa-youtube-play', '<i class=\"fa fa-youtube-play\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1601, 59, 'fa fa-dropbox', '<i class=\"fa fa-dropbox\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1602, 59, 'fa fa-stack-overflow', '<i class=\"fa fa-stack-overflow\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1603, 59, 'fa fa-instagram', '<i class=\"fa fa-instagram\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1604, 59, 'fa fa-flickr', '<i class=\"fa fa-flickr\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1605, 59, 'fa fa-adn', '<i class=\"fa fa-adn\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1606, 59, 'fa fa-bitbucket', '<i class=\"fa fa-bitbucket\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1607, 59, 'fa fa-bitbucket-square', '<i class=\"fa fa-bitbucket-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1608, 59, 'fa fa-tumblr', '<i class=\"fa fa-tumblr\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1609, 59, 'fa fa-tumblr-square', '<i class=\"fa fa-tumblr-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1610, 59, 'fa fa-long-arrow-down', '<i class=\"fa fa-long-arrow-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1611, 59, 'fa fa-long-arrow-up', '<i class=\"fa fa-long-arrow-up\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1612, 59, 'fa fa-long-arrow-left', '<i class=\"fa fa-long-arrow-left\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1613, 59, 'fa fa-long-arrow-right', '<i class=\"fa fa-long-arrow-right\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1614, 59, 'fa fa-apple', '<i class=\"fa fa-apple\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1615, 59, 'fa fa-windows', '<i class=\"fa fa-windows\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1616, 59, 'fa fa-android', '<i class=\"fa fa-android\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1617, 59, 'fa fa-linux', '<i class=\"fa fa-linux\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1618, 59, 'fa fa-dribbble', '<i class=\"fa fa-dribbble\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1619, 59, 'fa fa-skype', '<i class=\"fa fa-skype\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1620, 59, 'fa fa-foursquare', '<i class=\"fa fa-foursquare\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1621, 59, 'fa fa-trello', '<i class=\"fa fa-trello\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1622, 59, 'fa fa-female', '<i class=\"fa fa-female\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1623, 59, 'fa fa-male', '<i class=\"fa fa-male\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1624, 59, 'fa fa-gratipay', '<i class=\"fa fa-gratipay\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1625, 59, 'fa fa-sun-o', '<i class=\"fa fa-sun-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1626, 59, 'fa fa-moon-o', '<i class=\"fa fa-moon-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1627, 59, 'fa fa-archive', '<i class=\"fa fa-archive\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1628, 59, 'fa fa-bug', '<i class=\"fa fa-bug\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1629, 59, 'fa fa-vk', '<i class=\"fa fa-vk\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1630, 59, 'fa fa-weibo', '<i class=\"fa fa-weibo\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1631, 59, 'fa fa-renren', '<i class=\"fa fa-renren\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1632, 59, 'fa fa-pagelines', '<i class=\"fa fa-pagelines\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1633, 59, 'fa fa-stack-exchange', '<i class=\"fa fa-stack-exchange\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1634, 59, 'fa fa-arrow-circle-o-right', '<i class=\"fa fa-arrow-circle-o-right\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1635, 59, 'fa fa-arrow-circle-o-left', '<i class=\"fa fa-arrow-circle-o-left\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1636, 59, 'fa fa-caret-square-o-left', '<i class=\"fa fa-caret-square-o-left\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1637, 59, 'fa fa-dot-circle-o', '<i class=\"fa fa-dot-circle-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1638, 59, 'fa fa-wheelchair', '<i class=\"fa fa-wheelchair\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1639, 59, 'fa fa-vimeo-square', '<i class=\"fa fa-vimeo-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1640, 59, 'fa fa-try', '<i class=\"fa fa-try\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1641, 59, 'fa fa-plus-square-o', '<i class=\"fa fa-plus-square-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1642, 59, 'fa fa-space-shuttle', '<i class=\"fa fa-space-shuttle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1643, 59, 'fa fa-slack', '<i class=\"fa fa-slack\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1644, 59, 'fa fa-envelope-square', '<i class=\"fa fa-envelope-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1645, 59, 'fa fa-wordpress', '<i class=\"fa fa-wordpress\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1646, 59, 'fa fa-openid', '<i class=\"fa fa-openid\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1647, 59, 'fa fa-university', '<i class=\"fa fa-university\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1648, 59, 'fa fa-graduation-cap', '<i class=\"fa fa-graduation-cap\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1649, 59, 'fa fa-yahoo', '<i class=\"fa fa-yahoo\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1650, 59, 'fa fa-google', '<i class=\"fa fa-google\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1651, 59, 'fa fa-reddit', '<i class=\"fa fa-reddit\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1652, 59, 'fa fa-reddit-square', '<i class=\"fa fa-reddit-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1653, 59, 'fa fa-stumbleupon-circle', '<i class=\"fa fa-stumbleupon-circle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1654, 59, 'fa fa-stumbleupon', '<i class=\"fa fa-stumbleupon\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1655, 59, 'fa fa-delicious', '<i class=\"fa fa-delicious\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1656, 59, 'fa fa-digg', '<i class=\"fa fa-digg\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1657, 59, 'fa fa-pied-piper', '<i class=\"fa fa-pied-piper\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1658, 59, 'fa fa-pied-piper-alt', '<i class=\"fa fa-pied-piper-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1659, 59, 'fa fa-drupal', '<i class=\"fa fa-drupal\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1660, 59, 'fa fa-joomla', '<i class=\"fa fa-joomla\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1661, 59, 'fa fa-language', '<i class=\"fa fa-language\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1662, 59, 'fa fa-fax', '<i class=\"fa fa-fax\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1663, 59, 'fa fa-building', '<i class=\"fa fa-building\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1664, 59, 'fa fa-child', '<i class=\"fa fa-child\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1665, 59, 'fa fa-paw', '<i class=\"fa fa-paw\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1666, 59, 'fa fa-spoon', '<i class=\"fa fa-spoon\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1667, 59, 'fa fa-cube', '<i class=\"fa fa-cube\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1668, 59, 'fa fa-cubes', '<i class=\"fa fa-cubes\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1669, 59, 'fa fa-behance', '<i class=\"fa fa-behance\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1670, 59, 'fa fa-behance-square', '<i class=\"fa fa-behance-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1671, 59, 'fa fa-steam', '<i class=\"fa fa-steam\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1672, 59, 'fa fa-steam-square', '<i class=\"fa fa-steam-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1673, 59, 'fa fa-recycle', '<i class=\"fa fa-recycle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1674, 59, 'fa fa-car', '<i class=\"fa fa-car\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1675, 59, 'fa fa-taxi', '<i class=\"fa fa-taxi\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1676, 59, 'fa fa-tree', '<i class=\"fa fa-tree\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1677, 59, 'fa fa-spotify', '<i class=\"fa fa-spotify\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1678, 59, 'fa fa-deviantart', '<i class=\"fa fa-deviantart\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1679, 59, 'fa fa-soundcloud', '<i class=\"fa fa-soundcloud\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1680, 59, 'fa fa-database', '<i class=\"fa fa-database\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1681, 59, 'fa fa-file-pdf-o', '<i class=\"fa fa-file-pdf-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1682, 59, 'fa fa-file-word-o', '<i class=\"fa fa-file-word-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1683, 59, 'fa fa-file-excel-o', '<i class=\"fa fa-file-excel-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1684, 59, 'fa fa-file-powerpoint-o', '<i class=\"fa fa-file-powerpoint-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1685, 59, 'fa fa-file-image-o', '<i class=\"fa fa-file-image-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1686, 59, 'fa fa-file-archive-o', '<i class=\"fa fa-file-archive-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1687, 59, 'fa fa-file-audio-o', '<i class=\"fa fa-file-audio-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1688, 59, 'fa fa-file-video-o', '<i class=\"fa fa-file-video-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1689, 59, 'fa fa-file-code-o', '<i class=\"fa fa-file-code-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1690, 59, 'fa fa-vine', '<i class=\"fa fa-vine\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1691, 59, 'fa fa-codepen', '<i class=\"fa fa-codepen\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1692, 59, 'fa fa-jsfiddle', '<i class=\"fa fa-jsfiddle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1693, 59, 'fa fa-life-ring', '<i class=\"fa fa-life-ring\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1694, 59, 'fa fa-circle-o-notch', '<i class=\"fa fa-circle-o-notch\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1695, 59, 'fa fa-rebel', '<i class=\"fa fa-rebel\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1696, 59, 'fa fa-empire', '<i class=\"fa fa-empire\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1697, 59, 'fa fa-git-square', '<i class=\"fa fa-git-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1698, 59, 'fa fa-git', '<i class=\"fa fa-git\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1699, 59, 'fa fa-hacker-news', '<i class=\"fa fa-hacker-news\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1700, 59, 'fa fa-tencent-weibo', '<i class=\"fa fa-tencent-weibo\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1701, 59, 'fa fa-qq', '<i class=\"fa fa-qq\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1702, 59, 'fa fa-weixin', '<i class=\"fa fa-weixin\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1703, 59, 'fa fa-paper-plane', '<i class=\"fa fa-paper-plane\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1704, 59, 'fa fa-paper-plane-o', '<i class=\"fa fa-paper-plane-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1705, 59, 'fa fa-history', '<i class=\"fa fa-history\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1706, 59, 'fa fa-circle-thin', '<i class=\"fa fa-circle-thin\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1707, 59, 'fa fa-header', '<i class=\"fa fa-header\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1708, 59, 'fa fa-paragraph', '<i class=\"fa fa-paragraph\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1709, 59, 'fa fa-sliders', '<i class=\"fa fa-sliders\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1710, 59, 'fa fa-share-alt', '<i class=\"fa fa-share-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1711, 59, 'fa fa-share-alt-square', '<i class=\"fa fa-share-alt-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1712, 59, 'fa fa-bomb', '<i class=\"fa fa-bomb\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1713, 59, 'fa fa-futbol-o', '<i class=\"fa fa-futbol-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1714, 59, 'fa fa-tty', '<i class=\"fa fa-tty\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1715, 59, 'fa fa-binoculars', '<i class=\"fa fa-binoculars\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1716, 59, 'fa fa-plug', '<i class=\"fa fa-plug\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1717, 59, 'fa fa-slideshare', '<i class=\"fa fa-slideshare\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1718, 59, 'fa fa-twitch', '<i class=\"fa fa-twitch\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1719, 59, 'fa fa-yelp', '<i class=\"fa fa-yelp\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1720, 59, 'fa fa-newspaper-o', '<i class=\"fa fa-newspaper-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1721, 59, 'fa fa-wifi', '<i class=\"fa fa-wifi\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1722, 59, 'fa fa-calculator', '<i class=\"fa fa-calculator\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1723, 59, 'fa fa-paypal', '<i class=\"fa fa-paypal\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1724, 59, 'fa fa-google-wallet', '<i class=\"fa fa-google-wallet\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1725, 59, 'fa fa-cc-visa', '<i class=\"fa fa-cc-visa\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1726, 59, 'fa fa-cc-mastercard', '<i class=\"fa fa-cc-mastercard\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1727, 59, 'fa fa-cc-discover', '<i class=\"fa fa-cc-discover\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1728, 59, 'fa fa-cc-amex', '<i class=\"fa fa-cc-amex\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1729, 59, 'fa fa-cc-paypal', '<i class=\"fa fa-cc-paypal\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1730, 59, 'fa fa-cc-stripe', '<i class=\"fa fa-cc-stripe\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1731, 59, 'fa fa-bell-slash', '<i class=\"fa fa-bell-slash\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1732, 59, 'fa fa-bell-slash-o', '<i class=\"fa fa-bell-slash-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1733, 59, 'fa fa-trash', '<i class=\"fa fa-trash\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1734, 59, 'fa fa-copyright', '<i class=\"fa fa-copyright\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1735, 59, 'fa fa-at', '<i class=\"fa fa-at\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1736, 59, 'fa fa-eyedropper', '<i class=\"fa fa-eyedropper\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1737, 59, 'fa fa-paint-brush', '<i class=\"fa fa-paint-brush\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1738, 59, 'fa fa-birthday-cake', '<i class=\"fa fa-birthday-cake\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1739, 59, 'fa fa-area-chart', '<i class=\"fa fa-area-chart\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1740, 59, 'fa fa-pie-chart', '<i class=\"fa fa-pie-chart\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1741, 59, 'fa fa-line-chart', '<i class=\"fa fa-line-chart\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1742, 59, 'fa fa-lastfm', '<i class=\"fa fa-lastfm\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1743, 59, 'fa fa-lastfm-square', '<i class=\"fa fa-lastfm-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1744, 59, 'fa fa-toggle-off', '<i class=\"fa fa-toggle-off\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1745, 59, 'fa fa-toggle-on', '<i class=\"fa fa-toggle-on\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1746, 59, 'fa fa-bicycle', '<i class=\"fa fa-bicycle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1747, 59, 'fa fa-bus', '<i class=\"fa fa-bus\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1748, 59, 'fa fa-ioxhost', '<i class=\"fa fa-ioxhost\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1749, 59, 'fa fa-angellist', '<i class=\"fa fa-angellist\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1750, 59, 'fa fa-cc', '<i class=\"fa fa-cc\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1751, 59, 'fa fa-ils', '<i class=\"fa fa-ils\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1752, 59, 'fa fa-meanpath', '<i class=\"fa fa-meanpath\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1753, 59, 'fa fa-buysellads', '<i class=\"fa fa-buysellads\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1754, 59, 'fa fa-connectdevelop', '<i class=\"fa fa-connectdevelop\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1755, 59, 'fa fa-dashcube', '<i class=\"fa fa-dashcube\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1756, 59, 'fa fa-forumbee', '<i class=\"fa fa-forumbee\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1757, 59, 'fa fa-leanpub', '<i class=\"fa fa-leanpub\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1758, 59, 'fa fa-sellsy', '<i class=\"fa fa-sellsy\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1759, 59, 'fa fa-shirtsinbulk', '<i class=\"fa fa-shirtsinbulk\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52');
INSERT INTO `cc_block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1760, 59, 'fa fa-simplybuilt', '<i class=\"fa fa-simplybuilt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1761, 59, 'fa fa-skyatlas', '<i class=\"fa fa-skyatlas\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1762, 59, 'fa fa-cart-plus', '<i class=\"fa fa-cart-plus\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1763, 59, 'fa fa-cart-arrow-down', '<i class=\"fa fa-cart-arrow-down\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1764, 59, 'fa fa-diamond', '<i class=\"fa fa-diamond\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1765, 59, 'fa fa-ship', '<i class=\"fa fa-ship\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1766, 59, 'fa fa-user-secret', '<i class=\"fa fa-user-secret\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1767, 59, 'fa fa-motorcycle', '<i class=\"fa fa-motorcycle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1768, 59, 'fa fa-street-view', '<i class=\"fa fa-street-view\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1769, 59, 'fa fa-heartbeat', '<i class=\"fa fa-heartbeat\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1770, 59, 'fa fa-venus', '<i class=\"fa fa-venus\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1771, 59, 'fa fa-mars', '<i class=\"fa fa-mars\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1772, 59, 'fa fa-mercury', '<i class=\"fa fa-mercury\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1773, 59, 'fa fa-transgender', '<i class=\"fa fa-transgender\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1774, 59, 'fa fa-transgender-alt', '<i class=\"fa fa-transgender-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1775, 59, 'fa fa-venus-double', '<i class=\"fa fa-venus-double\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1776, 59, 'fa fa-mars-double', '<i class=\"fa fa-mars-double\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1777, 59, 'fa fa-venus-mars', '<i class=\"fa fa-venus-mars\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1778, 59, 'fa fa-mars-stroke', '<i class=\"fa fa-mars-stroke\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1779, 59, 'fa fa-mars-stroke-v', '<i class=\"fa fa-mars-stroke-v\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1780, 59, 'fa fa-mars-stroke-h', '<i class=\"fa fa-mars-stroke-h\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1781, 59, 'fa fa-neuter', '<i class=\"fa fa-neuter\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1782, 59, 'fa fa-genderless', '<i class=\"fa fa-genderless\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1783, 59, 'fa fa-facebook-official', '<i class=\"fa fa-facebook-official\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1784, 59, 'fa fa-pinterest-p', '<i class=\"fa fa-pinterest-p\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1785, 59, 'fa fa-whatsapp', '<i class=\"fa fa-whatsapp\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1786, 59, 'fa fa-server', '<i class=\"fa fa-server\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1787, 59, 'fa fa-user-plus', '<i class=\"fa fa-user-plus\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1788, 59, 'fa fa-user-times', '<i class=\"fa fa-user-times\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1789, 59, 'fa fa-bed', '<i class=\"fa fa-bed\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1790, 59, 'fa fa-viacoin', '<i class=\"fa fa-viacoin\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1791, 59, 'fa fa-train', '<i class=\"fa fa-train\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1792, 59, 'fa fa-subway', '<i class=\"fa fa-subway\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1793, 59, 'fa fa-medium', '<i class=\"fa fa-medium\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1794, 59, 'fa fa-y-combinator', '<i class=\"fa fa-y-combinator\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1795, 59, 'fa fa-optin-monster', '<i class=\"fa fa-optin-monster\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1796, 59, 'fa fa-opencart', '<i class=\"fa fa-opencart\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1797, 59, 'fa fa-expeditedssl', '<i class=\"fa fa-expeditedssl\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1798, 59, 'fa fa-battery-full', '<i class=\"fa fa-battery-full\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1799, 59, 'fa fa-battery-three-quarters', '<i class=\"fa fa-battery-three-quarters\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1800, 59, 'fa fa-battery-half', '<i class=\"fa fa-battery-half\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1801, 59, 'fa fa-battery-quarter', '<i class=\"fa fa-battery-quarter\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1802, 59, 'fa fa-battery-empty', '<i class=\"fa fa-battery-empty\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1803, 59, 'fa fa-mouse-pointer', '<i class=\"fa fa-mouse-pointer\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1804, 59, 'fa fa-i-cursor', '<i class=\"fa fa-i-cursor\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1805, 59, 'fa fa-object-group', '<i class=\"fa fa-object-group\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1806, 59, 'fa fa-object-ungroup', '<i class=\"fa fa-object-ungroup\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1807, 59, 'fa fa-sticky-note', '<i class=\"fa fa-sticky-note\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1808, 59, 'fa fa-sticky-note-o', '<i class=\"fa fa-sticky-note-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1809, 59, 'fa fa-cc-jcb', '<i class=\"fa fa-cc-jcb\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1810, 59, 'fa fa-cc-diners-club', '<i class=\"fa fa-cc-diners-club\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1811, 59, 'fa fa-clone', '<i class=\"fa fa-clone\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1812, 59, 'fa fa-balance-scale', '<i class=\"fa fa-balance-scale\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1813, 59, 'fa fa-hourglass-o', '<i class=\"fa fa-hourglass-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1814, 59, 'fa fa-hourglass-start', '<i class=\"fa fa-hourglass-start\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1815, 59, 'fa fa-hourglass-half', '<i class=\"fa fa-hourglass-half\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1816, 59, 'fa fa-hourglass-end', '<i class=\"fa fa-hourglass-end\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1817, 59, 'fa fa-hourglass', '<i class=\"fa fa-hourglass\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1818, 59, 'fa fa-hand-rock-o', '<i class=\"fa fa-hand-rock-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1819, 59, 'fa fa-hand-paper-o', '<i class=\"fa fa-hand-paper-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1820, 59, 'fa fa-hand-scissors-o', '<i class=\"fa fa-hand-scissors-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1821, 59, 'fa fa-hand-lizard-o', '<i class=\"fa fa-hand-lizard-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1822, 59, 'fa fa-hand-spock-o', '<i class=\"fa fa-hand-spock-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1823, 59, 'fa fa-hand-pointer-o', '<i class=\"fa fa-hand-pointer-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1824, 59, 'fa fa-hand-peace-o', '<i class=\"fa fa-hand-peace-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1825, 59, 'fa fa-trademark', '<i class=\"fa fa-trademark\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1826, 59, 'fa fa-registered', '<i class=\"fa fa-registered\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1827, 59, 'fa fa-creative-commons', '<i class=\"fa fa-creative-commons\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1828, 59, 'fa fa-gg', '<i class=\"fa fa-gg\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1829, 59, 'fa fa-gg-circle', '<i class=\"fa fa-gg-circle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1830, 59, 'fa fa-tripadvisor', '<i class=\"fa fa-tripadvisor\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1831, 59, 'fa fa-odnoklassniki', '<i class=\"fa fa-odnoklassniki\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1832, 59, 'fa fa-odnoklassniki-square', '<i class=\"fa fa-odnoklassniki-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1833, 59, 'fa fa-get-pocket', '<i class=\"fa fa-get-pocket\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1834, 59, 'fa fa-wikipedia-w', '<i class=\"fa fa-wikipedia-w\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1835, 59, 'fa fa-safari', '<i class=\"fa fa-safari\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1836, 59, 'fa fa-chrome', '<i class=\"fa fa-chrome\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1837, 59, 'fa fa-firefox', '<i class=\"fa fa-firefox\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1838, 59, 'fa fa-opera', '<i class=\"fa fa-opera\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1839, 59, 'fa fa-internet-explorer', '<i class=\"fa fa-internet-explorer\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1840, 59, 'fa fa-television', '<i class=\"fa fa-television\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1841, 59, 'fa fa-contao', '<i class=\"fa fa-contao\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1842, 59, 'fa fa-500px', '<i class=\"fa fa-500px\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1843, 59, 'fa fa-amazon', '<i class=\"fa fa-amazon\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1844, 59, 'fa fa-calendar-plus-o', '<i class=\"fa fa-calendar-plus-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1845, 59, 'fa fa-calendar-minus-o', '<i class=\"fa fa-calendar-minus-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1846, 59, 'fa fa-calendar-times-o', '<i class=\"fa fa-calendar-times-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1847, 59, 'fa fa-calendar-check-o', '<i class=\"fa fa-calendar-check-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1848, 59, 'fa fa-industry', '<i class=\"fa fa-industry\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1849, 59, 'fa fa-map-pin', '<i class=\"fa fa-map-pin\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1850, 59, 'fa fa-map-signs', '<i class=\"fa fa-map-signs\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1851, 59, 'fa fa-map-o', '<i class=\"fa fa-map-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1852, 59, 'fa fa-map', '<i class=\"fa fa-map\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1853, 59, 'fa fa-commenting', '<i class=\"fa fa-commenting\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1854, 59, 'fa fa-commenting-o', '<i class=\"fa fa-commenting-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1855, 59, 'fa fa-houzz', '<i class=\"fa fa-houzz\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1856, 59, 'fa fa-vimeo', '<i class=\"fa fa-vimeo\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1857, 59, 'fa fa-black-tie', '<i class=\"fa fa-black-tie\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1858, 59, 'fa fa-fonticons', '<i class=\"fa fa-fonticons\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1859, 59, 'fa fa-reddit-alien', '<i class=\"fa fa-reddit-alien\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1860, 59, 'fa fa-edge', '<i class=\"fa fa-edge\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1861, 59, 'fa fa-credit-card-alt', '<i class=\"fa fa-credit-card-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1862, 59, 'fa fa-codiepie', '<i class=\"fa fa-codiepie\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1863, 59, 'fa fa-modx', '<i class=\"fa fa-modx\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1864, 59, 'fa fa-fort-awesome', '<i class=\"fa fa-fort-awesome\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1865, 59, 'fa fa-usb', '<i class=\"fa fa-usb\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1866, 59, 'fa fa-product-hunt', '<i class=\"fa fa-product-hunt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1867, 59, 'fa fa-mixcloud', '<i class=\"fa fa-mixcloud\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1868, 59, 'fa fa-scribd', '<i class=\"fa fa-scribd\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1869, 59, 'fa fa-pause-circle', '<i class=\"fa fa-pause-circle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1870, 59, 'fa fa-pause-circle-o', '<i class=\"fa fa-pause-circle-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1871, 59, 'fa fa-stop-circle', '<i class=\"fa fa-stop-circle\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1872, 59, 'fa fa-stop-circle-o', '<i class=\"fa fa-stop-circle-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1873, 59, 'fa fa-shopping-bag', '<i class=\"fa fa-shopping-bag\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1874, 59, 'fa fa-shopping-basket', '<i class=\"fa fa-shopping-basket\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1875, 59, 'fa fa-hashtag', '<i class=\"fa fa-hashtag\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1876, 59, 'fa fa-bluetooth', '<i class=\"fa fa-bluetooth\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1877, 59, 'fa fa-bluetooth-b', '<i class=\"fa fa-bluetooth-b\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1878, 59, 'fa fa-percent', '<i class=\"fa fa-percent\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1879, 59, 'fa fa-gitlab', '<i class=\"fa fa-gitlab\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1880, 59, 'fa fa-wpbeginner', '<i class=\"fa fa-wpbeginner\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1881, 59, 'fa fa-wpforms', '<i class=\"fa fa-wpforms\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1882, 59, 'fa fa-envira', '<i class=\"fa fa-envira\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1883, 59, 'fa fa-universal-access', '<i class=\"fa fa-universal-access\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1884, 59, 'fa fa-wheelchair-alt', '<i class=\"fa fa-wheelchair-alt\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1885, 59, 'fa fa-question-circle-o', '<i class=\"fa fa-question-circle-o\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1886, 59, 'fa fa-blind', '<i class=\"fa fa-blind\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1887, 59, 'fa fa-audio-description', '<i class=\"fa fa-audio-description\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1888, 59, 'fa fa-volume-control-phone', '<i class=\"fa fa-volume-control-phone\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1889, 59, 'fa fa-braille', '<i class=\"fa fa-braille\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1890, 59, 'fa fa-assistive-listening-systems', '<i class=\"fa fa-assistive-listening-systems\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1891, 59, 'fa fa-american-sign-language-interpreting', '<i class=\"fa fa-american-sign-language-interpreting\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1892, 59, 'fa fa-deaf', '<i class=\"fa fa-deaf\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1893, 59, 'fa fa-glide', '<i class=\"fa fa-glide\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1894, 59, 'fa fa-glide-g', '<i class=\"fa fa-glide-g\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1895, 59, 'fa fa-sign-language', '<i class=\"fa fa-sign-language\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1896, 59, 'fa fa-low-vision', '<i class=\"fa fa-low-vision\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1897, 59, 'fa fa-viadeo', '<i class=\"fa fa-viadeo\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1898, 59, 'fa fa-viadeo-square', '<i class=\"fa fa-viadeo-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1899, 59, 'fa fa-snapchat', '<i class=\"fa fa-snapchat\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1900, 59, 'fa fa-snapchat-ghost', '<i class=\"fa fa-snapchat-ghost\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(1901, 59, 'fa fa-snapchat-square', '<i class=\"fa fa-snapchat-square\"></i>', '2022-04-26 04:18:52', '2022-04-26 04:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `cc_block_video_cache`
--

CREATE TABLE `cc_block_video_cache` (
  `id` int(10) UNSIGNED NOT NULL,
  `videoId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videoInfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_block_video_cache`
--

INSERT INTO `cc_block_video_cache` (`id`, `videoId`, `videoInfo`, `created_at`, `updated_at`) VALUES
(1, 'q8kxKvSQ7MI', 'O:8:\"stdClass\":4:{s:4:\"kind\";s:13:\"youtube#video\";s:4:\"etag\";s:27:\"n0UEEoJzQxbReAjCF8vlVYjduM0\";s:2:\"id\";s:11:\"q8kxKvSQ7MI\";s:7:\"snippet\";O:8:\"stdClass\":10:{s:11:\"publishedAt\";s:20:\"2016-08-03T11:25:32Z\";s:9:\"channelId\";s:24:\"UCJyJKu3ysdceGqK_JaZFUNA\";s:5:\"title\";s:91:\"Scotland’s Mountains – Aerial Landscapes from Scotland’s Stunning Mountains ( drone )\";s:11:\"description\";s:971:\"Over the last year The Steaming Boots Team has been capturing footage on their adventures in the Scottish Mountains. The majority of the landscapes have been captured from the summits of some of Scotland’s most stunning areas and in all conditions. In the process the team have enjoyed some amazing times as well as enduring the limitations of filming (i.e. extra kit to carry, loitering in blizzards and small issues such as keeping batteries warm !). To follow the team see the below links to their various web pages:\n\nInstagram - https://www.instagram.com/scotlandsmountains/\nSteaming Boots - http://steamingboots.weebly.com/blog\nTwitter - https://twitter.com/steamingboots\nFacebook - https://www.facebook.com/steaming.boots.71\n\nLocations in this film include:\n\nTorridon\nGlencoe\nThe Black Cuillin\nSkye\nGlen Etive\nMamores\nCentral Highlands\nAssynt\n\nTo see more films and adventures please subscribe at : https://www.youtube.com/user/wilkiemurray\n\nMusic by bensound.com\";s:10:\"thumbnails\";O:8:\"stdClass\":5:{s:7:\"default\";O:8:\"stdClass\":3:{s:3:\"url\";s:46:\"https://i.ytimg.com/vi/q8kxKvSQ7MI/default.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;}s:6:\"medium\";O:8:\"stdClass\":3:{s:3:\"url\";s:48:\"https://i.ytimg.com/vi/q8kxKvSQ7MI/mqdefault.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:180;}s:4:\"high\";O:8:\"stdClass\":3:{s:3:\"url\";s:48:\"https://i.ytimg.com/vi/q8kxKvSQ7MI/hqdefault.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:360;}s:8:\"standard\";O:8:\"stdClass\":3:{s:3:\"url\";s:48:\"https://i.ytimg.com/vi/q8kxKvSQ7MI/sddefault.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:480;}s:6:\"maxres\";O:8:\"stdClass\":3:{s:3:\"url\";s:52:\"https://i.ytimg.com/vi/q8kxKvSQ7MI/maxresdefault.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;}}s:12:\"channelTitle\";s:20:\"Scotland\'s Mountains\";s:4:\"tags\";a:19:{i:0;s:20:\"Scotland\'s Mountains\";i:1;s:22:\"Scotland Drone footage\";i:2;s:22:\"Mountain drone footage\";i:3;s:20:\"Scotland drone video\";i:4;s:18:\"aerial photography\";i:5;s:32:\"best places to visit in Scotland\";i:6;s:36:\"where to visit when I go to Scotland\";i:7;s:30:\"Scotland\'s mountain landscapes\";i:8;s:26:\"Scotland\'s mountain ridges\";i:9;s:26:\"scotland\'s mountain ranges\";i:10;s:26:\"Scotland\'s Mountains Drone\";i:11;s:25:\"scotland\'s mountains skye\";i:12;s:29:\"climbing scotland\'s mountains\";i:13;s:23:\"Scotlands best hillwalk\";i:14;s:23:\"Highest mountains in UK\";i:15;s:20:\"hillwalking scotland\";i:16;s:22:\"hiking in the Scotland\";i:17;s:9:\"mountains\";i:18;s:8:\"Scotland\";}s:10:\"categoryId\";s:2:\"17\";s:20:\"liveBroadcastContent\";s:4:\"none\";s:9:\"localized\";O:8:\"stdClass\":2:{s:5:\"title\";s:91:\"Scotland’s Mountains – Aerial Landscapes from Scotland’s Stunning Mountains ( drone )\";s:11:\"description\";s:971:\"Over the last year The Steaming Boots Team has been capturing footage on their adventures in the Scottish Mountains. The majority of the landscapes have been captured from the summits of some of Scotland’s most stunning areas and in all conditions. In the process the team have enjoyed some amazing times as well as enduring the limitations of filming (i.e. extra kit to carry, loitering in blizzards and small issues such as keeping batteries warm !). To follow the team see the below links to their various web pages:\n\nInstagram - https://www.instagram.com/scotlandsmountains/\nSteaming Boots - http://steamingboots.weebly.com/blog\nTwitter - https://twitter.com/steamingboots\nFacebook - https://www.facebook.com/steaming.boots.71\n\nLocations in this film include:\n\nTorridon\nGlencoe\nThe Black Cuillin\nSkye\nGlen Etive\nMamores\nCentral Highlands\nAssynt\n\nTo see more films and adventures please subscribe at : https://www.youtube.com/user/wilkiemurray\n\nMusic by bensound.com\";}}}', '2022-04-26 11:22:57', '2022-04-26 11:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `cc_form_submissions`
--

CREATE TABLE `cc_form_submissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_block_id` int(11) NOT NULL,
  `from_page_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_languages`
--

CREATE TABLE `cc_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_languages`
--

INSERT INTO `cc_languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'English', '2022-04-26 04:16:25', '2022-04-26 04:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `cc_menus`
--

CREATE TABLE `cc_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_sublevel` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_menus`
--

INSERT INTO `cc_menus` (`id`, `label`, `name`, `max_sublevel`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'main_menu', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `cc_menu_items`
--

CREATE TABLE `cc_menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `page_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `sub_levels` int(11) NOT NULL DEFAULT 0,
  `custom_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_page_names` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden_pages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_menu_items`
--

INSERT INTO `cc_menu_items` (`id`, `menu_id`, `page_id`, `order`, `sub_levels`, `custom_name`, `custom_page_names`, `hidden_pages`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 1, 0, '', '', '', '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 1, '2', 2, 0, '', '', '', '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(3, 1, '5', 3, 0, '', '', '', '2022-04-26 04:18:53', '2022-04-26 11:22:22'),
(4, 1, '6', 4, 1, '', '', '', '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(5, 1, '7', 5, 1, '', '', '', '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(9, 1, '30', 6, 0, '', NULL, NULL, '2022-04-26 11:28:39', '2022-04-26 11:28:39'),
(10, 1, '31', 7, 0, '', NULL, NULL, '2022-04-26 11:34:07', '2022-04-26 11:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `cc_migrations`
--

CREATE TABLE `cc_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_migrations`
--

INSERT INTO `cc_migrations` (`id`, `migration`, `batch`) VALUES
(1, '5_2_0_0_create_admin_actions', 1),
(2, '5_2_0_0_create_admin_controllers', 1),
(3, '5_2_0_0_create_admin_logs', 1),
(4, '5_2_0_0_create_admin_menu', 1),
(5, '5_2_0_0_create_backups', 1),
(6, '5_2_0_0_create_block_beacons', 1),
(7, '5_2_0_0_create_block_category', 1),
(8, '5_2_0_0_create_block_form_rules', 1),
(9, '5_2_0_0_create_block_repeaters', 1),
(10, '5_2_0_0_create_block_selectopts', 1),
(11, '5_2_0_0_create_block_video_cache', 1),
(12, '5_2_0_0_create_blocks', 1),
(13, '5_2_0_0_create_form_submissions', 1),
(14, '5_2_0_0_create_languages', 1),
(15, '5_2_0_0_create_menu_items', 1),
(16, '5_2_0_0_create_menus', 1),
(17, '5_2_0_0_create_page_blocks', 1),
(18, '5_2_0_0_create_page_blocks_default', 1),
(19, '5_2_0_0_create_page_blocks_repeater_data', 1),
(20, '5_2_0_0_create_page_blocks_repeater_rows', 1),
(21, '5_2_0_0_create_page_group', 1),
(22, '5_2_0_0_create_page_group_attributes', 1),
(23, '5_2_0_0_create_page_lang', 1),
(24, '5_2_0_0_create_page_publish_requests', 1),
(25, '5_2_0_0_create_page_redirects', 1),
(26, '5_2_0_0_create_page_search_data', 1),
(27, '5_2_0_0_create_page_search_log', 1),
(28, '5_2_0_0_create_page_versions', 1),
(29, '5_2_0_0_create_pages', 1),
(30, '5_2_0_0_create_settings', 1),
(31, '5_2_0_0_create_template_blocks', 1),
(32, '5_2_0_0_create_templates', 1),
(33, '5_2_0_0_create_theme_blocks', 1),
(34, '5_2_0_0_create_themes', 1),
(35, '5_2_0_0_create_user_roles', 1),
(36, '5_2_0_0_create_user_roles_actions', 1),
(37, '5_2_0_0_create_user_roles_page_actions', 1),
(38, '5_2_0_0_create_users', 1),
(39, '5_2_19_0_update_theme_actions', 1),
(40, '5_2_20_0_update_theme_select_actions', 1),
(41, '5_2_22_0_update_theme_manage_actions', 1),
(42, '5_2_23_0_add_secure_folders_setting', 1),
(43, '5_2_26_0_add_theme_actions', 1),
(44, '5_2_27_0_add_block_notes', 1),
(45, '5_2_30_0_add_pages_sitemap', 1),
(46, '5_2_35_0_create_page_versions_schedule', 1),
(47, '5_2_36_0_update_search_log_admin', 1),
(48, '5_3_0_0_add_theme_editor_actions', 1),
(49, '5_3_0_0_add_user_name', 1),
(50, '5_3_0_0_create_page_group_pages', 1),
(51, '5_3_0_0_update_group_pages', 1),
(52, '5_3_15_0_update_menu_items', 1),
(53, '5_3_23_0_add_estimote_support', 1),
(54, '5_3_5_0_add_search_action', 1),
(55, '5_4_0_0_add_cache_setting', 1),
(56, '5_4_0_0_add_custom_page_names_in_menu', 1),
(57, '5_4_0_0_block_note_null', 1),
(58, '5_4_0_0_create_theme_templates', 1),
(59, '5_4_0_0_hide_subpage_in_menu', 1),
(60, '5_4_0_0_repeater_item_name', 1),
(61, '5_5_0_0_repeater_max_rows', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cc_pages`
--

CREATE TABLE `cc_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0,
  `child_template` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `group_container` int(11) NOT NULL DEFAULT 0,
  `group_container_url_priority` int(11) NOT NULL DEFAULT 0,
  `canonical_parent` int(11) NOT NULL DEFAULT 0,
  `link` int(11) NOT NULL DEFAULT 0,
  `live` int(11) NOT NULL DEFAULT 1,
  `sitemap` int(11) NOT NULL DEFAULT 1,
  `live_start` timestamp NULL DEFAULT NULL,
  `live_end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_pages`
--

INSERT INTO `cc_pages` (`id`, `template`, `parent`, `child_template`, `order`, `group_container`, `group_container_url_priority`, `canonical_parent`, `link`, `live`, `sitemap`, `live_start`, `live_end`, `created_at`, `updated_at`) VALUES
(1, 9, 0, 0, 1, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:52', '2022-04-26 04:18:52'),
(2, 7, 0, 0, 2, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(3, 8, 0, 0, 6, 0, 0, 0, 0, 1, 0, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 11:59:31'),
(4, 7, 3, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(5, 7, 0, 0, 3, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 10:22:18'),
(6, 5, 0, 0, 4, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(7, 5, 0, 0, 5, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(8, 4, 6, 0, 1, 0, 0, 6, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 11:26:39'),
(9, 7, 6, 0, 2, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(10, 7, 6, 0, 3, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(11, 7, 6, 0, 4, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(21, 11, 0, 0, 7, 0, 0, 0, 0, 1, 0, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(22, 4, 0, 0, 8, 1, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(23, 6, -1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(24, 6, -1, 0, 0, 0, 0, 22, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(25, 2, 22, 0, 1, 1, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(26, 3, 22, 0, 3, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(27, 1, 22, 0, 2, 1, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(30, 7, 0, 0, 9, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:28:39', '2022-04-26 11:30:38'),
(31, 10, 0, 0, 10, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:34:02', '2022-04-26 11:34:02'),
(32, 2, 7, 0, 1, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:41:26', '2022-04-26 11:52:55'),
(33, 2, 7, 0, 2, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:53:42', '2022-04-26 11:53:42'),
(34, 2, 7, 0, 3, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(35, 2, 7, 0, 4, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(36, 2, 7, 0, 6, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:54:55', '2022-04-26 11:57:59'),
(37, 2, 7, 0, 7, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:55:51', '2022-04-26 11:57:59'),
(38, 2, 7, 0, 8, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:56:06', '2022-04-26 11:57:59'),
(39, 2, 7, 0, 9, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:56:20', '2022-04-26 11:57:59'),
(40, 2, 7, 0, 5, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 11:57:49', '2022-04-26 11:57:59'),
(41, 4, -1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 12:44:00', '2022-04-26 12:44:00'),
(42, 4, -1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 12:49:53', '2022-04-26 12:49:53'),
(43, 4, 0, 0, 11, 0, 0, 0, 0, 1, 1, NULL, NULL, '2022-04-26 12:51:56', '2022-04-26 12:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_blocks`
--

CREATE TABLE `cc_page_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `page_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_blocks`
--

INSERT INTO `cc_page_blocks` (`id`, `language_id`, `page_id`, `block_id`, `content`, `version`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 15, '2', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 1, 1, 13, '1', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(3, 1, 1, 36, 'Oomnis iste natus error sit voluptatem ipsa quae ab illo invent', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(4, 1, 1, 14, '6', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(5, 1, 1, 34, 'Locations', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(6, 1, 2, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<ul>\n<li>Sed ut perspiciatis</li>\n<li>Sed ut perspiciatis</li>\n<li>Sed ut perspiciatis</li>\n</ul>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(7, 1, 2, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(8, 1, 2, 17, '<p>Important sidebar stuff</p>\n<p>Important sidebar stuff</p>\n<p>Important sidebar stuff</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(9, 1, 2, 16, 'Sidebar', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(10, 1, 2, 34, 'Future thinking experts', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(11, 1, 3, 9, '123 Way, The City, \nPlanet Earth', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(12, 1, 3, 11, 'O:8:\"stdClass\":5:{s:10:\"email_from\";s:0:\"\";s:8:\"email_to\";s:0:\"\";s:8:\"template\";i:0;s:7:\"page_to\";s:1:\"4\";s:7:\"captcha\";b:1;}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(13, 1, 3, 10, 'If you would like to email us please use the form below:', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(14, 1, 3, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(15, 1, 3, 7, 'info@thiswebsite.internet', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(16, 1, 3, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(17, 1, 3, 12, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2511.879232160876!2d-1.383762737115256!3d50.98142284230224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48747369943f2f59%3A0xaec570fd56e4fd31!2sWeb+Feet+Ltd!5e0!3m2!1sen!2suk!4v1460459965879', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(18, 1, 3, 8, '123 456 789', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(19, 1, 3, 34, 'Contact Us Template', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(20, 1, 4, 36, 'Thank you for contacting us, we will be in touch shortly.', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(21, 1, 4, 34, 'Thank You Template', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(22, 1, 5, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(23, 1, 5, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(24, 1, 5, 18, '5', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(25, 1, 5, 34, 'Meet the Team', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(26, 1, 6, 1, 'detailed', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(27, 1, 6, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(28, 1, 6, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(29, 1, 6, 34, 'Locations', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(30, 1, 7, 1, 'detailed', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(31, 1, 7, 34, 'Products & Services', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(32, 1, 8, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<p></p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(33, 1, 8, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:46:\"/uploads/images/coaster2017/content_image1.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(34, 1, 8, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(35, 1, 8, 16, 'Aside Content', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(36, 1, 8, 34, 'Mountains', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(37, 1, 8, 4, 'q8kxKvSQ7MI', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(38, 1, 9, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(39, 1, 9, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:46:\"/uploads/images/coaster2017/content_image2.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(40, 1, 9, 34, 'The Wall', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(41, 1, 10, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(42, 1, 10, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/cat1.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(43, 1, 10, 17, '<ul>\n<li>Large</li>\n<li>Reflective</li>\n</ul>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(44, 1, 10, 16, 'Features', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(45, 1, 10, 34, 'Nice Lake', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(46, 1, 11, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(47, 1, 11, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/cat3.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(48, 1, 11, 34, 'Patch of Trees', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(63, 1, 21, 34, 'Sitemap', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(64, 1, 22, 1, 'posts', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(65, 1, 22, 34, 'Our Blog', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(66, 1, 23, 5, 'a:2:{i:0;s:3:\"Cms\";i:1;s:7:\"Coaster\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(67, 1, 23, 6, '6', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(68, 1, 23, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(69, 1, 23, 36, 'Welcome to our new site.', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(70, 1, 23, 3, 'demo@coastercms.org', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(71, 1, 23, 2, '2016-08-24 00:00:00', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(72, 1, 23, 34, 'New Website Launched', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(73, 1, 24, 5, 'a:4:{i:0;s:6:\"Travel\";i:1;s:7:\"Holiday\";i:2;s:5:\"Relax\";i:3;s:5:\"Chill\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(74, 1, 24, 6, '7', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(75, 1, 24, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<ul>\n<li>Cake</li>\n<li>Biscuits</li>\n<li>Chocolate</li>\n</ul>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(76, 1, 24, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(77, 1, 24, 3, '1', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(78, 1, 24, 2, '2017-02-17 00:00:00', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(79, 1, 24, 34, 'Come Visit Us', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(80, 1, 25, 1, 'posts', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(81, 1, 25, 34, 'Category', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(82, 1, 26, 1, 'posts', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(83, 1, 26, 34, 'Search', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(84, 1, 27, 1, 'posts', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(85, 1, 27, 34, 'Archive', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(86, 1, 38, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\n<p><img src=\"/uploads/images/coaster2017/cat2.jpg?1487348450177\" alt=\"\" width=\"800\" height=\"450\" /></p>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(87, 1, 38, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/cat2.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(88, 1, 38, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(89, 1, 38, 17, '<ul>\n<li>Guide 1</li>\n<li>Guide 2</li>\n<li>Guide 3</li>\n<li>A-Z Guide</li>\n<li>Our Best Guide Yet</li>\n<li>Guide 2017</li>\n</ul>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(90, 1, 38, 16, 'Guides', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(91, 1, 38, 34, 'Travel', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(93, 1, 1, 19, '', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(94, 1, 1, 20, '', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(95, 1, 1, 21, '', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(96, 1, 1, 35, '', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(97, 1, 5, 19, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(98, 1, 5, 20, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(99, 1, 5, 21, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(100, 1, 5, 34, 'Learn', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(101, 1, 5, 36, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(102, 1, 5, 33, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(103, 1, 5, 35, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(104, 1, 6, 19, '', 2, '2022-04-26 10:47:22', '2022-04-26 10:47:22'),
(105, 1, 6, 20, '', 2, '2022-04-26 10:47:22', '2022-04-26 10:47:22'),
(106, 1, 6, 21, '', 2, '2022-04-26 10:47:22', '2022-04-26 10:47:22'),
(107, 1, 6, 35, '', 2, '2022-04-26 10:47:22', '2022-04-26 10:47:22'),
(108, 1, 6, 34, 'Trainer\'s Corner', 3, '2022-04-26 10:47:36', '2022-04-26 10:47:36'),
(109, 1, 6, 36, '', 3, '2022-04-26 10:47:36', '2022-04-26 10:47:36'),
(110, 1, 6, 33, '', 3, '2022-04-26 10:47:36', '2022-04-26 10:47:36'),
(111, 1, 7, 19, '', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(112, 1, 7, 20, '', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(113, 1, 7, 21, '', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(114, 1, 7, 34, 'Citizen’s Corner', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(115, 1, 7, 36, '', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(116, 1, 7, 33, '', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(117, 1, 7, 35, '', 2, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(118, 1, 3, 19, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(119, 1, 3, 20, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(120, 1, 3, 21, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(121, 1, 3, 36, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(122, 1, 3, 33, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(123, 1, 3, 7, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(124, 1, 3, 9, '123 Way, The City, \r\nPlanet Earth', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(125, 1, 3, 11, 'O:8:\"stdClass\":5:{s:7:\"captcha\";b:1;s:10:\"email_from\";N;s:8:\"email_to\";N;s:8:\"template\";s:0:\"\";s:7:\"page_to\";s:1:\"4\";}', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(126, 1, 3, 12, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(127, 1, 3, 35, '', 2, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(128, 1, 5, 4, '', 4, '2022-04-26 11:22:11', '2022-04-26 11:22:11'),
(129, 1, 5, 16, '', 4, '2022-04-26 11:22:11', '2022-04-26 11:22:11'),
(130, 1, 5, 17, '', 4, '2022-04-26 11:22:11', '2022-04-26 11:22:11'),
(131, 1, 8, 19, '', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(132, 1, 8, 20, '', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(133, 1, 8, 21, '', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(134, 1, 8, 34, 'Instructions for Trainers', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(135, 1, 8, 36, '', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(136, 1, 8, 33, '<p></p>\r\n<p></p>', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(137, 1, 8, 17, '', 2, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(138, 1, 8, 16, '', 3, '2022-04-26 11:23:57', '2022-04-26 11:23:57'),
(139, 1, 8, 1, '', 6, '2022-04-26 11:26:38', '2022-04-26 11:26:38'),
(140, 1, 30, 34, 'Video Gallery', 1, '2022-04-26 11:28:39', '2022-04-26 11:28:39'),
(141, 1, 30, 19, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(142, 1, 30, 20, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(143, 1, 30, 21, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(144, 1, 30, 36, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(145, 1, 30, 33, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(146, 1, 30, 3, '1', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(147, 1, 30, 2, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(148, 1, 30, 4, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(149, 1, 30, 6, '8', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(150, 1, 30, 35, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(151, 1, 30, 5, '', 2, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(152, 1, 30, 1, '', 3, '2022-04-26 11:30:14', '2022-04-26 11:30:14'),
(153, 1, 31, 34, 'Image Gallery', 1, '2022-04-26 11:34:02', '2022-04-26 11:34:02'),
(154, 1, 31, 19, '', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(155, 1, 31, 20, '', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(156, 1, 31, 21, '', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(157, 1, 31, 36, '', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(158, 1, 31, 33, '', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(159, 1, 31, 18, '9', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(160, 1, 31, 35, '', 2, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(161, 1, 9, 19, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(162, 1, 9, 20, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(163, 1, 9, 21, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(164, 1, 9, 34, 'Financial Literacy Booklets', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(165, 1, 9, 36, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(166, 1, 9, 33, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(167, 1, 9, 4, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(168, 1, 9, 16, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(169, 1, 9, 17, '', 2, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(170, 1, 10, 19, '', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(171, 1, 10, 20, '', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(172, 1, 10, 21, '', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(173, 1, 10, 34, 'Presentation Slides', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(174, 1, 10, 36, '', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(175, 1, 10, 33, '', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(176, 1, 10, 4, '', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(177, 1, 10, 17, '<ul>\r\n<li>Large</li>\r\n<li>Reflective</li>\r\n</ul>', 2, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(178, 1, 11, 19, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(179, 1, 11, 20, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(180, 1, 11, 21, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(181, 1, 11, 34, 'Financial Diary Sample', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(182, 1, 11, 36, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(183, 1, 11, 33, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(184, 1, 11, 4, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(185, 1, 11, 16, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(186, 1, 11, 17, '', 2, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(187, 1, 32, 34, 'Student', 1, '2022-04-26 11:41:26', '2022-04-26 11:41:26'),
(188, 1, 32, 19, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(189, 1, 32, 20, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(190, 1, 32, 21, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(191, 1, 32, 36, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(192, 1, 32, 33, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(193, 1, 32, 1, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(194, 1, 32, 35, '', 2, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(201, 1, 2, 19, '', 2, '2022-04-26 11:48:41', '2022-04-26 11:48:41'),
(202, 1, 2, 20, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(203, 1, 2, 21, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(204, 1, 2, 34, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(205, 1, 2, 36, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(206, 1, 2, 33, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(207, 1, 2, 4, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(208, 1, 2, 35, '', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(209, 1, 2, 17, '<p>Important sidebar stuff</p>\r\n<p>Important sidebar stuff</p>\r\n<p>Important sidebar stuff</p>', 2, '2022-04-26 11:48:42', '2022-04-26 11:48:42'),
(210, 1, 2, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:27:\"/uploads/banners/slide3.png\";s:5:\"title\";s:0:\"\";}', 3, '2022-04-26 11:49:31', '2022-04-26 11:49:31'),
(211, 1, 33, 34, 'Women', 1, '2022-04-26 11:53:42', '2022-04-26 11:53:42'),
(212, 1, 34, 34, 'Women Duplicate', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(213, 1, 34, 19, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(214, 1, 34, 20, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(215, 1, 34, 21, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(216, 1, 34, 34, 'Women', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(217, 1, 34, 36, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(218, 1, 34, 33, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(219, 1, 34, 1, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(220, 1, 34, 35, '', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(221, 1, 35, 34, 'Farmer Duplicate', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(222, 1, 35, 19, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(223, 1, 35, 20, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(224, 1, 35, 21, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(225, 1, 35, 34, 'Women Duplicate', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(226, 1, 35, 36, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(227, 1, 35, 33, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(228, 1, 35, 1, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(229, 1, 35, 35, '', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(230, 1, 36, 34, 'Non Resident Bangladeshi (NRB) Duplicate', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(231, 1, 36, 19, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(232, 1, 36, 20, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(233, 1, 36, 21, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(234, 1, 36, 34, 'Farmer Duplicate', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(235, 1, 36, 36, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(236, 1, 36, 33, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(237, 1, 36, 1, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(238, 1, 36, 35, '', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(239, 1, 37, 34, 'Usage of Foreign Currency Duplicate', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(240, 1, 37, 19, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(241, 1, 37, 20, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(242, 1, 37, 21, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(243, 1, 37, 34, 'Non Resident Bangladeshi (NRB) Duplicate', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(244, 1, 37, 36, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(245, 1, 37, 33, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(246, 1, 37, 1, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(247, 1, 37, 35, '', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(248, 1, 38, 34, 'CMSME Duplicate', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(249, 1, 38, 19, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(250, 1, 38, 20, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(251, 1, 38, 21, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(252, 1, 38, 34, 'Usage of Foreign Currency Duplicate', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(253, 1, 38, 36, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(254, 1, 38, 33, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(255, 1, 38, 1, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(256, 1, 38, 35, '', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(257, 1, 38, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\r\n<p><img src=\"/uploads/images/coaster2017/cat2.jpg?1487348450177\" alt=\"\" width=\"800\" height=\"450\" /></p>', 2, '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(258, 1, 38, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/cat2.jpg\";s:5:\"title\";s:0:\"\";}', 2, '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(259, 1, 39, 34, 'Payment System Duplicate', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(260, 1, 39, 19, '', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(261, 1, 39, 20, '', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(262, 1, 39, 21, '', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(263, 1, 39, 34, 'Travel', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(264, 1, 39, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(265, 1, 39, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\r\n<p><img src=\"/uploads/images/coaster2017/cat2.jpg?1487348450177\" alt=\"\" width=\"800\" height=\"450\" /></p>', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(266, 1, 39, 1, '', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(267, 1, 39, 35, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/cat2.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(268, 1, 40, 34, 'Marginalized people/Physically  Challenged/Workers/Social Safety  Net  Beneficiaries', 1, '2022-04-26 11:57:49', '2022-04-26 11:57:49'),
(269, 1, 1, 34, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(270, 1, 1, 36, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(271, 1, 1, 14, '0', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(272, 1, 1, 34, 'Who We are', 6, '2022-04-26 12:39:14', '2022-04-26 12:39:14'),
(273, 1, 1, 36, 'Bangladesh Bank, the central bank and apex regulatory body for the country\'s monetary and financial system, was established in Dhaka as a body corporate vide the Bangladesh Bank Order, 1972 (P.O. No. 127 of 1972) with effect from 16th December, 1971. At present it has ten offices located at Motijheel, Sadarghat, Chittagong, Khulna, Bogra, Rajshahi, Sylhet, Barisal, Rangpur and Mymensingh in Bangladesh; total manpower stood at 5807 (officials 3981, subordinate staff 1826) as on March 31, 2015.', 6, '2022-04-26 12:39:14', '2022-04-26 12:39:14'),
(274, 1, 41, 34, 'Who We Are', 1, '2022-04-26 12:44:00', '2022-04-26 12:44:00'),
(275, 1, 41, 19, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(276, 1, 41, 20, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(277, 1, 41, 21, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(278, 1, 41, 36, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(279, 1, 41, 33, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(280, 1, 41, 1, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(281, 1, 41, 35, '', 2, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(282, 1, 42, 34, 'Who We Are', 1, '2022-04-26 12:49:53', '2022-04-26 12:49:53'),
(283, 1, 42, 19, '', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(284, 1, 42, 20, '', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(285, 1, 42, 21, '', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(286, 1, 42, 36, '', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(287, 1, 42, 33, '<p>Bangladesh Bank, the central bank and apex regulatory body for the country\'s monetary and financial system, was established in Dhaka as a body corporate vide the Bangladesh Bank Order, 1972 (P.O. No. 127 of 1972) with effect from 16th December, 1971. At present it has ten offices located at Motijheel, Sadarghat, Chittagong, Khulna, Bogra, Rajshahi, Sylhet, Barisal, Rangpur and Mymensingh in Bangladesh; total manpower stood at 5807 (officials 3981, subordinate staff 1826) as on March 31, 2015.</p>', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(288, 1, 42, 1, '', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(289, 1, 42, 35, '', 2, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(290, 1, 43, 34, 'Who We Are', 1, '2022-04-26 12:51:56', '2022-04-26 12:51:56'),
(291, 1, 43, 19, '', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(292, 1, 43, 20, '', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(293, 1, 43, 21, '', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(294, 1, 43, 36, '', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(295, 1, 43, 33, '<p>Bangladesh Bank, the central bank and apex regulatory body for the country\'s monetary and financial system, was established in Dhaka as a body corporate vide the Bangladesh Bank Order, 1972 (P.O. No. 127 of 1972) with effect from 16th December, 1971. At present it has ten offices located at Motijheel, Sadarghat, Chittagong, Khulna, Bogra, Rajshahi, Sylhet, Barisal, Rangpur and Mymensingh in Bangladesh; total manpower stood at 5807 (officials 3981, subordinate staff 1826) as on March 31, 2015.</p>', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(296, 1, 43, 1, '', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(297, 1, 43, 35, '', 2, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(298, 1, 1, 36, '', 7, '2022-04-26 12:52:29', '2022-04-26 12:52:29'),
(299, 1, 1, 34, '', 9, '2022-04-26 12:52:42', '2022-04-26 12:52:42'),
(300, 1, 1, 14, '43', 11, '2022-04-26 12:52:59', '2022-04-26 12:52:59'),
(301, 1, 1, 14, '2', 13, '2022-04-26 12:54:37', '2022-04-26 12:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_blocks_default`
--

CREATE TABLE `cc_page_blocks_default` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `block_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_blocks_default`
--

INSERT INTO `cc_page_blocks_default` (`id`, `language_id`, `block_id`, `content`, `version`, `created_at`, `updated_at`) VALUES
(1, 1, 37, '27', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 1, 38, '25', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(3, 1, 39, '22', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(4, 1, 40, '26', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(5, 1, 31, 'Coaster', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(6, 1, 28, '4', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(7, 1, 27, 'At vero eos et accusamus et iusto odio', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(8, 1, 26, 'Why Us ?', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(9, 1, 24, 'O:8:\"stdClass\":2:{s:4:\"file\";s:38:\"/uploads/images/coaster2017/banner.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(10, 1, 23, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/logo.png\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(11, 1, 20, '%page_name%', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(12, 1, 19, '%page_name% | %site_name%', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(13, 1, 30, 'Back to top', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(14, 1, 25, '1', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(15, 1, 29, '3', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(16, 1, 21, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(17, 1, 22, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(18, 1, 23, 'O:8:\"stdClass\":2:{s:4:\"file\";s:31:\"/uploads/assets/bdbank_logo.png\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(19, 1, 32, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(20, 1, 23, 'O:8:\"stdClass\":2:{s:4:\"file\";s:31:\"/uploads/assets/bdbank_logo.png\";s:5:\"title\";s:0:\"\";}', 2, '2022-04-26 12:06:24', '2022-04-26 12:06:24'),
(21, 1, 23, 'O:8:\"stdClass\":2:{s:4:\"file\";s:24:\"/uploads/assets/logo.png\";s:5:\"title\";s:0:\"\";}', 3, '2022-04-26 12:06:58', '2022-04-26 12:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_blocks_repeater_data`
--

CREATE TABLE `cc_page_blocks_repeater_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `row_key` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_blocks_repeater_data`
--

INSERT INTO `cc_page_blocks_repeater_data` (`id`, `row_key`, `block_id`, `content`, `version`, `created_at`, `updated_at`) VALUES
(1, 1, 49, '<i class=\"fa fa-arrow-down\"></i>', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 1, 48, 'Take the tour', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(3, 1, 44, 'O:8:\"stdClass\":2:{s:4:\"file\";s:38:\"/uploads/images/coaster2017/banner.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(4, 1, 46, 'Edition 2017', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(5, 1, 45, 'Welcome to Coaster CMS', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(6, 2, 49, '<i class=\"fa fa-chevron-circle-right\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(7, 2, 47, 'a:2:{s:4:\"link\";s:12:\"internal://2\";s:6:\"target\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(8, 2, 48, 'About Us', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(9, 2, 44, 'O:8:\"stdClass\":2:{s:4:\"file\";s:38:\"/uploads/images/coaster2017/banner.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(10, 2, 46, 'All text and image blocks can be edited', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(11, 2, 45, 'This is the Homepage Template', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(12, 3, 51, 'O:8:\"stdClass\":2:{s:4:\"file\";s:43:\"/uploads/images/coaster2017/mini-banner.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(13, 3, 50, 'a:2:{s:4:\"link\";s:12:\"internal://2\";s:6:\"target\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(14, 4, 51, 'O:8:\"stdClass\":2:{s:4:\"file\";s:43:\"/uploads/images/coaster2017/mini-banner.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(15, 4, 50, 'a:2:{s:4:\"link\";s:12:\"internal://5\";s:6:\"target\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(16, 5, 59, '<i class=\"fa fa-facebook-square\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(17, 5, 60, 'Facebook', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(18, 6, 59, '<i class=\"fa fa-twitter-square\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(19, 6, 60, 'Twitter', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(20, 7, 59, '<i class=\"fa fa-linkedin-square\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(21, 7, 60, 'LinkedIn', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(22, 8, 59, '<i class=\"fa fa-youtube\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(23, 8, 60, 'YouTube', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(24, 9, 55, '<i class=\"fa fa-wrench fa-2x\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(25, 9, 57, 'Vel ad aliquid copiosae, cum id impetus tincidunt, solum option laoreet ei quo. No cum agam appareat vituperata ateum iusto paulo dignissim.', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(26, 9, 56, 'Customisable', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(27, 10, 55, '<i class=\"fa fa-desktop fa-2x\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(28, 10, 57, 'Vel ad aliquid copiosae, cum id impetus tincidunt, solum option laoreet ei quo. No cum agam appareat vituperata ateum iusto paulo dignissim.', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(29, 10, 56, 'Picturesque', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(30, 11, 55, '<i class=\"fa fa-life-ring fa-2x\"></i>', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(31, 11, 57, 'Vel ad aliquid copiosae, cum id impetus tincidunt, solum option laoreet ei quo. No cum agam appareat vituperata ateum iusto paulo dignissim.', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(32, 11, 56, 'Perfect Support', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(33, 12, 52, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/team.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(34, 12, 53, 'Johanne Smith (Team Leader)', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(35, 12, 54, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(36, 13, 52, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/team.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(37, 13, 53, 'The Real Johanne Smith (Sales)', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(38, 13, 54, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(39, 14, 52, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/team.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(40, 14, 53, 'Johanne Smith\'s Clone (Help Desk)', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(41, 14, 54, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(42, 15, 52, 'O:8:\"stdClass\":2:{s:4:\"file\";s:36:\"/uploads/images/coaster2017/team.jpg\";s:5:\"title\";s:0:\"\";}', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(43, 15, 53, 'Johanne Smith Again (Accountant)', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(44, 15, 54, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(45, 16, 41, 'John Smith', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(46, 16, 42, 'Well done!', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(47, 16, 43, '2016-08-24 15:11:00', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(48, 17, 41, 'Sally', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(49, 17, 42, 'Interesting article ....', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(50, 17, 43, '2016-08-26 13:11:00', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(51, 18, 41, 'Douglas', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(52, 18, 42, 'Yes', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(53, 18, 43, '2016-08-30 10:41:00', 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(54, 4, 0, '1', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(55, 3, 0, '2', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(56, 19, 0, '3', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(57, 19, 50, '', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(58, 19, 51, 'O:8:\"stdClass\":2:{s:4:\"file\";s:27:\"/uploads/banners/slide3.png\";s:5:\"title\";s:0:\"\";}', 2, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(59, 2, 0, '1', 2, '2022-04-26 09:32:48', '2022-04-26 09:32:48'),
(60, 1, 0, '2', 2, '2022-04-26 09:32:48', '2022-04-26 09:32:48'),
(61, 1, 47, '', 2, '2022-04-26 09:32:48', '2022-04-26 09:32:48'),
(62, 15, 52, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(63, 15, 53, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(64, 15, 54, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(65, 13, 52, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(66, 13, 53, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(67, 13, 54, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(68, 14, 52, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(69, 14, 53, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(70, 14, 54, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(71, 12, 52, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(72, 12, 53, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(73, 12, 54, '', 2, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(74, 10, 0, '1', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(75, 11, 0, '2', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(76, 9, 0, '3', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(77, 8, 0, '1', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(78, 8, 58, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(79, 6, 0, '2', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(80, 6, 58, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(81, 7, 0, '3', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(82, 7, 58, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(83, 5, 0, '4', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(84, 5, 58, '', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(85, 2, 44, 'O:8:\"stdClass\":2:{s:4:\"file\";s:27:\"/uploads/banners/slide3.png\";s:5:\"title\";s:0:\"\";}', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(86, 2, 45, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(87, 2, 46, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(88, 2, 47, 'a:2:{s:4:\"link\";s:1:\"#\";s:6:\"target\";s:0:\"\";}', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(89, 2, 48, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(90, 2, 49, '<i class=\"fa fa-arrow-down\"></i>', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(91, 1, 44, 'O:8:\"stdClass\":2:{s:4:\"file\";s:27:\"/uploads/banners/slide1.png\";s:5:\"title\";s:0:\"\";}', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(92, 1, 45, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(93, 1, 46, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(94, 1, 48, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(95, 26, 0, '3', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(96, 26, 44, 'O:8:\"stdClass\":2:{s:4:\"file\";s:27:\"/uploads/banners/slide2.png\";s:5:\"title\";s:0:\"\";}', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(97, 26, 45, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(98, 26, 46, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(99, 26, 47, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(100, 26, 48, '', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(101, 26, 49, '<i class=\"fa fa-arrow-down\"></i>', 3, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(102, 4, 0, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(103, 4, 50, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(104, 4, 51, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(105, 3, 0, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(106, 3, 50, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(107, 3, 51, '', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(108, 19, 0, '1', 4, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(109, 19, 0, '', 14, '2022-04-26 12:54:43', '2022-04-26 12:54:43'),
(110, 19, 51, '', 14, '2022-04-26 12:54:43', '2022-04-26 12:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_blocks_repeater_rows`
--

CREATE TABLE `cc_page_blocks_repeater_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `repeater_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_blocks_repeater_rows`
--

INSERT INTO `cc_page_blocks_repeater_rows` (`id`, `repeater_id`, `row_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 1, 2, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(3, 2, 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(4, 2, 2, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(5, 3, 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(6, 3, 2, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(7, 3, 3, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(8, 3, 4, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(9, 4, 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(10, 4, 2, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(11, 4, 3, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(12, 5, 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(13, 5, 2, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(14, 5, 3, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(15, 5, 4, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(16, 6, 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(17, 7, 1, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(18, 7, 2, '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(19, 2, 3, '2022-04-26 09:32:08', '2022-04-26 09:32:08'),
(20, 5, 5, '2022-04-26 10:21:42', '2022-04-26 10:21:42'),
(21, 8, 0, '2022-04-26 11:28:40', '2022-04-26 11:28:40'),
(22, 8, 1, '2022-04-26 11:29:03', '2022-04-26 11:29:03'),
(23, 8, 2, '2022-04-26 11:29:10', '2022-04-26 11:29:10'),
(24, 9, 0, '2022-04-26 11:34:02', '2022-04-26 11:34:02'),
(25, 9, 1, '2022-04-26 11:34:13', '2022-04-26 11:34:13'),
(26, 1, 3, '2022-04-26 12:09:39', '2022-04-26 12:09:39'),
(27, 2, 4, '2022-04-26 12:20:36', '2022-04-26 12:20:36'),
(28, 2, 5, '2022-04-26 12:30:34', '2022-04-26 12:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_group`
--

CREATE TABLE `cc_page_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_priority` int(11) NOT NULL DEFAULT 50,
  `default_template` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_group`
--

INSERT INTO `cc_page_group` (`id`, `name`, `item_name`, `url_priority`, `default_template`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'Post', 50, 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_group_attributes`
--

CREATE TABLE `cc_page_group_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `item_block_id` int(11) NOT NULL,
  `item_block_order_priority` int(11) NOT NULL DEFAULT 0,
  `item_block_order_dir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'asc',
  `filter_by_block_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_group_attributes`
--

INSERT INTO `cc_page_group_attributes` (`id`, `group_id`, `item_block_id`, `item_block_order_priority`, `item_block_order_dir`, `filter_by_block_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 10, 'desc', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 1, 5, 0, 'asc', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_group_pages`
--

CREATE TABLE `cc_page_group_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_group_pages`
--

INSERT INTO `cc_page_group_pages` (`id`, `page_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 23, 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 24, 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_lang`
--

CREATE TABLE `cc_page_lang` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_lang`
--

INSERT INTO `cc_page_lang` (`id`, `page_id`, `language_id`, `url`, `name`, `live_version`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '/', 'Home', 14, '2022-04-26 04:18:52', '2022-04-26 12:54:43'),
(2, 2, 1, 'about', 'About Us', 3, '2022-04-26 04:18:53', '2022-04-26 11:49:31'),
(3, 3, 1, 'contact', 'Contact Us', 3, '2022-04-26 04:18:53', '2022-04-26 11:59:31'),
(4, 4, 1, 'confirm', 'Thank You', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(5, 5, 1, 'learn', 'Learn', 4, '2022-04-26 04:18:53', '2022-04-26 11:22:11'),
(6, 6, 1, 'trainers-corner', 'Trainer\'s Corner', 3, '2022-04-26 04:18:53', '2022-04-26 10:47:36'),
(7, 7, 1, 'citizens-corner', 'Citizen’s Corner', 3, '2022-04-26 04:18:53', '2022-04-26 10:48:44'),
(8, 8, 1, 'instructions-for-trainers', 'Instructions for Trainers', 6, '2022-04-26 04:18:53', '2022-04-26 11:26:39'),
(9, 9, 1, 'financial-literacy-booklets', 'Financial Literacy Booklets', 2, '2022-04-26 04:18:53', '2022-04-26 11:39:16'),
(10, 10, 1, 'presentation-slides', 'Presentation Slides', 2, '2022-04-26 04:18:53', '2022-04-26 11:39:52'),
(11, 11, 1, 'financial-diary-sample', 'Financial Diary Sample', 2, '2022-04-26 04:18:53', '2022-04-26 11:40:22'),
(21, 21, 1, 'sitemap', 'Sitemap', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(22, 22, 1, 'blog', 'Our Blog', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(23, 23, 1, 'new-website-launched', 'New Website Launched', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(24, 24, 1, 'visit-us', 'Come Visit Us', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(25, 25, 1, 'category', 'Category', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(26, 26, 1, 'search', 'Search', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(27, 27, 1, 'archive', 'Archive', 1, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(30, 30, 1, 'video-gallery', 'Video Gallery', 4, '2022-04-26 11:28:39', '2022-04-26 11:30:38'),
(31, 31, 1, 'image-gallery', 'Image Gallery', 2, '2022-04-26 11:34:02', '2022-04-26 11:34:07'),
(32, 32, 1, 'student', 'Student', 2, '2022-04-26 11:41:26', '2022-04-26 11:41:38'),
(33, 33, 1, 'women', 'Women', 1, '2022-04-26 11:53:42', '2022-04-26 11:53:42'),
(34, 34, 1, 'farmer', 'Farmer', 2, '2022-04-26 11:53:57', '2022-04-26 11:54:23'),
(35, 35, 1, 'non-resident-bangladeshi-(nrb)', 'Non Resident Bangladeshi (NRB)', 2, '2022-04-26 11:54:39', '2022-04-26 11:54:48'),
(36, 36, 1, 'usage-of-foreign-currency', 'Usage of Foreign Currency', 3, '2022-04-26 11:54:55', '2022-04-26 11:55:44'),
(37, 37, 1, 'cmsme', 'CMSME', 2, '2022-04-26 11:55:51', '2022-04-26 11:55:58'),
(38, 38, 1, 'payment-system', 'Payment System', 2, '2022-04-26 11:56:06', '2022-04-26 11:56:16'),
(39, 39, 1, 'quiz,-games,-puzzle-etc', 'Quiz, Games, Puzzle etc', 2, '2022-04-26 11:56:20', '2022-04-26 11:56:31'),
(40, 40, 1, 'marginalized-people-physically--challenged-workers-social-safety--net--beneficiaries', 'Marginalized people/Physically  Challenged/Workers/Social Safety  Net  Beneficiaries', 1, '2022-04-26 11:57:49', '2022-04-26 11:57:49'),
(41, 41, 1, 'who-we-are', 'Who We Are', 2, '2022-04-26 12:44:00', '2022-04-26 12:45:50'),
(42, 42, 1, 'who-we-are', 'Who We Are', 2, '2022-04-26 12:49:53', '2022-04-26 12:50:31'),
(43, 43, 1, 'who-we-are', 'Who We Are', 4, '2022-04-26 12:51:56', '2022-04-26 12:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_publish_requests`
--

CREATE TABLE `cc_page_publish_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_version_id` int(11) NOT NULL,
  `status` enum('awaiting','approved','denied','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_redirects`
--

CREATE TABLE `cc_page_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 301,
  `force` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_search_data`
--

CREATE TABLE `cc_page_search_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `search_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_search_data`
--

INSERT INTO `cc_page_search_data` (`id`, `language_id`, `page_id`, `block_id`, `search_text`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'Home', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(4, 1, 2, 0, 'About Us', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(5, 1, 2, 16, 'Sidebar', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(6, 1, 2, 17, '<p>Important sidebar stuff</p>\r\n<p>Important sidebar stuff</p>\r\n<p>Important sidebar stuff</p>', '2022-04-26 04:18:54', '2022-04-26 11:48:42'),
(10, 1, 3, 0, 'Contact Us', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(12, 1, 3, 8, '123 456 789', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(13, 1, 3, 9, '123 Way, The City, \r\nPlanet Earth', '2022-04-26 04:18:54', '2022-04-26 11:17:12'),
(14, 1, 3, 10, 'If you would like to email us please use the form below:', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(17, 1, 3, 34, 'Contact Us Template', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(19, 1, 4, 0, 'Thank You', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(20, 1, 4, 34, 'Thank You Template', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(21, 1, 4, 36, 'Thank you for contacting us, we will be in touch shortly.', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(22, 1, 5, 0, 'Learn', '2022-04-26 04:18:54', '2022-04-26 10:22:18'),
(24, 1, 5, 34, 'Learn', '2022-04-26 04:18:54', '2022-04-26 10:21:50'),
(26, 1, 6, 0, 'Trainer\'s Corner', '2022-04-26 04:18:54', '2022-04-26 10:47:22'),
(27, 1, 6, 1, 'detailed', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(29, 1, 6, 34, 'Trainer\'s Corner', '2022-04-26 04:18:54', '2022-04-26 10:47:36'),
(31, 1, 7, 0, 'Citizen’s Corner', '2022-04-26 04:18:54', '2022-04-26 10:48:44'),
(32, 1, 7, 1, 'detailed', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(33, 1, 7, 34, 'Citizen’s Corner', '2022-04-26 04:18:54', '2022-04-26 10:48:27'),
(34, 1, 8, 0, 'Instructions for Trainers', '2022-04-26 04:18:54', '2022-04-26 11:26:38'),
(35, 1, 8, 4, 'q8kxKvSQ7MI', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(37, 1, 8, 33, '<p></p>\r\n<p></p>', '2022-04-26 04:18:54', '2022-04-26 11:23:43'),
(38, 1, 8, 34, 'Instructions for Trainers', '2022-04-26 04:18:54', '2022-04-26 11:23:43'),
(39, 1, 8, 35, 'content_image1.jpg', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(41, 1, 9, 0, 'Financial Literacy Booklets', '2022-04-26 04:18:54', '2022-04-26 11:39:16'),
(43, 1, 9, 34, 'Financial Literacy Booklets', '2022-04-26 04:18:54', '2022-04-26 11:39:16'),
(44, 1, 9, 35, 'content_image2.jpg', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(45, 1, 10, 0, 'Presentation Slides', '2022-04-26 04:18:54', '2022-04-26 11:39:52'),
(46, 1, 10, 16, 'Features', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(47, 1, 10, 17, '<ul>\r\n<li>Large</li>\r\n<li>Reflective</li>\r\n</ul>', '2022-04-26 04:18:54', '2022-04-26 11:39:52'),
(49, 1, 10, 34, 'Presentation Slides', '2022-04-26 04:18:54', '2022-04-26 11:39:52'),
(50, 1, 10, 35, 'cat1.jpg', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(51, 1, 11, 0, 'Financial Diary Sample', '2022-04-26 04:18:54', '2022-04-26 11:40:22'),
(53, 1, 11, 34, 'Financial Diary Sample', '2022-04-26 04:18:54', '2022-04-26 11:40:22'),
(54, 1, 11, 35, 'cat3.jpg', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(78, 1, 21, 0, 'Sitemap', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(79, 1, 21, 34, 'Sitemap', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(80, 1, 22, 0, 'Our Blog', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(81, 1, 22, 1, 'posts', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(82, 1, 22, 34, 'Our Blog', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(83, 1, 23, 0, 'New Website Launched', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(84, 1, 23, 2, '24/08/2016 Wednesday 24th August', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(85, 1, 23, 3, 'demo@coastercms.org', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(86, 1, 23, 5, 'Cms Coaster', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(87, 1, 23, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(88, 1, 23, 34, 'New Website Launched', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(89, 1, 23, 36, 'Welcome to our new site.', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(90, 1, 24, 0, 'Come Visit Us', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(91, 1, 24, 2, '17/02/2017 Friday 17th February', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(92, 1, 24, 3, 'samsil@cramstack.com', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(93, 1, 24, 5, 'Travel Holiday Relax Chill', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(94, 1, 24, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<ul>\n<li>Cake</li>\n<li>Biscuits</li>\n<li>Chocolate</li>\n</ul>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima ven</p>', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(95, 1, 24, 34, 'Come Visit Us', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(96, 1, 24, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(97, 1, 25, 0, 'Category', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(98, 1, 25, 1, 'posts', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(99, 1, 25, 34, 'Category', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(100, 1, 26, 0, 'Search', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(101, 1, 26, 1, 'posts', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(102, 1, 26, 34, 'Search', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(103, 1, 27, 0, 'Archive', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(104, 1, 27, 1, 'posts', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(105, 1, 27, 34, 'Archive', '2022-04-26 04:18:54', '2022-04-26 04:18:54'),
(110, 1, 1, 13, 'slide3.png\n#\n<i class=\"fa fa-arrow-down\"></i>\nslide1.png\n<i class=\"fa fa-arrow-down\"></i>\nslide2.png\n<i class=\"fa fa-arrow-down\"></i>\n', '2022-04-26 09:32:48', '2022-04-26 12:10:03'),
(111, 1, 30, 0, 'Video Gallery', '2022-04-26 11:28:39', '2022-04-26 11:28:39'),
(112, 1, 30, 34, 'Video Gallery', '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(113, 1, 30, 3, 'samsil@cramstack.com', '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(114, 1, 31, 0, 'Image Gallery', '2022-04-26 11:34:02', '2022-04-26 11:34:02'),
(115, 1, 31, 34, 'Image Gallery', '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(116, 1, 32, 0, 'Student', '2022-04-26 11:41:26', '2022-04-26 11:41:26'),
(117, 1, 32, 34, 'Student', '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(118, 1, 2, 35, 'slide3.png', '2022-04-26 11:49:31', '2022-04-26 11:49:31'),
(119, 1, 33, 0, 'Women', '2022-04-26 11:53:42', '2022-04-26 11:53:42'),
(120, 1, 34, 0, 'Farmer', '2022-04-26 11:53:57', '2022-04-26 11:54:23'),
(121, 1, 34, 34, 'Women Duplicate', '2022-04-26 11:53:57', '2022-04-26 11:54:23'),
(122, 1, 35, 0, 'Non Resident Bangladeshi (NRB)', '2022-04-26 11:54:39', '2022-04-26 11:54:48'),
(123, 1, 35, 34, 'Farmer Duplicate', '2022-04-26 11:54:39', '2022-04-26 11:54:48'),
(124, 1, 36, 0, 'Usage of Foreign Currency', '2022-04-26 11:54:55', '2022-04-26 11:55:44'),
(125, 1, 36, 34, 'Non Resident Bangladeshi (NRB) Duplicate', '2022-04-26 11:54:55', '2022-04-26 11:55:11'),
(126, 1, 37, 0, 'CMSME', '2022-04-26 11:55:51', '2022-04-26 11:55:58'),
(127, 1, 37, 34, 'Usage of Foreign Currency Duplicate', '2022-04-26 11:55:51', '2022-04-26 11:55:58'),
(128, 1, 38, 0, 'Payment System', '2022-04-26 11:56:06', '2022-04-26 11:56:16'),
(129, 1, 38, 34, 'Travel', '2022-04-26 11:56:06', '2022-04-26 11:56:16'),
(130, 1, 38, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(131, 1, 38, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\r\n<p><img src=\"/uploads/images/coaster2017/cat2.jpg?1487348450177\" alt=\"\" width=\"800\" height=\"450\" /></p>', '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(132, 1, 38, 35, 'cat2.jpg', '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(133, 1, 39, 0, 'Quiz, Games, Puzzle etc', '2022-04-26 11:56:20', '2022-04-26 11:56:31'),
(134, 1, 39, 34, 'Payment System Duplicate', '2022-04-26 11:56:20', '2022-04-26 11:56:31'),
(135, 1, 39, 36, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur', '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(136, 1, 39, 33, '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem, sed quia consequuntur magni dolores eos quin</p>\r\n<p><img src=\"/uploads/images/coaster2017/cat2.jpg?1487348450177\" alt=\"\" width=\"800\" height=\"450\" /></p>', '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(137, 1, 39, 35, 'cat2.jpg', '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(138, 1, 40, 0, 'Marginalized people/Physically  Challenged/Workers/Social Safety  Net  Beneficiaries', '2022-04-26 11:57:49', '2022-04-26 11:57:49'),
(141, 1, 41, 0, 'Who We Are', '2022-04-26 12:44:00', '2022-04-26 12:44:00'),
(142, 1, 41, 34, 'Who We Are', '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(143, 1, 42, 0, 'Who We Are', '2022-04-26 12:49:53', '2022-04-26 12:49:53'),
(144, 1, 42, 34, 'Who We Are', '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(145, 1, 42, 33, '<p>Bangladesh Bank, the central bank and apex regulatory body for the country\'s monetary and financial system, was established in Dhaka as a body corporate vide the Bangladesh Bank Order, 1972 (P.O. No. 127 of 1972) with effect from 16th December, 1971. At present it has ten offices located at Motijheel, Sadarghat, Chittagong, Khulna, Bogra, Rajshahi, Sylhet, Barisal, Rangpur and Mymensingh in Bangladesh; total manpower stood at 5807 (officials 3981, subordinate staff 1826) as on March 31, 2015.</p>', '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(146, 1, 43, 0, 'Who We Are', '2022-04-26 12:51:56', '2022-04-26 12:51:56'),
(147, 1, 43, 34, 'Who We Are', '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(148, 1, 43, 33, '<p>Bangladesh Bank, the central bank and apex regulatory body for the country\'s monetary and financial system, was established in Dhaka as a body corporate vide the Bangladesh Bank Order, 1972 (P.O. No. 127 of 1972) with effect from 16th December, 1971. At present it has ten offices located at Motijheel, Sadarghat, Chittagong, Khulna, Bogra, Rajshahi, Sylhet, Barisal, Rangpur and Mymensingh in Bangladesh; total manpower stood at 5807 (officials 3981, subordinate staff 1826) as on March 31, 2015.</p>', '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(149, 1, 1, 14, 'About Us', '2022-04-26 12:52:59', '2022-04-26 12:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_search_log`
--

CREATE TABLE `cc_page_search_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_versions`
--

CREATE TABLE `cc_page_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_page_versions`
--

INSERT INTO `cc_page_versions` (`id`, `page_id`, `version_id`, `template`, `label`, `preview_key`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '9', NULL, 'ahglrsp8', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(2, 2, 1, '7', NULL, 'bmt1g559', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(3, 3, 1, '8', NULL, '69v0aj2l', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(4, 4, 1, '7', NULL, '92xem1hp', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(5, 5, 1, '10', NULL, '43riojkd', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(6, 6, 1, '5', NULL, '97iscqvh', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(7, 7, 1, '5', NULL, '54ikm6ml', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(8, 8, 1, '7', NULL, '6ege18gd', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(9, 9, 1, '7', NULL, '97iscqvh', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(10, 10, 1, '7', NULL, '3pzdgff1', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(11, 11, 1, '7', NULL, '659mjtot', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(21, 21, 1, '11', NULL, '6nn5in7x', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(22, 22, 1, '4', NULL, 'av8qzwul', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(23, 23, 1, '6', NULL, '7jstpkwd', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(24, 24, 1, '6', NULL, '9gpju5n1', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(25, 25, 1, '2', NULL, '3ldzpq19', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(26, 26, 1, '3', NULL, 'bmt1g559', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(27, 27, 1, '1', NULL, '229et9fx', 0, '2022-04-26 04:18:53', '2022-04-26 04:18:53'),
(30, 1, 2, '9', NULL, '9z32tdpb', 1, '2022-04-26 09:32:47', '2022-04-26 09:32:47'),
(31, 5, 2, '10', NULL, 'bvzsy0pq', 1, '2022-04-26 10:21:50', '2022-04-26 10:21:50'),
(32, 5, 3, '7', NULL, '26uskfne', 1, '2022-04-26 10:22:18', '2022-04-26 10:22:18'),
(33, 6, 2, '5', NULL, '9laxld0a', 1, '2022-04-26 10:47:22', '2022-04-26 10:47:22'),
(34, 6, 3, '5', NULL, '330grei0', 1, '2022-04-26 10:47:36', '2022-04-26 10:47:36'),
(35, 7, 2, '5', NULL, '1ap4dj6j', 1, '2022-04-26 10:48:27', '2022-04-26 10:48:27'),
(36, 7, 3, '5', NULL, '2ttp9zsc', 1, '2022-04-26 10:48:44', '2022-04-26 10:48:44'),
(37, 3, 2, '8', NULL, 'av8r0g7s', 1, '2022-04-26 11:17:12', '2022-04-26 11:17:12'),
(38, 5, 4, '7', NULL, 'acv81mwz', 1, '2022-04-26 11:22:11', '2022-04-26 11:22:11'),
(39, 8, 2, '7', NULL, 'ahglscdb', 1, '2022-04-26 11:23:43', '2022-04-26 11:23:43'),
(40, 8, 3, '7', NULL, '3ukr7oh8', 1, '2022-04-26 11:23:56', '2022-04-26 11:23:56'),
(41, 8, 4, '7', NULL, '9laxleq3', 1, '2022-04-26 11:24:27', '2022-04-26 11:24:27'),
(42, 8, 5, '7', NULL, 'bi7npzk5', 1, '2022-04-26 11:26:29', '2022-04-26 11:26:29'),
(43, 8, 6, '4', NULL, '9uhp2tla', 1, '2022-04-26 11:26:38', '2022-04-26 11:26:38'),
(44, 30, 1, '6', NULL, '1xo133yf', 1, '2022-04-26 11:28:39', '2022-04-26 11:28:39'),
(45, 30, 2, '4', NULL, '7jstq4ud', 1, '2022-04-26 11:29:41', '2022-04-26 11:29:41'),
(46, 30, 3, '1', NULL, '86rqfns6', 1, '2022-04-26 11:30:14', '2022-04-26 11:30:14'),
(47, 30, 4, '7', NULL, '69v0b326', 1, '2022-04-26 11:30:38', '2022-04-26 11:30:38'),
(48, 31, 1, '10', NULL, '4hjnx7uy', 1, '2022-04-26 11:34:02', '2022-04-26 11:34:02'),
(49, 31, 2, '10', NULL, '9uhp2txr', 1, '2022-04-26 11:34:07', '2022-04-26 11:34:07'),
(50, 9, 2, '7', NULL, '3gslzl1g', 1, '2022-04-26 11:39:16', '2022-04-26 11:39:16'),
(51, 10, 2, '7', NULL, 'bi7nq06g', 1, '2022-04-26 11:39:52', '2022-04-26 11:39:52'),
(52, 11, 2, '7', NULL, '6wtx0mfa', 1, '2022-04-26 11:40:22', '2022-04-26 11:40:22'),
(53, 32, 1, '2', NULL, '9laxlfie', 1, '2022-04-26 11:41:26', '2022-04-26 11:41:26'),
(54, 32, 2, '2', NULL, '7xkyy9jm', 1, '2022-04-26 11:41:38', '2022-04-26 11:41:38'),
(56, 2, 2, '7', NULL, '3ukr7pmh', 1, '2022-04-26 11:48:41', '2022-04-26 11:48:41'),
(57, 2, 3, '7', NULL, '5w2v2zsb', 1, '2022-04-26 11:49:31', '2022-04-26 11:49:31'),
(58, 33, 1, '2', NULL, '5w2v2zza', 1, '2022-04-26 11:53:42', '2022-04-26 11:53:42'),
(59, 34, 1, '2', NULL, '43rip4mt', 1, '2022-04-26 11:53:57', '2022-04-26 11:53:57'),
(60, 34, 2, '2', NULL, 'av8r0hxr', 1, '2022-04-26 11:54:23', '2022-04-26 11:54:23'),
(61, 35, 1, '2', NULL, '92xemmlb', 1, '2022-04-26 11:54:39', '2022-04-26 11:54:39'),
(62, 35, 2, '2', NULL, '6nn5j8bs', 1, '2022-04-26 11:54:48', '2022-04-26 11:54:48'),
(63, 36, 1, '2', NULL, '7xkyya5r', 1, '2022-04-26 11:54:55', '2022-04-26 11:54:55'),
(64, 36, 2, '2', NULL, '1xo1356n', 1, '2022-04-26 11:55:11', '2022-04-26 11:55:11'),
(65, 36, 3, '2', NULL, '8p59eihs', 1, '2022-04-26 11:55:44', '2022-04-26 11:55:44'),
(66, 37, 1, '2', NULL, 'bmt1gqav', 1, '2022-04-26 11:55:51', '2022-04-26 11:55:51'),
(67, 37, 2, '2', NULL, '4vbt5d0u', 1, '2022-04-26 11:55:58', '2022-04-26 11:55:58'),
(68, 38, 1, '2', NULL, '26uskjzq', 1, '2022-04-26 11:56:06', '2022-04-26 11:56:06'),
(69, 38, 2, '2', NULL, 'ahglsdvk', 1, '2022-04-26 11:56:16', '2022-04-26 11:56:16'),
(70, 39, 1, '2', NULL, '6nn5j8ec', 1, '2022-04-26 11:56:20', '2022-04-26 11:56:20'),
(71, 39, 2, '2', NULL, '54ikmrtb', 1, '2022-04-26 11:56:31', '2022-04-26 11:56:31'),
(72, 40, 1, '2', NULL, '6nn5j8gt', 1, '2022-04-26 11:57:49', '2022-04-26 11:57:49'),
(73, 3, 3, '8', NULL, '71farcoz', 1, '2022-04-26 11:59:31', '2022-04-26 11:59:31'),
(74, 0, 1, '0', NULL, '3c788wwa', 1, '2022-04-26 12:06:02', '2022-04-26 12:06:02'),
(75, 0, 2, '0', NULL, 'a89uazkw', 1, '2022-04-26 12:06:24', '2022-04-26 12:06:24'),
(76, 0, 3, '0', NULL, 'b4fihxaa', 1, '2022-04-26 12:06:58', '2022-04-26 12:06:58'),
(77, 0, 4, '0', NULL, '8bd46eva', 1, '2022-04-26 12:07:02', '2022-04-26 12:07:02'),
(78, 1, 3, '9', NULL, '6wtx0nsr', 1, '2022-04-26 12:10:03', '2022-04-26 12:10:03'),
(79, 1, 4, '9', NULL, 'bi7nq228', 1, '2022-04-26 12:20:32', '2022-04-26 12:20:32'),
(80, 1, 5, '9', NULL, '2g1k1zw8', 1, '2022-04-26 12:20:40', '2022-04-26 12:20:40'),
(81, 1, 6, '9', NULL, '8tqn59w2', 1, '2022-04-26 12:39:14', '2022-04-26 12:39:14'),
(82, 41, 1, '4', NULL, '7szl7n1s', 1, '2022-04-26 12:44:00', '2022-04-26 12:44:00'),
(83, 41, 2, '4', NULL, '7jstq8da', 1, '2022-04-26 12:45:50', '2022-04-26 12:45:50'),
(84, 42, 1, '4', NULL, '5dpc491t', 1, '2022-04-26 12:49:53', '2022-04-26 12:49:53'),
(85, 42, 2, '4', NULL, '229etx4n', 1, '2022-04-26 12:50:31', '2022-04-26 12:50:31'),
(86, 43, 1, '4', NULL, '4cya6m30', 1, '2022-04-26 12:51:56', '2022-04-26 12:51:56'),
(87, 43, 2, '4', NULL, '1t2ncifq', 1, '2022-04-26 12:52:06', '2022-04-26 12:52:06'),
(88, 1, 7, '9', NULL, '26uskmlp', 1, '2022-04-26 12:52:29', '2022-04-26 12:52:29'),
(89, 1, 8, '9', NULL, '1ap4doxd', 1, '2022-04-26 12:52:33', '2022-04-26 12:52:33'),
(90, 1, 9, '9', NULL, '8kjvnvqy', 1, '2022-04-26 12:52:42', '2022-04-26 12:52:42'),
(91, 1, 10, '9', NULL, '5iapuykd', 1, '2022-04-26 12:52:45', '2022-04-26 12:52:45'),
(92, 1, 11, '9', NULL, '4qqfeqa3', 1, '2022-04-26 12:52:59', '2022-04-26 12:52:59'),
(93, 1, 12, '9', NULL, '8yc0vzwv', 1, '2022-04-26 12:53:03', '2022-04-26 12:53:03'),
(94, 43, 3, '4', NULL, 'ahglsgju', 1, '2022-04-26 12:54:02', '2022-04-26 12:54:02'),
(95, 43, 4, '4', NULL, '5mw3lo0g', 1, '2022-04-26 12:54:08', '2022-04-26 12:54:08'),
(96, 1, 13, '9', NULL, '97isder1', 1, '2022-04-26 12:54:37', '2022-04-26 12:54:37'),
(97, 1, 14, '9', NULL, 'ciypnqpf', 1, '2022-04-26 12:54:43', '2022-04-26 12:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `cc_page_versions_schedule`
--

CREATE TABLE `cc_page_versions_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_version_id` int(11) NOT NULL,
  `live_from` timestamp NOT NULL DEFAULT current_timestamp(),
  `repeat_in` int(11) NOT NULL DEFAULT 0,
  `repeat_in_func` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_settings`
--

CREATE TABLE `cc_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editable` int(11) NOT NULL,
  `hidden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_settings`
--

INSERT INTO `cc_settings` (`id`, `label`, `name`, `value`, `editable`, `hidden`, `created_at`, `updated_at`) VALUES
(1, 'Site Name', 'site.name', 'Financial Latercy', 1, 0, '2022-04-26 04:16:26', '2022-04-26 12:30:22'),
(2, 'Site Email', 'site.email', 'info@example.com', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(3, 'Site Page Limit', 'site.pages', '0', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(4, 'Admin Path', 'admin.url', 'admin', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(5, 'Admin Publishing', 'admin.publishing', '0', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(6, 'Admin Per Page Permissions', 'admin.advanced_permissions', '0', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(7, 'Default Template', 'admin.default_template', '2', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(8, 'Pre-fill Title Block', 'admin.title_block', 'title', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(9, 'Language', 'frontend.language', '1', 1, 0, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(14, 'Youtube Server API Key', 'key.yt_server', '', 1, 1, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(15, 'Youtube Browser API Key', 'key.yt_browser', '', 1, 1, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(16, 'Secure Upload Folders', 'site.secure_folders', '/secure', 1, 0, '2022-04-26 04:16:26', '2022-04-26 09:29:42'),
(19, 'Cache Length (Minutes)', 'frontend.cache', '1', 1, 0, '2022-04-26 04:16:28', '2022-04-26 09:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `cc_templates`
--

CREATE TABLE `cc_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_template` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_templates`
--

INSERT INTO `cc_templates` (`id`, `label`, `template`, `child_template`, `hidden`, `created_at`, `updated_at`) VALUES
(1, 'Blog-archives Template', 'blog-archives', 0, 0, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(2, 'Blog-category Template', 'blog-category', 0, 0, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(3, 'Blog-search Template', 'blog-search', 0, 0, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(4, 'Blog Template', 'blog', 0, 0, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(5, 'Category Template', 'category', 0, 0, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(6, 'Blog-post Template', 'blog-post', 0, 0, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(7, 'Internal Template', 'internal', 0, 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(8, 'Contact Template', 'contact', 0, 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(9, 'Home Template', 'home', 0, 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(10, 'Team Template', 'team', 0, 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(11, 'Sitemap Template', 'sitemap', 0, 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `cc_themes`
--

CREATE TABLE `cc_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_themes`
--

INSERT INTO `cc_themes` (`id`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'coaster2017', '2022-04-26 04:18:39', '2022-04-26 04:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `cc_theme_blocks`
--

CREATE TABLE `cc_theme_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `show_in_pages` int(11) NOT NULL DEFAULT 0,
  `exclude_templates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_global` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_theme_blocks`
--

INSERT INTO `cc_theme_blocks` (`id`, `theme_id`, `block_id`, `show_in_pages`, `exclude_templates`, `show_in_global`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 1, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(2, 1, 20, 1, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(3, 1, 21, 1, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(4, 1, 22, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(5, 1, 23, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(6, 1, 24, 0, '9', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(7, 1, 25, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(8, 1, 26, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(9, 1, 27, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(10, 1, 28, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(11, 1, 29, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(12, 1, 30, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(13, 1, 31, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(14, 1, 32, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(15, 1, 33, 1, '9,11', 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(16, 1, 34, 1, '', 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(17, 1, 35, 1, '', 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(18, 1, 36, 1, '11', 0, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(19, 1, 37, 0, '5,7,8,9,10,11', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(20, 1, 38, 0, '5,7,8,9,10,11', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(21, 1, 39, 0, '5,7,8,9,10,11', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(22, 1, 40, 0, '', 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `cc_theme_templates`
--

CREATE TABLE `cc_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_template` int(11) DEFAULT NULL,
  `hidden` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_theme_templates`
--

INSERT INTO `cc_theme_templates` (`id`, `theme_id`, `template_id`, `label`, `child_template`, `hidden`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(2, 1, 2, NULL, NULL, NULL, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(3, 1, 3, NULL, NULL, NULL, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(4, 1, 4, NULL, NULL, NULL, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(5, 1, 5, NULL, NULL, NULL, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(6, 1, 6, NULL, NULL, NULL, '2022-04-26 04:18:43', '2022-04-26 04:18:43'),
(7, 1, 7, NULL, NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(8, 1, 8, NULL, NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(9, 1, 9, NULL, NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(10, 1, 10, NULL, NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(11, 1, 11, NULL, NULL, NULL, '2022-04-26 04:18:44', '2022-04-26 04:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `cc_theme_template_blocks`
--

CREATE TABLE `cc_theme_template_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_template_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_theme_template_blocks`
--

INSERT INTO `cc_theme_template_blocks` (`id`, `theme_template_id`, `block_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(2, 2, 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(3, 3, 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(4, 4, 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(5, 5, 1, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(6, 6, 2, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(7, 6, 3, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(8, 6, 4, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(9, 7, 4, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(10, 6, 5, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(11, 6, 6, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(12, 8, 7, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(13, 8, 8, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(14, 8, 9, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(15, 8, 10, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(16, 8, 11, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(17, 8, 12, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(18, 9, 13, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(19, 9, 14, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(20, 9, 15, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(21, 7, 16, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(22, 7, 17, '2022-04-26 04:18:44', '2022-04-26 04:18:44'),
(23, 10, 18, '2022-04-26 04:18:44', '2022-04-26 04:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `cc_users`
--

CREATE TABLE `cc_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_code_created` timestamp NULL DEFAULT NULL,
  `blog_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_states` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_users`
--

INSERT INTO `cc_users` (`id`, `active`, `password`, `email`, `name`, `role_id`, `remember_token`, `tmp_code`, `tmp_code_created`, `blog_login`, `page_states`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$YRvCjTi6QWPj9gJ9gH31fuAp0TJhROF1PjECJO7yDe.DQQFipiF7u', 'samsil@cramstack.com', NULL, 1, '9fXXRzaM5MSzuxHpYrKireej02xopqvbe6GO6C6HybpU03P9ULAwB8HmVBL5', NULL, NULL, NULL, 'a:3:{i:1;s:1:\"6\";i:2;s:1:\"5\";i:3;s:1:\"7\";}', '2022-04-26 04:18:29', '2022-04-26 11:53:02'),
(2, 1, '$2y$10$aEqDK/SHr/PKy4csk690hO.D1A39zMznnzh/9yX9ZIbV6FYkOKV5q', 'samsil.sd@gmail.com', NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-04-26 13:19:38', '2022-04-26 13:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `cc_user_roles`
--

CREATE TABLE `cc_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_user_roles`
--

INSERT INTO `cc_user_roles` (`id`, `name`, `admin`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Webmaster', 2, 'Unrestricted Account (can only be removed by superusers)', '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(2, 'Admin', 1, 'Default Admin Account', '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(3, 'Editor', 1, 'Default Editor Account', '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(4, 'User (Login Access Only)', 1, 'Base Account With Login Access', '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(5, 'Frontend Guest Account', 0, 'Default Guest Account (no admin access)', '2022-04-26 04:16:26', '2022-04-26 04:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `cc_user_roles_actions`
--

CREATE TABLE `cc_user_roles_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cc_user_roles_actions`
--

INSERT INTO `cc_user_roles_actions` (`id`, `role_id`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(2, 2, 6, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(3, 2, 7, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(4, 2, 8, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(5, 2, 9, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(6, 2, 10, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(7, 2, 18, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(8, 2, 19, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(9, 2, 20, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(10, 2, 21, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(11, 2, 22, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(12, 2, 25, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(13, 2, 26, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(14, 2, 27, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(15, 2, 28, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(16, 2, 29, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(17, 2, 31, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(18, 2, 32, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(19, 2, 33, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(20, 2, 34, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(21, 2, 35, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(22, 2, 39, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(23, 2, 40, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(24, 2, 43, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(25, 2, 49, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(26, 2, 62, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(27, 2, 64, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(28, 2, 65, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(29, 3, 5, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(30, 3, 6, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(31, 3, 8, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(32, 3, 18, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(33, 3, 19, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(34, 3, 22, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(35, 3, 25, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(36, 3, 26, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(37, 3, 27, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(38, 3, 28, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(39, 3, 29, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(40, 3, 31, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(41, 3, 32, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(42, 3, 33, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(43, 3, 34, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(44, 3, 39, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(45, 4, 31, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(46, 4, 32, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(47, 2, 63, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(48, 2, 70, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(49, 2, 71, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(50, 2, 72, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(51, 2, 73, '2022-04-26 04:16:26', '2022-04-26 04:16:26'),
(52, 2, 79, '2022-04-26 04:16:26', '2022-04-26 04:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `cc_user_roles_page_actions`
--

CREATE TABLE `cc_user_roles_page_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `access` enum('allow','deny') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cc_admin_actions`
--
ALTER TABLE `cc_admin_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_admin_controllers`
--
ALTER TABLE `cc_admin_controllers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_admin_logs`
--
ALTER TABLE `cc_admin_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_admin_menu`
--
ALTER TABLE `cc_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_backups`
--
ALTER TABLE `cc_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_blocks`
--
ALTER TABLE `cc_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_block_beacons`
--
ALTER TABLE `cc_block_beacons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_block_category`
--
ALTER TABLE `cc_block_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_block_form_rules`
--
ALTER TABLE `cc_block_form_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_block_repeaters`
--
ALTER TABLE `cc_block_repeaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_block_selectopts`
--
ALTER TABLE `cc_block_selectopts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_block_video_cache`
--
ALTER TABLE `cc_block_video_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_form_submissions`
--
ALTER TABLE `cc_form_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_languages`
--
ALTER TABLE `cc_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_menus`
--
ALTER TABLE `cc_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_menu_items`
--
ALTER TABLE `cc_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_migrations`
--
ALTER TABLE `cc_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_pages`
--
ALTER TABLE `cc_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_blocks`
--
ALTER TABLE `cc_page_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_blocks_default`
--
ALTER TABLE `cc_page_blocks_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_blocks_repeater_data`
--
ALTER TABLE `cc_page_blocks_repeater_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_blocks_repeater_rows`
--
ALTER TABLE `cc_page_blocks_repeater_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_group`
--
ALTER TABLE `cc_page_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_group_attributes`
--
ALTER TABLE `cc_page_group_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_group_pages`
--
ALTER TABLE `cc_page_group_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_lang`
--
ALTER TABLE `cc_page_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_publish_requests`
--
ALTER TABLE `cc_page_publish_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_redirects`
--
ALTER TABLE `cc_page_redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_search_data`
--
ALTER TABLE `cc_page_search_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_search_log`
--
ALTER TABLE `cc_page_search_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_versions`
--
ALTER TABLE `cc_page_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_page_versions_schedule`
--
ALTER TABLE `cc_page_versions_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_settings`
--
ALTER TABLE `cc_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_templates`
--
ALTER TABLE `cc_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_themes`
--
ALTER TABLE `cc_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_theme_blocks`
--
ALTER TABLE `cc_theme_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_theme_templates`
--
ALTER TABLE `cc_theme_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_theme_template_blocks`
--
ALTER TABLE `cc_theme_template_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_users`
--
ALTER TABLE `cc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_user_roles`
--
ALTER TABLE `cc_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_user_roles_actions`
--
ALTER TABLE `cc_user_roles_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_user_roles_page_actions`
--
ALTER TABLE `cc_user_roles_page_actions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cc_admin_actions`
--
ALTER TABLE `cc_admin_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `cc_admin_controllers`
--
ALTER TABLE `cc_admin_controllers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cc_admin_logs`
--
ALTER TABLE `cc_admin_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `cc_admin_menu`
--
ALTER TABLE `cc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cc_backups`
--
ALTER TABLE `cc_backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `cc_blocks`
--
ALTER TABLE `cc_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `cc_block_beacons`
--
ALTER TABLE `cc_block_beacons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_block_category`
--
ALTER TABLE `cc_block_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cc_block_form_rules`
--
ALTER TABLE `cc_block_form_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cc_block_repeaters`
--
ALTER TABLE `cc_block_repeaters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cc_block_selectopts`
--
ALTER TABLE `cc_block_selectopts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1902;

--
-- AUTO_INCREMENT for table `cc_block_video_cache`
--
ALTER TABLE `cc_block_video_cache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cc_form_submissions`
--
ALTER TABLE `cc_form_submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_languages`
--
ALTER TABLE `cc_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cc_menus`
--
ALTER TABLE `cc_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cc_menu_items`
--
ALTER TABLE `cc_menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cc_migrations`
--
ALTER TABLE `cc_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `cc_pages`
--
ALTER TABLE `cc_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cc_page_blocks`
--
ALTER TABLE `cc_page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `cc_page_blocks_default`
--
ALTER TABLE `cc_page_blocks_default`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cc_page_blocks_repeater_data`
--
ALTER TABLE `cc_page_blocks_repeater_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `cc_page_blocks_repeater_rows`
--
ALTER TABLE `cc_page_blocks_repeater_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cc_page_group`
--
ALTER TABLE `cc_page_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cc_page_group_attributes`
--
ALTER TABLE `cc_page_group_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cc_page_group_pages`
--
ALTER TABLE `cc_page_group_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cc_page_lang`
--
ALTER TABLE `cc_page_lang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cc_page_publish_requests`
--
ALTER TABLE `cc_page_publish_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_page_redirects`
--
ALTER TABLE `cc_page_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_page_search_data`
--
ALTER TABLE `cc_page_search_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `cc_page_search_log`
--
ALTER TABLE `cc_page_search_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_page_versions`
--
ALTER TABLE `cc_page_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `cc_page_versions_schedule`
--
ALTER TABLE `cc_page_versions_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_settings`
--
ALTER TABLE `cc_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cc_templates`
--
ALTER TABLE `cc_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cc_themes`
--
ALTER TABLE `cc_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cc_theme_blocks`
--
ALTER TABLE `cc_theme_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cc_theme_templates`
--
ALTER TABLE `cc_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cc_theme_template_blocks`
--
ALTER TABLE `cc_theme_template_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cc_users`
--
ALTER TABLE `cc_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cc_user_roles`
--
ALTER TABLE `cc_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cc_user_roles_actions`
--
ALTER TABLE `cc_user_roles_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `cc_user_roles_page_actions`
--
ALTER TABLE `cc_user_roles_page_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
