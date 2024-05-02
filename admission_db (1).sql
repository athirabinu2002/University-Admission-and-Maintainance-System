-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add complaint', 7, 'add_complaint'),
(26, 'Can change complaint', 7, 'change_complaint'),
(27, 'Can delete complaint', 7, 'delete_complaint'),
(28, 'Can view complaint', 7, 'view_complaint'),
(29, 'Can add district', 8, 'add_district'),
(30, 'Can change district', 8, 'change_district'),
(31, 'Can delete district', 8, 'delete_district'),
(32, 'Can view district', 8, 'view_district'),
(33, 'Can add login', 9, 'add_login'),
(34, 'Can change login', 9, 'change_login'),
(35, 'Can delete login', 9, 'delete_login'),
(36, 'Can view login', 9, 'view_login'),
(37, 'Can add state', 10, 'add_state'),
(38, 'Can change state', 10, 'change_state'),
(39, 'Can delete state', 10, 'delete_state'),
(40, 'Can view state', 10, 'view_state'),
(41, 'Can add student', 11, 'add_student'),
(42, 'Can change student', 11, 'change_student'),
(43, 'Can delete student', 11, 'delete_student'),
(44, 'Can view student', 11, 'view_student'),
(45, 'Can add university', 12, 'add_university'),
(46, 'Can change university', 12, 'change_university'),
(47, 'Can delete university', 12, 'delete_university'),
(48, 'Can view university', 12, 'view_university'),
(49, 'Can add feedback', 13, 'add_feedback'),
(50, 'Can change feedback', 13, 'change_feedback'),
(51, 'Can delete feedback', 13, 'delete_feedback'),
(52, 'Can view feedback', 13, 'view_feedback'),
(53, 'Can add college', 14, 'add_college'),
(54, 'Can change college', 14, 'change_college'),
(55, 'Can delete college', 14, 'delete_college'),
(56, 'Can view college', 14, 'view_college'),
(57, 'Can add course', 15, 'add_course'),
(58, 'Can change course', 15, 'change_course'),
(59, 'Can delete course', 15, 'delete_course'),
(60, 'Can view course', 15, 'view_course'),
(61, 'Can add batch', 16, 'add_batch'),
(62, 'Can change batch', 16, 'change_batch'),
(63, 'Can delete batch', 16, 'delete_batch'),
(64, 'Can view batch', 16, 'view_batch'),
(65, 'Can add offer_course', 17, 'add_offer_course'),
(66, 'Can change offer_course', 17, 'change_offer_course'),
(67, 'Can delete offer_course', 17, 'delete_offer_course'),
(68, 'Can view offer_course', 17, 'view_offer_course'),
(69, 'Can add admission_notification', 18, 'add_admission_notification'),
(70, 'Can change admission_notification', 18, 'change_admission_notification'),
(71, 'Can delete admission_notification', 18, 'delete_admission_notification'),
(72, 'Can view admission_notification', 18, 'view_admission_notification'),
(73, 'Can add application', 19, 'add_application'),
(74, 'Can change application', 19, 'change_application'),
(75, 'Can delete application', 19, 'delete_application'),
(76, 'Can view application', 19, 'view_application'),
(77, 'Can add bus', 20, 'add_bus'),
(78, 'Can change bus', 20, 'change_bus'),
(79, 'Can delete bus', 20, 'delete_bus'),
(80, 'Can view bus', 20, 'view_bus'),
(81, 'Can add hostel', 21, 'add_hostel'),
(82, 'Can change hostel', 21, 'change_hostel'),
(83, 'Can delete hostel', 21, 'delete_hostel'),
(84, 'Can view hostel', 21, 'view_hostel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$zHzpMvsQHDpDrOwvM3bSRJ$UX8m26QdZ6C2QtxM/tWcKAtTMQ3mXPcc/mJr+zwsfRk=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-06-03 04:34:14.707884');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(18, 'university_app', 'admission_notification'),
(19, 'university_app', 'application'),
(16, 'university_app', 'batch'),
(20, 'university_app', 'bus'),
(14, 'university_app', 'college'),
(7, 'university_app', 'complaint'),
(15, 'university_app', 'course'),
(8, 'university_app', 'district'),
(13, 'university_app', 'feedback'),
(21, 'university_app', 'hostel'),
(9, 'university_app', 'login'),
(17, 'university_app', 'offer_course'),
(10, 'university_app', 'state'),
(11, 'university_app', 'student'),
(12, 'university_app', 'university');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-02 08:33:58.294836'),
(2, 'auth', '0001_initial', '2023-06-02 08:33:58.711509'),
(3, 'admin', '0001_initial', '2023-06-02 08:33:58.796145'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-02 08:33:58.811770'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-02 08:33:58.811770'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-02 08:33:58.880774'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-02 08:33:58.912023'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-02 08:33:58.927647'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-02 08:33:58.943269'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-02 08:33:58.996658'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-02 08:33:58.996658'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-02 08:33:59.012283'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-02 08:33:59.027911'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-02 08:33:59.043530'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-02 08:33:59.065680'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-02 08:33:59.065680'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-02 08:33:59.081305'),
(18, 'sessions', '0001_initial', '2023-06-02 08:33:59.112555'),
(19, 'university_app', '0001_initial', '2023-06-02 08:33:59.150306'),
(20, 'university_app', '0002_student', '2023-06-03 08:32:11.541108'),
(21, 'university_app', '0003_university', '2023-06-05 05:21:40.709780'),
(22, 'university_app', '0004_feedback', '2023-06-05 08:42:26.824386'),
(23, 'university_app', '0005_college', '2023-06-06 06:19:05.781887'),
(24, 'university_app', '0006_rename_university_id_college_university_login_id', '2023-06-06 06:20:45.669272'),
(25, 'university_app', '0007_course', '2023-06-06 09:52:11.505372'),
(26, 'university_app', '0008_batch', '2023-06-07 06:41:16.983050'),
(27, 'university_app', '0009_offer_course', '2023-06-08 04:47:12.817544'),
(28, 'university_app', '0010_rename_college_id_offer_course_college_login_id_and_more', '2023-06-08 06:08:54.244780'),
(29, 'university_app', '0011_admission_notification', '2023-06-09 06:00:39.010330'),
(30, 'university_app', '0012_student_adhaar_no_student_blood_group_student_caste_and_more', '2023-06-09 11:00:49.837249'),
(31, 'university_app', '0013_admission_notification_application_fee', '2023-06-12 04:31:07.948905'),
(32, 'university_app', '0014_application', '2023-06-12 06:15:10.282009'),
(33, 'university_app', '0015_application_college_login_id', '2023-06-12 07:56:12.597345'),
(34, 'university_app', '0016_bus_hostel', '2023-06-13 00:20:04.015579'),
(35, 'university_app', '0017_rename_rules_bus_route_bus_bus_number', '2023-06-13 01:25:19.040499');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0c7x95cjabx51pct0ofujp85qhz3ch7f', 'eyJjbmFtZSI6InNhaW50MTIzIiwic2xvZ2lkIjoxMX0:1q8rTF:WZ4rD54CV-VP5TKyF9sFp2YdLdjB4OvSZPJnQxCkgIo', '2023-06-27 00:01:13.466701'),
('77c7wppflw0zk1u7su2s85lsg9raa8o1', 'eyJhbmFtZSI6ImFkbWluIiwic2xvZ2lkIjoxfQ:1q6282:biQM1S19xyTM1LcVPB3I4ZbSUyd1CnWQ4Vv-WSW8dm8', '2023-06-19 04:47:38.086373'),
('7sm4q9stzc6ee9lr9v6dkjb9osoun6bc', 'eyJjbmFtZSI6ImFscGhvbnNhIiwic2xvZ2lkIjoxNn0:1q920h:CEalq5wqB0Y09GhYhs5RJyWcLiZmHP9ogKAr6omUkQM', '2023-06-27 11:16:27.167158'),
('bi3s158yziba1na3dx49w1nbt5elgikp', 'eyJzbmFtZSI6ImFub29wMTIzIiwic2xvZ2lkIjoyfQ:1q8H0s:vT7hLfFkkWAHswm3OStVGtsVgRyxuT-wVobdoQE2c7I', '2023-06-25 09:05:30.643078'),
('bni5kew0uyqzj0omi3kph6yaqcrn7ux4', 'eyJjbmFtZSI6InNhaW50MTIzIiwic2xvZ2lkIjoxMX0:1q8rUW:3trD9HUgVwHWHofKtSORjty9p-H_-f595Ybe24XQY7M', '2023-06-27 00:02:32.221399'),
('eewi7fk8y0fgdk6s1daz2vagzo75oh72', 'eyJzbmFtZSI6ImFub29wMTIzIiwic2xvZ2lkIjoyfQ:1q7YfT:CPf1nM8spu1-4bLuZHd4DOyVkAOxeonQyRzBjkMYWYo', '2023-06-23 09:44:27.859043'),
('h08xgtuiexpj7z2ccm7rbcnqlrcfx5g0', 'eyJ1bmFtZSI6Im1haGF0aGFtYTEyMyIsInNsb2dpZCI6NH0:1qFBYN:YspHKeBD6BHwinLTkESxQpUfFkC1mfNP65qKvS-o-xo', '2023-07-14 10:40:39.836873'),
('j8prm0c81kv85ve9qy00l95xasr8u47e', 'eyJ1bmFtZSI6Im1haGF0aGFtYTEyMyIsInNsb2dpZCI6NH0:1q6mHq:q0EG_J3nevuL5QSkbkWShjb0hXksurM3hp0WDOhZEhY', '2023-06-21 06:04:50.724029'),
('ux1vcryhfubqtmm0xl5jjku7o61fq2s4', 'eyJzbmFtZSI6ImFub29wMTIzIiwic2xvZ2lkIjoyfQ:1q7qPX:1wDB7rIcLn_JZ0N4EQ4wjp-SmXfmwJBuEKLTApH3oug', '2023-06-24 04:41:11.896820'),
('xt59gh7aoey3im5nksreyp50tbsjlg2u', 'eyJ1bmFtZSI6Im1haGF0aGFtYTEyMyIsInNsb2dpZCI6NH0:1q6SA7:avf_DzT8erFgMa9L6SQAgMtUdungasZSlVVPEsXMItU', '2023-06-20 08:35:31.258148'),
('ztk5nouqmbsr5x3xwtgxc1jrss9j408z', 'eyJ1bmFtZSI6Im1haGF0aGFtYTEyMyIsInNsb2dpZCI6NH0:1q79i7:WrAhEnZjR-daA0nYs5JUm1fEvxiMYLgOLQI_3cZkVM0', '2023-06-22 07:05:31.855607');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admission_notification`
--

CREATE TABLE `tbl_admission_notification` (
  `admission_notification_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `eligibility` varchar(500) NOT NULL,
  `course_details` varchar(500) NOT NULL,
  `last_date` date NOT NULL,
  `entry_date` datetime(6) NOT NULL,
  `application_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admission_notification`
