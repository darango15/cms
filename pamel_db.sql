-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2026 at 02:55 PM
-- Server version: 10.11.14-MariaDB-0ubuntu0.24.04.1
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pamel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_requests`
--

CREATE TABLE `admission_requests` (
  `id` int(11) NOT NULL,
  `given_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `passport_id` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `country_of_birth` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `course` varchar(200) NOT NULL,
  `consent_accepted` tinyint(1) NOT NULL DEFAULT 1,
  `id_file` varchar(255) DEFAULT NULL,
  `health_certificate_file` varchar(255) DEFAULT NULL,
  `status` enum('pending','reviewed','approved','rejected') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admission_requests`
--

INSERT INTO `admission_requests` (`id`, `given_name`, `surname`, `passport_id`, `nationality`, `date_of_birth`, `country_of_birth`, `email`, `address`, `capacity`, `phone`, `course`, `consent_accepted`, `id_file`, `health_certificate_file`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(4, 'Jose', 'Perez', '4-7825-4812', 'Panama', '11/2/1888', '', 'rodriguezisabel793@gmail.com', 'Chorrera', '', '6234-7841', 'Personal Survival Techniques', 1, NULL, NULL, 'pending', NULL, '2026-04-22 11:53:09', '2026-04-28 01:25:31'),
(5, 'Jose', 'Perez', '8-994-475', 'Panamá', '22/10/1998', '', 'rodriguezisabel793@gmail.com', 'ARRAIJAN', '', '68945626', 'Personal Survival Techniques', 1, NULL, NULL, 'pending', NULL, '2026-04-22 13:21:40', '2026-04-28 01:25:35'),
(6, 'Danelio', 'Arango', '12345678', 'panameña', '15/02/1982', '', 'danelio.arango@gmail.com', 'casa', '', '4334333', 'Engine Room Resource Management', 1, '/public/uploads/admissions/cedula_69f012057e22d5.42475673.jpg', '/public/uploads/admissions/certificado_salud_69f012057e8e17.00673454.jpg', 'pending', NULL, '2026-04-28 01:48:53', '2026-04-28 01:48:53'),
(7, 'Keyla', 'Nicole Andreve Magallon', '8-961-930', 'Panameña', '30-08-2000', '', 'keyla830k.a@gmail.com', 'Mallorca Park, Calas de Mallorca', '', '63846716', 'Security Training for Seafarers with Designated Security Duties', 1, '/public/uploads/admissions/cedula_6a1c63697ca658.11614015.jpg', NULL, 'pending', NULL, '2026-05-31 16:35:53', '2026-05-31 16:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `session_id`, `product_id`, `quantity`, `created_at`) VALUES
(15, 'fde567f1ac66b4187305a87847e1d6c1', 37, 1, '2026-04-22 17:13:29'),
(16, '1d21724712e8af679e0be2a2e887d64e', 46, 1, '2026-04-24 15:24:08'),
(18, 'a7410dd423ce31edb28669cbb12ed522', 85, 1, '2026-04-25 15:36:54'),
(19, '9ea93d88f82d464f6f828401a73b20aa', 59, 1, '2026-04-30 13:55:51'),
(20, '45d5a5bcda9d91edf5e5e0d390132091', 46, 1, '2026-05-01 19:21:53'),
(21, 'ca4d733b0b62143eba8f853ad6a685dd', 46, 1, '2026-05-04 18:50:41'),
(22, 'd2d1a442722eed96e183bc3561536e3c', 43, 1, '2026-05-14 16:02:01'),
(24, '6ff6cba9738d42a4aabaad8a902575ae', 39, 1, '2026-05-16 00:20:49'),
(25, 'd82ea345c9c388d1959708e38475da0a', 86, 1, '2026-05-28 16:17:22'),
(26, '76187bc5fa7b185f353c6050c020784e', 86, 1, '2026-05-28 16:26:20'),
(30, '63f7a49ab1716e1747c2bfe036507cb1', 81, 1, '2026-05-30 00:37:53'),
(31, '63f7a49ab1716e1747c2bfe036507cb1', 86, 1, '2026-05-30 00:40:29'),
(32, 'ea704dc6ef80c8fad3a64449e0aab433', 44, 1, '2026-05-31 01:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `description`, `icon`, `display_order`, `created_at`) VALUES
(3, NULL, 'Latin', 'latin', 'DGS approved courses for Indian seafarers', 'fa-anchor', 3, '2025-12-10 21:05:05'),
(4, NULL, 'Pamel', 'pamel', 'Courses for Latin American maritime professionals', 'fa-globe-americas', 4, '2025-12-10 21:05:05'),
(5, 3, 'OMI', 'latin-omi', '', 'fa-folder', 0, '2025-12-12 21:13:15'),
(7, 4, 'OMI', 'pamel-omi', '', 'fa-folder', 0, '2025-12-12 21:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('new','read','replied') DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Danelio Arango', 'darango@innov4te.com', '6026-0790', 'other', 'prueba', 'new', '2026-02-12 05:36:07', '2026-02-12 05:36:07'),
(2, 'Bobin Thomas', 'bobinthomas98@gmail.com', '8848470760', 'course-inquiry', 'Course enquiry', 'new', '2026-02-17 10:03:01', '2026-02-17 10:03:01'),
(3, 'Jeiner González Rivera', 'jeinerx23@gmail.com', '+50685226246', 'course-inquiry', 'Hola buenas a mí me gustaría información para tener el stcw completo por obvias razones no se puede sacar online de que hay que hacer la parte física eso es lo que necesito de información cuánto me costaría todo el curso completo si ustedes tienen o si hay disponibilidad de doctor para hacer él eng1 y si con ustedes se puede hacer la solicitud para el seaman book ya que mi idea es hacer un viaje para hacer todo lo posible de una sola vez', 'new', '2026-02-18 16:23:18', '2026-02-18 16:23:18'),
(4, 'Emmanuel Rodríguez', 'emmanuel.rodalvarez@gmail.com', '+50765368774', 'course-inquiry', 'Hola buenas tardes, me gustaría consultarles respecto a los precios y duración de los cursos para obtener la licencia de mecánico naval nivel de apoyo según la autoridad marítima de Panamá, en que horario se dan y cualquier otra información relevante, los cursos son los siguientes: \r\nTÉCNICAS DE SUPERVIVENCIA PERSONAL (A-VI/1-1).\r\nPREVENCIÓN Y LUCHA CONTRA INCENDIOS (A-VI/1-2).\r\nPRIMEROS AUXILIOS BÁSICOS (A-VI/1-3).\r\n SEGURIDAD PERSONAL Y RESPONSABILIDADES SOCIALES (A-VI/1-4).                                                                             FORMACIÓN EN EN LA TOMA DE CONCIENCIA DE LA PROTECCIÓN PARA TODA LA GENTE DE MAR (A-VI/6-1)', 'new', '2026-03-04 00:50:11', '2026-03-04 00:50:11'),
(5, 'Alvaro fernandez de la reguera benitez', 'alvaryto@gmail.com', '+34652021143', 'course-inquiry', 'Hola. Tengo que renovar mi licencia de capitán de 200gt. Me pueden ayudar con este trámite? Que coste tiene? Gracias', 'new', '2026-03-12 15:39:22', '2026-03-12 15:39:22'),
(6, 'Gabriel R.', 'gabriel1990ramos@gmail.com', '68884278', 'course-inquiry', 'Buen día, tiene disponible el curso del código IGF básico. Buques q funcionan con lng', 'new', '2026-03-19 16:23:53', '2026-03-19 16:23:53'),
(7, 'Cristhopher Joel', 'Cristhopherjoel@gmail.com', '+50769758590', 'course-inquiry', 'Quisiera saber como sacar mi stcw costo y poder contactarme en la WhatsApp', 'new', '2026-03-22 19:34:06', '2026-03-22 19:34:06'),
(8, 'Danelio Arango', 'danelio.arango@gmail.com', '6026-0790', 'certification', 'mensaje de prueba', 'new', '2026-04-22 04:56:49', '2026-04-22 04:56:49'),
(9, 'Jorge Moreno', 'jbmm07@gmail.com', '+506 6158 7813', 'course-inquiry', 'Buenas estimados,\r\nPor favor cotizar y ofrecer posible calendario del listado de estos cursos, soy residente permanente panameño por lo que agradeceria precio local para intentar poder acceder a los cursos:\r\n\r\n-Personal Survival Techniques (IMO 1.19)\r\n-Fire Prevention and Fire Fighting (IMO 1.20)\r\n-Elementary First Aid (IMO 1.13)\r\n-Personal Safety and Social Responsibilities (IMO 1.21)\r\n-Formación en la Toma de Conciencia de la Protección para Toda la Gente de Mar (nuevo requisito IMO 2026)\r\n-Advanced Fire Fighting (IMO 2.03)\r\n-Crowd Management (IMO 1.41)\r\n-Crisis Management (IMO 1.42)\r\n-Seafarer Designated Security Duties (SDSD) Training A-VI/6-1\r\n-Bridge Resource Management\r\n-Electrician License de la AMP\r\n-Seamanbook\r\n\r\nPuedo comenzar los cursos a partir del Jueves 7 de la próxima semana, me interesaría asistir de manera intensiva a ambos horarios tanto durante el día como durante la noche para completarlos en la menor cantidad de días posibles, quedo atento muchas gracias.\r\nJM\r\n+50661587813', 'new', '2026-05-02 17:11:05', '2026-05-02 17:11:05'),
(10, 'Kevin burnett', 'kevinburnett77@yahoo.com', '8683522678', 'course-inquiry', 'Looking for cook island seaman book.', 'new', '2026-05-21 21:53:29', '2026-05-21 21:53:29'),
(11, 'Cristian Grajales', 'grajalescristian07caballero@gmail.com', '68420740', 'course-inquiry', 'Por favor si me brindas más información con respecto al Curso De Oficial de protección portuaria. En la modalidad Virtual. \r\nSi es Sincrónico o Asíncronicos', 'new', '2026-06-01 21:21:28', '2026-06-01 21:21:28'),
(12, 'Rodrigo Domingo Olivares Tapia', 'rodrigo.olivares.t@gmail.com', '+56 9 3449 4016', 'course-inquiry', 'High Voltage Installation - Operational Level. Please inform me the next available dates and cost.', 'new', '2026-06-02 16:32:25', '2026-06-02 16:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','processing','completed','cancelled') DEFAULT 'pending',
  `payment_id` varchar(100) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` enum('pending','paid','failed','refunded') DEFAULT 'pending',
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `status`, `payment_id`, `payment_method`, `payment_status`, `customer_name`, `customer_email`, `customer_phone`, `shipping_address`, `created_at`, `updated_at`) VALUES
(1, 5, 160.00, 'completed', NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '2023-03-01 23:58:38', '2026-01-13 02:44:00'),
(2, 5, 80.00, 'completed', NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '2023-03-20 20:34:46', '2026-01-13 02:44:00'),
(3, 43, 125.00, 'completed', NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '2024-05-04 01:19:45', '2026-01-13 02:44:00'),
(4, NULL, 80.00, 'pending', NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '2024-04-09 06:39:32', '2026-01-13 02:44:00'),
(5, 57, 200.00, 'pending', NULL, NULL, 'pending', 'Danelio Arango', 'danelio.arango@gmail.com', '6026-0790', 'Brisas del Golf', '2026-01-14 04:11:44', '2026-01-15 03:42:59'),
(6, 57, 90.00, 'pending', NULL, NULL, 'pending', 'Danelio Arango', 'danelio.arango@gmail.com', '6026-0790', 'prueba', '2026-01-14 14:28:23', '2026-01-14 14:28:23'),
(7, 57, 80.00, 'pending', NULL, NULL, 'pending', 'Danelio', 'danelio.arango@gmail.com', '4334333', 'wrwrwer', '2026-01-15 03:44:33', '2026-01-15 03:44:33'),
(8, NULL, 90.00, 'pending', NULL, NULL, 'pending', 'asdasd', 'asd@asd.com', '123123', 'asdasd', '2026-02-25 15:12:45', '2026-02-25 15:12:45'),
(9, NULL, 90.00, 'pending', NULL, NULL, 'pending', 'FBFD', 'newdocs05@gmail.com', 'SDADADSADASDA', 'DADSAD', '2026-03-09 10:16:15', '2026-03-09 10:16:15'),
(10, 60, 90.00, 'pending', NULL, NULL, 'pending', 'Joseph Flores', 'joseph_o5@outlook.com', '66389972', ' ', '2026-03-30 20:02:59', '2026-03-30 20:02:59'),
(11, NULL, 80.00, 'pending', NULL, NULL, 'pending', 'Tetteh Lloyd Nathaniel', 'ntettehlloyd@gmail.com', '632425675', 'Berrizbidea camino 93 CB', '2026-04-25 06:52:57', '2026-04-25 06:52:57'),
(12, NULL, 90.00, 'pending', NULL, NULL, 'pending', 'Edoardo Scippa', 'fedoff@libero.it', '+39 3456443339', 'Via Tolone 22, La Spezia, Italy', '2026-05-14 16:04:18', '2026-05-14 16:04:18'),
(13, NULL, 90.00, 'pending', NULL, NULL, 'pending', 'Odi Alberto Gomez Frederick ', 'odigomez12@gmail.com', '50433539085', '371 n laburnum Ave apt. 1 Richmond van 23223 united states ', '2026-05-29 05:19:50', '2026-05-29 05:19:50'),
(14, NULL, 90.00, 'pending', NULL, NULL, 'pending', 'Keyla Nicole Andreve Magallon', 'keyla830k.a@gmail.com', '6384-6716', 'Callas de Mallorca, Apto 505', '2026-05-29 17:55:46', '2026-05-29 17:55:46'),
(15, NULL, 90.00, 'pending', NULL, NULL, 'pending', 'Keyla Nicole Andreve Magallon', 'keyla830k.a@gmail.com', '63846716', 'Calas de Mallorca, Apto 505', '2026-05-29 18:07:46', '2026-05-29 18:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`) VALUES
(1, 5, 7, 'Ship Security Officer', 1, 200.00),
(2, 6, 6, 'Passenger Ship Crowd Management Training', 1, 90.00),
(3, 7, 1, 'Basic Training for Oil and Chemical Tanker Cargo Operations', 1, 80.00),
(4, 1, NULL, 'Producto Importado (Pedido #1)', 1, 160.00),
(5, 2, NULL, 'Producto Importado (Pedido #2)', 1, 80.00),
(6, 4, NULL, 'Producto Importado (Pedido #4)', 1, 80.00),
(7, 3, NULL, 'Producto Importado (Pedido #3)', 1, 125.00),
(8, 8, 83, 'Ratings Forming Part of a Navigational Watch', 1, 90.00),
(9, 9, 79, 'Able Seafarer - Deck', 1, 90.00),
(10, 10, 66, 'Maritime English', 1, 90.00),
(11, 11, NULL, 'Security Training for Seafarers with Designated Security Duties', 1, 80.00),
(12, 12, 43, 'Security Awareness Training for Port Facility Personnel with Designated Security Duties', 1, 90.00),
(13, 13, 86, 'High Voltage Installation -  Management Level', 1, 90.00),
(14, 14, 10, 'Security Training for Seafarers with Designated Security Duties', 1, 90.00),
(15, 15, 10, 'Security Training for Seafarers with Designated Security Duties', 1, 90.00);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` enum('published','draft') DEFAULT 'draft',
  `author_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'credit_card, paypal, bank_transfer, etc',
  `gateway` varchar(100) DEFAULT NULL COMMENT 'nmi, stripe, paypal, etc',
  `token` varchar(255) DEFAULT NULL COMMENT 'Encrypted token or reference',
  `last_four` varchar(4) DEFAULT NULL COMMENT 'Last 4 digits for cards',
  `card_type` varchar(20) DEFAULT NULL COMMENT 'visa, mastercard, amex, etc',
  `expiry_month` varchar(2) DEFAULT NULL,
  `expiry_year` varchar(4) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `status` enum('active','expired','disabled') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `modality` enum('B-learning','E-learning','India Exclusive') DEFAULT NULL,
  `imo_model_course_no` varchar(20) DEFAULT NULL,
  `course_code` varchar(50) DEFAULT NULL,
  `duration_hours` decimal(20,2) DEFAULT NULL,
  `avg_rating` decimal(3,2) DEFAULT 0.00,
  `total_reviews` int(11) DEFAULT 0,
  `category` varchar(50) DEFAULT 'general',
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `renewal_price` decimal(10,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `modality`, `imo_model_course_no`, `course_code`, `duration_hours`, `avg_rating`, `total_reviews`, `category`, `description`, `price`, `renewal_price`, `stock`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Basic Training for Oil and Chemical Tanker Cargo Operations', 'basic-training-for-oil-and-chemical-tanker-cargo-operations', 3, NULL, 'India Exclusive', '1.01', 'PA-MA-PSSR-01', 48.00, 0.00, 0, 'competence', 'The Basic Training for Oil and Chemical Tanker Cargo Operations, requires a structured and complementary familiarization of the basic operation of oil and chemical cargo operations on board the ships. This course is designed in accordance with Regulation V/1-1, Paragraph 2.2, Section A-V/1-1, Paragraph 1 and Table A-V/1-1-1 of STCW’78 as amended and this STCW Code.', 80.00, 40.00, 99, '/public/uploads/1776974794_a57af3f184292da8.jpg', 'active', '2025-12-10 15:24:43', '2026-04-27 21:29:20'),
(2, 'Use of Leadership and Managerial Skils', 'use-of-leadership-and-managerial-skils', 3, NULL, 'India Exclusive', '1.40', 'PA-MA-LEAMSK-02', 40.00, 0.00, 0, 'indian', 'The objective is to provide students with information to acquire the knowledge; understanding and competence necessary to achieve the objectives of the learning results to demonstrate their competence demonstrate enough knowledge corresponding to Regulations II/2, III/2, Sections A–II/2, A–III/2 and Tables A–II/2, A–III/2 of the STCW78 Convention, as amended. This knowledge shall include, but are not limited to: 1. Related international maritime conventions and recommendations and national legislation. 2.Management and training of shipboard personnel. 3.Task and workload management. 4. Effective management of resources. 5.Decision-making techniques. 6. Development, implementation and monitoring of standard operating procedures', 200.00, 100.00, 50, '/public/uploads/1765406289_AFICHE2.jpg', 'active', '2025-12-10 15:24:43', '2026-04-27 21:29:20'),
(3, 'Passenger Safety, Cargo Safety and Hull Integrity Training', 'passenger-safety-cargo-safety-and-hull-integrity-training', 3, NULL, 'India Exclusive', '1.29', 'PAM-M-21', 7.50, 0.00, 0, 'latin', 'The objective is to provide students with information to acquire the knowledge, understanding and competence necessary to achieve the objectives of the learning results to demonstrate their competence in passenger safety, cargo safety and hull integrity in accordance with Section A-V/2 paragraph 5 of the STCW Code as amended. This knowledge shall include, but are not limited to:', 80.00, 40.00, 25, '/public/uploads/1776978913_0e5737e96cc8e8ec.jpg', 'active', '2025-12-10 15:24:43', '2026-04-27 21:29:20'),
(5, 'Passenger Ship Crisis Management and Human Behaviour Training', 'passenger-ship-crisis-management-and-human-behaviour-training', 3, NULL, 'India Exclusive', '1.42', 'PA-MA-PSCMHB-05', 18.00, 0.00, 0, 'general', 'The objective is to provide students with information to acquire the knowledge, understanding and competence necessary to achieve the objectives of the learning results to demonstrate their competence in passenger safety, cargo safety and hull integrity in accordance with Section A-V/2 paragraph 4 and Table V/2-2 of the STCW Code as amended. This knowledge shall include, but are not limited to: 1. To organize emergency procedures on board. 2.To optimize resource usage. 3.To control emergency response. 4.To control passengers and other personnel during emergencies.5.To establish and maintain effective communications.', 90.00, 45.00, 60, '/public/uploads/1765411446_AFICHE5.jpg', 'active', '2025-12-11 00:04:06', '2026-04-27 21:29:20'),
(6, 'Passenger Ship Crowd Management Training', 'passenger-ship-crowd-management-training', 3, 5, 'India Exclusive', '1.41', 'PAM-M-33', 12.00, 0.00, 0, 'general', 'The objective is to provide students with information to acquire the knowledge, understanding and competence necessary to achieve the objectives of the learning results to demonstrate their competence in control and manage public order on board passenger ships as well as manage passenger safety in accordance with Section A-V/2 paragraph 3 and Table V/2-1 of the STCW Code as amended. This knowledge shall include, but are not limited to: 1.Contribute to the implementation of emergency plans and procedures to reunite and evacuate passengers. 2.Provide assistance to passengers heading to meeting and embarking stations.', 90.00, 45.00, 49, '/public/uploads/1776981191_27605f0927bf68b3.jpg', 'active', '2025-12-11 00:07:09', '2026-04-27 21:29:20'),
(7, 'Ship Security Officer', 'ship-security-officer', 3, 5, 'India Exclusive', '3.19', 'PA-MA-SSO-07', 20.00, 0.00, 0, 'general', '1.To maintain and supervise the implementation of a ship security plan.\r\n2.To assess the security risk, threat and vulnerability.\r\n3.To conduct periodic inspections of the ship to ensure that appropriate security measures are implemented and maintained.\r\n4.To ensure that security equipment and systems, if any, are properly operated, tested and calibrated.\r\n5. To promote security awareness and vigilance.', 200.00, 125.00, 49, '/public/uploads/1777260406_d4758a8bd514eb1e.jpg', 'active', '2025-12-11 00:09:57', '2026-04-27 21:29:20'),
(8, 'Elementary First Aid', 'elementary-first-aid', 4, 7, 'B-learning', '1.13', 'EFA', 17.00, 0.00, 0, 'general', 'Elementary First Aid is an introductory course designed to provide basic first aid knowledge and essential practical skills. Participants will learn how to recognize emergency situations, respond safely and effectively, and apply immediate care techniques for common injuries and health-related incidents.', 85.00, 0.00, 60, '/public/uploads/1776978222_b534f85086acd77e.jpg', 'active', '2026-02-11 16:34:15', '2026-04-23 21:03:42'),
(9, 'Personal Survival Techniques', 'Personal-Survival-Techniques', 4, 7, 'B-learning', '1.19', 'PST', 17.00, 0.00, 0, 'general', 'Personal Survival Techniques is a practical course focused on developing essential survival skills in emergency situations. Participants will learn how to respond effectively to life-threatening scenarios, use safety equipment correctly, and apply techniques that enhance personal safety and survival at sea or in other hazardous environments.', 95.00, 0.00, 60, '/public/uploads/1776977858_3c4b248ad1eb8ae4.jpg', 'active', '2026-02-11 16:39:29', '2026-04-23 20:57:38'),
(10, 'Security Training for Seafarers with Designated Security Duties', 'Security-Training-for-Seafarers-with-Designated-Security-Duties', 4, NULL, 'E-learning', '3.26', 'SAS', 10.00, 0.00, 0, 'general', 'Security Training for Seafarers with Designated Security Duties is a course designed to equip seafarers with the knowledge and skills required to perform assigned security responsibilities on board. Participants will learn to identify security threats, apply security procedures, conduct inspections, and respond effectively to security incidents in accordance with international maritime regulations.', 90.00, 0.00, 58, '/public/uploads/1777261058_2fda8ee10f5875c8.jpg', 'active', '2026-02-11 20:34:27', '2026-05-29 18:07:46'),
(11, 'Fire Prevention and Fire Fighting', 'Fire-Prevention-and-Fire-Fighting', 4, 7, 'B-learning', '1.20', 'FPFF', 17.00, 0.00, 0, 'general', 'Fire Prevention and Fire Fighting is a course designed to provide essential knowledge and practical skills for preventing fires and responding effectively in emergency situations. Participants will learn about fire hazards, fire prevention measures, the use of firefighting equipment, and safe firefighting techniques to protect lives and property.', 95.00, 0.00, 60, '/public/uploads/1776977803_cbb511fd2541a4f9.jpg', 'active', '2026-02-11 20:39:53', '2026-04-23 20:56:43'),
(12, 'Personal Safety and Social Responsibilities', 'Personal-Safety-and-Social-Responsibilities', 4, 7, 'E-learning', '1.21', 'PSSR', 20.00, 0.00, 0, 'general', 'Personal Safety and Social Responsibilities is a course that provides essential knowledge on safe working practices and effective cooperation on board. Participants will learn about personal safety, accident prevention, emergency procedures, environmental protection, and the importance of teamwork and responsible behavior in a maritime environment.', 95.00, 0.00, 60, '/public/uploads/1776978296_93e60b831f3093e5.jpg', 'active', '2026-02-11 20:43:27', '2026-04-23 21:04:56'),
(13, 'Passenger Safety, Cargo Safety and Hull Integrity Training', 'PassengerSafety-Cargo-Safety-and-Hull-Integrity-Training', 4, 7, 'B-learning', '1.29', 'PCHT', 18.00, 0.00, 0, 'general', 'Passenger Safety, Cargo Safety and Hull Integrity Training is a course designed to provide essential knowledge and skills to ensure the safety of passengers, the proper handling of cargo, and the maintenance of hull integrity. Participants will learn emergency procedures, safety measures, and best practices to protect lives, cargo, and the vessel in compliance with maritime safety standards.', 80.00, 0.00, 60, '/public/uploads/1776978883_6851191c51f7d406.jpg', 'active', '2026-02-11 21:01:41', '2026-04-23 21:14:43'),
(14, 'Marine Environmental Awareness ', 'Marine-Environmental-Awareness ', 4, 7, 'B-learning', '1.38', 'MEA', 13.00, 0.00, 0, 'general', '', 100.00, 0.00, 60, '/public/uploads/1777261524_c6f304fc3b61064b.jpg', 'active', '2026-02-11 21:14:20', '2026-04-27 03:45:24'),
(15, 'Leadership and Teamwork', 'Leadership-and-Teamwork', 4, 7, 'B-learning', '1.39', 'LTW', 20.00, 0.00, 0, 'general', '', 150.00, 0.00, 60, '/public/uploads/1776979115_584b37a91301a8d0.jpg', 'active', '2026-02-11 21:15:55', '2026-04-23 21:18:35'),
(16, 'Use of Leadership and Managerial Skills', 'Use-of-Leadership-and-Managerial-Skills', 4, 7, 'B-learning', '1.40', 'ULMS', 40.00, 0.00, 0, 'general', '', 200.00, 0.00, 60, '/public/uploads/1776981138_0f03120da22bb1c0.jpg', 'active', '2026-02-11 21:36:02', '2026-04-23 21:52:18'),
(23, 'Security Awareness Training for All Seafarers', 'Security-Awareness-Training-for-All-Seafarers', 4, 7, 'B-learning', '3.27', 'SAT', 6.00, 0.00, 0, 'general', 'Security Awareness Training for All Seafarers is a course designed to raise awareness of maritime security risks and responsibilities. Participants will learn to recognize potential security threats, understand security levels and procedures, and respond appropriately to security incidents in accordance with international maritime security regulations.', 80.00, 0.00, 60, '/public/uploads/1777261099_ce5b8bd23fb6f991.jpg', 'active', '2026-02-12 15:22:25', '2026-04-27 03:38:19'),
(36, 'Passenger Ship Crowd Management Training', 'passenger-ship-crowd-management-training-1', 4, 7, 'B-learning', '1.41', 'PSCM', 12.00, 0.00, 0, 'general', 'Passenger Ship Crowd Management Training is a course designed to equip crew members with the skills and knowledge needed to manage and control passenger movements in emergency and routine situations. Participants will learn effective communication techniques, crowd behavior awareness, and safety procedures to ensure the orderly and safe evacuation and well-being of passengers on board.', 90.00, 0.00, 60, '/public/uploads/1776981169_da14d327285cca6c.jpg', 'active', '2026-02-13 18:03:30', '2026-04-23 21:52:49'),
(37, 'Passenger Ship Crisis Management and Human Behaviour Training', 'passenger-ship-crisis-management-and-human-behaviour-training-1', 4, 7, 'B-learning', '1.42', 'PSHB', 18.00, 0.00, 0, 'general', 'Passenger Ship Crisis Management and Human Behaviour Training is a course designed to prepare crew members to manage crisis situations on passenger ships effectively. Participants will learn crisis management principles, decision-making under pressure, and an understanding of human behavior in emergencies to ensure passenger safety and coordinated emergency response.', 90.00, 0.00, 99, '/public/uploads/1776981273_5c97d579bf171afa.jpg', 'active', '2026-02-19 16:20:38', '2026-04-23 21:54:33'),
(38, 'Safety Training for Personnel Providing Direct Service to Passengers in Passengers Spaces ', 'safety-training-for-personnel-providing-direct-service-to-passengers-in-passengers-spaces', 4, 7, 'B-learning', '1.44', 'SPSP', 7.00, 0.00, 0, 'general', 'Safety Training for Personnel Providing Direct Service to Passengers in Passenger Spaces is a course designed to ensure that personnel interacting directly with passengers are prepared to maintain safety at all times. Participants will learn emergency procedures, passenger assistance techniques, communication skills, and safety responsibilities to effectively protect and support passengers in normal and emergency situations.', 80.00, 0.00, 99, '/public/uploads/1777259622_29df51a54abbb29d.jpg', 'active', '2026-02-19 16:28:42', '2026-04-27 03:13:42'),
(39, 'Maritime English', 'maritime-english', 4, 7, 'E-learning', '3.17', 'ME', 532.00, 0.00, 0, 'general', 'Maritime English is a course designed to develop effective communication skills in the maritime industry. Participants will improve their ability to understand and use standard maritime terminology, communicate clearly on board, and interact confidently in routine operations and emergency situations in an international maritime environment.', 500.00, 0.00, 99, '/public/uploads/1777260062_ae1258ea55176f5f.jpg', 'active', '2026-02-19 16:31:10', '2026-04-27 03:21:02'),
(40, 'Ship Security Officer', 'ship-security-officer-1', 4, 7, 'E-learning', '3.19', 'SSO', 20.00, 0.00, 0, 'general', 'Ship Security Officer is a course designed to prepare seafarers for the role of Ship Security Officer on board. Participants will learn to implement and maintain ship security plans, conduct security inspections, assess risks, and respond effectively to security threats in compliance with international maritime security requirements.', 200.00, 0.00, 99, '/public/uploads/1777260392_7be741f88a9decbe.jpg', 'active', '2026-02-19 16:33:05', '2026-04-27 03:26:32'),
(41, 'Company Security Officer', 'company-security-officer', 4, 7, 'E-learning', '3.20', 'cso', 20.00, 0.00, 0, 'general', 'Company Security Officer is a course designed to prepare personnel for the role of Company Security Officer within a maritime organization. Participants will learn to develop, implement, and oversee security policies, conduct risk assessments, coordinate with Ship Security Officers, and ensure compliance with international maritime security regulations.', 200.00, 0.00, 99, '/public/uploads/1777260475_131a544af70dbf44.jpg', 'active', '2026-02-19 16:34:41', '2026-04-27 03:27:55'),
(42, 'Port Facility Security Officer', 'port-facility-security-officer', 4, 7, 'E-learning', '3.21', 'PFSO', 20.00, 0.00, 0, 'general', 'Port Facility Security Officer is a course designed to prepare personnel for the role of Port Facility Security Officer. Participants will learn to develop and implement port facility security plans, conduct security assessments, coordinate with relevant authorities, and manage security operations in accordance with international maritime security regulations.', 200.00, 0.00, 99, '/public/uploads/1777260531_fa5a419c9ab6aa2a.jpg', 'active', '2026-02-19 16:44:31', '2026-04-27 03:28:51'),
(43, 'Security Awareness Training for Port Facility Personnel with Designated Security Duties', 'security-awareness-training-for-port-facility-personnel-with-designated-security-duties', 4, 7, 'E-learning', '3.24', 'PSAS', 10.00, 0.00, 0, 'general', 'Security Awareness Training for Port Facility Personnel with Designated Security Duties is a course designed to equip port facility personnel with the knowledge and skills required to carry out assigned security responsibilities. Participants will learn to recognize security threats, apply security procedures, conduct monitoring and inspections, and respond effectively to security incidents in compliance with international port facility security regulations.', 90.00, 0.00, 98, '/public/uploads/1777260591_4bf882553ea543f7.jpg', 'active', '2026-02-20 15:03:39', '2026-05-14 16:04:18'),
(44, 'Security Awareness Training for All Port Facility Personnel', 'security-awareness-training-for-all-port-facility-personnel', 4, 7, 'E-learning', '3.25', 'PSAT', 4.00, 0.00, 0, 'general', '', 80.00, 0.00, 99, '/public/uploads/1777260647_f8f5d5366afcbc1c.jpg', 'active', '2026-02-20 15:18:33', '2026-04-27 03:30:47'),
(46, 'Training Course for Instructors', 'training-course-for-instructors', 4, 7, 'B-learning', '6.09', 'TTC', 60.00, 0.00, 0, 'general', 'Training Course for Instructors is a course designed to develop effective teaching and instructional skills. Participants will learn instructional techniques, lesson planning, assessment methods, and classroom management strategies to deliver training confidently and in accordance with established educational and industry standards.', 400.00, 0.00, 99, '/public/uploads/1776973973_7d1e1aeaffed99e4.jpg', 'active', '2026-02-20 15:23:09', '2026-04-23 19:52:53'),
(47, 'Advanced Training for Oil Tanker Cargo Operations', 'advanced-training-for-oil-tanker-cargo-operations', 3, 5, 'India Exclusive', '1.02', 'PAM-M-02', 62.00, 0.00, 0, 'general', 'Advanced Training for Oil Tanker Cargo Operations is a specialized course designed to enhance the knowledge and practical skills of maritime professionals involved in the handling of oil tanker cargoes. The training focuses on advanced cargo operations, including loading, discharging, tank cleaning, crude oil washing, inert gas systems, and cargo transfer safety.\r\n\r\nParticipants gain a thorough understanding of international regulations, industry best practices, and risk management related to oil tanker operations. Emphasis is placed on pollution prevention, emergency response, cargo planning, and the safe operation of tanker systems. Upon completion, trainees are better prepared to perform their duties efficiently and safely, ensuring compliance with regulatory requirements and maintaining the highest standards of operational safety and environmental protection.', 90.00, 0.00, 99, '/public/uploads/1776974925_45a86ea270279e42.jpg', 'active', '2026-02-20 17:03:45', '2026-04-27 21:29:20'),
(48, 'Advanced Training for Chemical Tanker Cargo Operations', 'advanced-training-for-chemical-tanker-cargo-operations', 3, 5, 'India Exclusive', '1.03', 'PAM-M-03', 62.00, 0.00, 0, 'general', 'Is a specialized course designed to provide maritime professionals with advanced knowledge and practical skills required for the safe and efficient handling of chemical cargoes on board chemical tankers. The training covers advanced cargo operations such as loading and discharging chemicals, cargo compatibility and segregation, tank cleaning, use of cargo heating and pumping systems, and control of cargo-related hazards.\r\n\r\nThe course emphasizes compliance with international regulations, including the IBC Code, as well as industry best practices for safety and environmental protection. Participants develop a strong understanding of risk assessment, cargo planning, emergency response, and pollution prevention measures specific to chemical tanker operations. Upon completion, trainees are equipped to manage complex chemical cargo operations responsibly, ensuring safety of personnel, vessel integrity, and protection of the marine environment.', 90.00, 0.00, 99, '/public/uploads/1776975002_d800fd3afd89cf67.jpg', 'active', '2026-02-20 17:15:47', '2026-04-27 21:29:20'),
(49, 'Radar Navigation, Radar Plotting and Use of ARPA - Operational Level', 'radar-navigation-radar-plotting-and-use-of-arpa-operational-level', 3, 5, 'India Exclusive', '1.07', 'PAM-M-06', 80.50, 0.00, 0, 'general', 'Is a professional maritime training course designed to develop the competence of navigational watchkeepers in the effective use of radar and ARPA systems at the operational level. The course provides comprehensive instruction on radar principles, performance standards, limitations, and errors, as well as the interpretation and analysis of radar information for safe navigation.\r\n\r\nParticipants are trained in manual and automatic radar plotting techniques to determine the movement of other vessels, assess collision risk, and take appropriate action in accordance with the COLREGs. The course also covers the operational use of ARPA functions, target acquisition and tracking, trial maneuvers, and integration of radar information with other navigational aids. Upon completion, trainees are better equipped to maintain a safe navigational watch, particularly in conditions of restricted visibility, heavy traffic, or confined waters.', 90.00, 0.00, 99, '/public/uploads/1776975524_2256d90fbc56e6b1.jpg', 'active', '2026-02-20 17:18:48', '2026-04-27 21:29:20'),
(50, 'Radar, Arpa, Bridge Teamwork and Search and Rescue - Management Level', 'radar-arpa-bridge-teamwork-and-search-and-rescue-management-level', 3, 5, 'India Exclusive', '1.08', 'PAM-M-07', 44.00, 0.00, 0, 'general', 'is an advanced maritime training course designed for senior officers who hold management-level responsibilities on board ships. The course focuses on the effective and integrated use of radar and ARPA systems for strategic navigational decision-making, bridge resource management, and the coordination of search and rescue operations.\r\n\r\nThe training emphasizes advanced radar and ARPA functions, limitations, and performance analysis to support safe navigation in complex and high-risk situations. Strong attention is given to bridge teamwork, leadership, communication, and decision-making to ensure efficient coordination among bridge personnel. The course also covers international search and rescue procedures, planning and execution of SAR operations, and cooperation with external authorities. Upon completion, participants are equipped to manage navigational safety, lead bridge teams effectively, and coordinate search and rescue operations in compliance with international regulations and best maritime practices.', 100.00, 0.00, 99, '/public/uploads/1776975725_6722301a75f4b0a1.jpg', 'active', '2026-02-20 17:22:34', '2026-04-27 21:29:20'),
(51, 'Elementary First Aid', 'elementary-first-aid-1', 3, 5, 'India Exclusive', '1.13', 'PAM-M-09', 17.00, 0.00, 0, 'general', 'is a basic safety training course designed to provide seafarers with essential knowledge and practical skills to respond effectively to medical emergencies on board. The course covers fundamental first aid principles, including assessment of casualties, basic life support, control of bleeding, treatment of wounds and burns, management of fractures, shock, and other common onboard injuries.\r\n\r\nParticipants learn how to take immediate and appropriate action in the event of an accident or sudden illness until professional medical assistance is available. Emphasis is placed on safe practices, use of first aid equipment, and maintaining the wellbeing of crew members. Upon completion, trainees are capable of providing prompt and effective first aid care in accordance with international maritime safety standards.', 90.00, 0.00, 99, '/public/uploads/1776978188_21412dc7ab0008a8.jpg', 'active', '2026-02-20 17:29:08', '2026-04-27 21:29:20'),
(52, 'Medical First Aid', 'medical-first-aid', 3, 5, 'India Exclusive', '1.14', 'PAM-M-10', 32.00, 0.00, 0, 'general', 'Is a maritime training course designed to provide seafarers with the knowledge and practical skills required to give immediate medical care on board ships in the event of illness or injury. The course focuses on the assessment and management of medical emergencies until professional medical assistance or evacuation is available.\r\n\r\nTraining includes basic anatomy and physiology, recognition of symptoms, treatment of wounds, burns, fractures, hypothermia, poisoning, and other common medical conditions at sea. Participants also learn the correct use of medical equipment and medicines carried on board, as well as procedures for communicating with medical advisory services ashore. Upon completion, trainees are capable of delivering effective medical first aid in accordance with international maritime regulations and standards.', 90.00, 0.00, 99, '/public/uploads/1776978138_16b9a1a4233e576f.jpg', 'active', '2026-02-20 17:36:17', '2026-04-27 21:29:20'),
(53, 'Medical Care', 'medical-care', 3, 5, 'India Exclusive', '1.15', 'PAM-M-11', 47.50, 0.00, 0, 'general', 'Is an advanced maritime training course intended for officers responsible for medical care on board ships. The course provides in-depth knowledge and practical skills to manage serious illnesses and injuries at sea when professional medical assistance is not immediately available.\r\n\r\nTraining covers advanced anatomy and physiology, diagnosis and treatment of medical and surgical conditions, management of trauma, infections, cardiovascular and respiratory emergencies, and care of the unconscious or critically ill patient. Participants are trained in the use of onboard medical equipment, medicines, and medical publications, as well as in maintaining medical records and coordinating with shore-based medical advisory services. Upon completion, trainees are qualified to provide comprehensive medical care on board in accordance with international maritime regulations and standards.', 90.00, 0.00, 99, '/public/uploads/1776978077_eb80d9e3541637d2.jpg', 'active', '2026-02-20 18:33:43', '2026-04-27 21:29:20'),
(54, 'Personal Survival Techniques ', 'personal-survival-techniques-1', 3, 5, 'India Exclusive', '1.19', 'PAM-M-12', 17.00, 0.00, 0, 'general', 'Is a mandatory maritime safety training course designed to equip seafarers with the essential knowledge and practical skills required to survive at sea in the event of an emergency. The course focuses on personal safety, survival at sea, and the correct use of lifesaving appliances.\r\n\r\nTraining includes emergency situations such as abandoning ship, use of lifejackets and immersion suits, survival craft boarding procedures, and survival techniques in the water. Participants also learn about distress signals, hypothermia prevention, and actions to be taken while awaiting rescue. Upon completion, trainees are capable of responding effectively to emergency situations, enhancing their chances of survival and contributing to overall shipboard safety in accordance with international maritime standards.', 90.00, 0.00, 99, '/public/uploads/1776977837_5e93ec98b03507db.jpg', 'active', '2026-02-20 18:36:43', '2026-04-27 21:29:20'),
(55, 'Fire Prevention and Fire Fighting', 'fire-prevention-and-fire-fighting-1', 3, 5, 'India Exclusive', '1.20', 'PAM-M-13', 17.00, 0.00, 0, 'general', 'Is a mandatory maritime safety training course designed to provide seafarers with essential knowledge and practical skills to prevent fires on board and to respond effectively in the event of a fire emergency. The course focuses on understanding fire hazards, fire chemistry, and the causes of fires commonly encountered on ships.\r\n\r\nTraining includes fire prevention measures, use of portable and fixed fire-fighting equipment, fire detection systems, and emergency response procedures. Participants receive practical instruction in fire-fighting techniques, including the use of extinguishers, hoses, and breathing apparatus, as well as teamwork and communication during fire emergencies. Upon completion, trainees are capable of taking immediate and effective action to minimize fire risks and protect life, property, and the marine environment in accordance with international maritime safety standards.', 95.00, 0.00, 99, '/public/uploads/1776977776_eba464aee891296a.jpg', 'active', '2026-02-20 18:41:05', '2026-04-27 21:29:20'),
(56, 'Personal Safety and Social Responsibilities', 'personal-safety-and-social-responsibilities-1', 3, 5, 'India Exclusive', '1.21', 'PAM-M-14', 20.00, 0.00, 0, 'general', 'Is a mandatory maritime safety training course designed to ensure that seafarers understand their role in maintaining a safe working environment and promoting effective human relationships on board ships. The course emphasizes personal safety awareness, accident prevention, and compliance with safety procedures in accordance with international maritime regulations.\r\n\r\nTraining covers safe working practices, emergency procedures, pollution prevention, fatigue management, and the importance of following orders and shipboard routines. It also addresses social responsibilities, including teamwork, effective communication, respect for cultural differences, and maintaining good working relationships among crew members. Upon completion, trainees are better prepared to contribute to a safe, efficient, and harmonious shipboard environment while fulfilling their duties responsibly.', 90.00, 0.00, 99, '/public/uploads/1776978316_d22b6bbd3f09aed2.jpg', 'active', '2026-02-20 19:05:47', '2026-04-27 21:29:20'),
(57, 'Ship Simulator and Bridge Teamwork', 'ship-simulator-and-bridge-teamwork', 3, 5, 'India Exclusive', '1.22', 'PAM-M-15', 42.00, 0.00, 0, 'general', 'is a maritime training course designed to enhance navigational competence and teamwork skills through the use of full-mission ship bridge simulators. The course focuses on the practical application of navigational knowledge in realistic scenarios that reflect everyday operations and emergency situations at sea.\r\n\r\nTraining emphasizes effective bridge teamwork, including communication, leadership, situational awareness, and decision-making. Participants practice voyage planning, ship handling, collision avoidance, and emergency response while working as part of a bridge team. The use of simulators allows trainees to experience complex traffic situations, restricted visibility, and adverse weather conditions in a controlled environment. Upon completion, participants are better equipped to operate safely and efficiently as part of a bridge team, in compliance with international maritime standards and best practices.', 90.00, 0.00, 99, '/public/uploads/1776978392_5e79b55cec566553.jpg', 'active', '2026-02-20 19:10:10', '2026-04-27 21:29:20'),
(58, 'Survival Craft and Rescue Boats other than Fast Rescue Boats', 'survival-craft-and-rescue-boats-other-than-fast-rescue-boats', 3, 5, 'India Exclusive', '1.23', 'PAM-M-16', 31.50, 0.00, 0, 'general', 'Is a mandatory maritime safety training course designed to provide seafarers with the knowledge and practical skills required to operate survival craft and rescue boats, excluding fast rescue boats, in emergency situations.\r\n\r\nThe course covers the construction, equipment, and operation of lifeboats and liferafts, as well as procedures for launching, recovery, and maneuvering. Training includes preparation for abandonment, survival techniques, use of communication and signaling equipment, and management of survivors. Participants also learn rescue operations, boat handling, and safety precautions to ensure the protection of life at sea. Upon completion, trainees are qualified to take charge of or assist with survival craft and rescue boat operations in accordance with international maritime safety regulations and standards.', 90.00, 0.00, 99, '/public/uploads/1776978471_ab64d592f054c61b.jpg', 'active', '2026-02-20 19:12:06', '2026-04-27 21:29:20'),
(59, 'General Operator Certificate (GMDSS)', 'general-operator-certificate-gmdss', 3, 5, 'India Exclusive', '1.25', 'PAM-M-18', 108.00, 0.00, 0, 'general', 'Is a maritime training course that prepares seafarers to operate and maintain the Global Maritime Distress and Safety System (GMDSS) in accordance with international regulations. The course is intended for officers responsible for radio communications on board ships.\r\n\r\nTraining covers the principles and functions of the GMDSS, including distress, urgency, and safety communications using terrestrial and satellite systems. Participants learn to operate GMDSS equipment such as VHF, MF/HF radios, Digital Selective Calling (DSC), NAVTEX, EPIRBs, SARTs, and Inmarsat systems. The course also includes procedures for emergency communications, routine traffic, radio log keeping, and equipment testing and maintenance. Upon successful completion, trainees are qualified to perform radio communication duties and respond effectively to maritime emergencies in compliance with international maritime standards.', 90.00, 0.00, 99, '/public/uploads/1776978762_6942f977c733e880.jpg', 'active', '2026-02-20 19:15:15', '2026-04-27 21:29:20'),
(60, 'Operational Use of Electronic Chart Display and Information Systems (ECDIS)', 'operational-use-of-electronic-chart-display-and-information-systems-ecdis', 3, 5, 'India Exclusive', '1.27', 'PAM-M-20', 41.00, 0.00, 0, 'general', 'Is a maritime training course designed to ensure that navigational officers can safely and effectively operate ECDIS at the operational level in accordance with international regulations.\r\n\r\nThe course provides comprehensive instruction on ECDIS principles, system components, chart types, and data accuracy. Training covers route planning and monitoring, safety settings, alarms and indications, chart corrections, sensor integration, and system limitations. Emphasis is placed on the practical use of ECDIS to support safe navigation, situational awareness, and compliance with the COLREGs.\r\n\r\nParticipants also learn about common operational errors, backup arrangements, and the importance of cross-checking ECDIS information with other navigational aids. Upon completion, trainees are competent in the operational use of ECDIS, contributing to safer navigation and effective bridge watchkeeping in line with international maritime standards.', 90.00, 0.00, 99, '/public/uploads/1776978848_223a5e4bc228e58f.jpg', 'active', '2026-02-20 19:24:24', '2026-04-27 21:29:20'),
(61, 'Automatic Identification Systems (AIS)', 'automatic-identification-systems-ais', 3, 5, 'India Exclusive', '1.34', 'PAM-M-26', 12.00, 0.00, 0, 'general', 'Is a maritime training topic or course designed to provide seafarers with a clear understanding of the purpose, operation, and limitations of AIS in support of safe navigation.\r\n\r\nThe training covers the principles of AIS, including how vessel information such as identity, position, course, speed, and navigational status is transmitted and received. Participants learn the correct operational use of AIS, data input requirements, interpretation of AIS information, and its integration with radar, ECDIS, and other navigational systems. Emphasis is placed on the limitations, potential errors, and security considerations of AIS, as well as its role in collision avoidance and situational awareness. Upon completion, trainees are able to use AIS effectively and responsibly in accordance with international maritime regulations and best navigational practices.', 90.00, 0.00, 99, '/public/uploads/1771616071_AIS.png', 'active', '2026-02-20 19:34:31', '2026-04-27 21:29:20'),
(62, 'Marine Environmental Awareness', 'marine-environmental-awareness-1', 3, 5, 'India Exclusive', '1.38', 'PAM-M-30', 13.00, 0.00, 0, 'general', 'Is a maritime training course designed to promote understanding of the marine environment and the responsibilities of seafarers in protecting it. The course aims to increase awareness of how ship operations can impact the environment and the importance of preventing pollution at sea.\r\n\r\nTraining covers key environmental issues such as marine pollution, waste management, oil spills, emissions, ballast water management, and the protection of marine ecosystems. Participants learn about relevant international regulations, best practices for environmentally responsible operations, and the role of individual behavior in minimizing environmental impact. Upon completion, trainees are better prepared to support sustainable maritime operations and to contribute actively to the protection of the marine environment in compliance with international standards.', 90.00, 0.00, 99, '/public/uploads/1776979066_d403402906481cd3.jpg', 'active', '2026-02-20 19:36:36', '2026-04-27 21:29:20'),
(63, 'Leadership and Teamwork', 'leadership-and-teamwork-1', 3, 5, 'India Exclusive', '1.39', 'PAM-M-31', 20.00, 0.00, 0, 'general', 'Is a maritime training course designed to develop the leadership skills and team-working abilities required for safe and efficient ship operations. The course focuses on human factors, effective communication, and the importance of cooperation among crew members at all levels on board.\r\n\r\nTraining emphasizes leadership styles, decision-making, situational awareness, workload management, and conflict resolution. Participants learn how to lead and motivate teams, promote a positive safety culture, and ensure clear and effective communication in both routine operations and emergency situations. Upon completion, trainees are better equipped to lead teams, work collaboratively, and contribute to safe, efficient, and well-coordinated shipboard operations in accordance with international maritime standards.', 90.00, 0.00, 99, '/public/uploads/1776979132_c0829edf9298d5fa.jpg', 'active', '2026-02-20 19:44:26', '2026-04-27 21:29:20'),
(64, 'Safety Training for Personnel Providing Direct Service to Passengers in Passengers Spaces', 'safety-training-for-personnel-providing-direct-service-to-passengers-in-passengers-spaces-1', 3, 5, 'India Exclusive', '1.44', 'PAM-M-35', 7.00, 0.00, 0, 'general', 'Is a mandatory maritime training course designed for crew members who have direct contact with passengers while performing duties in passenger areas on board ships.\r\n\r\nThe course focuses on passenger safety, crowd management, and effective communication during normal operations and emergency situations. Training includes familiarization with shipboard emergency procedures, use of lifesaving appliances, fire safety awareness, and methods for assisting passengers, including the elderly, children, and persons with disabilities. Emphasis is placed on maintaining calm, providing clear instructions, and supporting passengers during emergencies such as evacuation or abandonment of the ship. Upon completion, trainees are prepared to ensure passenger safety and contribute effectively to emergency response in compliance with international maritime safety regulations.', 90.00, 0.00, 99, '/public/uploads/1777259641_aed99bd87e1e1c8f.jpg', 'active', '2026-02-20 19:55:51', '2026-04-27 21:29:20'),
(65, 'Advanced Training in Fire Fighting', 'advanced-training-in-fire-fighting', 3, 5, 'India Exclusive', '2.03', 'PAM-M-37', 31.00, 0.00, 0, 'general', 'Is an advanced maritime safety course designed for officers and senior crew members with responsibilities for fire prevention and fire-fighting operations on board ships. The course builds upon basic fire-fighting knowledge and focuses on leadership, command, and coordination during complex fire emergencies.\r\n\r\nTraining covers advanced fire behavior, fire risk assessment, organization of fire parties, use of fixed fire-extinguishing systems, and coordination of fire-fighting operations under hazardous conditions. Participants receive intensive practical training in managing fire scenarios, including enclosed-space fires, cargo fires, and engine-room fires, as well as the use of breathing apparatus and protective equipment. Upon completion, trainees are qualified to take command during fire emergencies, ensuring the safety of personnel, the vessel, and the marine environment in accordance with international maritime standards.', 90.00, 0.00, 99, '/public/uploads/1777259708_85edbdc2898c756f.jpg', 'active', '2026-02-20 20:03:36', '2026-04-27 21:29:20'),
(66, 'Maritime English', 'maritime-english-1', 3, 5, 'India Exclusive', '3.17', 'PAM-M-52', 532.00, 0.00, 0, 'general', 'Is a specialized training course designed to improve the English language skills of seafarers for effective communication in the maritime industry. The course focuses on the use of English in shipboard operations, navigation, safety, and emergency situations.\r\n\r\nTraining includes Standard Marine Communication Phrases (SMCP), bridge and engine-room communication, radio communications, and interaction with port authorities, pilots, and multinational crews. Emphasis is placed on clear pronunciation, correct terminology, and effective listening and speaking skills to reduce the risk of misunderstandings. Upon completion, trainees are better equipped to communicate confidently and accurately in English, contributing to safer and more efficient maritime operations in accordance with international standards.', 90.00, 0.00, 98, '/public/uploads/1777260094_1c61a3b9f8e1bd45.jpg', 'active', '2026-02-20 20:06:39', '2026-04-27 21:29:20'),
(67, 'Company Security Officer', 'company-security-officer-1', 3, 5, 'India Exclusive', '3.20', 'PAM-M-55', 20.00, 0.00, 0, 'general', 'Is a maritime security training course designed for personnel appointed by a shipping company to be responsible for the development, implementation, and maintenance of the Company Security Plan in accordance with the International Ship and Port Facility Security (ISPS) Code.\r\n\r\nThe course provides comprehensive knowledge of maritime security threats, risk assessment, and security management at the company level. Training covers security policies, roles and responsibilities of the CSO, coordination with Ship Security Officers (SSO) and Port Facility Security Officers (PFSO), incident reporting, drills and exercises, and compliance with international regulations. Upon completion, trainees are qualified to manage and oversee company-wide maritime security measures, ensuring the protection of ships, personnel, cargo, and port facilities.', 90.00, 0.00, 99, '/public/uploads/1777260461_093a20929ce14f74.jpg', 'active', '2026-02-20 20:10:09', '2026-04-27 21:29:20'),
(68, 'Port Facility Security Officer', 'port-facility-security-officer-1', 3, 5, 'India Exclusive', '3.21', 'PAM-M-56', 20.00, 0.00, 0, 'general', 'Is a maritime security training course designed for personnel designated to be responsible for security at port facilities in accordance with the International Ship and Port Facility Security (ISPS) Code.\r\n\r\nThe course provides participants with the knowledge and skills required to assess security risks, develop, implement, and maintain the Port Facility Security Plan, and ensure compliance with international maritime security regulations. Training covers security threats, vulnerability assessments, access control, monitoring of port operations, coordination with Ship Security Officers (SSO) and Company Security Officers (CSO), incident response, and the conduct of drills and exercises. Upon completion, trainees are qualified to manage and coordinate security measures at port facilities to protect ships, personnel, cargo, and infrastructure.', 90.00, 0.00, 99, '/public/uploads/1777260502_e68e2e57a18655c4.jpg', 'active', '2026-02-20 20:13:07', '2026-04-27 21:29:20'),
(70, 'Security Awareness Training for Port Facility Personnel with designated security duties', 'security-awareness-training-for-port-facility-personnel-with-designated-security-duties-1', 3, 5, 'India Exclusive', '3.24', 'PAM-M-59', 10.00, 0.00, 0, 'general', 'Is a maritime security training course intended for port facility personnel who are assigned specific security responsibilities in accordance with the International Ship and Port Facility Security (ISPS) Code.\r\n\r\nThe course is designed to raise awareness of maritime security threats and to ensure that personnel understand their individual roles in maintaining the security of the port facility. Training includes identification of security risks and suspicious behavior, access control procedures, monitoring and surveillance, reporting of security incidents, and appropriate response to different security levels. Emphasis is placed on coordination with the Port Facility Security Officer (PFSO) and effective communication during security-related situations. Upon completion, trainees are capable of performing their designated security duties effectively, contributing to the overall protection of port facilities, ships, personnel, and cargo in compliance with international maritime security standards.', 90.00, 0.00, 99, '/public/uploads/1777260609_d03f364f17dbe490.jpg', 'active', '2026-02-20 20:28:13', '2026-04-27 21:29:20'),
(71, 'Security Awareness Training for All Port Facility Personnel', 'security-awareness-training-for-all-port-facility-personnel-1', 3, 5, 'India Exclusive', '3.25', 'PAM-M-60', 4.00, 0.00, 0, 'general', 'Is a maritime security training course designed to ensure that all personnel working at port facilities have a basic understanding of security awareness in accordance with the International Ship and Port Facility Security (ISPS) Code.\r\n\r\nThe course focuses on raising general awareness of security threats and the importance of maintaining a secure port environment. Training covers recognition of potential security risks, suspicious activities and behaviors, basic security procedures, reporting requirements, and individual responsibilities in supporting port facility security. Emphasis is placed on vigilance, cooperation, and effective communication with security personnel. Upon completion, participants are better prepared to contribute to the overall security of the port facility and to support the implementation of security measures in line with international maritime security standards.', 90.00, 45.00, 40, '/public/uploads/1777260693_64c6c9a53236b823.jpg', 'active', '2026-02-20 20:39:44', '2026-04-27 21:29:20'),
(72, 'Security Training for Seafarers with Designated Security Duties', 'security-training-for-seafarers-with-designated-security-duties-2', 3, 5, 'India Exclusive', '3.26', 'PAM-M-61', 10.00, 0.00, 0, 'general', 'Is a maritime security training course designed for seafarers who are assigned specific security-related responsibilities on board ships in accordance with the International Ship and Port Facility Security (ISPS) Code.\r\n\r\nThe course provides the knowledge and skills required to carry out designated security duties effectively. Training covers identification of security threats, recognition of suspicious behavior, access control procedures, monitoring of restricted areas, handling of security equipment, and response to security incidents. Emphasis is placed on coordination with the Ship Security Officer (SSO), reporting procedures, and maintaining a high level of security awareness. Upon completion, trainees are qualified to perform their assigned security duties, contributing to the safety and security of the ship, crew, passengers, and cargo in compliance with international maritime security standards.', 95.00, 47.50, 50, '/public/uploads/1777261026_93e09481581ba381.jpg', 'active', '2026-02-20 20:43:05', '2026-04-27 21:29:20'),
(73, 'Security Awareness Training for All Seafarers', 'security-awareness-training-for-all-seafarers-1', 3, 5, 'India Exclusive', '3.27', 'PAM-M-62', 6.00, 0.00, 0, 'general', 'Is a mandatory maritime security course designed to ensure that all seafarers have a basic understanding of shipboard security in accordance with the International Ship and Port Facility Security (ISPS) Code.\r\n\r\nThe course focuses on raising awareness of maritime security threats and the importance of individual responsibility in maintaining ship security. Training covers recognition of security risks and suspicious activities, basic security procedures, reporting requirements, and actions to be taken during security incidents. Emphasis is placed on vigilance, cooperation, and effective communication with security personnel. Upon completion, trainees are better prepared to support shipboard security measures and contribute to the protection of the vessel, crew, passengers, and cargo in compliance with international maritime security standards.', 90.00, 45.00, 60, '/public/uploads/1777261083_5216ff5870ed8fe8.jpg', 'active', '2026-02-20 20:47:12', '2026-04-27 21:29:20'),
(74, 'Training Course for Instructors', 'training-course-for-instructors-1', 3, 5, 'India Exclusive', '6.09', 'PAM-M-64', 60.00, 0.00, 0, 'general', 'is a professional development course designed to equip instructors with the knowledge, skills, and methodologies required to deliver effective training in accordance with international standards.\r\n\r\nThe course focuses on instructional techniques, lesson planning, learning objectives, training aids, and assessment methods. Participants learn how to present information clearly, manage the classroom, adapt teaching methods to different learning styles, and evaluate trainee performance. Emphasis is also placed on communication skills, motivation, feedback, and maintaining a safe and effective learning environment. Upon completion, trainees are qualified to plan, conduct, and assess training courses competently and professionally.', 90.00, 45.00, 35, '/public/uploads/1777261167_3a1c08017931dc75.jpg', 'active', '2026-02-20 20:51:32', '2026-04-27 21:29:20'),
(75, 'Train the Simulator Trainer and Assessor', 'train-the-simulator-trainer-and-assessor', 3, 5, 'India Exclusive', '6.10', 'PAM-M-65', 30.00, 0.00, 0, 'general', 'Is a specialized training course designed for instructors and assessors who conduct training and assessments using maritime simulators.\r\n\r\nThe course provides in-depth knowledge of simulator-based training methodologies, scenario design, and effective use of simulation tools to achieve learning objectives. Participants learn how to plan, conduct, and evaluate simulator exercises, apply objective assessment criteria, manage trainee performance, and provide constructive feedback. Emphasis is placed on instructor competence, assessment techniques, human factors, and ensuring realism and consistency in simulator training. Upon completion, trainees are qualified to train and assess personnel using simulators in accordance with international maritime training and assessment standards.', 90.00, 45.00, 65, '/public/uploads/1777261213_9d80e1c337cd6968.jpg', 'active', '2026-02-20 20:53:58', '2026-04-27 21:29:20');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `modality`, `imo_model_course_no`, `course_code`, `duration_hours`, `avg_rating`, `total_reviews`, `category`, `description`, `price`, `renewal_price`, `stock`, `image`, `status`, `created_at`, `updated_at`) VALUES
(76, 'Upgrading Course for Master and Chief Mate on Ships of 500 Gross Tonnage or more (Management Level). ', 'upgrading-course-for-master-and-chief-mate-on-ships-of-500-gross-tonnage-or-more-management-level', 3, 5, 'India Exclusive', '7.01', 'PAM-M-66', 140.00, 0.00, 0, 'general', 'Is an advanced maritime training course designed to prepare officers for certification and service at the management level as Master or Chief Mate on ships of 500 GT or more.\r\n\r\nThe course focuses on enhancing professional competence in navigation, ship handling, cargo operations, stability, maritime law, safety management, and environmental protection at the management level. Training emphasizes leadership, decision-making, bridge resource management, risk assessment, and compliance with international conventions such as SOLAS, MARPOL, and COLREGs. Participants also develop skills in voyage planning, emergency management, and overall ship operation and administration. Upon completion, trainees are qualified to assume the responsibilities of Master or Chief Mate, ensuring safe, efficient, and compliant ship operations in accordance with international maritime standards.', 90.00, 45.00, 70, '/public/uploads/1777261265_788ab394155195c7.jpg', 'active', '2026-02-20 20:57:11', '2026-04-27 21:29:20'),
(77, 'Upgrading course for Chief Engineer and Seconf Engineer Officer (First Engineer Officer) on Ship of Propulsive Power more then 3000 Kw (Management Level) ', 'upgrading-course-for-chief-engineer-and-seconf-engineer-officer-first-engineer-officer-on-ship-of-propulsive-power-more-then-3000-kw-management-level', 3, 5, 'India Exclusive', '7.02', 'PAM-M-67', 140.00, 0.00, 0, 'general', 'This upgrading course is designed to prepare marine engineers for management-level responsibilities on board ships with propulsion power exceeding 3000 kW. The program is intended for officers seeking certification or promotion to the positions of Chief Engineer or Second Engineer Officer (First Engineer Officer), in accordance with international maritime regulations.\r\n\r\nThe course focuses on advanced technical knowledge and managerial competencies required for the safe, efficient, and environmentally responsible operation of modern ships. Key areas of study include marine engineering management, operation and maintenance of main and auxiliary machinery, electrical and electronic control systems, fuel efficiency, pollution prevention, safety management, and compliance with international conventions such as STCW and MARPOL.\r\n\r\nEmphasis is placed on leadership, decision-making, resource management, and the supervision of engine department personnel. Upon successful completion, participants will be equipped with the skills and knowledge necessary to assume senior engineering roles and effectively manage engine room operations at the management level.', 100.00, 50.00, 50, '/public/uploads/1777261340_4a56d92837625aa7.jpg', 'active', '2026-02-23 13:49:16', '2026-04-27 21:29:20'),
(78, 'Ratings Forming Part of an Engineering Watch ', 'ratings-forming-part-of-an-engineering-watch', 3, 5, 'India Exclusive', '7.09', 'PAM-M-74', 95.00, 0.00, 0, 'general', 'This course is designed to provide seafarers with the knowledge and practical skills required to perform duties as a rating forming part of an engineering watch in a ship’s engine department. It is intended for personnel assigned to engine-room watchkeeping duties under the supervision of engineering officers.\r\n\r\nThe training covers fundamental marine engineering principles, including basic operation of main and auxiliary machinery, monitoring of engine-room parameters, safe working practices, use of tools and equipment, and routine maintenance tasks. The course also emphasizes compliance with safety procedures, pollution prevention measures, and effective communication within the engine-room team.\r\n\r\nUpon successful completion, participants will be competent to assist in engine-room watchkeeping operations, contribute to the safe and efficient operation of machinery, and support engineering officers in accordance with international maritime standards.', 100.00, 50.00, 45, '/public/uploads/1777262393_417c73566c2d1a42.jpg', 'active', '2026-02-23 14:02:12', '2026-04-27 21:29:20'),
(79, 'Able Seafarer - Deck', 'able-seafarer-deck', 3, 5, 'India Exclusive', '7.10', 'PAM-M-75', 85.00, 0.00, 0, 'general', 'This course is designed to train seafarers to perform the duties and responsibilities of an Able Seafarer in the deck department of a seagoing ship, in accordance with the requirements of the STCW Convention. It is intended for personnel who already have basic seafaring experience and seek qualification at the operational level.\r\n\r\nThe training covers advanced seamanship skills, including cargo handling and stowage, watchkeeping duties, maintenance and repair of the ship’s hull and deck equipment, mooring and anchoring operations, and the use of lifesaving and firefighting appliances. The course also emphasizes safety procedures, pollution prevention, teamwork, and effective communication on board.\r\n\r\nUpon successful completion, participants will be competent to carry out deck operations safely and efficiently, support deck officers during navigational and cargo-related activities, and contribute to the overall safety and operation of the vessel.', 90.00, 45.00, 59, '/public/uploads/1777262351_de4a0d9d424658ae.jpg', 'active', '2026-02-23 14:04:57', '2026-04-27 21:29:20'),
(80, 'Able Seafarer - Engine un a menned Engine-Room or designated to perfom Duties in a Periodically Unmanned Engine-Room.', 'able-seafarer-engine-un-a-menned-engine-room-or-designated-to-perfom-duties-in-a-periodically-unmanned-engine-room', 3, 5, 'India Exclusive', '7.16', 'PAM-M-81', 94.00, 0.00, 0, 'general', 'This course is designed to train seafarers to perform the duties and responsibilities of an Able Seafarer in the engine department, serving in a manned engine-room or designated to perform duties in a periodically unmanned engine-room, in accordance with the requirements of the STCW Convention.\r\n\r\nThe training provides advanced knowledge and practical skills related to the operation, monitoring, and maintenance of main and auxiliary machinery, including propulsion systems, electrical and mechanical equipment, pumps, and control systems. Emphasis is placed on watchkeeping duties, fault detection, routine maintenance, safety procedures, and compliance with environmental protection regulations.\r\n\r\nThe course also develops competencies in teamwork, communication, and the safe use of tools and equipment within the engine department. Upon successful completion, participants will be competent to support engineering officers, contribute to the safe and efficient operation of machinery, and carry out assigned duties in both manned and periodically unmanned engine-room operations.', 90.00, 45.00, 99, '/public/uploads/1771856034_ASE.png', 'active', '2026-02-23 14:13:54', '2026-04-27 21:29:20'),
(81, 'High Voltage Installation - Operational Level ', 'high-voltage-installation-operational-level', 3, 5, 'India Exclusive', '', 'PAM-M-93', 30.00, 0.00, 0, 'general', 'This course is designed to provide engineering officers and relevant technical personnel with the knowledge and practical skills required to safely operate and maintain high voltage electrical installations on board ships, at the operational level, in accordance with the requirements of the STCW Convention.\r\n\r\nThe training covers the fundamental principles of high voltage systems, including power generation, distribution, protection devices, switching operations, insulation, and fault detection. Emphasis is placed on safe working practices, risk assessment, lockout and tagging procedures, and emergency response related to high voltage operations.\r\n\r\nUpon successful completion, participants will be competent to carry out operational duties involving high voltage installations under established procedures, ensure the safety of personnel and equipment, and support the reliable operation of shipboard electrical power systems.', 90.00, 45.00, 95, '/public/uploads/1777262326_e71253eebc2b061a.jpg', 'active', '2026-02-23 14:16:24', '2026-04-27 21:29:20'),
(83, 'Ratings Forming Part of a Navigational Watch', 'ratings-forming-part-of-a-navigational-watch', 3, 5, 'India Exclusive', '', 'PAM-M-97', 40.00, 0.00, 0, 'general', 'This course is designed to provide seafarers with the knowledge and practical skills required to perform duties as a rating forming part of a navigational watch on board a seagoing ship, in accordance with the requirements of the STCW Convention.\r\n\r\nThe training covers fundamental navigation watchkeeping principles, including lookout duties, steering the ship, use of navigational equipment, basic bridge procedures, communication, and adherence to the International Regulations for Preventing Collisions at Sea (COLREGs). Emphasis is placed on safe watchkeeping practices, situational awareness, teamwork, and compliance with safety and pollution prevention procedures.\r\n\r\nUpon successful completion, participants will be competent to assist deck officers in navigational watchkeeping duties, contribute to the safe navigation of the vessel, and perform assigned tasks on the bridge in accordance with international maritime standards.', 90.00, 45.00, 49, '/public/uploads/1777262268_518c26135cbec2e7.jpg', 'active', '2026-02-23 14:25:27', '2026-04-27 21:29:20'),
(84, 'Bridge Resource Management', 'bridge-resource-management', 3, 5, 'India Exclusive', '', 'PAM-M-104', 32.00, 0.00, 0, 'general', 'This course is designed to enhance the safe and effective management of bridge operations through the optimal use of available resources, including personnel, equipment, and information, in accordance with the principles and requirements of the STCW Convention.\r\n\r\nThe training focuses on non-technical skills essential for safe navigation, such as leadership, teamwork, communication, situational awareness, decision-making, and workload management on the bridge. It addresses human factors, error management, and the prevention of accidents through effective coordination between bridge team members and with other departments.\r\n\r\nThrough theoretical instruction and practical exercises, participants develop the competence to apply Bridge Resource Management principles during normal and emergency situations, improving navigational safety, operational efficiency, and compliance with international maritime standards.', 90.00, 45.00, 85, '/public/uploads/1777262177_8fefd1b70e21d903.jpg', 'active', '2026-02-23 14:30:26', '2026-04-27 21:29:20'),
(85, 'Engine Room Resource Management', 'engine-room-resource-management', 3, 5, 'India Exclusive', '', 'PAM-M-105', 33.00, 0.00, 0, 'general', 'This course is designed to improve the safe and efficient operation of the engine department through the effective management of all available resources, including personnel, equipment, and information, in accordance with the principles and requirements of the STCW Convention.\r\n\r\nThe training focuses on the development of non-technical skills essential for engine-room operations, such as leadership, teamwork, communication, situational awareness, decision-making, and workload management. It addresses human factors, error management, and risk awareness, emphasizing the prevention of accidents and machinery failures through effective coordination within the engine-room team and with other shipboard departments.\r\n\r\nThrough theoretical instruction and practical exercises, participants develop the competence to apply Engine Room Resource Management principles during normal operations and emergency situations, thereby enhancing safety, reliability, and operational efficiency in the engine department.', 90.00, 45.00, 75, '/public/uploads/1777262140_f2daf7a98c590f94.jpg', 'active', '2026-02-23 14:32:34', '2026-04-27 21:29:20'),
(86, 'High Voltage Installation -  Management Level', 'high-voltage-installation-management-level', 3, 5, 'India Exclusive', '', 'PAM-M-94', 35.00, 0.00, 0, 'general', 'This course is designed to prepare senior engineering officers for management-level responsibilities related to the operation, supervision, and maintenance of high voltage electrical installations on board ships, in accordance with the requirements of the STCW Convention.\r\n\r\nThe training focuses on advanced high voltage system management, including design principles, power generation and distribution, protection and control systems, fault analysis, system redundancy, and risk management. Special emphasis is placed on leadership, safety management systems, development of operational procedures, permit-to-work systems, and compliance with international safety and environmental regulations.\r\n\r\nUpon successful completion, participants will be competent to manage and supervise high voltage operations, ensure safe working practices, make informed decisions during normal and emergency conditions, and maintain the reliability and safety of shipboard high voltage electrical systems.', 90.00, 45.00, 65, '/public/uploads/1777262123_6a8affe18884adac.jpg', 'active', '2026-02-23 16:45:49', '2026-05-29 05:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ;

-- --------------------------------------------------------

--
-- Table structure for table `redirects`
--

CREATE TABLE `redirects` (
  `id` int(11) NOT NULL,
  `from_url` varchar(255) NOT NULL,
  `to_url` varchar(255) NOT NULL,
  `type` enum('301','302') DEFAULT '301',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `related_product_id` int(11) NOT NULL,
  `display_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satisfaction_surveys`
--

CREATE TABLE `satisfaction_surveys` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `staff_attention_rating` varchar(20) NOT NULL COMMENT 'A-Buena, B-Regular, C-Mala',
  `staff_attention_comments` text DEFAULT NULL,
  `training_quality_rating` varchar(20) NOT NULL COMMENT 'A-Buena, B-Regular, C-Mala',
  `training_quality_comments` text DEFAULT NULL,
  `instructor_performance_rating` varchar(20) NOT NULL COMMENT 'A-Buena, B-Regular, C-Mala',
  `instructor_performance_comments` text DEFAULT NULL,
  `infrastructure_rating` varchar(20) DEFAULT NULL COMMENT 'A-Buena, B-Regular, C-Mala',
  `infrastructure_comments` text DEFAULT NULL,
  `survey_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satisfaction_surveys`
--

INSERT INTO `satisfaction_surveys` (`id`, `first_name`, `last_name`, `email`, `course_name`, `staff_attention_rating`, `staff_attention_comments`, `training_quality_rating`, `training_quality_comments`, `instructor_performance_rating`, `instructor_performance_comments`, `infrastructure_rating`, `infrastructure_comments`, `survey_date`, `created_at`, `updated_at`) VALUES
(6, 'Emmanuel', 'Ayala', 'emanuelayala25081@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', '2026-02-10', '2026-02-10 21:32:20', '2026-02-10 21:32:20'),
(7, 'Deenys', 'Guzman', 'deenys123Guzman@hotmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-02-10', '2026-02-10 21:38:25', '2026-02-10 21:38:25'),
(8, 'Juan', 'Lombardi', 'agustinlombardi1982@hotmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-10', '2026-02-10 21:45:47', '2026-02-10 21:45:47'),
(9, 'EDUARDS DANIEL', 'LOPEZ GARCIA', 'ledwards128850@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-10', '2026-02-10 21:53:35', '2026-02-10 21:53:35'),
(10, 'Ricardo ', 'karamanites', 'karamanites26@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-10', '2026-02-10 21:55:04', '2026-02-10 21:55:04'),
(11, 'VANDYKE ', 'SMITH', 'smithvandyke@yahoo.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', 'B-Regular', '', '2026-02-10', '2026-02-10 21:56:46', '2026-02-10 21:56:46'),
(12, 'Angel', 'Cruz', 'angeldelacruzg22@gmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-10', '2026-02-10 21:57:00', '2026-02-10 21:57:00'),
(13, 'SET ABDIAS', 'MARIN WILSON', 'htsmarin@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-10', '2026-02-10 22:00:17', '2026-02-10 22:00:17'),
(14, 'JISHAR ALBERTO', 'TIOFIL', 'tiofilalberto67@gmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-10', '2026-02-10 22:02:54', '2026-02-10 22:02:54'),
(15, 'Karlos Ivan ', 'Hernández Ramos', 'josecotrina312@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', 'B-Regular', '', '2026-02-10', '2026-02-10 22:11:12', '2026-02-10 22:11:12'),
(16, 'Edison Rosario ', 'Guzman', 'rosarioedison@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-10', '2026-02-10 22:14:46', '2026-02-10 22:14:46'),
(17, 'Sostenes Javier', 'Macias Macias', 'sostenes.macias25@hotmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-10', '2026-02-10 22:17:47', '2026-02-10 22:17:47'),
(18, 'Jaime Josue', 'Atencio Perez', 'tencioperes@gmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-10', '2026-02-10 22:22:39', '2026-02-10 22:22:39'),
(19, 'Marco Antonio ', 'Samudio Duran', 'samudioduranmarco@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-11', '2026-02-11 19:08:36', '2026-02-11 19:08:36'),
(20, 'Alexis Ariel ', 'Gonzalez Blanquicett', 'alexgb0797@gmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-11', '2026-02-11 19:21:29', '2026-02-11 19:21:29'),
(21, 'Ricardo Enrique', 'Karamañites De Leon', 'karamanites26@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', '2026-02-11', '2026-02-11 19:26:00', '2026-02-11 19:26:00'),
(22, 'Victor ', 'Anaya', 'fernando08020510@gmail.com', 'Security Training for Seafarers with Designated Security Duties', 'B-Regular', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-12', '2026-02-12 14:13:56', '2026-02-12 14:13:56'),
(23, 'Jose Marco ', 'Guzman Guerrero', 'marco_guzman.93@hotmail.com', 'Security Awareness Training for All Seafarers', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-02-12', '2026-02-12 16:12:36', '2026-02-12 16:12:36'),
(24, 'Jonathan Steven ', 'Cortez Camaño', 'jonathancortez2792@gmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-12', '2026-02-12 16:14:59', '2026-02-12 16:14:59'),
(25, 'Daniel ', 'Pimentel', 'dpimentel007@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-13', '2026-02-13 15:01:30', '2026-02-13 15:01:30'),
(26, 'Juan ', 'Sandoval Ibarra', 'juan.sandoval@stabbertmaritime.com', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-02-13', '2026-02-13 15:28:19', '2026-02-13 15:28:19'),
(27, 'Gerzon', 'Perez', 'Hazielperez1987@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-02-19', '2026-02-19 14:06:56', '2026-02-19 14:06:56'),
(28, 'Vicente', 'Caropresso', 'vicentecaro02@hotmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', '2026-02-19', '2026-02-19 14:11:57', '2026-02-19 14:11:57'),
(29, 'Jhony', 'Gonzalez', 'jhonyfermingonzalezmontilla@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', '2026-02-25', '2026-02-25 14:30:50', '2026-02-25 14:30:50'),
(30, 'Jorge', 'Aizpurua', 'jorgeaizpurua62@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-25', '2026-02-25 14:37:13', '2026-02-25 14:37:13'),
(32, 'Antonio', 'Márquez Flores', 'marant1228@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', '2026-02-26', '2026-02-26 13:23:06', '2026-02-26 13:23:06'),
(33, 'Osman', 'granera', 'osmangranera@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-02-26', '2026-02-26 16:33:44', '2026-02-26 16:33:44'),
(34, 'anderson', 'alarcon', 'Ander1134yt@gmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-02-26', '2026-02-26 16:37:28', '2026-02-26 16:37:28'),
(38, 'jaime', 'alarcon', 'jaimealarcon44@yahoo.com', 'Personal Safety and Social Responsibilities', 'B-Regular', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-02-26', '2026-02-26 16:40:40', '2026-02-26 16:40:40'),
(39, 'jaime', 'FRANCO', 'cayayos11@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-02', '2026-03-02 13:34:36', '2026-03-02 13:34:36'),
(40, 'Fabian', 'Carrera Pinzon', 'fabiancarrera197@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-02', '2026-03-02 14:26:15', '2026-03-02 14:26:15'),
(41, 'Angel', 'saez', 'saezangel167@gmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-03', '2026-03-03 15:06:57', '2026-03-03 15:06:57'),
(42, 'Antonio', 'Talamantes', 'antonio_talamantes@yahoo.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-04', '2026-03-04 14:11:25', '2026-03-04 14:11:25'),
(43, 'Jaime', 'Alarconm', 'Alarcon19jaime@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-04', '2026-03-04 14:24:44', '2026-03-04 14:24:44'),
(44, 'Roberto', 'Vanegas', 'robertovanegas0703@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-04', '2026-03-04 14:30:31', '2026-03-04 14:30:31'),
(45, 'Oscar', 'Castillo', '2.OSCARCASTILLLO16HODGSON@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-04', '2026-03-04 15:02:28', '2026-03-04 15:02:28'),
(46, 'Alejandro', 'Bustillos', 'alejandro.bustillos.caraballo@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-04', '2026-03-04 15:13:22', '2026-03-04 15:13:22'),
(47, 'Jhenfer', 'Luna', 'Jhenferluna@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'B-Regular', '', '2026-03-04', '2026-03-04 15:17:09', '2026-03-04 15:17:09'),
(48, 'Junior', 'Quiñones', 'junior_quinonesz@hotmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', 'La atención del personal fue buena ya que demostraron una correcta organización en el proceso de atención', 'A-Buena', 'n/a', 'A-Buena', 'muy bueno, ya que explicó los temas con claridad, mostró dominio del contenido, mantuvo una buena comunicación', 'B-Regular', 'n/a', '2026-03-11', '2026-03-11 17:09:53', '2026-03-11 17:09:53'),
(49, 'Carlos Gabriel', 'Alvia Mero', 'carlos31alvia@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'El servicio fue muy bueno y recibí la información que necesitaba rápidamente.', 'A-Buena', 'Definitivamente lo recomendaría', 'B-Regular', 'Tal vez mejorar el tiempo de respuesta en horas de mayor demanda', 'A-Buena', 'N/A', '2026-03-11', '2026-03-11 18:37:30', '2026-03-11 18:37:30'),
(50, 'Roderick Reynaldo', 'Rivera Salazar', 'roderik04@outlook.com', 'Personal Safety and Social Responsibilities', 'B-Regular', 'Excelente atencion', 'A-Buena', 'Me gusto que es muy variado', 'A-Buena', 'Explica a la perfección', 'A-Buena', 'Muy fácil de manejar la plataforma', '2026-03-11', '2026-03-11 19:12:04', '2026-03-11 19:12:04'),
(51, 'eddy', 'mero', 'EDDY28MERO@hotmail.com', 'Security Awareness Training for All Port Facility Personnel', 'A-Buena', 'buena la verdad son amable y te explican bien', 'B-Regular', 'n/a', 'A-Buena', 'muy amable y comprensivo', 'A-Buena', 'n/a', '2026-03-11', '2026-03-11 19:58:12', '2026-03-11 19:58:12'),
(52, 'carlos', 'perrales', 'carlospe_18@hotmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', 'La atención fue adecuada y el personal fue atento durante todo el proceso', 'A-Buena', 'El entrenamiento fue útil y cumplió con las expectativas.', 'A-Buena', 'n/a', 'B-Regular', 'n/a', '2026-03-11', '2026-03-11 20:59:32', '2026-03-11 20:59:32'),
(53, 'EDGAR', 'GONDOLA', 'edgargondola2006@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'La atención del personal fue adecuada y eficiente', 'A-Buena', 'La calidad del entrenamiento y del curso impartido fue muy buena ya que la información fue clara y  útil', 'A-Buena', 'n/a', 'B-Regular', 'n/a', '2026-03-12', '2026-03-12 16:16:25', '2026-03-12 16:16:25'),
(54, 'AARON', 'Alleyne', 'imela20@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'n/a', 'B-Regular', 'n/a', 'A-Buena', 'El desempeño del instructor fue excelente, demostrando dominio del tema, claridad en la explicación y buena interacción con los participantes durante el desarrollo del curso', 'A-Buena', 'Las condiciones generales de la infraestructura, equipos y simulador fueron muy buenas, ya que contaban con los recursos necesarios', '2026-03-12', '2026-03-12 16:59:59', '2026-03-12 16:59:59'),
(55, 'Hugo Alfano', 'Vazquez Medina', 'vazquezmedina85@gmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', 'El proceso de admisión fue rápido', 'A-Buena', 'Muy bien explicado cada modulo.', 'A-Buena', 'Volvería definitivamente a tomar mas cursos', 'A-Buena', 'No aplica ya que mi curso fue online.', '2026-03-12', '2026-03-12 20:39:53', '2026-03-12 20:39:53'),
(56, 'Oswaldo Yeid', 'Álvarez Caicedo', 'oyac0726@hotmail.com', 'Personal Safety and Social Responsibilities', 'B-Regular', 'Pensé que seria un poco mas rápido', 'A-Buena', 'El contenido del curso fue muy bueno', 'A-Buena', 'El instructor siempre estuvo al pendiente de mi proceso', 'A-Buena', 'No aplica', '2026-03-12', '2026-03-12 20:53:14', '2026-03-12 20:53:14'),
(57, 'Eivan Ernesto', 'Lashley Gobea', 'lashleyeivan0@gmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'Muy bueno', 'A-Buena', 'Todo el proceso fue claro', 'B-Regular', 'El servicio cumplió con lo básico, pero aún puede mejorar.', 'A-Buena', 'N/A', '2026-03-13', '2026-03-13 14:02:22', '2026-03-13 14:02:22'),
(58, 'Carlos', 'Parrales', 'carlospe_18@hotmail.com', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', 'La atención del personal fue satisfactoria, mostrando amabilidad, disposición para ayudar y eficiencia durante todo el proceso administrativo', 'A-Buena', 'La calidad del entrenamiento y del curso impartido fue muy satisfactoria, debido a que los contenidos fueron  bien explicados y contribuyeron al fortalecimiento de los conocimientos de los participantes', 'A-Buena', 'n/a', 'B-Regular', 'n/a', '2026-03-13', '2026-03-13 19:13:55', '2026-03-13 19:13:55'),
(59, 'jaime', 'Fawceth', 'jfawcet21@gnail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-13', '2026-03-13 20:05:32', '2026-03-13 20:05:32'),
(60, 'paulo', 'alvarez', 'PAUCESMARINO@GMAIL.COM', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-13', '2026-03-13 21:32:08', '2026-03-13 21:32:08'),
(61, 'Paulo', 'alvarez', 'paucesmarino@gmail.com', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', 'la atención del personal puede calificarse como buena, ya que se observa planificación en las tareas y organización en el trabajo', 'A-Buena', 'buena, ya que la información fue clara, útil y permitió mejorar los conocimientos y habilidades del personal', 'B-Regular', '', 'A-Buena', '', '2026-03-16', '2026-03-16 14:39:50', '2026-03-16 14:39:50'),
(62, 'Victor', 'Anaya', 'fernando08020510@gmail.com', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-16', '2026-03-16 16:24:02', '2026-03-16 16:24:02'),
(63, 'Andres Mauricio', 'Said Gonzalez', 'andressaid1187@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'Estrictos con sus proceso de admisión pero excelente atención', 'B-Regular', 'debe mejor el contenido del curso ser mas actualizado', 'A-Buena', 'Respondió a todas mis consultas', 'A-Buena', 'N/A mi curso fue virtual', '2026-03-19', '2026-03-19 21:50:30', '2026-03-19 21:50:30'),
(64, 'Oscar', 'Amaris', 'oscaramaris0961@hotmail.com', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-20', '2026-03-20 17:52:59', '2026-03-20 17:52:59'),
(65, 'Oscar', 'Amaris', 'oscaramaris0961@hotmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-20', '2026-03-20 17:58:45', '2026-03-20 17:58:45'),
(66, 'Andres Mauricio', 'Said Gonzalez', 'andressaid1187@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'Es un curso didáctico se aprender muy bien', 'A-Buena', 'N/A', 'A-Buena', 'N/A', 'A-Buena', 'N/A', '2026-03-20', '2026-03-20 19:51:08', '2026-03-20 19:51:08'),
(67, 'Andres Mauricio', 'Said Gonzalez', 'andressaid1187@hotmail.com', 'Personal Safety and Social Responsibilities', 'A-Buena', 'Fue rapido excelente atencion', 'A-Buena', 'Muy buenos', 'A-Buena', 'Explica excelente', 'A-Buena', 'N/A', '2026-03-20', '2026-03-20 19:53:55', '2026-03-20 19:53:55'),
(69, 'Andres', 'Said', 'andressaid1187@hotmail.com', 'Security Awareness Training for All Seafarers', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-24', '2026-03-24 15:42:05', '2026-03-24 15:42:05'),
(71, 'Andres', 'Said', 'andressaid1187@hotmail.com', 'Security Training for Seafarers with Designated Security Duties', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-24', '2026-03-24 19:29:55', '2026-03-24 19:29:55'),
(72, 'Jose', 'Rubalcada', 'jgrubalcada17@gmail.com', 'Security Awareness Training for All Port Facility Personnel', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-24', '2026-03-24 20:07:04', '2026-03-24 20:07:04'),
(73, 'Herbert', 'Taylor', 'HERBERTTAYLOR06@icloud.com', 'Security Awareness Training for All Port Facility Personnel', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', 'A-Buena', '', '2026-03-24', '2026-03-24 20:55:34', '2026-03-24 20:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'My CMS', '2025-12-10 15:24:43', '2025-12-10 15:24:43'),
(2, 'site_description', 'A custom PHP CMS', '2025-12-10 15:24:43', '2025-12-10 15:24:43'),
(3, 'per_page', '10', '2025-12-10 15:24:43', '2025-12-10 15:24:43'),
(4, 'paypal_mode', 'sandbox', '2026-01-15 05:08:24', '2026-01-15 05:08:24'),
(5, 'paypal_client_id', 'BAAGxlfgaTnFtYKjISXdJdRM__FyoiCZMsNOAxZfupoXvPSEBstcnBcPwgfMfDGm6lAAqBMleuy12oGLTw', '2026-01-15 05:08:24', '2026-01-15 05:35:42'),
(6, 'paypal_client_secret', '', '2026-01-15 05:08:24', '2026-01-15 05:38:38'),
(7, 'paypal_merchant_id', 'P5PCYJVF6NC5J', '2026-01-15 05:08:24', '2026-01-15 05:34:27'),
(8, 'paypal_email', 'info@pamel.edu.pa', '2026-01-15 05:08:24', '2026-01-15 05:34:27'),
(9, 'email_from_name', 'Pamel', '2026-04-22 02:20:10', '2026-04-22 02:20:10'),
(10, 'email_from_email', 'no-replay@rucmapamel.com', '2026-04-22 02:20:10', '2026-04-22 04:51:54'),
(11, 'email_admin_email', 'info@pamel.edu.pa', '2026-04-22 02:20:10', '2026-04-22 04:54:19'),
(12, 'email_smtp_enabled', '1', '2026-04-22 02:20:10', '2026-04-22 04:15:38'),
(13, 'email_smtp_host', 'rucmapamel.com', '2026-04-22 02:20:10', '2026-04-22 04:51:54'),
(14, 'email_smtp_port', '465', '2026-04-22 02:20:10', '2026-04-22 04:51:54'),
(15, 'email_smtp_username', 'no-replay@rucmapamel.com', '2026-04-22 02:20:10', '2026-04-22 04:51:54'),
(16, 'email_smtp_password', '0w9u^i1H8', '2026-04-22 02:20:10', '2026-04-22 04:51:54'),
(17, 'email_smtp_encryption', 'ssl', '2026-04-22 02:20:10', '2026-04-22 04:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','editor','customer') DEFAULT 'customer',
  `status` enum('active','inactive') DEFAULT 'active',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'darango@innov4te.com', '$2y$12$SFmxo4GzcDxgNx515RWaNOe3snBBoHhFXzTNEtxZfzFKYUYd2Q59a', 'admin', 'active', '2026-05-01 14:19:40', '2025-12-10 15:24:43', '2026-05-01 19:19:40'),
(2, 'Juan Pérez', 'student@pamel.com', '$2y$10$R6eVV1vE1ICzDd0i4PyNv.Ah7xqaaQcnInjTKA8pmaCaE8WiTQPCS', 'customer', 'active', '2026-01-14 09:34:06', '2025-12-12 19:23:20', '2026-01-14 14:34:06'),
(3, 'promanager', 'd3ibys@gmail.com', '$wp$2y$10$u8yoPAIya6GHTN82TQvSPOf7LtKFUwqcbnJX7sY3nNJyvPu02BKd6', 'customer', 'active', NULL, '2022-06-02 21:15:07', '2026-01-13 02:44:00'),
(4, 'María Gabriela Rivera Navarrete', 'mriveranavarrete@hotmail.com', '$P$BMi0n/XEyyJ3pAP.yvQotGLwRHnu391', 'customer', 'active', NULL, '2023-01-19 07:14:21', '2026-01-13 02:44:00'),
(5, 'Marine Training amd Certification Centre', 'info@mtccpanama.com', '$P$B8ZQLmwVtR//lL1fCE1lb1NIwmKUku/', 'customer', 'active', NULL, '2023-03-01 23:58:34', '2026-01-13 02:44:00'),
(6, 'wilbert.baral', 'victor+Nombre1@gilontas.com', '$P$B667hdfHvRygUszCLfAIxStspT9o7/1', 'customer', 'active', NULL, '2023-03-02 02:41:28', '2026-01-13 02:44:00'),
(7, 'aditya.rahmawan', 'victor+Nombre2@gilontas.com', '$P$BIZj.ayqMbPNzDOP9G63QO7sITGNTN/', 'customer', 'active', NULL, '2023-03-02 02:44:38', '2026-01-13 02:44:00'),
(8, 'sahria', 'sahria.06@outlook.es', '$P$BHc2VSXM19XtVyqNE4jBsrvmxrlzSG1', 'customer', 'active', NULL, '2023-03-21 01:49:41', '2026-01-13 02:44:00'),
(9, 'john.caliguid', 'victor+Nombre5@gilontas.com', '$P$BMCYTtOtScSyZbfAOrxkQ4grSVgVwP.', 'customer', 'active', NULL, '2023-03-25 02:16:23', '2026-01-13 02:44:00'),
(10, 'alejandro.devera', 'victor+Nombre6@gilontas.com', '$P$BVAk9ziUdVlnIYHmLgUTwkyVPgGScb/', 'customer', 'active', NULL, '2023-03-25 02:18:15', '2026-01-13 02:44:00'),
(11, 'mark.yray', 'victor+Nombre3@gilontas.com', '$P$BvnS4RWWupEU4AOUtnN4zPqt/bJri0/', 'customer', 'active', NULL, '2023-03-25 02:23:29', '2026-01-13 02:44:00'),
(12, 'rex.pascual', 'victor+Nombre4@gilontas.com', '$P$B2aq2RYLASOYDXxFz6Qphr1aPzmurA.', 'customer', 'active', NULL, '2023-03-25 02:28:13', '2026-01-13 02:44:00'),
(13, 'alvaro.mejdoub', 'am.armsect@gmail.com', '$P$BLv1W7w2FO4vsDFVdpgLF3taISzr3V1', 'customer', 'active', NULL, '2023-05-26 02:37:03', '2026-01-13 02:44:00'),
(14, 'gabriel.ponce', 'gb.poncearmsect@gmail.com', '$P$Bgo.QP3HR1bKVjHORNqUXGZwYb7qtj.', 'customer', 'active', NULL, '2023-05-26 02:40:16', '2026-01-13 02:44:00'),
(15, 'charles.espino', 'che.armsect@gmail.com', '$P$ByVD6KEQAw19GlpJ2GpyBEmHTt15xU.', 'customer', 'active', NULL, '2023-05-26 02:41:30', '2026-01-13 02:44:00'),
(16, 'alfredo.nunez', 'an.armsect@gmail.com', '$P$BqmdmDfhP/68JL53MQ4XIXyYvXZpKg/', 'customer', 'active', NULL, '2023-05-26 02:44:04', '2026-01-13 02:44:00'),
(17, 'rodolfo.mcbeans', 'rmc.armsect@gmail.com', '$P$BtFCLaw.onM6HTBOEQBYF7BXdYkAnH1', 'customer', 'active', NULL, '2023-05-26 02:47:26', '2026-01-13 02:44:00'),
(18, 'evangelisto.santos', 'es.armsect@gmail.com', '$P$Bcc0jzLZOiW57c8sd5wTXjTunalGbL1', 'customer', 'active', NULL, '2023-05-26 02:50:08', '2026-01-13 02:44:00'),
(19, 'carlos.pitti', 'cp.armsect@gmail.com', '$P$BET0AUeaZRgewo4fwiYL4KX3K24paK0', 'customer', 'active', NULL, '2023-05-26 02:53:43', '2026-01-13 02:44:00'),
(20, 'walkin.isarama', 'iw.armsect@gmail.com', '$P$BSNY7zn8cfNXWDyUeCJDUdxW9XEzKQ/', 'customer', 'active', NULL, '2023-05-26 02:56:15', '2026-01-13 02:44:00'),
(21, 'magdaleno.medina', 'mm.armsect@gmail.com', '$P$BIvte7QsT5VMXpL3p2aeBeJffTEc.d/', 'customer', 'active', NULL, '2023-05-26 02:58:19', '2026-01-13 02:44:00'),
(22, 'nicasio.morre', 'nm.armsect@gmail.com', '$P$BNJMboLZUU6U8DhPhPcyvH5PwLsfPE/', 'customer', 'active', NULL, '2023-05-26 03:02:34', '2026-01-13 02:44:00'),
(23, 'eurelio.gonzalez', 'eg.armsect@gmail.com', '$P$BqRueshDY9kR2fdP5C2LcFf8MMGi1h/', 'customer', 'active', NULL, '2023-05-26 03:04:19', '2026-01-13 02:44:00'),
(24, 'benjamin.cardona', 'bc.armsect@gmail.com', '$P$BanHexn3PoRw/DlVlzgMUHfoi6JQEP/', 'customer', 'active', NULL, '2023-05-26 03:05:58', '2026-01-13 02:44:00'),
(25, 'carlos.barrera', 'c.barreraatlantic@gmail.com', '$P$Bl.HWOlRwZ99Qj1VAZ2tqYg1H3YS/U.', 'customer', 'active', NULL, '2023-05-26 03:16:20', '2026-01-13 02:44:00'),
(26, 'martin.reid', 'm.lutheratlantic@gmail.com', '$P$BiiS/g/hagIv/JoQSrsdFfTUQ.DAwi/', 'customer', 'active', NULL, '2023-05-26 03:18:59', '2026-01-13 02:44:00'),
(27, 'aristides.vasquez', 'a.vasquezatlantic@gmail.com', '$P$BA6qpMHd2x8bjL7ckqaCrhafSKRQuP0', 'customer', 'active', NULL, '2023-05-26 03:20:49', '2026-01-13 02:44:00'),
(28, 'alvaro.jingimia', 'a.ingimioatlantic@gmail.com', '$P$BXFDJCIkIQQw77pxC2cKGxdWU.ouos0', 'customer', 'active', NULL, '2023-05-26 03:24:17', '2026-01-13 02:44:00'),
(29, 'geronimo.mendoza', 'g.mendozaatlantic@gmail.com', '$P$BLE3ugLkWNhkOyx1.hjiVVdB9XWCuw0', 'customer', 'active', NULL, '2023-05-26 03:26:19', '2026-01-13 02:44:00'),
(30, 'octavio.ortega', 'o.ortegaatlantic@gmail.com', '$P$BAR.GGIE2vOCRy6jDwvy5fB3d/N3zU0', 'customer', 'active', NULL, '2023-05-26 03:27:53', '2026-01-13 02:44:00'),
(31, 'guestuser', 'luzmarine2882@gmail.com', '$P$BkX.lZImHo89LVi.9jWJ4rxpXVDgq00', 'customer', 'active', NULL, '2023-06-20 03:11:05', '2026-01-13 02:44:00'),
(32, 'sreejith.sreedharan', 'panamaflags@gmail.com', '$P$B92fi4VL978tMAp/N8maXisVWvV2Du1', 'customer', 'active', NULL, '2023-09-29 20:46:24', '2026-01-13 02:44:00'),
(33, 'sivakumar.mylapilli', 'panamaflags1@gmail.com', '$P$Bu5kypeLVpSouMouyod5k2oE6hSi9l.', 'customer', 'active', NULL, '2023-11-09 04:03:13', '2026-01-13 02:44:00'),
(34, 'dataram', 'panamaflags2@gmail.com', '$P$BWrkCDliR6cppDTmVz7pCK6GGEaeb8/', 'customer', 'active', NULL, '2023-11-09 04:07:45', '2026-01-13 02:44:00'),
(35, 'ashishsopan.kute', 'ashukute75@gmail.com', '$P$B.3nI7SVDx2mxgN.NVmP5yQ82v.Mwr1', 'customer', 'active', NULL, '2023-12-13 19:40:18', '2026-01-13 02:44:00'),
(36, 'jitesh.parmar', 'jitesh2981974@gmail.com', '$P$BF7Zus.8wHk70/Y3uLQF5HZHNzCW8j/', 'customer', 'active', NULL, '2023-12-13 19:44:08', '2026-01-13 02:44:00'),
(37, 'isabel rodriguez', 'rodriguezisabel793@gmail.com', '$P$B.KNp2zJNnFehqPtExZOyZxJGSm9EH/', 'customer', 'active', NULL, '2024-01-18 19:07:29', '2026-01-13 02:44:00'),
(38, 'ganesh.karande', 'ganeshkarande85@gmail.com', '$P$BoJ7/kuNXHqRJ4y6/RlBxw8/MiiT9G.', 'customer', 'active', NULL, '2024-01-18 19:51:32', '2026-01-13 02:44:00'),
(39, 'lakshmi.bagala', 'bagalakshminarayana25@gmail.com', '$P$BXNS8rLGqn4ioYFa3ev3gI/KZ/Ora90', 'customer', 'active', NULL, '2024-01-18 19:54:47', '2026-01-13 02:44:00'),
(40, 'kuldip.raj', 'kuldipraj73@gmail.com', '$P$BPmxpNSHAOcADO036Jwxnm6.zE.5KN0', 'customer', 'active', NULL, '2024-01-18 19:57:40', '2026-01-13 02:44:00'),
(43, 'Maksim Makarov', 'max.makarov@protonmail.com', '$P$B23sJnyGU4EYxDI217oPFm9GMD6oTD/', 'customer', 'active', NULL, '2024-05-04 01:19:42', '2026-01-13 02:44:00'),
(45, 'leonardo.ceballos', 'ldejesusceballos26@gmail.com', '$P$Bwfsrwjs0pteOhA6mktwCa/gsvj7rg0', 'customer', 'active', NULL, '2024-07-12 20:10:41', '2026-01-13 02:44:00'),
(46, 'zayuri.segura', 'zseguraarrieta1989@gmail.com', '$P$Bx7Y2xE5mbutq1JXGrbNdm1tFuae.30', 'customer', 'active', NULL, '2024-07-12 20:12:53', '2026-01-13 02:44:00'),
(47, 'luis.alvarado', 'albertodawkins13@gmail.com', '$P$Bfw.5uS9LiOSOLLkhkMfnePm1Ua0aY/', 'customer', 'active', NULL, '2024-07-12 20:16:07', '2026-01-13 02:44:00'),
(48, 'laxminarayana.krishnamurthy', 'dunnalaxminarayan@gmail.com', '$P$BS880fkB/WcQyFs.VCGzrIIVppXoBk/', 'customer', 'active', NULL, '2024-07-26 19:50:45', '2026-01-13 02:44:00'),
(49, 'sanjay.kumar', 'sanjugos75@gmail.com', '$P$BwQbx5L/oWon6eXh9p59a9BXWl3mRj/', 'customer', 'active', NULL, '2024-07-26 19:52:40', '2026-01-13 02:44:00'),
(50, 'Isabel Rodriguez', 'info@pamel.edu.pa', '$2y$10$e6C7pkbLeyxCp7Sy.4kNpugmXi3qgo94Nhj1OVV7vzap/HcMOguMK', 'admin', 'active', '2026-03-26 14:12:50', '2024-08-06 00:16:52', '2026-03-26 19:12:50'),
(51, 'johanna.sanchez', 'johannai130781@gmail.com', '$P$BiLAoc6rJ15D0GhG0LZ.n5jsgnJ7Yv1', 'customer', 'active', NULL, '2024-08-09 20:08:59', '2026-01-13 02:44:00'),
(52, 'dinpan73@gmail.com', 'dinpan73@gmail.com', '$P$BmfRp627Cyw92uY9.LY9KDfWvb8CVQ0', 'customer', 'active', NULL, '2024-11-13 04:49:49', '2026-01-13 02:44:00'),
(53, 'arora.amit.on@gmail.com', 'arora.amit.on@gmail.com', '$P$BKt6uCUyIkQiPsQ1ELfOWB7A4KUg5G/', 'customer', 'active', NULL, '2024-11-13 05:04:46', '2026-01-13 02:44:00'),
(54, 'omkarumrale11@gmail.com', 'omkarumrale11@gmail.com', '$P$Bi6wmn3tYFMa3aHDGatysJyeYH3D4z0', 'customer', 'active', NULL, '2024-11-13 05:11:30', '2026-01-13 02:44:00'),
(55, 'ssalado@consoltics.com', 'ssalado@consoltics.com', '$wp$2y$10$j5qujijeB9HQsR.w9nxlyOLZt4.qjZub3Dcnu7Jy7v8twEm6ZlfDO', 'customer', 'active', NULL, '2024-11-13 05:36:11', '2026-01-13 02:44:00'),
(56, 'deibys', 'dparedes@consoltics.com', '$P$B7HWqxPA8qtjc7Q3ZyD814IDkjUOUf.', 'customer', 'active', NULL, '2024-11-13 05:40:31', '2026-01-13 02:44:00'),
(57, 'Danelio Arango', 'danelio.arango@gmail.com', '$2y$12$mG7y4ya8cgFIHPlV8xRXfOwA6dAmMFbwRWf.GeTTgmyvQwwGnD4uy', 'customer', 'active', '2026-06-08 09:47:53', '2026-01-14 03:43:54', '2026-06-08 14:47:53'),
(58, 'Test User', 'test_1768363117@example.com', '$2y$10$ehnNcBUel8YpaNkLkrUrm.Fw5sX/1PyZc/aV1jTEAft80Yz6CAXoy', 'customer', 'active', NULL, '2026-01-14 03:58:38', '2026-01-14 03:58:38'),
(59, 'Salim Ahmada Ame', 'salimame314@gmail.com', '$2y$10$2P/fgCQ5sr2vlEFjAk2CVuS8TJ9kF8oJkZUFherEI1wNby1qmJdU6', 'customer', 'active', NULL, '2026-03-27 04:17:38', '2026-03-27 04:17:38'),
(60, 'Joseph Flores', 'joseph_o5@outlook.com', '$2y$10$Wn4cjf7vKwgQzMG8rUDUn.T9tANGw/Wh2q0i/85Hm2c.X9Mkw3Eny', 'customer', 'active', NULL, '2026-03-30 19:53:53', '2026-03-30 19:53:53'),
(61, 'Odi Alberto Gomez Frederick ', 'odigomez12@gmail.com', '$2y$12$zNc1Q1eF4iTNqeIj4PljI.btve7lXJH4qeNiO/n9plUtR.gaM/0P2', 'customer', 'active', NULL, '2026-05-30 00:38:50', '2026-05-30 00:38:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_requests`
--
ALTER TABLE `admission_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_slug` (`slug`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_url` (`page_url`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_course_code` (`course_code`),
  ADD KEY `idx_modality` (`modality`),
  ADD KEY `idx_subcategory_id` (`subcategory_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product` (`product_id`),
  ADD KEY `idx_rating` (`rating`);

--
-- Indexes for table `redirects`
--
ALTER TABLE `redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `from_url` (`from_url`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_relation` (`product_id`,`related_product_id`),
  ADD KEY `related_product_id` (`related_product_id`),
  ADD KEY `idx_product` (`product_id`);

--
-- Indexes for table `satisfaction_surveys`
--
ALTER TABLE `satisfaction_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_name` (`course_name`),
  ADD KEY `survey_date` (`survey_date`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission_requests`
--
ALTER TABLE `admission_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirects`
--
ALTER TABLE `redirects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `related_products`
--
ALTER TABLE `related_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satisfaction_surveys`
--
ALTER TABLE `satisfaction_surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_ibfk_2` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
