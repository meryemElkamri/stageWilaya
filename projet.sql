-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 04:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diplomes`
--

CREATE TABLE `diplomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diplomes`
--

INSERT INTO `diplomes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technicien', '2024-04-20 17:14:59', '2024-04-20 17:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_div` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `nom_div`, `created_at`, `updated_at`) VALUES
(1, 'DSICG', '2024-04-20 17:12:09', '2024-04-20 17:12:09'),
(2, 'DRH', '2024-04-20 17:12:19', '2024-04-20 17:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `etablissements`
--

CREATE TABLE `etablissements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etablissements`
--

INSERT INTO `etablissements` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ISTA NTIC SYBA', '2024-04-20 17:14:13', '2024-04-20 17:14:13'),
(2, 'ISTJ', '2024-04-20 17:14:40', '2024-04-20 17:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `groupes`
--

CREATE TABLE `groupes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num_gr` varchar(255) NOT NULL,
  `années_scolaire` varchar(255) NOT NULL,
  `etat` varchar(30) NOT NULL DEFAULT 'inactif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groupes`
--

INSERT INTO `groupes` (`id`, `num_gr`, `années_scolaire`, `etat`, `created_at`, `updated_at`) VALUES
(14, '01', '2024-01-01', 'archive', '2024-04-25 21:43:23', '2024-04-26 09:19:20'),
(15, '02', '2024-02-01', 'actif', '2024-04-25 21:43:49', '2024-04-25 21:43:49'),
(16, '03', '2024-03-01', 'actif', '2024-04-25 21:44:02', '2024-04-25 21:44:02'),
(17, '04', '2024-04-01', 'actif', '2024-04-25 21:44:15', '2024-04-25 21:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 2),
(3, '0001_01_01_000002_create_jobs_table', 3),
(4, '2024_04_17_002731_create_thematiques_table', 4),
(5, '2024_04_17_002541_create_projets_table', 5),
(6, '2024_04_17_105636_create_diplomes_table', 6),
(7, '2024_04_17_120110_add_thematique_id_to_projets_table', 7),
(8, '2024_04_17_122815_create_specialites_table', 8),
(9, '2024_04_18_082755_create_etablissements_table', 9),
(10, '2024_04_18_144151_create_groupes_table', 10),
(13, '2024_04_18_145209_create_stagiaires_table', 11),
(14, '2024_04_20_171334_stagiaire_groupes', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objet` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT 0,
  `commentaire` text DEFAULT NULL,
  `cahier_de_charge` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thematique_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`id`, `objet`, `description`, `statut`, `commentaire`, `cahier_de_charge`, `created_at`, `updated_at`, `thematique_id`) VALUES
(3, 'gestion des stagiaires et des projets', 'description', 0, 'aucun', 'Cahier de charge.docx', '2024-04-25 21:37:12', '2024-04-25 21:39:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('d4DWbfjXbxjT4fY81BNWAzcOUlDKZxyqsB1GEbM9', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTEJmN3ZBalNmZ3Q5ME04Qjh3bmk4bXk5Tm1ob0RtUlhlOW9hM1FHSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTExOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzcG9uc2FibGUvc3RhZ2lhaXJlcz9kaXBsb21lPSZkaXZpc2lvbj0yJmVuY2FkcmFudD01JmV0YWJsaXNzZW1lbnQ9JnByb2pldD0mc3BlY2lhbGl0ZT0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1714139171),
('nSmcHMSdzqNe8CYcE1E2cwmePpluhZxaZcnfcuG2', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ1dzd2VSYndEWHVHTVZkYjlsOUJRZ1RXeWpYb3J6YmxnMmh3VnlMZSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2VuY2FkcmFudC9zdGFnaWFpcmVzL2luZGV4Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW5jYWRyYW50L3N0YWdpYWlyZXMvaW5kZXg/ZGlwbG9tZT0mZGl2aXNpb249MiZldGFibGlzc2VtZW50PSZwcm9qZXQ9JnNwZWNpYWxpdGU9Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1714133232);

-- --------------------------------------------------------

--
-- Table structure for table `specialites`
--

CREATE TABLE `specialites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialites`
--

INSERT INTO `specialites` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DEVELOPPEMENT', '2024-04-20 17:15:28', '2024-04-20 17:15:28'),
(2, 'INFRASTRICTURE', '2024-04-20 17:15:48', '2024-04-20 17:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `id_etablissement` bigint(20) UNSIGNED DEFAULT NULL,
  `id_division` bigint(20) UNSIGNED DEFAULT NULL,
  `id_diplome` bigint(20) UNSIGNED DEFAULT NULL,
  `id_specialite` bigint(20) UNSIGNED DEFAULT NULL,
  `id_projet` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stagiaires`
--

INSERT INTO `stagiaires` (`id`, `nom`, `cin`, `email`, `telephone`, `id_etablissement`, `id_division`, `id_diplome`, `id_specialite`, `id_projet`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Oucheraa Lamya', 'EE937160', 'lamyaexo12@gmail.com', '0643335955', 1, 1, 1, 1, 3, 5, '2024-04-25 21:48:16', '2024-04-25 21:48:16'),
(3, 'meryem Elkamri', 'EE755766', 'meryem@gmail.com', '0625905103', 1, 1, 1, 1, 3, 5, '2024-04-25 22:17:13', '2024-04-25 22:17:13'),
(4, 'Zahira Bennaqte', 'EE825292', 'zahirabennaqte@gmail.com', '0607556844', 1, 1, 1, 1, 3, 5, '2024-04-25 22:18:42', '2024-04-26 08:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `stagiaire_groupes`
--

CREATE TABLE `stagiaire_groupes` (
  `id` int(11) NOT NULL,
  `id_stagiaire` bigint(20) UNSIGNED NOT NULL,
  `id_groupe` bigint(20) UNSIGNED NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `projet_complet` varchar(20) NOT NULL DEFAULT 'non complet',
  `travail_satisfaisant` enum('faible','moyen','bien','tres bien') NOT NULL DEFAULT 'moyen',
  `note` double NOT NULL DEFAULT 0,
  `piece` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`piece`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stagiaire_groupes`
--

INSERT INTO `stagiaire_groupes` (`id`, `id_stagiaire`, `id_groupe`, `date_debut`, `date_fin`, `projet_complet`, `travail_satisfaisant`, `note`, `piece`, `created_at`, `updated_at`) VALUES
(1, 1, 17, '2024-04-01', '2024-04-26', 'complet', 'tres bien', 60, '[\"uploads\\/CV1.pdf\"]', '2024-04-25 21:48:17', '2024-04-26 07:53:01'),
(3, 3, 17, '2024-04-01', '2024-04-26', 'complet', 'tres bien', 60, '[\"uploads\\/MonCV.pdf\"]', '2024-04-25 22:17:13', '2024-04-26 07:54:42'),
(4, 4, 17, '2024-04-01', '2024-04-26', 'complet', 'tres bien', 60, '[\"uploads\\/MonCV.pdf\"]', '2024-04-25 22:18:42', '2024-04-26 08:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `thematiques`
--

CREATE TABLE `thematiques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thematiques`
--

INSERT INTO `thematiques` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Informatique', '2024-04-20 17:16:27', '2024-04-20 17:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `division_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$bSpIcVcC42fT50x580AWzOq0YQIWqd.yUNYeQaBSDKLwt2l7c1xMi', 'admin', NULL, NULL, NULL, NULL),
(5, 'Hayat Atanane', 'atanane.ha@gmail.com', NULL, '$2y$12$VLK8MHOISuv7LVtXoU743uI2S5TKP/bWaWYW5dNQt7YbtiMO.N4C6', 'encadrant', 1, NULL, '2024-04-25 21:35:15', '2024-04-25 21:35:15'),
(6, 'Responsable', 'responsable@gmail.com', NULL, '$2y$12$Wy6QQga2NzmtmC6/VMOBc.DpQO1YjjkGkDDkRwNm/V5oglElZThQ2', 'responsable', 1, NULL, '2024-04-25 21:35:56', '2024-04-26 10:08:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `diplomes`
--
ALTER TABLE `diplomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etablissements`
--
ALTER TABLE `etablissements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projets_thematique_id_foreign` (`thematique_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stagiaires_cin_unique` (`cin`),
  ADD UNIQUE KEY `stagiaires_email_unique` (`email`),
  ADD KEY `stagiaires_id_etablissement_foreign` (`id_etablissement`),
  ADD KEY `stagiaires_id_division_foreign` (`id_division`),
  ADD KEY `stagiaires_id_diplome_foreign` (`id_diplome`),
  ADD KEY `stagiaires_id_specialite_foreign` (`id_specialite`),
  ADD KEY `stagiaires_id_projet_foreign` (`id_projet`),
  ADD KEY `stagiaires_id_user_foreign` (`id_user`);

--
-- Indexes for table `stagiaire_groupes`
--
ALTER TABLE `stagiaire_groupes`
  ADD PRIMARY KEY (`id_stagiaire`,`id_groupe`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_groupe` (`id_groupe`);

--
-- Indexes for table `thematiques`
--
ALTER TABLE `thematiques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_division_id_foreign` (`division_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diplomes`
--
ALTER TABLE `diplomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `etablissements`
--
ALTER TABLE `etablissements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stagiaire_groupes`
--
ALTER TABLE `stagiaire_groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thematiques`
--
ALTER TABLE `thematiques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_thematique_id_foreign` FOREIGN KEY (`thematique_id`) REFERENCES `thematiques` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD CONSTRAINT `stagiaires_id_diplome_foreign` FOREIGN KEY (`id_diplome`) REFERENCES `diplomes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stagiaires_id_division_foreign` FOREIGN KEY (`id_division`) REFERENCES `divisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stagiaires_id_etablissement_foreign` FOREIGN KEY (`id_etablissement`) REFERENCES `etablissements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stagiaires_id_projet_foreign` FOREIGN KEY (`id_projet`) REFERENCES `projets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stagiaires_id_specialite_foreign` FOREIGN KEY (`id_specialite`) REFERENCES `specialites` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stagiaires_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `stagiaire_groupes`
--
ALTER TABLE `stagiaire_groupes`
  ADD CONSTRAINT `stagiaire_groupes_id_groupe_foreign` FOREIGN KEY (`id_groupe`) REFERENCES `groupes` (`id`),
  ADD CONSTRAINT `stagiaire_groupes_id_stagiaire_foreign` FOREIGN KEY (`id_stagiaire`) REFERENCES `stagiaires` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