--

INSERT INTO `tbl_admission_notification` (`admission_notification_id`, `batch_id`, `eligibility`, `course_details`, `last_date`, `entry_date`, `application_fee`) VALUES
(1, 1, 'The basic eligibility for BA Communicative English is passed in 10+2 in any stream with English as a compulsory subjects.\r\n                    ', '  BA Communicative English is a 3-year in the Arts stream. It focuses on teaching students the art of effective communication using the right vocabulary and expressions. .The course also focuses on literature, philosophy of English language, and Linguistics. Other subjects include Print Media and Journalism, Translation studies, Conversational English, etc. The basic eligibility for BA Communicative English is passed in 10+2 in any stream with English as a compulsory subjects.\r\n    ', '2023-06-18', '2023-06-09 11:30:46.346875', 500),
(2, 3, 'The base capability required for induction into this course is passed in 12th standard/identical assessment, with at any rate 55 percent in any subjects. The state loads up of specialized instruction of the vast majority of the states in India direct passageway tests for admission to the confirmation programs offered by different polytechnics in the state. ', 'The BA in Bharatanatyam is a three-year undergraduate program that focuses on the theory and practice of the dance form.\r\n\r\nThe program covers a range of topics, including the history of Bharatanatyam, music theory, and the techniques of the dance form.\r\n\r\nStudents will have the opportunity to develop their skills through practical classes, performances, and workshops.', '2023-06-19', '2023-06-09 11:32:56.388045', 500),
(4, 5, 'BA Politics       ', '  2 Year course with 6 subjects', '2023-06-15', '2023-06-12 10:02:34.092237', 500),
(5, 6, 'passed 12th standard or equivalent in commerce stream or from other stream can also apply with cut off percentage of 50%', 'B.Com in Information Technology is a three- year course that combines business and technology. B.com Information Technology imparts design, development, implementation and management of information systems along with adapting software applications and computer hardware.\r\nCandidates who have secured minimum 50% marks at 10+2 level in exams preferably from commerce background are eligible for application of B.com Information Technology.\r\nAdmission to this course is generally merit based', '2023-06-28', '2023-06-13 16:30:58.013917', 250),
(6, 7, ' The student should have a bachelor\'s degree (or its equivalent) in Mathematics or a related field and must have completed their graduation with 75% marks .', ' M.Sc. Mathematics programs usually include a set of core courses that cover advanced topics in mathematics.Throughout the program, you may have the opportunity to attend seminars and workshops conducted by faculty members and visiting experts', '2023-07-19', '2023-06-20 00:00:04.188308', 150),
(7, 8, ' Student should have completed higher secondary education or its equivalent having 50% marks  .Students having a background in social sciences, humanities, or history-related subjects is more preferred.', '  BA History programs often begin with foundational courses that provide an introduction to the study of history. These courses aim to develop essential skills and knowledge in historical research, analysis, and interpretation  ', '2023-07-24', '2023-06-20 00:04:35.964276', 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application`
--

CREATE TABLE `tbl_application` (
  `application_id` int(11) NOT NULL,
  `admission_notification_id` int(11) NOT NULL,
  `application_fee` int(11) NOT NULL,
  `qualified_examination` varchar(50) NOT NULL,
  `qualified_examination_mark` int(11) NOT NULL,
  `qualified_examination_total_mark` int(11) NOT NULL,
  `qualified_examination_certificate` varchar(50) NOT NULL,
  `quota` varchar(50) NOT NULL,
  `sslc_certificate` varchar(50) NOT NULL,
  `income_certificate` varchar(50) DEFAULT NULL,
  `caste_certificate` varchar(50) DEFAULT NULL,
  `candidate_login_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `entry_date` datetime(6) NOT NULL,
  `college_login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_application`
--

INSERT INTO `tbl_application` (`application_id`, `admission_notification_id`, `application_fee`, `qualified_examination`, `qualified_examination_mark`, `qualified_examination_total_mark`, `qualified_examination_certificate`, `quota`, `sslc_certificate`, `income_certificate`, `caste_certificate`, `candidate_login_id`, `status`, `entry_date`, `college_login_id`) VALUES
(1, 1, 500, 'Plus Two', 700, 1000, '/media/46..pdf', 'Merit', '/media/47..pdf', '/media/48..pdf', '/media/49..pdf', 2, 'Approved', '2023-06-12 13:27:40.668331', 11),
(2, 5, 250, 'Higher secondary', 1142, 1200, '/media/52..pdf', 'Merit', '/media/53..pdf', '/media/54..pdf', '/media/55..pdf', 15, 'Approved', '2023-06-13 16:44:10.668488', 16),
(3, 1, 500, 'higher secondary', 1100, 1200, '/media/57..pdf', 'Merit', '/media/58..pdf', '/media/59..pdf', '/media/60..pdf', 15, 'Approved', '2023-07-22 10:04:24.697391', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_batch`
--

CREATE TABLE `tbl_batch` (
  `batch_id` int(11) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_batch`
--

INSERT INTO `tbl_batch` (`batch_id`, `batch`, `course_id`) VALUES
(1, '2023-2026 ', 1),
(3, '2023-2026 ', 5),
(4, '2023-2026 ', 6),
(5, '2023-2025 ', 7),
(6, '2023-2024 ', 10),
(7, '2023-2025 ', 12),
(8, '2023-2026 ', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `bus_id` int(11) NOT NULL,
  `college_login_id` int(11) NOT NULL,
  `route` varchar(500) NOT NULL,
  `stops` varchar(500) NOT NULL,
  `bus_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`bus_id`, `college_login_id`, `route`, `stops`, `bus_number`) VALUES
(2, 11, 'chengannur to kottayam', 'Chengannur to kottaym via thiruvala', 1002),
(4, 19, 'Mavelikara to Changanassery', 'Mavelikara,Mannar,podiyadi,ThiruvalaChanganassery', 1),
(5, 11, 'Mavelikara to kottayam ', 'Mavelikara to kottayam via changnassery', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE `tbl_college` (
  `college_id` int(11) NOT NULL,
  `university_login_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `college` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `place` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_college`
--

INSERT INTO `tbl_college` (`college_id`, `university_login_id`, `login_id`, `college`, `address`, `email`, `phone_number`, `district_id`, `place`) VALUES
(1, 4, 11, 'Saintgits College', ' Chittoor, Pathanamthitta, Kerala 689645', 'ssaintgits@gmail.com', 8754653213, 259, 'Pathanamthitta'),
(4, 6, 16, 'Alphonsa college Thiruvambady', 'Alphonasa college thiruvambady po kozhikode', 'alphonsacllg218@gmail.com', 8977668899, 249, 'kozhikode'),
(5, 4, 17, 'NSS HINDU COLLEGE  CHANGANASSERY', 'Nss hindu college ,Perunna, Changanassery, Kerala ', 'nsshcchry@gmail.com', 9835172345, 255, 'perunna'),
(6, 4, 18, 'Maharajas College', 'Maharaja`S College, Ernakulam\r\npin:682001', 'maharajas23@gmail.com', 8753686782, 250, 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_subject` varchar(50) NOT NULL,
  `complaint` varchar(150) NOT NULL,
  `user_login_id` int(11) NOT NULL,
  `reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complaint_subject`, `complaint`, `user_login_id`, `reply`) VALUES
(3, 'Fees', 'Very Huge fees', 2, 'will consider');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` int(11) NOT NULL,
  `course` varchar(50) NOT NULL,
  `course_type` varchar(50) NOT NULL,
  `university_login_id` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course`, `course_type`, `university_login_id`, `fee`) VALUES
(1, 'BA Communicative English', 'Under Graduate', 4, 12500),
(5, ' B.A Bharatanatyam', 'Under Graduate', 4, 12000),
(6, ' B.A Arabic', 'Under Graduate', 4, 12000),
(7, ' M.A Politics  International Relations', 'Post Graduate', 4, 12000),
(8, ' M.A Print and Electronic Journalism', 'Post Graduate', 4, 34000),
(9, 'BA History', 'Under Graduate', 4, 15000),
(10, 'B.com Finance', 'Under Graduate', 6, 13500),
(11, 'M.com Finance', 'Post Graduate', 6, 15000),
(12, 'MSC Maths', 'Post Graduate', 4, 8000),
(13, 'BA economics', 'Under Graduate', 4, 15000),
(14, 'MA Economics', 'Post Graduate', 4, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `state_id`, `district`) VALUES
(1, 32, 'North and Middle Andaman'),
(2, 32, 'South Andaman'),
(3, 32, 'Nicobar'),
(4, 1, 'Adilabad'),
(5, 1, 'Anantapur'),
(6, 1, 'Chittoor'),
(7, 1, 'East Godavari'),
(8, 1, 'Guntur'),
(9, 1, 'Hyderabad'),
(10, 1, 'Kadapa'),
(11, 1, 'Karimnagar'),
(12, 1, 'Khammam'),
(13, 1, 'Krishna'),
(14, 1, 'Kurnool'),
(15, 1, 'Mahbubnagar'),
(16, 1, 'Medak'),
(17, 1, 'Nalgonda'),
(18, 1, 'Nellore'),
(19, 1, 'Nizamabad'),
(20, 1, 'Prakasam'),
(21, 1, 'Rangareddi'),
(22, 1, 'Srikakulam'),
(23, 1, 'Vishakhapatnam'),
(24, 1, 'Vizianagaram'),
(25, 1, 'Warangal'),
(26, 1, 'West Godavari'),
(27, 3, 'Anjaw'),
(28, 3, 'Changlang'),
(29, 3, 'East Kameng'),
(30, 3, 'Lohit'),
(31, 3, 'Lower Subansiri'),
(32, 3, 'Papum Pare'),
(33, 3, 'Tirap'),
(34, 3, 'Dibang Valley'),
(35, 3, 'Upper Subansiri'),
(36, 3, 'West Kameng'),
(37, 2, 'Barpeta'),
(38, 2, 'Bongaigaon'),
(39, 2, 'Cachar'),
(40, 2, 'Darrang'),
(41, 2, 'Dhemaji'),
(42, 2, 'Dhubri'),
(43, 2, 'Dibrugarh'),
(44, 2, 'Goalpara'),
(45, 2, 'Golaghat'),
(46, 2, 'Hailakandi'),
(47, 2, 'Jorhat'),
(48, 2, 'Karbi Anglong'),
(49, 2, 'Karimganj'),
(50, 2, 'Kokrajhar'),
(51, 2, 'Lakhimpur'),
(52, 2, 'Marigaon'),
(53, 2, 'Nagaon'),
(54, 2, 'Nalbari'),
(55, 2, 'North Cachar Hills'),
(56, 2, 'Sibsagar'),
(57, 2, 'Sonitpur'),
(58, 2, 'Tinsukia'),
(59, 4, 'Araria'),
(60, 4, 'Aurangabad'),
(61, 4, 'Banka'),
(62, 4, 'Begusarai'),
(63, 4, 'Bhagalpur'),
(64, 4, 'Bhojpur'),
(65, 4, 'Buxar'),
(66, 4, 'Darbhanga'),
(67, 4, 'Purba Champaran'),
(68, 4, 'Gaya'),
(69, 4, 'Gopalganj'),
(70, 4, 'Jamui'),
(71, 4, 'Jehanabad'),
(72, 4, 'Khagaria'),
(73, 4, 'Kishanganj'),
(74, 4, 'Kaimur'),
(75, 4, 'Katihar'),
(76, 4, 'Lakhisarai'),
(77, 4, 'Madhubani'),
(78, 4, 'Munger'),
(79, 4, 'Madhepura'),
(80, 4, 'Muzaffarpur'),
(81, 4, 'Nalanda'),
(82, 4, 'Nawada'),
(83, 4, 'Patna'),
(84, 4, 'Purnia'),
(85, 4, 'Rohtas'),
(86, 4, 'Saharsa'),
(87, 4, 'Samastipur'),
(88, 4, 'Sheohar'),
(89, 4, 'Sheikhpura'),
(90, 4, 'Saran'),
(91, 4, 'Sitamarhi'),
(92, 4, 'Supaul'),
(93, 4, 'Siwan'),
(94, 4, 'Vaishali'),
(95, 4, 'Pashchim Champaran'),
(96, 36, 'Bastar'),
(97, 36, 'Bilaspur'),
(98, 36, 'Dantewada'),
(99, 36, 'Dhamtari'),
(100, 36, 'Durg'),
(101, 36, 'Jashpur'),
(102, 36, 'Janjgir-Champa'),
(103, 36, 'Korba'),
(104, 36, 'Koriya'),
(105, 36, 'Kanker'),
(106, 36, 'Kawardha'),
(107, 36, 'Mahasamund'),
(108, 36, 'Raigarh'),
(109, 36, 'Rajnandgaon'),
(110, 36, 'Raipur'),
(111, 36, 'Surguja'),
(112, 29, 'Diu'),
(113, 29, 'Daman'),
(114, 25, 'Central Delhi'),
(115, 25, 'East Delhi'),
(116, 25, 'New Delhi'),
(117, 25, 'North Delhi'),
(118, 25, 'North East Delhi'),
(119, 25, 'North West Delhi'),
(120, 25, 'South Delhi'),
(121, 25, 'South West Delhi'),
(122, 25, 'West Delhi'),
(123, 26, 'North Goa'),
(124, 26, 'South Goa'),
(125, 5, 'Ahmedabad'),
(126, 5, 'Amreli District'),
(127, 5, 'Anand'),
(128, 5, 'Banaskantha'),
(129, 5, 'Bharuch'),
(130, 5, 'Bhavnagar'),
(131, 5, 'Dahod'),
(132, 5, 'The Dangs'),
(133, 5, 'Gandhinagar'),
(134, 5, 'Jamnagar'),
(135, 5, 'Junagadh'),
(136, 5, 'Kutch'),
(137, 5, 'Kheda'),
(138, 5, 'Mehsana'),
(139, 5, 'Narmada'),
(140, 5, 'Navsari'),
(141, 5, 'Patan'),
(142, 5, 'Panchmahal'),
(143, 5, 'Porbandar'),
(144, 5, 'Rajkot'),
(145, 5, 'Sabarkantha'),
(146, 5, 'Surendranagar'),
(147, 5, 'Surat'),
(148, 5, 'Vadodara'),
(149, 5, 'Valsad'),
(150, 6, 'Ambala'),
(151, 6, 'Bhiwani'),
(152, 6, 'Faridabad'),
(153, 6, 'Fatehabad'),
(154, 6, 'Gurgaon'),
(155, 6, 'Hissar'),
(156, 6, 'Jhajjar'),
(157, 6, 'Jind'),
(158, 6, 'Karnal'),
(159, 6, 'Kaithal'),
(160, 6, 'Kurukshetra'),
(161, 6, 'Mahendragarh'),
(162, 6, 'Mewat'),
(163, 6, 'Panchkula'),
(164, 6, 'Panipat'),
(165, 6, 'Rewari'),
(166, 6, 'Rohtak'),
(167, 6, 'Sirsa'),
(168, 6, 'Sonepat'),
(169, 6, 'Yamuna Nagar'),
(170, 6, 'Palwal'),
(171, 7, 'Bilaspur'),
(172, 7, 'Chamba'),
(173, 7, 'Hamirpur'),
(174, 7, 'Kangra'),
(175, 7, 'Kinnaur'),
(176, 7, 'Kulu'),
(177, 7, 'Lahaul and Spiti'),
(178, 7, 'Mandi'),
(179, 7, 'Shimla'),
(180, 7, 'Sirmaur'),
(181, 7, 'Solan'),
(182, 7, 'Una'),
(183, 8, 'Anantnag'),
(184, 8, 'Badgam'),
(185, 8, 'Bandipore'),
(186, 8, 'Baramula'),
(187, 8, 'Doda'),
(188, 8, 'Jammu'),
(189, 8, 'Kargil'),
(190, 8, 'Kathua'),
(191, 8, 'Kupwara'),
(192, 8, 'Leh'),
(193, 8, 'Poonch'),
(194, 8, 'Pulwama'),
(195, 8, 'Rajauri'),
(196, 8, 'Srinagar'),
(197, 8, 'Samba'),
(198, 8, 'Udhampur'),
(199, 34, 'Bokaro'),
(200, 34, 'Chatra'),
(201, 34, 'Deoghar'),
(202, 34, 'Dhanbad'),
(203, 34, 'Dumka'),
(204, 34, 'Purba Singhbhum'),
(205, 34, 'Garhwa'),
(206, 34, 'Giridih'),
(207, 34, 'Godda'),
(208, 34, 'Gumla'),
(209, 34, 'Hazaribagh'),
(210, 34, 'Koderma'),
(211, 34, 'Lohardaga'),
(212, 34, 'Pakur'),
(213, 34, 'Palamu'),
(214, 34, 'Ranchi'),
(215, 34, 'Sahibganj'),
(216, 34, 'Seraikela and Kharsawan'),
(217, 34, 'Pashchim Singhbhum'),
(218, 34, 'Ramgarh'),
(219, 9, 'Bidar'),
(220, 9, 'Belgaum'),
(221, 9, 'Bijapur'),
(222, 9, 'Bagalkot'),
(223, 9, 'Bellary'),
(224, 9, 'Bangalore Rural District'),
(225, 9, 'Bangalore Urban District'),
(226, 9, 'Chamarajnagar'),
(227, 9, 'Chikmagalur'),
(228, 9, 'Chitradurga'),
(229, 9, 'Davanagere'),
(230, 9, 'Dharwad'),
(231, 9, 'Dakshina Kannada'),
(232, 9, 'Gadag'),
(233, 9, 'Gulbarga'),
(234, 9, 'Hassan'),
(235, 9, 'Haveri District'),
(236, 9, 'Kodagu'),
(237, 9, 'Kolar'),
(238, 9, 'Koppal'),
(239, 9, 'Mandya'),
(240, 9, 'Mysore'),
(241, 9, 'Raichur'),
(242, 9, 'Shimoga'),
(243, 9, 'Tumkur'),
(244, 9, 'Udupi'),
(245, 9, 'Uttara Kannada'),
(246, 9, 'Ramanagara'),
(247, 9, 'Chikballapur'),
(248, 9, 'Yadagiri'),
(249, 10, 'Alappuzha'),
(250, 10, 'Ernakulam'),
(251, 10, 'Idukki'),
(252, 10, 'Kollam'),
(253, 10, 'Kannur'),
(254, 10, 'Kasaragod'),
(255, 10, 'Kottayam'),
(256, 10, 'Kozhikode'),
(257, 10, 'Malappuram'),
(258, 10, 'Palakkad'),
(259, 10, 'Pathanamthitta'),
(260, 10, 'Thrissur'),
(261, 10, 'Thiruvananthapuram'),
(262, 10, 'Wayanad'),
(263, 11, 'Alirajpur'),
(264, 11, 'Anuppur'),
(265, 11, 'Ashok Nagar'),
(266, 11, 'Balaghat'),
(267, 11, 'Barwani'),
(268, 11, 'Betul'),
(269, 11, 'Bhind'),
(270, 11, 'Bhopal'),
(271, 11, 'Burhanpur'),
(272, 11, 'Chhatarpur'),
(273, 11, 'Chhindwara'),
(274, 11, 'Damoh'),
(275, 11, 'Datia'),
(276, 11, 'Dewas'),
(277, 11, 'Dhar'),
(278, 11, 'Dindori'),
(279, 11, 'Guna'),
(280, 11, 'Gwalior'),
(281, 11, 'Harda'),
(282, 11, 'Hoshangabad'),
(283, 11, 'Indore'),
(284, 11, 'Jabalpur'),
(285, 11, 'Jhabua'),
(286, 11, 'Katni'),
(287, 11, 'Khandwa'),
(288, 11, 'Khargone'),
(289, 11, 'Mandla'),
(290, 11, 'Mandsaur'),
(291, 11, 'Morena'),
(292, 11, 'Narsinghpur'),
(293, 11, 'Neemuch'),
(294, 11, 'Panna'),
(295, 11, 'Rewa'),
(296, 11, 'Rajgarh'),
(297, 11, 'Ratlam'),
(298, 11, 'Raisen'),
(299, 11, 'Sagar'),
(300, 11, 'Satna'),
(301, 11, 'Sehore'),
(302, 11, 'Seoni'),
(303, 11, 'Shahdol'),
(304, 11, 'Shajapur'),
(305, 11, 'Sheopur'),
(306, 11, 'Shivpuri'),
(307, 11, 'Sidhi'),
(308, 11, 'Singrauli'),
(309, 11, 'Tikamgarh'),
(310, 11, 'Ujjain'),
(311, 11, 'Umaria'),
(312, 11, 'Vidisha'),
(313, 12, 'Ahmednagar'),
(314, 12, 'Akola'),
(315, 12, 'Amrawati'),
(316, 12, 'Aurangabad'),
(317, 12, 'Bhandara'),
(318, 12, 'Beed'),
(319, 12, 'Buldhana'),
(320, 12, 'Chandrapur'),
(321, 12, 'Dhule'),
(322, 12, 'Gadchiroli'),
(323, 12, 'Gondiya'),
(324, 12, 'Hingoli'),
(325, 12, 'Jalgaon'),
(326, 12, 'Jalna'),
(327, 12, 'Kolhapur'),
(328, 12, 'Latur'),
(329, 12, 'Mumbai City'),
(330, 12, 'Mumbai suburban'),
(331, 12, 'Nandurbar'),
(332, 12, 'Nanded'),
(333, 12, 'Nagpur'),
(334, 12, 'Nashik'),
(335, 12, 'Osmanabad'),
(336, 12, 'Parbhani'),
(337, 12, 'Pune'),
(338, 12, 'Raigad'),
(339, 12, 'Ratnagiri'),
(340, 12, 'Sindhudurg'),
(341, 12, 'Sangli'),
(342, 12, 'Solapur'),
(343, 12, 'Satara'),
(344, 12, 'Thane'),
(345, 12, 'Wardha'),
(346, 12, 'Washim'),
(347, 12, 'Yavatmal'),
(348, 13, 'Bishnupur'),
(349, 13, 'Churachandpur'),
(350, 13, 'Chandel'),
(351, 13, 'Imphal East'),
(352, 13, 'Senapati'),
(353, 13, 'Tamenglong'),
(354, 13, 'Thoubal'),
(355, 13, 'Ukhrul'),
(356, 13, 'Imphal West'),
(357, 14, 'East Garo Hills'),
(358, 14, 'East Khasi Hills'),
(359, 14, 'Jaintia Hills'),
(360, 14, 'Ri-Bhoi'),
(361, 14, 'South Garo Hills'),
(362, 14, 'West Garo Hills'),
(363, 14, 'West Khasi Hills'),
(364, 15, 'Aizawl'),
(365, 15, 'Champhai'),
(366, 15, 'Kolasib'),
(367, 15, 'Lawngtlai'),
(368, 15, 'Lunglei'),
(369, 15, 'Mamit'),
(370, 15, 'Saiha'),
(371, 15, 'Serchhip'),
(372, 16, 'Dimapur'),
(373, 16, 'Kohima'),
(374, 16, 'Mokokchung'),
(375, 16, 'Mon'),
(376, 16, 'Phek'),
(377, 16, 'Tuensang'),
(378, 16, 'Wokha'),
(379, 16, 'Zunheboto'),
(380, 17, 'Angul'),
(381, 17, 'Boudh'),
(382, 17, 'Bhadrak'),
(383, 17, 'Bolangir'),
(384, 17, 'Bargarh'),
(385, 17, 'Baleswar'),
(386, 17, 'Cuttack'),
(387, 17, 'Debagarh'),
(388, 17, 'Dhenkanal'),
(389, 17, 'Ganjam'),
(390, 17, 'Gajapati'),
(391, 17, 'Jharsuguda'),
(392, 17, 'Jajapur'),
(393, 17, 'Jagatsinghpur'),
(394, 17, 'Khordha'),
(395, 17, 'Kendujhar'),
(396, 17, 'Kalahandi'),
(397, 17, 'Kandhamal'),
(398, 17, 'Koraput'),
(399, 17, 'Kendrapara'),
(400, 17, 'Malkangiri'),
(401, 17, 'Mayurbhanj'),
(402, 17, 'Nabarangpur'),
(403, 17, 'Nuapada'),
(404, 17, 'Nayagarh'),
(405, 17, 'Puri'),
(406, 17, 'Rayagada'),
(407, 17, 'Sambalpur'),
(408, 17, 'Subarnapur'),
(409, 17, 'Sundargarh'),
(410, 27, 'Karaikal'),
(411, 27, 'Mahe'),
(412, 27, 'Puducherry'),
(413, 27, 'Yanam'),
(414, 18, 'Amritsar'),
(415, 18, 'Bathinda'),
(416, 18, 'Firozpur'),
(417, 18, 'Faridkot'),
(418, 18, 'Fatehgarh Sahib'),
(419, 18, 'Gurdaspur'),
(420, 18, 'Hoshiarpur'),
(421, 18, 'Jalandhar'),
(422, 18, 'Kapurthala'),
(423, 18, 'Ludhiana'),
(424, 18, 'Mansa'),
(425, 18, 'Moga'),
(426, 18, 'Mukatsar'),
(427, 18, 'Nawan Shehar'),
(428, 18, 'Patiala'),
(429, 18, 'Rupnagar'),
(430, 18, 'Sangrur'),
(431, 19, 'Ajmer'),
(432, 19, 'Alwar'),
(433, 19, 'Bikaner'),
(434, 19, 'Barmer'),
(435, 19, 'Banswara'),
(436, 19, 'Bharatpur'),
(437, 19, 'Baran'),
(438, 19, 'Bundi'),
(439, 19, 'Bhilwara'),
(440, 19, 'Churu'),
(441, 19, 'Chittorgarh'),
(442, 19, 'Dausa'),
(443, 19, 'Dholpur'),
(444, 19, 'Dungapur'),
(445, 19, 'Ganganagar'),
(446, 19, 'Hanumangarh'),
(447, 19, 'Juhnjhunun'),
(448, 19, 'Jalore'),
(449, 19, 'Jodhpur'),
(450, 19, 'Jaipur'),
(451, 19, 'Jaisalmer'),
(452, 19, 'Jhalawar'),
(453, 19, 'Karauli'),
(454, 19, 'Kota'),
(455, 19, 'Nagaur'),
(456, 19, 'Pali'),
(457, 19, 'Pratapgarh'),
(458, 19, 'Rajsamand'),
(459, 19, 'Sikar'),
(460, 19, 'Sawai Madhopur'),
(461, 19, 'Sirohi'),
(462, 19, 'Tonk'),
(463, 19, 'Udaipur'),
(464, 20, 'East Sikkim'),
(465, 20, 'North Sikkim'),
(466, 20, 'South Sikkim'),
(467, 20, 'West Sikkim'),
(468, 21, 'Ariyalur'),
(469, 21, 'Chennai'),
(470, 21, 'Coimbatore'),
(471, 21, 'Cuddalore'),
(472, 21, 'Dharmapuri'),
(473, 21, 'Dindigul'),
(474, 21, 'Erode'),
(475, 21, 'Kanchipuram'),
(476, 21, 'Kanyakumari'),
(477, 21, 'Karur'),
(478, 21, 'Madurai'),
(479, 21, 'Nagapattinam'),
(480, 21, 'The Nilgiris'),
(481, 21, 'Namakkal'),
(482, 21, 'Perambalur'),
(483, 21, 'Pudukkottai'),
(484, 21, 'Ramanathapuram'),
(485, 21, 'Salem'),
(486, 21, 'Sivagangai'),
(487, 21, 'Tiruppur'),
(488, 21, 'Tiruchirappalli'),
(489, 21, 'Theni'),
(490, 21, 'Tirunelveli'),
(491, 21, 'Thanjavur'),
(492, 21, 'Thoothukudi'),
(493, 21, 'Thiruvallur'),
(494, 21, 'Thiruvarur'),
(495, 21, 'Tiruvannamalai'),
(496, 21, 'Vellore'),
(497, 21, 'Villupuram'),
(498, 22, 'Dhalai'),
(499, 22, 'North Tripura'),
(500, 22, 'South Tripura'),
(501, 22, 'West Tripura'),
(502, 33, 'Almora'),
(503, 33, 'Bageshwar'),
(504, 33, 'Chamoli'),
(505, 33, 'Champawat'),
(506, 33, 'Dehradun'),
(507, 33, 'Haridwar'),
(508, 33, 'Nainital'),
(509, 33, 'Pauri Garhwal'),
(510, 33, 'Pithoragharh'),
(511, 33, 'Rudraprayag'),
(512, 33, 'Tehri Garhwal'),
(513, 33, 'Udham Singh Nagar'),
(514, 33, 'Uttarkashi'),
(515, 23, 'Agra'),
(516, 23, 'Allahabad'),
(517, 23, 'Aligarh'),
(518, 23, 'Ambedkar Nagar'),
(519, 23, 'Auraiya'),
(520, 23, 'Azamgarh'),
(521, 23, 'Barabanki'),
(522, 23, 'Badaun'),
(523, 23, 'Bagpat'),
(524, 23, 'Bahraich'),
(525, 23, 'Bijnor'),
(526, 23, 'Ballia'),
(527, 23, 'Banda'),
(528, 23, 'Balrampur'),
(529, 23, 'Bareilly'),
(530, 23, 'Basti'),
(531, 23, 'Bulandshahr'),
(532, 23, 'Chandauli'),
(533, 23, 'Chitrakoot'),
(534, 23, 'Deoria'),
(535, 23, 'Etah'),
(536, 23, 'Kanshiram Nagar'),
(537, 23, 'Etawah'),
(538, 23, 'Firozabad'),
(539, 23, 'Farrukhabad'),
(540, 23, 'Fatehpur'),
(541, 23, 'Faizabad'),
(542, 23, 'Gautam Buddha Nagar'),
(543, 23, 'Gonda'),
(544, 23, 'Ghazipur'),
(545, 23, 'Gorkakhpur'),
(546, 23, 'Ghaziabad'),
(547, 23, 'Hamirpur'),
(548, 23, 'Hardoi'),
(549, 23, 'Mahamaya Nagar'),
(550, 23, 'Jhansi'),
(551, 23, 'Jalaun'),
(552, 23, 'Jyotiba Phule Nagar'),
(553, 23, 'Jaunpur District'),
(554, 23, 'Kanpur Dehat'),
(555, 23, 'Kannauj'),
(556, 23, 'Kanpur Nagar'),
(557, 23, 'Kaushambi'),
(558, 23, 'Kushinagar'),
(559, 23, 'Lalitpur'),
(560, 23, 'Lakhimpur Kheri'),
(561, 23, 'Lucknow'),
(562, 23, 'Mau'),
(563, 23, 'Meerut'),
(564, 23, 'Maharajganj'),
(565, 23, 'Mahoba'),
(566, 23, 'Mirzapur'),
(567, 23, 'Moradabad'),
(568, 23, 'Mainpuri'),
(569, 23, 'Mathura'),
(570, 23, 'Muzaffarnagar'),
(571, 23, 'Pilibhit'),
(572, 23, 'Pratapgarh'),
(573, 23, 'Rampur'),
(574, 23, 'Rae Bareli'),
(575, 23, 'Saharanpur'),
(576, 23, 'Sitapur'),
(577, 23, 'Shahjahanpur'),
(578, 23, 'Sant Kabir Nagar'),
(579, 23, 'Siddharthnagar'),
(580, 23, 'Sonbhadra'),
(581, 23, 'Sant Ravidas Nagar'),
(582, 23, 'Sultanpur'),
(583, 23, 'Shravasti'),
(584, 23, 'Unnao'),
(585, 23, 'Varanasi'),
(586, 24, 'Birbhum'),
(587, 24, 'Bankura'),
(588, 24, 'Bardhaman'),
(589, 24, 'Darjeeling'),
(590, 24, 'Dakshin Dinajpur'),
(591, 24, 'Hooghly'),
(592, 24, 'Howrah'),
(593, 24, 'Jalpaiguri'),
(594, 24, 'Cooch Behar'),
(595, 24, 'Kolkata'),
(596, 24, 'Malda'),
(597, 24, 'Midnapore'),
(598, 24, 'Murshidabad'),
(599, 24, 'Nadia'),
(600, 24, 'North 24 Parganas'),
(601, 24, 'South 24 Parganas'),
(602, 24, 'Purulia'),
(603, 24, 'Uttar Dinajpur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_subject` varchar(50) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `user_login_id` int(11) NOT NULL,
  `reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `feedback_subject`, `feedback`, `user_login_id`, `reply`) VALUES
(2, 'Admission ', 'Admission process is outstanding', 2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hostel`
--

CREATE TABLE `tbl_hostel` (
  `hostel_id` int(11) NOT NULL,
  `college_login_id` int(11) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `seat_availability` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `rules` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hostel`
--

INSERT INTO `tbl_hostel` (`hostel_id`, `college_login_id`, `total_seat`, `seat_availability`, `address`, `phone_number`, `type`, `rules`) VALUES
(1, 11, 20, 15, 'Adoor, near Engineering Hostel', '9865321245', 'Boys Hostel', 'Students must keep the Campus  Rooms clean Defacing walls, equipment, furniture etc, is strictly prohibited Birthday Other Celebrations are strictly prohibited in Hostel'),
(2, 11, 20, 15, 'sdfddsdsf', '9865321245', 'Girls Hostel', 'dsfds fdd'),
(4, 17, 250, 97, 'Vridhavanam,Perunna, Changanassery, Kerala ', '8976513445', 'Girls Hostel', 'Hostels usually have rules regarding visitors and entry and exit time,also including guidelines on visiting hours, registration procedures, and restrictions on male visitors'),
(5, 17, 150, 50, 'Dwaraka,Perunna, Changanassery, Kerala', '9235791527', 'Boys Hostel', 'Hostels generally have rules regarding visitors, including guidelines on visiting hours, registration procedures, and policies regarding the entry of female visitors and also have restrictions for some prohibited thingss like drinks,smoking etc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` longtext DEFAULT NULL,
  `Usertype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `Usertype`, `status`) VALUES
(2, 'anoop123', 'anoop1234', 'Student', 'Approved'),
(4, 'mahathama123', 'mahathama123', 'University', 'Approved'),
(5, 'kerala123', 'kerala123', 'University', 'Approved'),
(6, 'calicut123', 'calicut123', 'University', 'Approved'),
(7, 'bharathi123', 'bharathi123', 'University', 'Approved'),
(8, 'rrr1234', 'rrr1234', 'University', 'Approved'),
(9, 'dddf123', 'dddf123', 'University', 'Approved'),
(10, 'eee123', 'eee123', 'University', 'Approved'),
(11, 'saint123', 'saint123', 'College', 'Approved'),
(12, 'tutruy', 'tttttt', 'College', 'Approved'),
(13, 'catholicate123', 'catholicate123', 'College', 'Approved'),
(14, 'ajith123', 'ajith123', 'Student', 'Approved'),
(15, 'arya234', 'arya234', 'Student', 'Approved'),
(16, 'alphonsa', 'alphonsa', 'College', 'Approved'),
(17, 'nsschngry1', 'nsschngry1', 'College', 'Approved'),
(18, 'maharajas', 'maharajas', 'College', 'Approved'),
(19, 'surya1', 'surya1', 'Student', 'Approved'),
(20, 'arathi200', 'arathi@200', 'Student', 'Approved'),
(21, 'anjukrishnan', 'anjukrishnan', 'Student', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_course`
--

CREATE TABLE `tbl_offer_course` (
  `offer_course_id` int(11) NOT NULL,
  `college_login_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `seat` int(11) NOT NULL,
  `entry_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_offer_course`
--

INSERT INTO `tbl_offer_course` (`offer_course_id`, `college_login_id`, `course_id`, `seat`, `entry_date`) VALUES
(1, 11, 1, 20, '2023-06-11 19:10:08.549993'),
(2, 11, 5, 20, '2023-06-11 19:10:15.964411'),
(3, 11, 6, 20, '2023-06-11 19:10:23.096320'),
(4, 16, 10, 34, '2023-06-13 14:40:07.422737'),
(5, 16, 11, 15, '2023-06-13 14:40:15.624146'),
(6, 17, 12, 23, '2023-06-19 23:49:43.174066'),
(7, 17, 7, 15, '2023-06-19 23:49:55.593584'),
(8, 18, 13, 34, '2023-06-19 23:51:04.740159'),
(9, 18, 14, 17, '2023-06-19 23:51:15.633085'),
(10, 18, 9, 34, '2023-06-20 00:04:50.384379');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `country_id`, `state`) VALUES
(1, 105, 'ANDHRA PRADESH'),
(2, 105, 'ASSAM'),
(3, 105, 'ARUNACHAL PRADESH'),
(4, 105, 'BIHAR'),
(5, 105, 'GUJRAT'),
(6, 105, 'HARYANA'),
(7, 105, 'HIMACHAL PRADESH'),
(8, 105, 'JAMMU & KASHMIR'),
(9, 105, 'KARNATAKA'),
(10, 105, 'KERALA'),
(11, 105, 'MADHYA PRADESH'),
(12, 105, 'MAHARASHTRA'),
(13, 105, 'MANIPUR'),
(14, 105, 'MEGHALAYA'),
(15, 105, 'MIZORAM'),
(16, 105, 'NAGALAND'),
(17, 105, 'ORISSA'),
(18, 105, 'PUNJAB'),
(19, 105, 'RAJASTHAN'),
(20, 105, 'SIKKIM'),
(21, 105, 'TAMIL NADU'),
(22, 105, 'TRIPURA'),
(23, 105, 'UTTAR PRADESH'),
(24, 105, 'WEST BENGAL'),
(25, 105, 'DELHI'),
(26, 105, 'GOA'),
(27, 105, 'PONDICHERY'),
(28, 105, 'LAKSHDWEEP'),
(29, 105, 'DAMAN & DIU'),
(30, 105, 'DADRA & NAGAR'),
(31, 105, 'CHANDIGARH'),
(32, 105, 'ANDAMAN & NICOBAR'),
(33, 105, 'UTTARANCHAL'),
(34, 105, 'JHARKHAND'),
(35, 105, 'CHATTISGARH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `user_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` longtext NOT NULL,
  `place` varchar(50) DEFAULT NULL,
  `adhaar_no` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `caste` varchar(50) DEFAULT NULL,
  `caste_category` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `permanant_address` longtext DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`user_id`, `login_id`, `student_name`, `phone_number`, `Email`, `Address`, `place`, `adhaar_no`, `blood_group`, `caste`, `caste_category`, `date_of_birth`, `father_name`, `gender`, `mother_name`, `nationality`, `permanant_address`, `photo`, `religion`, `status`) VALUES
(1, 2, 'Anoop Thomas', 9865321245, 'anoop@gmail.com', 'Anoop Villa', 'Adoor', '895632124575', 'A Positive', 'Christian', 'General', '2023-06-01', 'Thomas', 'Male', 'Jincy', 'Indian', 'Jincy Villa', '/media/1..jpg', 'Christian', 'Updated'),
(2, 14, 'Ajith Tom', 9865321245, 'ajith@gmail.com', 'Ajith Villa', 'Adoor', '453453453534', 'A Positive', 'Hindu', 'General', '2023-06-06', 'fhf', 'Male', 'fhf', 'Indian', 'fghf', '/media/50..jpg', 'Hindu', 'Updated'),
(3, 15, 'Arya Krishnan', 8976757577, 'aryakrishnan234@gmail.com', 'Aryalayam,Ervankara po kochalumood \r\n', 'Eravnakra', '430889652319', 'O Positive', 'Nair', 'General', '2000-08-28', 'Unnikrishna pillai', 'Female', 'Raji R Pilai', 'Indian', 'Aryalayam,Eravankara po kochaliumood', '/media/51..jpg', 'Hindu', 'Updated'),
(4, 19, 'Surya Rajesh', 9867566575, 'surya124@gmail.com', 'Shivaji Marg, West End Greens, Rangpuri, New Delhi', 'New Delhi', '430623149876', 'AB Positive', 'Nair', 'General', '2000-04-08', 'Shivaji Ganesh', 'Female', 'Malavika Ganesh', 'Indian', 'Shivaji Marg, West End Greens, Rangpuri, New Delhi', '/media/56..jpg', 'Hindu', 'Updated'),
(5, 20, 'R ARYA KRISHNAN', 9747023220, 'maluzzkalabham281@gmail.com', 'kalabham valiyakulangara po karazhma east mavelikara\r\nkarazhma', 'Ernakulam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Updated'),
(6, 21, 'anju', 9876545678, 'anjkrishnan2012@gmail.com', 'nbhdgdhfgjsd', 'dfegffffff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Updated');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_university`
--

CREATE TABLE `tbl_university` (
  `university_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `university` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `place` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_university`
--

INSERT INTO `tbl_university` (`university_id`, `login_id`, `university`, `address`, `email`, `phone_number`, `district_id`, `place`) VALUES
(1, 4, 'Mahathama Gandhii University', 'Gandhinagar. Kottayamm', 'mahathma@gmail.com', 9865321243, 255, 'Gandhinagar'),
(2, 5, 'Kerala University', 'Senate House Campus, Palayam, Thiruvananthapuram, ', 'kerala@gmail.com', 7845123265, 261, 'Trivandrum'),
(3, 6, 'calicut University', 'Calicut University is located in Malappuram in Ker', 'calicut@gmail.com', 7485963214, 257, 'Malappuram'),
(4, 7, 'Bharathiyar University ', 'Coimbatore ', 'bharathiyar@gmail.com', 7898564578, 470, 'Coimbatore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tbl_admission_notification`
--
ALTER TABLE `tbl_admission_notification`
  ADD PRIMARY KEY (`admission_notification_id`);

--
-- Indexes for table `tbl_application`
--
ALTER TABLE `tbl_application`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `tbl_batch`
--
ALTER TABLE `tbl_batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `tbl_college`
--
ALTER TABLE `tbl_college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_hostel`
--
ALTER TABLE `tbl_hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_offer_course`
--
ALTER TABLE `tbl_offer_course`
  ADD PRIMARY KEY (`offer_course_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_university`
--
ALTER TABLE `tbl_university`
  ADD PRIMARY KEY (`university_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_admission_notification`
--
ALTER TABLE `tbl_admission_notification`
  MODIFY `admission_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_application`
--
ALTER TABLE `tbl_application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_batch`
--
ALTER TABLE `tbl_batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_college`
--
ALTER TABLE `tbl_college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hostel`
--
ALTER TABLE `tbl_hostel`
  MODIFY `hostel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_offer_course`
--
ALTER TABLE `tbl_offer_course`
  MODIFY `offer_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_university`
--
ALTER TABLE `tbl_university`
  MODIFY `university_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
