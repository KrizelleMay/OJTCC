-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 07:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojt_career_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `logo` varchar(255) DEFAULT 'logo.jpg',
  `moa_file` varchar(255) DEFAULT NULL,
  `manager_name` varchar(100) DEFAULT NULL,
  `manager_contact` varchar(20) DEFAULT NULL,
  `office_number` varchar(20) DEFAULT NULL,
  `company_email` varchar(150) DEFAULT NULL,
  `facebook_page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`id`, `user_id`, `company_name`, `company_address`, `contact_number`, `logo`, `moa_file`, `manager_name`, `manager_contact`, `office_number`, `company_email`, `facebook_page`) VALUES
(5, 36, 'Rikardo Fashion', 'Brgy Fashion St. Modeling City', '09010101010', 'logo.jpg', 'uploads/agency_documents/5/moa/moa_69c30cd94689b8.33364560.pdf', NULL, NULL, NULL, NULL, NULL),
(6, 37, 'Brenda Engr.', 'Brgy. Damage St. Brend City', '09020202020', 'logo.jpg', 'uploads/agency_documents/6/moa/moa_69c2ff41057e75.70042915.pdf', NULL, NULL, NULL, NULL, NULL),
(7, 38, 'Kathang Isip IT Solutions', 'Akala Ko Okay Na Rd., Blue Screen City', '09030303030', 'agency_38_1772909370.png', 'uploads/agency_documents/7/moa/moa_69af3b74e5e940.99505631.pdf', 'Bytes', '09123456789', '09030303030', 'BB@ojtconnect.com', 'https://www.google.com/'),
(8, 44, 'Shift Happens Auto Services', 'Rocky Road St. Batobato City', '09040404040', 'logo.jpg', 'uploads/agency_documents/8/moa/moa_69c3098674b868.17851205.pdf', NULL, NULL, NULL, NULL, NULL),
(9, 50, 'IT Bytes Solutions', 'Laoag City, Ilocos Norte', '09123123123', 'logo.jpg', 'uploads/agency_documents/9/moa/moa_69c2fe52b46ab6.76807123.pdf', NULL, NULL, NULL, NULL, NULL),
(10, 51, 'Draft & Craft Design Studio', 'Batac City, Ilocos Norte', '09321321321', 'logo.jpg', 'uploads/agency_documents/10/moa/moa_69c30106f3ef27.69306735.pdf', NULL, NULL, NULL, NULL, NULL),
(11, 52, 'Otto MOTO', 'San Nicolas, Ilocos Norte', '09231231231', 'logo.jpg', 'uploads/agency_documents/11/moa/moa_69c30c64bcbaa0.35120256.pdf', NULL, NULL, NULL, NULL, NULL),
(12, 53, 'Sew Good Fashion House', 'Vintar, Ilocos Norte', '09321321213', 'logo.jpg', 'uploads/agency_documents/12/moa/moa_69c30f2411ba83.18732612.pdf', NULL, NULL, NULL, NULL, NULL),
(13, 54, 'Build Right Construction', 'Sarrat, Ilocos Norte', '09123912391', 'logo.jpg', 'uploads/agency_documents/13/moa/moa_69c311073e05f4.10320689.pdf', NULL, NULL, NULL, NULL, NULL),
(14, 55, 'Hard Hat Heroes Builders', 'Bacarra, Ilocos Norte', '09123456767', 'logo.jpg', 'uploads/agency_documents/14/moa/moa_69c3143f0d5229.06500453.pdf', NULL, NULL, NULL, NULL, NULL),
(15, 56, 'Taste Buds Culinary Hub', 'Currimao, Ilocos Norte', '09091231233', 'logo.jpg', 'uploads/agency_documents/15/moa/moa_69c314e4307029.05539961.pdf', NULL, NULL, NULL, NULL, NULL),
(16, 57, 'Kusina ni Juan Catering', 'Paoay, Ilocos Norte', '09545432321', 'logo.jpg', 'uploads/agency_documents/16/moa/moa_69c31577ee3fa4.14758707.pdf', NULL, NULL, NULL, NULL, NULL),
(17, 58, 'Wired Up Electrical Services', 'Laoag City, Ilocos Norte', '09213131221', 'logo.jpg', 'uploads/agency_documents/17/moa/moa_69c317963d67d6.76006332.pdf', NULL, NULL, NULL, NULL, NULL),
(18, 59, 'Ohm Sweet Ohm Electric Co', 'Dingras, Ilocos Norte', '09123123111', 'logo.jpg', 'uploads/agency_documents/18/moa/moa_69c3196c367094.70281980.pdf', NULL, NULL, NULL, NULL, NULL),
(19, 60, 'Circuit Breakers Co', 'Batac City, Ilocos Norte', '09123123122', 'logo.jpg', 'uploads/agency_documents/19/moa/moa_69c319b0bb0ba9.30789413.pdf', NULL, NULL, NULL, NULL, NULL),
(20, 61, 'Techtonic Innovations', 'Pagudpud, Ilocos Norte', '09321321234', 'logo.jpg', 'uploads/agency_documents/20/moa/moa_69c31a1822cb63.69220649.pdf', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agency_documents`
--

CREATE TABLE `agency_documents` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `document_type` varchar(60) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(100) NOT NULL DEFAULT '',
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_current` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agency_documents`
--

INSERT INTO `agency_documents` (`id`, `agency_id`, `document_type`, `file_name`, `original_name`, `file_path`, `file_size`, `file_type`, `uploaded_at`, `is_current`) VALUES
(1, 6, 'moa', 'moa_69aaee92174948.11112275.pdf', 'moa_69aaee92174948.11112275.pdf', 'uploads/agency_documents/6/moa/moa_69aaee92174948.11112275.pdf', 0, '', '2026-03-09 20:43:45', 0),
(2, 7, 'moa', 'moa_69ae9ba9a89645.10567669.pdf', 'moa_69ae9ba9a89645.10567669.pdf', 'uploads/agency_documents/7/moa/moa_69ae9ba9a89645.10567669.pdf', 0, '', '2026-03-09 20:43:45', 0),
(4, 7, 'moa', 'moa_69aec2f4b4ec84.24872332.pdf', 'MOA.pdf', 'uploads/agency_documents/7/moa/moa_69aec2f4b4ec84.24872332.pdf', 5558, 'application/pdf', '2026-03-09 20:54:12', 0),
(5, 7, 'moa', 'moa_69aec71626c577.31657674.pdf', 'MOA.pdf', 'uploads/agency_documents/7/moa/moa_69aec71626c577.31657674.pdf', 5558, 'application/pdf', '2026-03-09 21:11:50', 0),
(6, 7, 'moa', 'moa_69af34a85b6369.49556562.pdf', 'MOA.pdf', 'uploads/agency_documents/7/moa/moa_69af34a85b6369.49556562.pdf', 5558, 'application/pdf', '2026-03-10 04:59:20', 0),
(7, 7, 'moa', 'moa_69af361289a4d9.12712145.pdf', 'MOA.pdf', 'uploads/agency_documents/7/moa/moa_69af361289a4d9.12712145.pdf', 5558, 'application/pdf', '2026-03-10 05:05:22', 0),
(8, 7, 'moa', 'moa_69af38bd6fb997.95035093.pdf', 'MOA.pdf', 'uploads/agency_documents/7/moa/moa_69af38bd6fb997.95035093.pdf', 5558, 'application/pdf', '2026-03-10 05:16:45', 0),
(9, 7, 'moa', 'moa_69af3b74e5e940.99505631.pdf', 'MOA.pdf', 'uploads/agency_documents/7/moa/moa_69af3b74e5e940.99505631.pdf', 5558, 'application/pdf', '2026-03-10 05:28:20', 1),
(10, 9, 'moa', 'moa_69c2fe52b46ab6.76807123.pdf', 'MOA.pdf', 'uploads/agency_documents/9/moa/moa_69c2fe52b46ab6.76807123.pdf', 5558, 'application/pdf', '2026-03-25 05:12:50', 1),
(11, 6, 'moa', 'moa_69c2ff41057e75.70042915.pdf', 'MOA.pdf', 'uploads/agency_documents/6/moa/moa_69c2ff41057e75.70042915.pdf', 5558, 'application/pdf', '2026-03-25 05:16:49', 1),
(12, 10, 'moa', 'moa_69c30106f3ef27.69306735.pdf', 'MOA.pdf', 'uploads/agency_documents/10/moa/moa_69c30106f3ef27.69306735.pdf', 5558, 'application/pdf', '2026-03-25 05:24:23', 1),
(13, 8, 'moa', 'moa_69c3098674b868.17851205.pdf', 'MOA.pdf', 'uploads/agency_documents/8/moa/moa_69c3098674b868.17851205.pdf', 5558, 'application/pdf', '2026-03-25 06:00:38', 1),
(14, 11, 'moa', 'moa_69c30c64bcbaa0.35120256.pdf', 'MOA.pdf', 'uploads/agency_documents/11/moa/moa_69c30c64bcbaa0.35120256.pdf', 5558, 'application/pdf', '2026-03-25 06:12:52', 1),
(15, 5, 'moa', 'moa_69c30cd94689b8.33364560.pdf', 'MOA.pdf', 'uploads/agency_documents/5/moa/moa_69c30cd94689b8.33364560.pdf', 5558, 'application/pdf', '2026-03-25 06:14:49', 1),
(16, 12, 'moa', 'moa_69c30f2411ba83.18732612.pdf', 'MOA.pdf', 'uploads/agency_documents/12/moa/moa_69c30f2411ba83.18732612.pdf', 5558, 'application/pdf', '2026-03-25 06:24:36', 1),
(17, 13, 'moa', 'moa_69c311073e05f4.10320689.pdf', 'MOA.pdf', 'uploads/agency_documents/13/moa/moa_69c311073e05f4.10320689.pdf', 5558, 'application/pdf', '2026-03-25 06:32:39', 1),
(18, 14, 'moa', 'moa_69c3143f0d5229.06500453.pdf', 'MOA.pdf', 'uploads/agency_documents/14/moa/moa_69c3143f0d5229.06500453.pdf', 5558, 'application/pdf', '2026-03-25 06:46:23', 1),
(19, 15, 'moa', 'moa_69c314e4307029.05539961.pdf', 'MOA.pdf', 'uploads/agency_documents/15/moa/moa_69c314e4307029.05539961.pdf', 5558, 'application/pdf', '2026-03-25 06:49:08', 1),
(20, 16, 'moa', 'moa_69c31577ee3fa4.14758707.pdf', 'MOA.pdf', 'uploads/agency_documents/16/moa/moa_69c31577ee3fa4.14758707.pdf', 5558, 'application/pdf', '2026-03-25 06:51:35', 1),
(21, 17, 'moa', 'moa_69c317963d67d6.76006332.pdf', 'MOA.pdf', 'uploads/agency_documents/17/moa/moa_69c317963d67d6.76006332.pdf', 5558, 'application/pdf', '2026-03-25 07:00:38', 1),
(22, 18, 'moa', 'moa_69c3196c367094.70281980.pdf', 'MOA.pdf', 'uploads/agency_documents/18/moa/moa_69c3196c367094.70281980.pdf', 5558, 'application/pdf', '2026-03-25 07:08:28', 1),
(23, 19, 'moa', 'moa_69c319b0bb0ba9.30789413.pdf', 'MOA.pdf', 'uploads/agency_documents/19/moa/moa_69c319b0bb0ba9.30789413.pdf', 5558, 'application/pdf', '2026-03-25 07:09:36', 1),
(24, 20, 'moa', 'moa_69c31a1822cb63.69220649.pdf', 'MOA.pdf', 'uploads/agency_documents/20/moa/moa_69c31a1822cb63.69220649.pdf', 5558, 'application/pdf', '2026-03-25 07:11:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `internship_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('Submitted','Reviewed','Accepted','Rejected','Withdrawn') NOT NULL DEFAULT 'Submitted',
  `decision_comment` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `internship_id`, `student_id`, `status`, `decision_comment`, `created_at`, `updated_at`) VALUES
