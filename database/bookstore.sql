-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Paź 2024, 17:50
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bookstore`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_year` year(4) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `is_rented` tinyint(1) NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `published_year`, `publisher`, `is_rented`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 'Repellendus adipisci ipsam.', 'Boris Rau', 2002, 'Barton-Wolff', 1, 1, '2024-10-03 09:38:06', '2024-10-03 13:10:43'),
(2, 'Ut doloribus qui.', 'Eleazar Halvorson', 2019, 'Brekke-Wiza', 1, 1, '2024-10-03 09:38:06', '2024-10-03 13:16:58'),
(3, 'Ea iure dignissimos.', 'Dusty Simonis Jr.', 2006, 'Gleichner-Steuber', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 11:28:32'),
(4, 'Quas quos ipsum maiores.', 'Vinnie Wuckert', 1993, 'Green Inc', 1, 9, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(5, 'Tempore repudiandae sed incidunt.', 'Deven Nitzsche MD', 2000, 'Lindgren-Rau', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(6, 'Est numquam pariatur consequatur.', 'Ernestine Ledner', 2002, 'Littel, Walsh and Ward', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(7, 'Aspernatur omnis rem minus.', 'Augusta Swift Sr.', 1970, 'Strosin Ltd', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(8, 'Sint sed laudantium eaque.', 'Sylvia Schuster', 2011, 'Spinka, Schoen and Reynolds', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(9, 'Nemo consequatur ex officia.', 'Dr. Halie Kessler DDS', 2004, 'Luettgen-Mann', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(10, 'Nihil eveniet ut.', 'Aida Cremin', 1974, 'Gislason LLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(11, 'Et possimus aperiam et.', 'Iliana Stracke IV', 2010, 'Daniel-Abshire', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(12, 'Libero accusantium.', 'Beth McLaughlin', 1991, 'Huel Group', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(13, 'Provident reprehenderit sapiente.', 'Fred Johns', 1972, 'Cruickshank-Walsh', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(14, 'Modi laudantium ex.', 'Myriam Brown', 1992, 'Abernathy Inc', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(15, 'Aut enim voluptas consequatur quod.', 'Maggie Stracke', 2000, 'Bashirian-Emard', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(16, 'Distinctio temporibus molestiae incidunt.', 'Jammie Miller', 1996, 'Lind-Schmeler', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(17, 'Consequatur expedita.', 'Geo Jacobson DDS', 2008, 'Nienow-Gleason', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(18, 'Dolorem et sunt vitae.', 'Dr. Halie Hauck I', 1986, 'Leannon-Eichmann', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(19, 'Aliquid nobis.', 'Carleton Macejkovic', 1997, 'Willms and Sons', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(20, 'Officia quibusdam ut et.', 'Prof. Florence Walker', 2006, 'Williamson, Bahringer and Bosco', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(21, 'Et illum maxime.', 'Felipe Goldner', 1976, 'Nikolaus-Steuber', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(22, 'Recusandae omnis voluptas.', 'Tyreek Gaylord', 1992, 'Daniel Group', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(23, 'Porro error aliquid incidunt.', 'Prof. Hadley DuBuque II', 2024, 'Runolfsson, Kulas and Nienow', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(24, 'Non consequatur et voluptas.', 'Effie Cartwright', 2008, 'Rodriguez LLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(25, 'Eum culpa laborum.', 'Yasmeen Torp', 1993, 'Crooks, Botsford and Reinger', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(26, 'Doloribus debitis velit corrupti.', 'Grayce Kihn', 1978, 'Hayes-Jacobs', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(27, 'Delectus aliquam nulla velit excepturi.', 'Brittany Pfeffer', 2022, 'Howell, Schmeler and Hackett', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(28, 'Veritatis distinctio voluptatem.', 'Dudley Murazik', 1999, 'Kutch LLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(29, 'Nobis autem molestiae.', 'Prof. Arvel O\'Keefe', 1980, 'Stroman, Armstrong and Rempel', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(30, 'Fuga sapiente placeat fugiat.', 'Blaze Friesen', 2018, 'Smith-Hudson', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(31, 'Quod eum excepturi.', 'Jalyn Greenfelder', 2016, 'Zemlak and Sons', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(32, 'Impedit magnam.', 'Robbie Bernhard DVM', 2010, 'Brekke, Emmerich and Eichmann', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(33, 'Odit quasi explicabo.', 'Prof. Alexzander Hamill V', 1970, 'Kuphal LLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(34, 'Repudiandae aut sit.', 'Prof. Reed Kuhic IV', 1973, 'Cartwright LLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(35, 'Minus assumenda quas ducimus magnam.', 'Ms. Mary Harber DDS', 2021, 'Cronin, Kemmer and Mante', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(36, 'Quod facere minima.', 'Nathanael Pagac', 2017, 'Koepp-Mraz', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(37, 'Saepe eum id.', 'Desmond Balistreri', 2014, 'Daugherty Inc', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(38, 'Aut ut cupiditate.', 'Glenda Dietrich', 1975, 'Koelpin-Bergstrom', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(39, 'Mollitia sapiente.', 'Mrs. Petra Erdman', 1986, 'Goyette, Feest and Kertzmann', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(40, 'Laborum nihil sint.', 'Patsy Price', 1977, 'Satterfield Ltd', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(41, 'Cum sint saepe velit.', 'Dr. Raven Lemke III', 2009, 'Feest Ltd', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(42, 'Qui aperiam dolorum.', 'Dr. Lynn Moore', 2002, 'Haley, Turcotte and Hegmann', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(43, 'Tempora necessitatibus necessitatibus.', 'Ms. Dana Jacobs', 2011, 'Macejkovic-VonRueden', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(44, 'Quo voluptas repellendus voluptate.', 'Ila Boehm', 1977, 'Labadie-Ebert', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(45, 'Qui illum modi exercitationem.', 'Clark Lehner', 1975, 'Hegmann-Smith', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(46, 'Iste voluptatem excepturi suscipit.', 'Ms. Katrina Auer', 1974, 'Hauck LLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(47, 'Earum explicabo et possimus aut.', 'Katharina Bahringer DDS', 2022, 'Dickens, Waelchi and O\'Kon', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(48, 'Sed quia incidunt non.', 'Frieda Jakubowski', 2009, 'Kautzer, Ondricka and Stark', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(49, 'Officiis nihil inventore illum.', 'Jett Keebler', 2011, 'Heaney Ltd', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(50, 'Sit necessitatibus est officiis.', 'Dr. Leilani Shanahan', 1981, 'Towne, Jaskolski and Hermann', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(51, 'Similique sequi aut.', 'Grayson Ledner', 1979, 'Hackett, Bogan and Rippin', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(52, 'Sit qui reprehenderit modi nesciunt.', 'Justine Hamill PhD', 2008, 'Carter, Hettinger and Glover', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(53, 'Autem aut nemo veritatis.', 'Gregorio Swaniawski', 2013, 'Streich, Weber and Hackett', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(54, 'Sit architecto harum.', 'Dr. Kathryne Bernhard MD', 2016, 'Hoeger-Halvorson', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(55, 'Et aut odio veritatis.', 'Dr. Joana Reinger', 2004, 'Skiles-Kautzer', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(56, 'Quos ullam autem.', 'Aurelio Veum DVM', 1997, 'Daugherty-Hettinger', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(57, 'At ducimus odio.', 'Elisa Johnston', 1982, 'Murazik Ltd', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(58, 'Voluptatem excepturi voluptatibus.', 'Gertrude Zulauf', 1975, 'Langosh-Batz', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(59, 'Perferendis minus cumque aspernatur.', 'Norwood Hyatt', 2005, 'McKenzie PLC', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(60, 'Nulla perspiciatis ut.', 'Dr. Nicole Wuckert', 1991, 'Kerluke, Tromp and Maggio', 0, NULL, '2024-10-03 09:38:06', '2024-10-03 09:38:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Sophie', 'Blanda', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(2, 'Delphine', 'Boyle', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(3, 'Itzel', 'Mitchell', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(4, 'Susana', 'Ruecker', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(6, 'Pamela', 'Moen', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(8, 'Piper', 'Feest', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(9, 'Adolphus', 'Hyatt', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(10, 'Chaya', 'Romaguera', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(11, 'Darby', 'Heidenreich', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(12, 'Glennie', 'Kemmer', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(13, 'Dewitt', 'Wisoky', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(14, 'Violette', 'Murphy', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(15, 'Granville', 'Stiedemann', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(16, 'Mary', 'Bauch', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(17, 'Craig', 'Stehr', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(18, 'Melody', 'Hagenes', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(19, 'Cathryn', 'Conn', '2024-10-03 09:38:06', '2024-10-03 09:38:06'),
(21, 'Dawid', 'Barnas', '2024-10-03 12:06:40', '2024-10-03 12:06:40');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_03_112242_create_clients_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PXPRZUcMTX0LrXruGyYHcEFtWJLklGwKJsX4IWYn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGdEV29LTENZMFhRYUE0ZkZNd0hvQ3Bpb3pPeFhubHlUN0ZXRVMzdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1727970181);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeksy dla tabeli `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeksy dla tabeli `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeksy dla tabeli `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT dla tabeli `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
