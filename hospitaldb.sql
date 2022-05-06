-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 09:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add doctor', 1, 'add_doctor'),
(2, 'Can change doctor', 1, 'change_doctor'),
(3, 'Can delete doctor', 1, 'delete_doctor'),
(4, 'Can view doctor', 1, 'view_doctor'),
(5, 'Can add patient', 2, 'add_patient'),
(6, 'Can change patient', 2, 'change_patient'),
(7, 'Can delete patient', 2, 'delete_patient'),
(8, 'Can view patient', 2, 'view_patient'),
(9, 'Can add appointment', 3, 'add_appointment'),
(10, 'Can change appointment', 3, 'change_appointment'),
(11, 'Can delete appointment', 3, 'delete_appointment'),
(12, 'Can view appointment', 3, 'view_appointment'),
(13, 'Can add contact', 4, 'add_contact'),
(14, 'Can change contact', 4, 'change_contact'),
(15, 'Can delete contact', 4, 'delete_contact'),
(16, 'Can view contact', 4, 'view_contact'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$6B9OSSqWWoPA$Kf5m69v4ffvqTJ+eC+a5HRaLkv3MuoYfzITYR+gmL9I=', '2022-05-06 07:46:06.837147', 1, 'syam', '', '', 'sy@gmail.com', 1, 1, '2022-04-27 04:53:27.898270'),
(5, 'pbkdf2_sha256$150000$SjWqzWzlYeuZ$SBUFnSSb2cmyRjHgVb8G9K4fCVgHs7bXFBx3GXUxSIw=', '2022-04-29 07:34:38.049672', 0, 'kumaran', '', '', '', 0, 1, '2022-04-29 06:42:19.276779'),
(6, 'pbkdf2_sha256$150000$zgkTmQ4Al64t$pGxB747LVgsV/dGc6dMJwLrPRorhcgx5RY0c8XemgpQ=', '2022-04-30 07:25:46.157211', 0, 'mahesh', '', '', '', 0, 1, '2022-04-29 17:05:34.836316'),
(7, 'pbkdf2_sha256$150000$l0Ir6qnp2cOi$WqvmZrYqQvKI6Ugqw2NORUvlPt7n/CHBheTM3ixWw/w=', '2022-05-02 06:05:47.618211', 0, 'yadhu', '', '', '', 0, 1, '2022-05-02 06:05:29.145587'),
(8, 'pbkdf2_sha256$150000$NqIzSxZp302g$mmoRPQOgTrndYrB8wRsiKRucJpIHl0YkvG9F5z+YeL0=', '2022-05-03 09:21:10.967040', 0, 'anurag', '', '', '', 0, 1, '2022-05-02 06:07:47.096003'),
(9, 'pbkdf2_sha256$150000$zz4ZSG1hY7na$jrX9o7xPJchb8rZvuAHYYhfUlnt2viJIsFJ1BvnodjU=', '2022-05-02 09:02:48.282122', 0, 'raj', '', '', '', 0, 1, '2022-05-02 09:02:35.133195'),
(10, 'pbkdf2_sha256$150000$opkNtctdSKNH$iwzeUpILMPat5zn/ye494v6vE+qQ2bcUvORXDgoqVvo=', NULL, 0, 'raman', '', '', '', 0, 1, '2022-05-02 09:06:05.857833'),
(11, 'pbkdf2_sha256$150000$Tkbk5G19tII1$QEFqU/0oKWjkeDbJVh4Spk5yFnp9vuXdhAExmcM9qeY=', NULL, 0, 'rai', '', '', '', 0, 1, '2022-05-02 09:09:45.032297'),
(12, 'pbkdf2_sha256$150000$IpCxymPThaM8$nMWmZpga4nhAaPPmVV14ybn9k+VugZ177BTksy/CB44=', '2022-05-05 09:31:51.598514', 0, 'raf', '', '', '', 0, 1, '2022-05-02 09:10:43.279779'),
(13, 'pbkdf2_sha256$150000$wyraBbmwpVUo$KocAhjnHlOLDIYn+4gbcjxE8eGh2x0AnuIPFoXqze7E=', NULL, 0, 'yam', '', '', '', 0, 1, '2022-05-02 09:16:58.208411'),
(14, 'pbkdf2_sha256$150000$RmitymRisZT4$tQzZbfJh/v42uvv13B81QjlQUVd858s6caxxwI+FSgc=', '2022-05-02 09:19:28.415102', 0, 'amr', '', '', '', 0, 1, '2022-05-02 09:19:11.395358'),
(15, 'pbkdf2_sha256$150000$HQmP1rZv5bgs$5BI3YzcC+1RfYgCo5I7gpEXfH0gnjbnZiy6JN6WnTNQ=', '2022-05-02 09:20:32.173851', 0, 'amru', '', '', '', 0, 1, '2022-05-02 09:20:17.315749'),
(16, 'pbkdf2_sha256$150000$C9vknZ1ml3CY$PsayuNrvqz/rfFfTIVMzlqoFB92bqS/LnClr2ffzcL0=', '2022-05-03 06:32:35.190820', 0, 'rithu', '', '', '', 0, 1, '2022-05-02 09:41:44.675322'),
(17, 'pbkdf2_sha256$150000$GbaVcpzX5N4r$jq0kqxKXzcSlk7uiyhm/NGVE8NxNcAkvLAsB3Hb9g+8=', '2022-05-03 06:16:40.279788', 0, 'sandhesh', '', '', '', 0, 1, '2022-05-03 06:16:13.717679'),
(18, 'pbkdf2_sha256$150000$Qd1TfCf3S7cx$7OMdyO6vZIpo1yv2Y5NGrgBTElCZTvuhR5AtKsg5H1U=', '2022-05-04 09:08:43.415745', 0, 'devan', '', '', '', 0, 1, '2022-05-04 08:42:56.266024'),
(19, 'pbkdf2_sha256$150000$7Oe9JiMik0yM$15SWNF0SAK3sUqOfngOlej+QWCc+oLhXmprm6I2HgEc=', NULL, 0, 'krish', '', '', '', 0, 1, '2022-05-04 08:44:26.096667'),
(20, 'pbkdf2_sha256$150000$ZS35MPeplpg4$CstVdWBA4pN4TYeaxZmfdBFPZ+oY9Yp9lLe/QMrDvd0=', '2022-05-04 08:45:57.237502', 0, 'amal', '', '', '', 0, 1, '2022-05-04 08:45:25.500082'),
(21, 'pbkdf2_sha256$150000$WvNbS16YoLDI$csr9cVn3JUIqTyI2Tn6kjSS4NpoynbwgUVi9Pw4WU7U=', '2022-05-04 09:46:32.053769', 0, 'jithu', '', '', '', 0, 1, '2022-05-04 09:46:09.409474'),
(22, 'pbkdf2_sha256$150000$o03Vw7RhnZzU$F7gcRM0iy6+nNHCnd8fYJSIrrRMx145OgeQpBNomiY0=', '2022-05-06 06:59:00.354358', 0, 'shafeek', '', '', 'sh@gmail.com', 0, 1, '2022-05-05 09:57:24.223449'),
(23, 'pbkdf2_sha256$150000$XAELbCkJs98N$x+RDzOCgZfnjJjTrAkheYtAxtX3VzuCob9DrACTvBhI=', '2022-05-05 11:00:47.581858', 0, 'harish', '', '', 'mrr6627@gmail.com', 0, 1, '2022-05-05 11:00:36.586351'),
(24, 'pbkdf2_sha256$150000$i13F1rsc4gXX$Pdcg9VtRORA6yevH35AvSQc0PTI8NSHJRWzqPZAVJKg=', '2022-05-05 17:28:54.050080', 0, 'pranav', '', '', 'mrrrob127@gmail.com', 0, 1, '2022-05-05 17:27:52.286333'),
(25, 'pbkdf2_sha256$150000$8I4ZpgA3GmgN$YG6soTuX6X5TGI50Eyd5OZvx0uxDmqnbDINfAmXe0eM=', '2022-05-06 07:45:06.983942', 0, 'syamchandh', '', '', 'syamchandh456@gmail.com', 0, 1, '2022-05-06 07:44:50.102326');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-02 04:42:31.695195', '4', 'kumaran', 3, '', 2, 1),
(2, '2022-05-02 04:42:32.258544', '3', 'jayan', 3, '', 2, 1),
(3, '2022-05-04 18:55:07.587782', '22', 'Pramod --jithu', 3, '', 3, 1),
(4, '2022-05-04 18:55:07.824069', '21', 'Pramod --devan', 3, '', 3, 1),
(5, '2022-05-04 18:55:07.962026', '20', 'Pramod --amal', 3, '', 3, 1),
(6, '2022-05-04 18:55:08.102259', '19', 'Krishnan--raf', 3, '', 3, 1),
(7, '2022-05-04 18:55:08.173511', '18', 'Pramod --raf', 3, '', 3, 1),
(8, '2022-05-04 18:55:08.279524', '17', 'Pramod --raf', 3, '', 3, 1),
(9, '2022-05-04 18:55:08.373122', '16', 'Krishnan--anurag', 3, '', 3, 1),
(10, '2022-05-04 18:55:08.424643', '15', 'Rajeev kumar--rigved', 3, '', 3, 1),
(11, '2022-05-04 18:55:08.462232', '14', 'Pramod --mahesh', 3, '', 3, 1),
(12, '2022-05-06 06:48:30.017472', '23', 'jithu', 3, '', 2, 1),
(13, '2022-05-06 06:48:30.440258', '22', 'amal', 3, '', 2, 1),
(14, '2022-05-06 06:48:30.719025', '21', 'krish', 3, '', 2, 1),
(15, '2022-05-06 06:48:31.474345', '20', 'devan', 3, '', 2, 1),
(16, '2022-05-06 06:48:32.492282', '19', 'sandhesh', 3, '', 2, 1),
(17, '2022-05-06 06:48:32.993972', '18', 'rithu', 3, '', 2, 1),
(18, '2022-05-06 06:48:33.511521', '17', 'amru', 3, '', 2, 1),
(19, '2022-05-06 06:48:33.997135', '16', 'amr', 3, '', 2, 1),
(20, '2022-05-06 06:48:34.228884', '15', 'yam', 3, '', 2, 1),
(21, '2022-05-06 06:48:34.466238', '14', 'raf', 3, '', 2, 1),
(22, '2022-05-06 06:48:34.713573', '13', 'rai', 3, '', 2, 1),
(23, '2022-05-06 06:48:35.052050', '12', 'raman', 3, '', 2, 1),
(24, '2022-05-06 06:48:35.568629', '11', 'raj', 3, '', 2, 1),
(25, '2022-05-06 06:48:35.853779', '10', 'anurag', 3, '', 2, 1),
(26, '2022-05-06 06:48:36.101032', '9', 'yadhu', 3, '', 2, 1),
(27, '2022-05-06 06:48:36.348465', '8', 'himesh kk', 3, '', 2, 1),
(28, '2022-05-06 06:48:36.856369', '7', 'rigved', 3, '', 2, 1),
(29, '2022-05-06 06:48:37.135527', '5', 'mahesh', 3, '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(3, 'hospitals', 'appointment'),
(4, 'hospitals', 'contact'),
(1, 'hospitals', 'doctor'),
(2, 'hospitals', 'patient'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-27 04:42:29.551406'),
(2, 'auth', '0001_initial', '2022-04-27 04:44:42.838409'),
(3, 'admin', '0001_initial', '2022-04-27 04:44:47.723283'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-27 04:44:48.194746'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-27 04:44:48.316746'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-27 04:44:50.530905'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-27 04:44:51.752278'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-27 04:44:52.004102'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-27 04:44:52.038207'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-27 04:44:55.516889'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-27 04:44:55.777862'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-27 04:44:55.932790'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-27 04:44:56.101846'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-27 04:44:56.264492'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-27 04:44:56.430199'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-27 04:44:56.487882'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-27 04:44:56.703949'),
(18, 'hospitals', '0001_initial', '2022-04-27 04:45:15.775590'),
(19, 'hospitals', '0002_contact', '2022-04-27 04:45:22.917583'),
(20, 'hospitals', '0003_rename_emailid_contact_email', '2022-04-27 04:45:23.261286'),
(21, 'hospitals', '0004_alter_contact_contact', '2022-04-27 04:45:24.805544'),
(22, 'sessions', '0001_initial', '2022-04-27 04:45:26.054845'),
(23, 'hospitals', '0005_auto_20220428_1010', '2022-04-28 04:44:36.161337'),
(24, 'hospitals', '0006_remove_patient_password', '2022-04-29 06:14:40.586958'),
(25, 'hospitals', '0007_patient_forn', '2022-04-29 06:35:58.457348'),
(26, 'hospitals', '0008_auto_20220430_1608', '2022-04-30 10:38:22.112006'),
(27, 'hospitals', '0009_auto_20220430_1611', '2022-04-30 10:42:00.221649'),
(28, 'hospitals', '0010_auto_20220504_1434', '2022-05-04 09:05:02.551987'),
(29, 'hospitals', '0011_auto_20220504_1435', '2022-05-04 09:05:52.370840'),
(30, 'hospitals', '0012_appointment_apporval_status', '2022-05-04 18:08:46.962842'),
(31, 'hospitals', '0013_patient_emailv', '2022-05-05 09:53:37.116518');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6ftvjdbj7n7twravcvol45bhg4r325zu', 'MDYwNzRiNzA5ODhlZWIyOTkwYjdlY2QwY2M2NDA4ODAwMmRjNTdiMDp7fQ==', '2022-05-13 06:42:28.972921'),
('9oongk4lggx0lwjh5z85qnrnioiqglh4', 'MDYwNzRiNzA5ODhlZWIyOTkwYjdlY2QwY2M2NDA4ODAwMmRjNTdiMDp7fQ==', '2022-05-11 08:21:02.823446'),
('girnvxxpak4ve6hx9ggnc8qnuve9c68r', 'YTY3NGNkM2U5NTI4N2ZmY2I5OTM4M2M1ZmY5MTY0NmI4NGY5NTA3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZGEyOWUyMGUyYTcxOGFhNTNjNTA0NjdlYzQzOGY3OGMzNDg3ZDEwIn0=', '2022-05-18 05:54:50.058702'),
('kxmeudqrn7wrjcyq79l06eqs75htholw', 'YTY3NGNkM2U5NTI4N2ZmY2I5OTM4M2M1ZmY5MTY0NmI4NGY5NTA3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZGEyOWUyMGUyYTcxOGFhNTNjNTA0NjdlYzQzOGY3OGMzNDg3ZDEwIn0=', '2022-05-18 03:44:19.006618'),
('lakn43xher8bvsp970myb1mxm9o2ulde', 'YTY3NGNkM2U5NTI4N2ZmY2I5OTM4M2M1ZmY5MTY0NmI4NGY5NTA3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZGEyOWUyMGUyYTcxOGFhNTNjNTA0NjdlYzQzOGY3OGMzNDg3ZDEwIn0=', '2022-05-18 17:31:05.246698');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_appointment`
--

CREATE TABLE `hospitals_appointment` (
  `id` int(11) NOT NULL,
  `date1` date NOT NULL,
  `time1` time(6) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `apporval_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals_appointment`
--

INSERT INTO `hospitals_appointment` (`id`, `date1`, `time1`, `doctor_id`, `patient_id`, `apporval_status`) VALUES
(27, '2022-05-06', '09:09:00.000000', 4, 26, 0),
(29, '2022-05-13', '00:00:00.000000', 3, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_contact`
--

CREATE TABLE `hospitals_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `msgdate` date DEFAULT NULL,
  `isread` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals_contact`
--

INSERT INTO `hospitals_contact` (`id`, `name`, `contact`, `email`, `subject`, `message`, `msgdate`, `isread`) VALUES
(1, 'syamchandh', '123456', 'sy@gmail.com', 'qwerty', 'ffdfdfddfds sdsdsd ', '2022-04-30', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_doctor`
--

CREATE TABLE `hospitals_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `special` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals_doctor`
--

INSERT INTO `hospitals_doctor` (`id`, `name`, `mobile`, `special`) VALUES
(1, 'Pramod ', '9074355478', 'Eye'),
(2, 'Krishnan', '9847509554', 'Dentist'),
(3, 'Rajeev kumar', '8113878245', 'Brain'),
(4, 'Rishikesh', '9544810033', 'Psychologist'),
(5, 'Radhika', '1234567890', 'Gynecologist'),
(6, 'Rama', '789456', 'Cardio');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_patient`
--

CREATE TABLE `hospitals_patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` int(11) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `forn_id` int(11) DEFAULT NULL,
  `emailv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals_patient`
--

INSERT INTO `hospitals_patient` (`id`, `name`, `gender`, `mobile`, `address`, `forn_id`, `emailv`) VALUES
(25, 'harish', 'Male', 156654, 'gfgfgf', 23, 'mrr6627@gmail.com'),
(26, 'pranav', 'Male', 2147483647, 'hgfgfgfgf', 24, 'mrrrob127@gmail.com'),
(27, 'syamchandh', 'Male', 2147483647, 'syamambaram', 25, 'syamchandh456@gmail.com');

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
-- Indexes for table `hospitals_appointment`
--
ALTER TABLE `hospitals_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospitals_appointment_doctor_id_1b9a7d31_fk` (`doctor_id`),
  ADD KEY `hospitals_appointment_patient_id_b7e6a17e_fk` (`patient_id`);

--
-- Indexes for table `hospitals_contact`
--
ALTER TABLE `hospitals_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals_doctor`
--
ALTER TABLE `hospitals_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals_patient`
--
ALTER TABLE `hospitals_patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospitals_patient_forn_id_c8a07765_fk_auth_user_id` (`forn_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hospitals_appointment`
--
ALTER TABLE `hospitals_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hospitals_contact`
--
ALTER TABLE `hospitals_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospitals_doctor`
--
ALTER TABLE `hospitals_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hospitals_patient`
--
ALTER TABLE `hospitals_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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

--
-- Constraints for table `hospitals_appointment`
--
ALTER TABLE `hospitals_appointment`
  ADD CONSTRAINT `hospitals_appointment_doctor_id_1b9a7d31_fk` FOREIGN KEY (`doctor_id`) REFERENCES `hospitals_doctor` (`id`),
  ADD CONSTRAINT `hospitals_appointment_patient_id_b7e6a17e_fk` FOREIGN KEY (`patient_id`) REFERENCES `hospitals_patient` (`id`);

--
-- Constraints for table `hospitals_patient`
--
ALTER TABLE `hospitals_patient`
  ADD CONSTRAINT `hospitals_patient_forn_id_c8a07765_fk_auth_user_id` FOREIGN KEY (`forn_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