(31, 21, 11, 'Accepted', NULL, '2026-03-14 13:41:51', '2026-03-15 15:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department` varchar(150) NOT NULL,
  `course` varchar(100) DEFAULT NULL,
  `faculty_id_file` varchar(255) DEFAULT NULL,
  `office_location` varchar(255) DEFAULT NULL,
  `office_hours` varchar(255) DEFAULT NULL,
  `school_year` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinators`
--

INSERT INTO `coordinators` (`id`, `user_id`, `department`, `course`, `faculty_id_file`, `office_location`, `office_hours`, `school_year`, `semester`) VALUES
(4, 39, 'Bachelor of Industrial Technology', 'Apparel and Fashion Technology', 'uploads/coordinator_documents/4/faculty_id/faculty_id_69c3434c038085.77941683.pdf', NULL, NULL, NULL, NULL),
(5, 40, 'Bachelor of Industrial Technology', 'Architectural Drafting Technology', 'uploads/coordinator_documents/5/faculty_id/faculty_id_69c30641c52200.11522886.pdf', NULL, NULL, NULL, NULL),
(6, 41, 'Bachelor in Automotive Technology', NULL, 'uploads/coordinator_documents/6/faculty_id/faculty_id_69c3430cb83a59.93757160.pdf', NULL, NULL, NULL, NULL),
(7, 42, 'Bachelor of Industrial Technology', 'Computer Technology', 'uploads/coordinator_documents/7/faculty_id/faculty_id_69af2436a66a49.47004885.pdf', NULL, NULL, NULL, NULL),
(9, 47, 'Bachelor of Industrial Technology', 'Culinary Technology', 'uploads/coordinator_documents/9/faculty_id/faculty_id_69c34195b0a7a0.66796895.pdf', NULL, NULL, NULL, NULL),
(10, 48, 'Bachelor of Industrial Technology', 'Electrical Technology', 'uploads/coordinator_documents/10/faculty_id/faculty_id_69c3423c387249.14440044.pdf', NULL, NULL, NULL, NULL),
(11, 49, 'Bachelor of Industrial Technology', 'Electronics Technology', 'uploads/coordinator_documents/11/faculty_id/faculty_id_69c342c6c68234.93935213.pdf', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coordinator_documents`
--

CREATE TABLE `coordinator_documents` (
  `id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  `document_type` varchar(60) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(100) NOT NULL DEFAULT '',
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_current` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinator_documents`
--

INSERT INTO `coordinator_documents` (`id`, `coordinator_id`, `document_type`, `file_name`, `original_name`, `file_path`, `file_size`, `file_type`, `uploaded_at`, `is_current`) VALUES
(1, 7, 'faculty_id', 'faculty_id_69af2436a66a49.47004885.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/7/faculty_id/faculty_id_69af2436a66a49.47004885.pdf', 5622, 'application/pdf', '2026-03-10 03:49:10', 1),
(2, 5, 'faculty_id', 'faculty_id_69c30641c52200.11522886.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/5/faculty_id/faculty_id_69c30641c52200.11522886.pdf', 5622, 'application/pdf', '2026-03-25 05:46:41', 1),
(3, 9, 'faculty_id', 'faculty_id_69c34084968b96.32216558.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/9/faculty_id/faculty_id_69c34084968b96.32216558.pdf', 5622, 'application/pdf', '2026-03-25 09:55:16', 0),
(4, 9, 'faculty_id', 'faculty_id_69c340a2baf8e7.78880510.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/9/faculty_id/faculty_id_69c340a2baf8e7.78880510.pdf', 5622, 'application/pdf', '2026-03-25 09:55:46', 0),
(5, 9, 'faculty_id', 'faculty_id_69c34160cfbda3.96481206.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/9/faculty_id/faculty_id_69c34160cfbda3.96481206.pdf', 5622, 'application/pdf', '2026-03-25 09:58:56', 0),
(6, 9, 'faculty_id', 'faculty_id_69c34195b0a7a0.66796895.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/9/faculty_id/faculty_id_69c34195b0a7a0.66796895.pdf', 5622, 'application/pdf', '2026-03-25 09:59:49', 1),
(7, 10, 'faculty_id', 'faculty_id_69c3423c387249.14440044.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/10/faculty_id/faculty_id_69c3423c387249.14440044.pdf', 5622, 'application/pdf', '2026-03-25 10:02:36', 1),
(8, 11, 'faculty_id', 'faculty_id_69c342c6c68234.93935213.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/11/faculty_id/faculty_id_69c342c6c68234.93935213.pdf', 5622, 'application/pdf', '2026-03-25 10:04:54', 1),
(9, 6, 'faculty_id', 'faculty_id_69c3430cb83a59.93757160.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/6/faculty_id/faculty_id_69c3430cb83a59.93757160.pdf', 5622, 'application/pdf', '2026-03-25 10:06:04', 1),
(10, 4, 'faculty_id', 'faculty_id_69c3434c038085.77941683.pdf', 'FACULTY ID.pdf', 'uploads/coordinator_documents/4/faculty_id/faculty_id_69c3434c038085.77941683.pdf', 5622, 'application/pdf', '2026-03-25 10:07:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_reviews`
--

CREATE TABLE `document_reviews` (
  `id` int(11) NOT NULL,
  `document_type` enum('student_document','agency_document','coordinator_document') NOT NULL,
  `document_id` int(11) NOT NULL,
  `review_status` enum('pending','approved','rejected','revision') NOT NULL DEFAULT 'pending',
  `reviewer_note` text DEFAULT NULL,
  `reviewed_by` int(11) NOT NULL,
  `reviewed_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_reviews`
--

INSERT INTO `document_reviews` (`id`, `document_type`, `document_id`, `review_status`, `reviewer_note`, `reviewed_by`, `reviewed_at`, `created_at`) VALUES
(1, 'student_document', 35, 'revision', 'Returned', 42, '2026-03-09 21:08:48', '2026-03-09 21:08:48'),
(2, 'agency_document', 4, 'revision', 'Returned', 42, '2026-03-09 21:11:24', '2026-03-09 21:11:24'),
(3, 'student_document', 38, 'revision', 'Update your FORM 5 Document', 42, '2026-03-10 04:57:24', '2026-03-10 04:57:24'),
(4, 'agency_document', 6, 'revision', 'Update your  MOA', 42, '2026-03-10 05:04:59', '2026-03-10 05:04:59'),
(5, 'agency_document', 7, 'approved', '', 42, '2026-03-10 05:14:34', '2026-03-10 05:14:34'),
(6, 'student_document', 39, 'approved', '', 42, '2026-03-10 05:14:58', '2026-03-10 05:14:58'),
(7, 'student_document', 39, 'revision', 'Update again your FORM 5', 42, '2026-03-10 05:15:40', '2026-03-10 05:15:40'),
(8, 'agency_document', 7, 'revision', 'Update Again your MOA', 42, '2026-03-10 05:16:11', '2026-03-10 05:16:11'),
(9, 'agency_document', 8, 'approved', '', 42, '2026-03-10 05:16:57', '2026-03-10 05:16:57'),
(10, 'student_document', 40, 'approved', '', 42, '2026-03-10 05:21:14', '2026-03-10 05:21:14'),
(11, 'agency_document', 8, 'revision', 'Submit again', 42, '2026-03-10 05:26:17', '2026-03-10 05:26:17'),
(12, 'agency_document', 9, 'approved', '', 42, '2026-03-10 05:28:25', '2026-03-10 05:28:25'),
(13, 'student_document', 40, 'revision', 'Resubmit', 42, '2026-03-10 18:26:17', '2026-03-10 18:26:17'),
(14, 'student_document', 41, 'approved', '', 42, '2026-03-10 18:29:46', '2026-03-10 18:29:46'),
(15, 'student_document', 41, 'revision', 'Resubmit your document.', 42, '2026-03-10 22:41:18', '2026-03-10 22:41:18'),
(16, 'student_document', 42, 'approved', '', 42, '2026-03-10 22:44:04', '2026-03-10 22:44:04'),
(17, 'agency_document', 1, 'revision', 'resubmit', 2, '2026-03-25 05:13:44', '2026-03-25 05:13:44'),
(18, 'agency_document', 11, 'approved', '', 2, '2026-03-25 05:17:11', '2026-03-25 05:17:11'),
(19, 'agency_document', 10, 'approved', '', 2, '2026-03-25 05:23:24', '2026-03-25 05:23:24'),
(20, 'agency_document', 12, 'approved', '', 42, '2026-03-25 05:29:13', '2026-03-25 05:29:13'),
(21, 'coordinator_document', 2, 'approved', '', 2, '2026-03-25 05:46:59', '2026-03-25 05:46:59'),
(22, 'student_document', 46, 'revision', 'Resubmit', 40, '2026-03-25 05:47:30', '2026-03-25 05:47:30'),
(23, 'student_document', 47, 'approved', '', 40, '2026-03-25 05:48:28', '2026-03-25 05:48:28'),
(24, 'agency_document', 13, 'approved', '', 2, '2026-03-25 06:00:51', '2026-03-25 06:00:51'),
(25, 'agency_document', 14, 'approved', '', 2, '2026-03-25 06:12:59', '2026-03-25 06:12:59'),
(26, 'agency_document', 15, 'approved', '', 2, '2026-03-25 06:14:52', '2026-03-25 06:14:52'),
(27, 'agency_document', 16, 'approved', '', 2, '2026-03-25 06:24:40', '2026-03-25 06:24:40'),
(28, 'agency_document', 17, 'approved', '', 2, '2026-03-25 06:32:48', '2026-03-25 06:32:48'),
(29, 'agency_document', 18, 'approved', '', 2, '2026-03-25 06:46:30', '2026-03-25 06:46:30'),
(30, 'agency_document', 19, 'approved', '', 2, '2026-03-25 06:49:10', '2026-03-25 06:49:10'),
(31, 'agency_document', 20, 'approved', '', 2, '2026-03-25 06:51:41', '2026-03-25 06:51:41'),
(32, 'agency_document', 21, 'approved', '', 2, '2026-03-25 07:00:41', '2026-03-25 07:00:41'),
(33, 'agency_document', 24, 'approved', '', 2, '2026-03-25 07:11:21', '2026-03-25 07:11:21'),
(34, 'coordinator_document', 6, 'approved', '', 2, '2026-03-25 10:00:11', '2026-03-25 10:00:11'),
(35, 'coordinator_document', 7, 'approved', '', 2, '2026-03-25 10:03:37', '2026-03-25 10:03:37'),
(36, 'coordinator_document', 8, 'approved', '', 2, '2026-03-25 10:05:00', '2026-03-25 10:05:00'),
(37, 'coordinator_document', 9, 'approved', '', 2, '2026-03-25 10:06:36', '2026-03-25 10:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `target_department` varchar(100) DEFAULT 'ALL',
  `target_course` varchar(100) DEFAULT 'ALL',
  `status` enum('Pending','Active','Deactivate','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `contact_name` varchar(255) NOT NULL,
  `contact_position` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `previous_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internships`
--

INSERT INTO `internships` (`id`, `agency_id`, `description`, `target_department`, `target_course`, `status`, `created_at`, `contact_name`, `contact_position`, `contact`, `previous_status`) VALUES
(21, 7, 'If Ben&Ben makes music for your soul, Ben&Byte makes solutions for your system.\r\nWe’re hiring IT Interns who can turn errors into encores and crashes into standing ovations.\r\n🎤 No singing required, just coding, troubleshooting, and good vibes.', 'BIT', 'Computer Technology', 'Active', '2026-03-03 20:16:21', 'Beans', 'Owner', '09123456789', NULL),
(23, 6, 'We\'re looking for hollowblocks expert', 'BIT', 'Architectural Drafting Technology', 'Active', '2026-03-24 21:08:57', 'Brenda', 'Owner', '09123123123', NULL),
(24, 10, 'We were looking for draftsmen', 'BIT', 'Architectural Drafting Technology', 'Active', '2026-03-24 21:30:11', 'Drew', 'Owner', '09123123123', NULL),
(25, 9, 'We were looking for intern. Thanks', 'BIT', 'Computer Technology', 'Active', '2026-03-24 21:32:13', 'Byte', 'Owner', 'Byte@ojtconnect.com', NULL),
(26, 8, 'We were looking for vulcanizing intern that is willing to learn', 'BAT', 'ALL', 'Active', '2026-03-24 22:02:12', 'Juan', 'Owner', '09213213213', NULL),
(27, 11, 'We were looking for intern that is willing to learn', 'BAT', 'ALL', 'Active', '2026-03-24 22:14:20', 'Otto', 'Owner', '09321312312', NULL),
(28, 5, 'We were looking for intern that can sew', 'BIT', 'Apparel and Fashion Technology', 'Active', '2026-03-24 22:22:59', 'Rikardo', 'Owner', '09321321321', NULL),
(29, 12, 'Looking for intern that is willing to learn in sewing', 'BIT', 'Apparel and Fashion Technology', 'Active', '2026-03-24 22:26:30', 'Sew', 'owner', '09321213213', NULL),
(30, 13, 'Looking for intern willing to pala everyday', 'BIT', 'Construction Technology', 'Active', '2026-03-24 22:44:55', 'Conrado', 'Owner', '09123123123', NULL),
(31, 14, 'Apply to our company if you have skills to pala', 'BIT', 'Construction Technology', 'Active', '2026-03-24 22:47:46', 'Hardy', 'Manager', '0932132112', NULL),
(32, 15, 'Looking for enhancing your skills ?! Apply here we accept interns', 'BIT', 'Culinary Technology', 'Active', '2026-03-24 22:50:49', 'Logro', 'Co-owner', '09323232232', NULL),
(33, 16, 'Come and apply interns enhance your skills in cooking', 'BIT', 'Culinary Technology', 'Active', '2026-03-24 22:53:23', 'Dosie', 'Secretary', '09321243234', NULL),
(34, 17, 'Looking for interns who has skills in handling electrical wires and willing to learn and improve their skills', 'BIT', 'Electrical Technology', 'Active', '2026-03-24 23:04:59', 'Reyes', 'Secretary', '09324324432', NULL),
(35, 18, 'Looking for interns', 'BIT', 'Electrical Technology', 'Active', '2026-03-24 23:09:10', 'Swit', 'Secretary', '09123123111', NULL),
(36, 19, 'Looking for electronics interns', 'BIT', 'Electronics Technology', 'Active', '2026-03-24 23:10:58', 'Sirkith', 'Secretary', '09123456789', NULL),
(37, 20, 'Looking for interns in Electronics', 'BIT', 'Electronics Technology', 'Active', '2026-03-24 23:11:57', 'Tekta', 'Manager', '09123123123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `link`, `is_read`, `created_at`) VALUES
(1, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-10 05:31:35'),
(2, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-10 05:32:32'),
(3, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-10 18:24:27'),
(4, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-10 18:30:03'),
(5, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-10 18:46:20'),
(6, 35, 'Your application was not accepted this time.', 'Sapplications.php', 1, '2026-03-10 18:56:44'),
(7, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-10 19:01:30'),
(8, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-10 19:02:20'),
(9, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-10 19:02:24'),
(10, 35, 'Your documents (For the Coordinator) were returned for re-upload.', 'Sapplications.php', 1, '2026-03-10 22:52:16'),
(11, 35, 'Your application has been moved back to In Review.', 'Sapplications.php', 1, '2026-03-10 22:57:45'),
(12, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-11 12:28:10'),
(13, 35, 'Your documents (For the Agency) have been approved.', 'Sapplications.php', 1, '2026-03-11 15:59:39'),
(14, 35, 'Your application has been moved back to In Review.', 'Sapplications.php', 1, '2026-03-12 23:33:06'),
(15, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-12 23:33:31'),
(16, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-12 23:33:43'),
(17, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-12 23:36:30'),
(18, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-12 23:38:12'),
(19, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-12 23:38:45'),
(20, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-12 23:39:06'),
(21, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-12 23:39:47'),
(22, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-12 23:39:48'),
(23, 2, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Aapplications.php', 1, '2026-03-12 23:39:49'),
(24, 42, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Cagencies.php', 1, '2026-03-12 23:39:49'),
(25, 35, 'Your application has been moved back to In Review.', 'Sapplications.php', 1, '2026-03-12 23:47:35'),
(26, 35, 'Your application was not accepted this time.', 'Sapplications.php', 1, '2026-03-12 23:51:18'),
(27, 2, 'Debra Sinay\'s application for \"Beans\" was declined by the Partner Agency.', 'Aapplications.php', 1, '2026-03-12 23:51:18'),
(28, 42, 'Debra Sinay\'s application for \"Beans\" was declined by the Partner Agency.', 'Cagencies.php', 1, '2026-03-12 23:51:18'),
(29, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-12 23:56:08'),
(30, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-12 23:57:41'),
(31, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-12 23:57:54'),
(32, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-12 23:57:59'),
(33, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-12 23:58:07'),
(34, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-12 23:59:00'),
(35, 2, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Aapplications.php', 1, '2026-03-12 23:59:00'),
(36, 42, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Cagencies.php', 1, '2026-03-12 23:59:00'),
(37, 38, 'Debra Sinay uploaded documents for the Agency folder.', 'Agenrolled.php', 1, '2026-03-13 00:02:43'),
(38, 35, 'Your application has been moved back to In Review.', 'Sapplications.php', 1, '2026-03-13 00:07:05'),
(39, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-13 00:07:14'),
(40, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-13 00:20:19'),
(41, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-13 00:20:27'),
(42, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-13 00:20:29'),
(43, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-13 00:20:51'),
(44, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-13 00:21:00'),
(45, 2, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Aapplications.php', 1, '2026-03-13 00:21:00'),
(46, 42, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Cagencies.php', 1, '2026-03-13 00:21:00'),
(47, 35, 'Your application has been moved back to In Review.', 'Sapplications.php', 1, '2026-03-13 00:21:21'),
(48, 35, 'Your application was not accepted this time.', 'Sapplications.php', 1, '2026-03-13 00:21:31'),
(49, 2, 'Debra Sinay\'s application for \"Beans\" was declined by the Partner Agency.', 'Aapplications.php', 1, '2026-03-13 00:21:31'),
(50, 42, 'Debra Sinay\'s application for \"Beans\" was declined by the Partner Agency.', 'Cagencies.php', 1, '2026-03-13 00:21:31'),
(51, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-13 00:35:02'),
(52, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-13 00:35:05'),
(53, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-13 03:48:52'),
(54, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-13 06:22:44'),
(55, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-13 06:22:47'),
(56, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-13 06:22:49'),
(57, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 01:58:33'),
(58, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 01:58:48'),
(59, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 01:58:52'),
(60, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 01:58:56'),
(61, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 02:07:40'),
(62, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 02:26:12'),
(63, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 02:26:16'),
(64, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 02:46:29'),
(65, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 02:46:33'),
(66, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-14 20:49:37'),
(67, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 20:50:12'),
(68, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 20:50:15'),
(69, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 20:51:02'),
(70, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:07:30'),
(71, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:07:41'),
(72, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:07:44'),
(73, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:12:22'),
(74, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:12:23'),
(75, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:12:27'),
(76, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:12:28'),
(77, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:12:34'),
(78, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:39:52'),
(79, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:40:03'),
(80, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:40:10'),
(81, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:40:22'),
(82, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:41:03'),
(83, 38, 'Debra Sinay cancelled their application.', 'Agapplications.php', 1, '2026-03-14 21:41:39'),
(84, 38, 'Debra Sinay submitted a new application.', 'Agapplications.php', 1, '2026-03-14 21:41:51'),
(85, 35, 'Your application is now being reviewed.', 'Sapplications.php', 1, '2026-03-14 22:01:43'),
(86, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-14 22:01:44'),
(87, 2, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Aapplications.php', 1, '2026-03-14 22:01:44'),
(88, 42, 'Debra Sinay has been accepted for \"Beans\" by a Partner Agency.', 'Cagencies.php', 1, '2026-03-14 22:01:44'),
(89, 41, 'Debra Sinay uploaded documents for the Coordinator folder.', 'Cstudents.php', 0, '2026-03-14 22:02:47'),
(90, 38, 'Debra Sinay uploaded documents for the Agency folder.', 'Agenrolled.php', 1, '2026-03-14 22:02:55'),
(91, 35, 'Your documents (For the Partner Agency) have been approved.', 'Sapplications.php', 1, '2026-03-14 22:03:08'),
(92, 35, 'Your documents (For the Coordinator) have been approved.', 'Sapplications.php', 1, '2026-03-14 22:04:10'),
(93, 35, 'Your application has been moved back to Being Reviewed.', 'Sapplications.php', 1, '2026-03-14 22:07:29'),
(94, 35, 'Congratulations! Your application has been accepted.', 'Sapplications.php', 1, '2026-03-15 23:43:29'),
(95, 35, 'Your documents (For the Coordinator) have received final approval from the OJT focal person. Deployment can now proceed.', 'Sapplications.php', 1, '2026-03-15 23:44:42'),
(96, 35, 'Your final approval from the OJT focal person was reopened for another review. Deployment is temporarily on hold.', 'Sapplications.php', 1, '2026-03-15 23:56:00'),
(97, 35, 'Your documents (For the Coordinator) were returned for re-upload by the OJT focal person.', 'Sapplications.php', 1, '2026-03-15 23:56:14'),
(98, 41, 'Debra Sinay uploaded documents for the Coordinator folder.', 'Cstudents.php', 0, '2026-03-15 23:57:14'),
(99, 35, 'Your documents (For the Coordinator) have been approved.', 'Sapplications.php', 1, '2026-03-15 23:57:31'),
(100, 2, 'OJT Faculty In-Charge approved Debra Sinay for final approval. Confirm now so deployment can proceed.', 'Acoordinators.php', 1, '2026-03-15 23:57:31'),
(101, 2, 'OJT Faculty In-Charge sent a batch of 1 student(s) for final review.', 'Acoordinators.php', 1, '2026-03-16 04:41:57'),
(102, 35, 'Your documents (For the Coordinator) have received final approval from the OJT focal person. Deployment can now proceed.', 'Sapplications.php', 1, '2026-03-16 06:33:11'),
(103, 35, 'Your final approval from the OJT focal person was reopened for another review. Deployment is temporarily on hold.', 'Sapplications.php', 1, '2026-03-16 06:33:24'),
(104, 35, 'Your documents (For the Coordinator) have received final approval from the OJT focal person. Deployment can now proceed.', 'Sapplications.php', 1, '2026-03-16 07:32:21'),
(105, 38, 'Debra Sinay submitted a new weekly report.', 'Agenrolled.php', 1, '2026-03-18 04:13:33'),
(106, 42, 'Debra Sinay submitted a new weekly report.', 'Cstudents.php', 1, '2026-03-18 04:13:33'),
(107, 35, 'Your weekly report has been approved by the coordinator.', 'Sojtstatus.php', 1, '2026-03-18 05:54:28'),
(108, 2, 'Kathang Isip IT Solutions has restored the listing \"Byte\".', 'Ainternship.php', 1, '2026-03-18 08:31:42'),
(109, 38, 'Your internship post \"Byte\" was deactivated by the OJT Focal Person.', 'Aginternship.php', 1, '2026-03-20 09:58:13'),
(110, 38, 'Your internship post \"Byte\" was activated by the OJT Focal Person.', 'Aginternship.php', 1, '2026-03-20 09:58:35'),
(111, 38, 'Your internship post \"Byte\" was deactivated by the OJT Focal Person.', 'Aginternship.php', 1, '2026-03-20 09:58:57'),
(112, 38, 'Your internship post \"Byte\" was activated by the OJT Focal Person.', 'Aginternship.php', 1, '2026-03-20 09:59:10'),
(113, 38, 'Your internship post \"Byte\" was deactivated by the OJT Faculty In-Charge. Reason: Partner agency requirements need update.', 'Aginternship.php', 1, '2026-03-20 10:48:38'),
(114, 38, 'Your internship post \"Byte\" was activated by the OJT Faculty In-Charge.', 'Aginternship.php', 1, '2026-03-20 11:23:31'),
(115, 38, 'Your internship post \"Byte\" was deactivated by the OJT Focal Person. Reason: Other - Resubmit.', 'Aginternship.php', 1, '2026-03-20 11:27:54'),
(116, 38, 'Your internship post \"Byte\" was activated by the OJT Focal Person.', 'Aginternship.php', 1, '2026-03-20 11:28:32'),
(117, 42, 'Debra Sinay requested assistance to open the submission window (1 overdue weekly report).', 'Cstudents.php?notif=window_request&student_id=11', 1, '2026-03-25 00:07:12'),
(118, 2, 'Brenda Engr. posted a new internship listing: \"Brenda\".', 'Ainternship.php', 1, '2026-03-25 05:08:57'),
(119, 2, 'Kathang Isip IT Solutions has deleted the listing \"Byte\".', 'Ainternship.php', 1, '2026-03-25 05:12:19'),
(120, 2, 'Draft & Craft Design Studio posted a new internship listing: \"Drew\".', 'Ainternship.php', 1, '2026-03-25 05:30:11'),
(121, 2, 'IT Bytes Solutions posted a new internship listing: \"Byte\".', 'Ainternship.php', 1, '2026-03-25 05:32:13'),
(122, 40, 'Bea Lou has been approved and is now an active OJT Student under your scope.', 'Cstudents.php', 1, '2026-03-25 05:48:28'),
(123, 2, 'Shift Happens Auto Services posted a new internship listing: \"Juan\".', 'Ainternship.php', 1, '2026-03-25 06:02:12'),
(124, 39, 'Shift Happens Auto Services posted a new internship listing: \"Juan\". Description: We were looking for vulcanizing intern that is willing to learn', 'Cagencies.php', 0, '2026-03-25 06:02:12'),
(125, 40, 'Shift Happens Auto Services posted a new internship listing: \"Juan\". Description: We were looking for vulcanizing intern that is willing to learn', 'Cagencies.php', 1, '2026-03-25 06:02:12'),
(126, 42, 'Shift Happens Auto Services posted a new internship listing: \"Juan\". Description: We were looking for vulcanizing intern that is willing to learn', 'Cagencies.php', 0, '2026-03-25 06:02:12'),
(127, 2, 'Otto MOTO posted a new internship listing: \"Otto\".', 'Ainternship.php', 1, '2026-03-25 06:14:20'),
(128, 39, 'Otto MOTO posted a new internship listing: \"Otto\". Description: We were looking for intern that is willing to learn', 'Cagencies.php', 0, '2026-03-25 06:14:20'),
(129, 40, 'Otto MOTO posted a new internship listing: \"Otto\". Description: We were looking for intern that is willing to learn', 'Cagencies.php', 1, '2026-03-25 06:14:20'),
(130, 42, 'Otto MOTO posted a new internship listing: \"Otto\". Description: We were looking for intern that is willing to learn', 'Cagencies.php', 0, '2026-03-25 06:14:20'),
(131, 2, 'Rikardo Fashion posted a new internship listing: \"Rikardo\".', 'Ainternship.php', 1, '2026-03-25 06:22:59'),
(132, 39, 'Rikardo Fashion posted a new internship listing: \"Rikardo\". Description: We were looking for intern that can sew', 'Cagencies.php', 0, '2026-03-25 06:22:59'),
(133, 40, 'Rikardo Fashion posted a new internship listing: \"Rikardo\". Description: We were looking for intern that can sew', 'Cagencies.php', 1, '2026-03-25 06:22:59'),
(134, 42, 'Rikardo Fashion posted a new internship listing: \"Rikardo\". Description: We were looking for intern that can sew', 'Cagencies.php', 0, '2026-03-25 06:22:59'),
(135, 2, 'Sew Good Fashion House posted a new internship listing: \"Sew\".', 'Ainternship.php', 1, '2026-03-25 06:26:30'),
(136, 39, 'Sew Good Fashion House posted a new internship listing: \"Sew\". Description: Looking for intern that is willing to learn in sewing', 'Cagencies.php', 0, '2026-03-25 06:26:30'),
(137, 40, 'Sew Good Fashion House posted a new internship listing: \"Sew\". Description: Looking for intern that is willing to learn in sewing', 'Cagencies.php', 1, '2026-03-25 06:26:30'),
(138, 42, 'Sew Good Fashion House posted a new internship listing: \"Sew\". Description: Looking for intern that is willing to learn in sewing', 'Cagencies.php', 0, '2026-03-25 06:26:30'),
(139, 2, 'Brenda Engr. updated the listing \"Brenda\".', 'Ainternship.php', 1, '2026-03-25 06:27:40'),
(140, 2, 'Build Right Construction posted a new internship listing: \"Conrado\".', 'Ainternship.php', 1, '2026-03-25 06:44:55'),
(141, 39, 'Build Right Construction posted a new internship listing: \"Conrado\". Description: Looking for intern willing to pala everyday', 'Cagencies.php', 0, '2026-03-25 06:44:55'),
(142, 40, 'Build Right Construction posted a new internship listing: \"Conrado\". Description: Looking for intern willing to pala everyday', 'Cagencies.php', 1, '2026-03-25 06:44:55'),
(143, 42, 'Build Right Construction posted a new internship listing: \"Conrado\". Description: Looking for intern willing to pala everyday', 'Cagencies.php', 0, '2026-03-25 06:44:55'),
(144, 2, 'Hard Hat Heroes Builders posted a new internship listing: \"Hardy\".', 'Ainternship.php', 1, '2026-03-25 06:47:46'),
(145, 39, 'Hard Hat Heroes Builders posted a new internship listing: \"Hardy\". Description: Apply to our company if you have skills to pala', 'Cagencies.php', 0, '2026-03-25 06:47:46'),
(146, 40, 'Hard Hat Heroes Builders posted a new internship listing: \"Hardy\". Description: Apply to our company if you have skills to pala', 'Cagencies.php', 1, '2026-03-25 06:47:46'),
(147, 42, 'Hard Hat Heroes Builders posted a new internship listing: \"Hardy\". Description: Apply to our company if you have skills to pala', 'Cagencies.php', 0, '2026-03-25 06:47:46'),
(148, 2, 'Taste Buds Culinary Hub posted a new internship listing: \"Logro\".', 'Ainternship.php', 1, '2026-03-25 06:50:49'),
(149, 39, 'Taste Buds Culinary Hub posted a new internship listing: \"Logro\". Description: Looking for enhancing your skills ?! Apply here we accept interns', 'Cagencies.php', 0, '2026-03-25 06:50:49'),
(150, 40, 'Taste Buds Culinary Hub posted a new internship listing: \"Logro\". Description: Looking for enhancing your skills ?! Apply here we accept interns', 'Cagencies.php', 1, '2026-03-25 06:50:49'),
(151, 42, 'Taste Buds Culinary Hub posted a new internship listing: \"Logro\". Description: Looking for enhancing your skills ?! Apply here we accept interns', 'Cagencies.php', 0, '2026-03-25 06:50:49'),
(152, 2, 'Kusina ni Juan Catering posted a new internship listing: \"Dosie\".', 'Ainternship.php', 1, '2026-03-25 06:53:23'),
(153, 39, 'Kusina ni Juan Catering posted a new internship listing: \"Dosie\". Description: Come and apply interns enhance your skills in cooking', 'Cagencies.php', 0, '2026-03-25 06:53:23'),
(154, 40, 'Kusina ni Juan Catering posted a new internship listing: \"Dosie\". Description: Come and apply interns enhance your skills in cooking', 'Cagencies.php', 1, '2026-03-25 06:53:23'),
(155, 42, 'Kusina ni Juan Catering posted a new internship listing: \"Dosie\". Description: Come and apply interns enhance your skills in cooking', 'Cagencies.php', 0, '2026-03-25 06:53:23'),
(156, 2, 'Wired Up Electrical Services posted a new internship listing: \"Reyes\".', 'Ainternship.php', 1, '2026-03-25 07:04:59'),
(157, 39, 'Wired Up Electrical Services posted a new internship listing: \"Reyes\". Description: Looking for interns who has skills in handling electrical wires and willing to learn and improve the...', 'Cagencies.php', 0, '2026-03-25 07:04:59'),
(158, 40, 'Wired Up Electrical Services posted a new internship listing: \"Reyes\". Description: Looking for interns who has skills in handling electrical wires and willing to learn and improve the...', 'Cagencies.php', 0, '2026-03-25 07:04:59'),
(159, 42, 'Wired Up Electrical Services posted a new internship listing: \"Reyes\". Description: Looking for interns who has skills in handling electrical wires and willing to learn and improve the...', 'Cagencies.php', 0, '2026-03-25 07:04:59'),
(160, 2, 'Ohm Sweet Ohm Electric Co posted a new internship listing: \"Swit\".', 'Ainternship.php', 1, '2026-03-25 07:09:10'),
(161, 39, 'Ohm Sweet Ohm Electric Co posted a new internship listing: \"Swit\". Description: Looking for interns', 'Cagencies.php', 0, '2026-03-25 07:09:10'),
(162, 40, 'Ohm Sweet Ohm Electric Co posted a new internship listing: \"Swit\". Description: Looking for interns', 'Cagencies.php', 0, '2026-03-25 07:09:10'),
(163, 42, 'Ohm Sweet Ohm Electric Co posted a new internship listing: \"Swit\". Description: Looking for interns', 'Cagencies.php', 0, '2026-03-25 07:09:10'),
(164, 2, 'Circuit Breakers Co posted a new internship listing: \"Sirkith\".', 'Ainternship.php', 1, '2026-03-25 07:10:58'),
(165, 39, 'Circuit Breakers Co posted a new internship listing: \"Sirkith\". Description: Looking for electronics interns', 'Cagencies.php', 0, '2026-03-25 07:10:58'),
(166, 40, 'Circuit Breakers Co posted a new internship listing: \"Sirkith\". Description: Looking for electronics interns', 'Cagencies.php', 0, '2026-03-25 07:10:58'),
(167, 42, 'Circuit Breakers Co posted a new internship listing: \"Sirkith\". Description: Looking for electronics interns', 'Cagencies.php', 0, '2026-03-25 07:10:58'),
(168, 2, 'Techtonic Innovations posted a new internship listing: \"Tekta\".', 'Ainternship.php', 1, '2026-03-25 07:11:57'),
(169, 39, 'Techtonic Innovations posted a new internship listing: \"Tekta\". Description: Looking for interns in Electronics', 'Cagencies.php', 0, '2026-03-25 07:11:57'),
(170, 40, 'Techtonic Innovations posted a new internship listing: \"Tekta\". Description: Looking for interns in Electronics', 'Cagencies.php', 0, '2026-03-25 07:11:57'),
(171, 42, 'Techtonic Innovations posted a new internship listing: \"Tekta\". Description: Looking for interns in Electronics', 'Cagencies.php', 0, '2026-03-25 07:11:57'),
(172, 42, 'Debra Sinay requested assistance to open the submission window (1 overdue weekly report).', 'Cstudents.php?notif=window_request&student_id=11', 1, '2026-03-27 09:55:44'),
(173, 42, 'Debra Sinay requested assistance to open the submission window (1 overdue weekly report).', 'Cstudents.php?notif=window_request&student_id=11', 1, '2026-03-27 18:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `saved_internships`
--

CREATE TABLE `saved_internships` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `internship_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_internships`
--

INSERT INTO `saved_internships` (`id`, `student_id`, `internship_id`, `created_at`) VALUES
(24, 11, 21, '2026-03-14 14:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_number` varchar(50) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `year_level` varchar(50) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `sex` enum('Male','Female','') NOT NULL DEFAULT '',
  `civil_status` enum('Single','Married','Widowed','') NOT NULL DEFAULT '',
  `religion` varchar(100) NOT NULL DEFAULT '',
  `mother_name` varchar(150) NOT NULL DEFAULT '',
  `mother_contact` varchar(20) NOT NULL DEFAULT '',
  `father_name` varchar(150) NOT NULL DEFAULT '',
  `father_contact` varchar(20) NOT NULL DEFAULT '',
  `ojt_level` enum('OJT-1','OJT-2','OJT-3') DEFAULT NULL,
  `ojt_start_date` date DEFAULT NULL,
  `ojt_end_date` date DEFAULT NULL,
  `report_schedule` enum('weekly','monthly') NOT NULL DEFAULT 'weekly',
  `ojt_completed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `student_number`, `degree`, `year_level`, `contact_number`, `address`, `birthday`, `sex`, `civil_status`, `religion`, `mother_name`, `mother_contact`, `father_name`, `father_contact`, `ojt_level`, `ojt_start_date`, `ojt_end_date`, `report_schedule`, `ojt_completed`) VALUES
(9, 33, '21-010101', 'BIndTech - Apparel and Fashion Technology', '2nd Year', '09321321321', '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, 'weekly', 0),
(10, 34, '21-020202', 'BIndTech - Architectural Drafting Technology', '3rd Year', '09321324556', '', NULL, '', '', '', '', '', '', '', 'OJT-1', NULL, NULL, 'weekly', 0),
(11, 35, '21-030303', 'BIndTech - Computer Technology', '4th Year', '09123456789', 'Brgy 7 P. Gomez St. Laoag City, Ilocos Norte', '2000-03-27', 'Female', 'Single', 'Roman Catholic', 'Dee Sinay', '09123456789', 'Sinay Dee', '09987654321', 'OJT-3', '2026-03-16', '2026-03-27', 'weekly', 0),
(12, 43, '21-040404', 'Bachelor in Automotive Technology (BAT)', '4th Year', NULL, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, 'weekly', 0),
(13, 45, '21-040402', 'BIndTech - Electrical Technology', '3rd Year', '09123456761', '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, 'weekly', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_documents`
--

CREATE TABLE `student_documents` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `weekly_report_id` int(11) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `document_type` varchar(60) NOT NULL COMMENT 'Type identifier: form5, weekly_report, time_card, ojt_certificate, etc.',
  `file_name` varchar(255) NOT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `is_current` tinyint(1) DEFAULT 1,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_documents`
--

INSERT INTO `student_documents` (`id`, `student_id`, `weekly_report_id`, `application_id`, `document_type`, `file_name`, `original_name`, `file_path`, `file_size`, `file_type`, `is_current`, `uploaded_at`) VALUES
(38, 11, NULL, NULL, 'form5', 'form5_69af34121da6a8.38985240.pdf', 'FORM5.pdf', 'uploads/student_documents/11/form5/form5_69af34121da6a8.38985240.pdf', 5611, 'application/pdf', 0, '2026-03-09 20:56:50'),
(39, 11, NULL, NULL, 'form5', 'form5_69af3468267f77.41660128.pdf', 'FORM5.pdf', 'uploads/student_documents/11/form5/form5_69af3468267f77.41660128.pdf', 5611, 'application/pdf', 0, '2026-03-09 20:58:16'),
(40, 11, NULL, NULL, 'form5', 'form5_69af39ad4ebb94.12792010.pdf', 'FORM5.pdf', 'uploads/student_documents/11/form5/form5_69af39ad4ebb94.12792010.pdf', 5611, 'application/pdf', 0, '2026-03-09 21:20:45'),
(41, 11, NULL, NULL, 'form5', 'form5_69aff23fb6ef40.13611154.pdf', 'FORM5.pdf', 'uploads/student_documents/11/form5/form5_69aff23fb6ef40.13611154.pdf', 5611, 'application/pdf', 0, '2026-03-10 10:28:15'),
(42, 11, NULL, NULL, 'form5', 'form5_69b02dd7d78210.98635203.pdf', 'FORM5.pdf', 'uploads/student_documents/11/form5/form5_69b02dd7d78210.98635203.pdf', 5611, 'application/pdf', 1, '2026-03-10 14:42:31'),
(43, 11, 11, NULL, 'weekly_report', 'weekly_03f6362aaff8a396_1773778413.docx', 'ACCOMPLISHMENT-REPORT-Template.docx', 'uploads/student_documents/11/weeklyReport/weekly_03f6362aaff8a396_1773778413.docx', 466794, 'application/vnd.openxmlformats-officedocument.word', 1, '2026-03-17 20:13:33'),
(44, 11, 11, NULL, 'time_card', 'timecard_a8f2e50565b557ae_1773778413.jpg', '791f0b37-3c8d-449f-80ba-2248c813a72b.jpg', 'uploads/student_documents/11/timeCard/timecard_a8f2e50565b557ae_1773778413.jpg', 79028, 'image/jpeg', 1, '2026-03-17 20:13:33'),
(45, 13, NULL, NULL, 'form5', 'form5_69c2dce5a0dd72.97138062.pdf', 'FORM5.pdf', 'uploads/student_documents/13/form5/form5_69c2dce5a0dd72.97138062.pdf', 5611, 'application/pdf', 1, '2026-03-24 18:50:13'),
(46, 10, NULL, NULL, 'form5', 'form5_69c305973574a7.01764096.pdf', 'FORM5.pdf', 'uploads/student_documents/10/form5/form5_69c305973574a7.01764096.pdf', 5611, 'application/pdf', 0, '2026-03-24 21:43:51'),
(47, 10, NULL, NULL, 'form5', 'form5_69c30693b853c8.51428032.pdf', 'FORM5.pdf', 'uploads/student_documents/10/form5/form5_69c30693b853c8.51428032.pdf', 5611, 'application/pdf', 1, '2026-03-24 21:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `submission_files`
--

CREATE TABLE `submission_files` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(100) NOT NULL DEFAULT '',
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submission_files`
--

INSERT INTO `submission_files` (`id`, `folder_id`, `student_id`, `file_name`, `original_name`, `file_path`, `file_size`, `file_type`, `uploaded_at`) VALUES
(37, 905, 11, 'MOA_1773496975_0.pdf', 'MOA.pdf', 'uploads/student_documents/11/required_documents/agency/MOA_1773496975_0.pdf', 5558, 'application/pdf', '2026-03-14 14:02:55'),
(38, 906, 11, 'recommendation_letter_1773590234_0.pdf', 'recommendation_letter.pdf', 'uploads/student_documents/11/required_documents/coordinator/recommendation_letter_1773590234_0.pdf', 30053, 'application/pdf', '2026-03-15 15:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `submission_folders`
--

CREATE TABLE `submission_folders` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `destination` enum('agency','coordinator') NOT NULL,
  `status` enum('pending','submitted','approved','returned') NOT NULL DEFAULT 'pending',
  `coordinator_note` varchar(500) DEFAULT NULL,
  `agency_note` varchar(500) DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submission_folders`
--

INSERT INTO `submission_folders` (`id`, `application_id`, `student_id`, `destination`, `status`, `coordinator_note`, `agency_note`, `submitted_at`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(905, 31, 11, 'agency', 'approved', NULL, NULL, '2026-03-14 14:02:55', '2026-03-14 14:03:08', '2026-03-14 14:02:36', '2026-03-14 14:03:08'),
(906, 31, 11, 'coordinator', 'approved', '[SENT_TO_FOCAL]\n[ADMIN_FINAL_APPROVED]', NULL, '2026-03-15 15:57:14', '2026-03-15 23:32:20', '2026-03-14 14:02:36', '2026-03-15 23:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `submission_windows`
--

CREATE TABLE `submission_windows` (
  `id` int(11) NOT NULL,
  `coordinator_user_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 0,
  `open_at` datetime DEFAULT NULL,
  `close_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submission_windows`
--

INSERT INTO `submission_windows` (`id`, `coordinator_user_id`, `student_id`, `is_open`, `open_at`, `close_at`, `created_at`, `updated_at`) VALUES
(12, 42, NULL, 0, NULL, NULL, '2026-03-27 03:13:02', '2026-03-27 03:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','student','agency','coordinator') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Active','Deactivate','Rejected') NOT NULL DEFAULT 'Pending',
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `username`, `password`, `role`, `created_at`, `status`, `profile_picture`) VALUES
(2, 'System Administrator', 'admin@ojtconnect.com', 'admin', '$2y$10$MEMnzRYPr.yPQWvmbeTki.M4dGq6U37T5jsAFgPFbrGT0NzJAlq2a', 'admin', '2026-01-20 07:26:49', 'Active', NULL),
(33, 'Chris Ednar Miguel', 'cm@ojtconnect.com', NULL, '$2y$10$TZaGEaF8YOHyROjr8O6m5.peXiepD7ZwhQe.smA6nT.XIVzwaGVjS', 'student', '2026-02-24 16:00:52', 'Active', NULL),
(34, 'Bea Lou', 'Bea@ojtconnect.com', NULL, '$2y$10$/WhxGH0E/HpJqxvvRR6O.ORFjtLU6QDy4SMXAQ5Q1uFsaQ6ix.W4G', 'student', '2026-02-24 16:02:46', 'Active', NULL),
(35, 'Debra Sinay', 'Deb@ojtconnect.com', NULL, '$2y$10$kgQHtPo2Y9scrfz1vWVMyOOG7jMI8jFCOMvkIww1aqvdclen9ZaGS', 'student', '2026-02-24 16:03:19', 'Active', 'img/profiles/studentsProfile/user_35_1772900596.jpg'),
(36, 'Rikardo D Puwing', 'Rik@ojtconnect.com', NULL, '$2y$10$QVKL1AmFNrP4PwEWWsi3jON28zLqplGm5J4bfPtcEgf/qOhOB5Wpm', 'agency', '2026-02-24 16:10:16', 'Deactivate', NULL),
(37, 'Brenda Mage', 'Brenda@ojtconnect.com', NULL, '$2y$10$AnW9Kllg8HvQbuL2VEf7zu1Zq0iUbQ1xqJufTqIZm9QJBFVcGSe8K', 'agency', '2026-02-24 16:12:18', 'Active', NULL),
(38, 'Ben N Bytes', 'BB@ojtconnect.com', '', '$2y$10$djbvbE83HDNLALuxeH7oYetZkP54EIcglyuK0mMEri1wsL89MOzwq', 'agency', '2026-02-24 16:20:34', 'Active', NULL),
(39, 'Gloria T Torres', 'gloria@ojtconnect.com', NULL, '$2y$10$BbH3ZZgcxrhzoEE/Vh.AqOU8EZObOiCC16ieW2TF9KwOTxX9Nh3GW', 'coordinator', '2026-02-24 16:24:13', 'Active', NULL),
(40, 'Bengie A Antonio', 'bengie@ojtconnect.com', NULL, '$2y$10$zxRrGE04IAgP3vQPkGo6g.w9JqN8eP41XcHweFWgYEQd4gc46XD7W', 'coordinator', '2026-02-24 16:24:41', 'Active', NULL),
(41, 'Jayson S Tebes', 'jayson@ojtconnect.com', NULL, '$2y$10$d4P2vpI5x3nNe8nbMtH4uO0Cb3eCtr1hPIjv52qOE.GbKWz64hAMu', 'coordinator', '2026-02-24 16:25:36', 'Active', NULL),
(42, 'Jacquiline M Dela Merced', 'jacqui@ojtconnect.com', NULL, '$2y$10$eiXWy9jajQw85B6y8c7Fqe0qrRydJ2FZ0wH.IaKBFnK8y4w6zTw/O', 'coordinator', '2026-02-24 16:27:24', 'Active', NULL),
(43, 'Vin Diesel', 'Vin@ojtconnect.com', NULL, '$2y$10$XsUzvj/zfgC0qp5UZ6ilYetLww2BC84MR/T/cKiPKkgdcKE89RI7m', 'student', '2026-02-24 16:28:49', 'Pending', NULL),
(44, 'Juan Karlos Clutch', 'Juan@ojtconnect.com', NULL, '$2y$10$ipV44QRrDoHyhRUtr7H3OeHfPctLbLvO8LfB.7uPzdQANM0xhfibO', 'agency', '2026-02-24 16:32:22', 'Deactivate', NULL),
(45, 'John Vincent R Tagala', 'vincent@ojtconnect.com', NULL, '$2y$10$C6byqV7ZigCQnLtHwsCuyeVUEbIh/2vTh6aSIhj4DViBzhrSfqylq', 'student', '2026-03-24 18:48:43', 'Pending', NULL),
(47, 'Judelyn R Mandac', 'judelyn@ojtconnect.com', NULL, '$2y$10$hRYc26uE2Kj3ARFfvlqS8uvsEflqyUhBG2so1rQhPApTEn9D5uXK6', 'coordinator', '2026-03-24 19:43:24', 'Active', NULL),
(48, 'Spheire Joy B Domingsil', 'Spheire@ojtconnect.com', NULL, '$2y$10$gRHYmu21Qa23WTVV60xgIuprSmiJ0/55BtJgvRYQcIzE5ir9x8pUK', 'coordinator', '2026-03-24 19:44:44', 'Active', NULL),
(49, 'Raymund R Baniaga', 'baniaga@ojtconnect.com', NULL, '$2y$10$/ET5w9h3dodXK0EF33slXewLOqLqC/K/eexC8rtvclBWXBmxpaH/2', 'coordinator', '2026-03-24 19:45:14', 'Active', NULL),
(50, 'Byte D Code', 'byteme@ojtconnect.com', NULL, '$2y$10$xcJB9No5o2QaVLZrClbY/enaiai108Xo4diIZhapyzWT6RPnL1GAG', 'agency', '2026-03-24 20:01:37', 'Active', NULL),
(51, 'Drew Plans', 'draftcraft@ojtconnect.com', NULL, '$2y$10$p.Dl7SMLOV0UzCOVw/0O6uy5siVRlpfyViqX36lah5WqHVMgrpANe', 'agency', '2026-03-24 20:02:20', 'Active', NULL),
(52, 'Otto Matic', 'otto@ojtconnect.com', NULL, '$2y$10$yQrTOVawPrdSCq7Wob7heOdJiVY3t3TaDhPMdtfykmmCY12FHAs4O', 'agency', '2026-03-24 20:03:34', 'Deactivate', NULL),
(53, 'Ella Gant', 'sewgood@ojtconnect.com', NULL, '$2y$10$o96s2HUnWaJwB3/C7gS5C.1WEfsTTyjN7.HodEOMEhIpL3GRM.Zum', 'agency', '2026-03-24 20:04:16', 'Active', NULL),
(54, 'Conrado Buildo', 'buildright@ojtconnect.com', NULL, '$2y$10$/AtrsF9hTHm.mNrcPLBQ4uGljkUBvAEsgnnNHBVo1d6CqaTW1MmIq', 'agency', '2026-03-24 20:05:11', 'Active', NULL),
(55, 'Hardy Hatton', 'hardhat@ojtconnect.com', NULL, '$2y$10$NzcF/Ia5pkEU.vu3eVBKOOhFSc5U9kkTHfuIHvoiyccdYqMD/P/X.', 'agency', '2026-03-24 20:06:05', 'Active', NULL),
(56, 'Chef Boy Logro Jr', 'tastebuds@ojtconnect.com', NULL, '$2y$10$38eRgYxIftY/424HG9b4X.NOBFtv8.oVtAl5DXpq.PEUBm364t1m6', 'agency', '2026-03-24 20:07:46', 'Active', NULL),
(57, 'Juan D Cook', 'kusina@ojtconnect.com', NULL, '$2y$10$u9PqqAKg4rKBBsEKKyWNCOG/92tRRBEbm6l1I9ysYxBBV79mfHbsu', 'agency', '2026-03-24 20:08:34', 'Deactivate', NULL),
(58, 'Volta Reyes', 'wiredup@ojtconnect.com', NULL, '$2y$10$oOomG.xGa234.QXz/DLvJe6I62hVf0mWiZUTK2gkMnNyM4HAJwso2', 'agency', '2026-03-24 20:09:19', 'Deactivate', NULL),
(59, 'Ohmie Santos', 'swithom@ojtconnect.com', NULL, '$2y$10$ZuEhPzzE30j4eCf1HSDeG.ijxWmviAuxBLqkMaQl9tkcggBlgv33C', 'agency', '2026-03-24 20:10:29', 'Deactivate', NULL),
(60, 'Chip Ignacio', 'circuitbreakers@ojtconnect.com', NULL, '$2y$10$57ghNW3tZUdBMZP./.RnmuDLZTt/UGSDinR7oy3gedRAsQnFCZJMa', 'agency', '2026-03-24 20:11:13', 'Active', NULL),
(61, 'Tek Tonio', 'techtonic@ojtconnect.com', NULL, '$2y$10$YRGnUX10Bhxd9jLCGdTm3.3TDAjhMomL7A1Tn1jeXbCG7cyd5ClBm', 'agency', '2026-03-24 20:12:02', 'Deactivate', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_reports`
--

CREATE TABLE `weekly_reports` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `week_start` date NOT NULL,
  `week_end` date NOT NULL,
  `hours_rendered` decimal(6,2) NOT NULL DEFAULT 0.00,
  `report_summary` text DEFAULT NULL,
  `agency_return_note` varchar(300) DEFAULT NULL,
  `status` enum('submitted','approved','returned') NOT NULL DEFAULT 'submitted',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weekly_reports`
--

INSERT INTO `weekly_reports` (`id`, `student_id`, `week_start`, `week_end`, `hours_rendered`, `report_summary`, `agency_return_note`, `status`, `created_at`, `updated_at`) VALUES
(11, 11, '2026-03-01', '2026-03-07', 49.00, 'Month: March 2026\nTitle: Week 1\nWeek: 1 (2026-03-01 to 2026-03-07)\nTotal Weekly Hours: 49\nTimeCard: timecard_a8f2e50565b557ae_1773778413.jpg\nFile: weekly_03f6362aaff8a396_1773778413.docx\n', NULL, 'approved', '2026-03-17 20:13:33', '2026-03-17 21:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_report_daily_hours`
--

CREATE TABLE `weekly_report_daily_hours` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `day_index` tinyint(1) NOT NULL COMMENT '1=Day1 through 7=Day7 of that week',
  `day_date` date NOT NULL COMMENT 'Actual calendar date for this day',
  `day_label` varchar(20) NOT NULL COMMENT 'e.g. Monday, Tuesday',
  `hours` decimal(5,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekly_report_daily_hours`
--

INSERT INTO `weekly_report_daily_hours` (`id`, `report_id`, `student_id`, `day_index`, `day_date`, `day_label`, `hours`, `created_at`) VALUES
(64, 11, 11, 1, '2026-03-01', 'Sunday', 8.00, '2026-03-17 20:13:33'),
(65, 11, 11, 2, '2026-03-02', 'Monday', 8.00, '2026-03-17 20:13:33'),
(66, 11, 11, 3, '2026-03-03', 'Tuesday', 7.50, '2026-03-17 20:13:33'),
(67, 11, 11, 4, '2026-03-04', 'Wednesday', 8.00, '2026-03-17 20:13:33'),
(68, 11, 11, 5, '2026-03-05', 'Thursday', 8.50, '2026-03-17 20:13:33'),
(69, 11, 11, 6, '2026-03-06', 'Friday', 9.00, '2026-03-17 20:13:33'),
(70, 11, 11, 7, '2026-03-07', 'Saturday', 0.00, '2026-03-17 20:13:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_agencies_user_id` (`user_id`);

--
-- Indexes for table `agency_documents`
--
ALTER TABLE `agency_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_agdoc_agency_type_current` (`agency_id`,`document_type`,`is_current`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_application_student_internship` (`internship_id`,`student_id`),
  ADD KEY `idx_applications_student` (`student_id`),
  ADD KEY `idx_applications_status` (`status`);

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_coordinators_user_id` (`user_id`);

--
-- Indexes for table `coordinator_documents`
--
ALTER TABLE `coordinator_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_coordoc_coord_type_current` (`coordinator_id`,`document_type`,`is_current`);

--
-- Indexes for table `document_reviews`
--
ALTER TABLE `document_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docrev_document` (`document_type`,`document_id`),
  ADD KEY `idx_docrev_reviewed_by` (`reviewed_by`);

--
-- Indexes for table `internships`
--
ALTER TABLE `internships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_internship_agency` (`agency_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`),
  ADD KEY `idx_user_created` (`user_id`,`created_at`);

--
-- Indexes for table `saved_internships`
--
ALTER TABLE `saved_internships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_save` (`student_id`,`internship_id`),
  ADD KEY `internship_id` (`internship_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_students_user_id` (`user_id`);

--
-- Indexes for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_weekly_report_id` (`weekly_report_id`),
  ADD KEY `idx_sd_application_id` (`application_id`),
  ADD KEY `idx_student_docs_type_current` (`student_id`,`document_type`,`is_current`);

--
-- Indexes for table `submission_files`
--
ALTER TABLE `submission_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_file_folder` (`folder_id`),
  ADD KEY `idx_file_student` (`student_id`);

--
-- Indexes for table `submission_folders`
--
ALTER TABLE `submission_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_folder` (`application_id`,`destination`),
  ADD KEY `idx_sf_student` (`student_id`),
  ADD KEY `idx_sf_application` (`application_id`);

--
-- Indexes for table `submission_windows`
--
ALTER TABLE `submission_windows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_window` (`coordinator_user_id`,`student_id`),
  ADD KEY `fk_sw_student` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `weekly_reports`
--
ALTER TABLE `weekly_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_weekly_student` (`student_id`),
  ADD KEY `idx_weekly_status` (`status`),
  ADD KEY `idx_weekly_period` (`week_start`,`week_end`);

--
-- Indexes for table `weekly_report_daily_hours`
--
ALTER TABLE `weekly_report_daily_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_report_id` (`report_id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `agency_documents`
--
ALTER TABLE `agency_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coordinator_documents`
--
ALTER TABLE `coordinator_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `document_reviews`
--
ALTER TABLE `document_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `internships`
--
ALTER TABLE `internships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `saved_internships`
--
ALTER TABLE `saved_internships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_documents`
--
ALTER TABLE `student_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `submission_files`
--
ALTER TABLE `submission_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `submission_folders`
--
ALTER TABLE `submission_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1190;

--
-- AUTO_INCREMENT for table `submission_windows`
--
ALTER TABLE `submission_windows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `weekly_reports`
--
ALTER TABLE `weekly_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `weekly_report_daily_hours`
--
ALTER TABLE `weekly_report_daily_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agencies`
--
ALTER TABLE `agencies`
  ADD CONSTRAINT `agencies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agency_documents`
--
ALTER TABLE `agency_documents`
  ADD CONSTRAINT `fk_agdoc_agency` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `fk_applications_internship` FOREIGN KEY (`internship_id`) REFERENCES `internships` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_applications_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD CONSTRAINT `coordinators_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coordinator_documents`
--
ALTER TABLE `coordinator_documents`
  ADD CONSTRAINT `fk_coordoc_coord` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `document_reviews`
--
ALTER TABLE `document_reviews`
  ADD CONSTRAINT `fk_docrev_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `internships`
--
ALTER TABLE `internships`
  ADD CONSTRAINT `fk_internship_agency` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saved_internships`
--
ALTER TABLE `saved_internships`
  ADD CONSTRAINT `saved_internships_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_internships_ibfk_2` FOREIGN KEY (`internship_id`) REFERENCES `internships` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD CONSTRAINT `fk_sd_application` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_sd_weekly_report` FOREIGN KEY (`weekly_report_id`) REFERENCES `weekly_reports` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `student_documents_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submission_files`
--
ALTER TABLE `submission_files`
  ADD CONSTRAINT `fk_file_folder` FOREIGN KEY (`folder_id`) REFERENCES `submission_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_file_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submission_folders`
--
ALTER TABLE `submission_folders`
  ADD CONSTRAINT `fk_sf_application` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sf_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submission_windows`
--
ALTER TABLE `submission_windows`
  ADD CONSTRAINT `fk_sw_coordinator_user` FOREIGN KEY (`coordinator_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sw_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `weekly_reports`
--
ALTER TABLE `weekly_reports`
  ADD CONSTRAINT `fk_weekly_reports_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weekly_report_daily_hours`
--
ALTER TABLE `weekly_report_daily_hours`
  ADD CONSTRAINT `fk_wrdh_report_id` FOREIGN KEY (`report_id`) REFERENCES `weekly_reports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wrdh_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
