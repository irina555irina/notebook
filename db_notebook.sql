-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 10 2023 г., 10:52
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `notebook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_08_03_092545_create_notebooks_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notebooks`
--

CREATE TABLE `notebooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notebooks`
--

INSERT INTO `notebooks` (`id`, `name`, `company`, `phone`, `email`, `birthday`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Nya Nikolaus', 'aperiam', 'nhpH0NdYralaXPl', 'bjohnston@example.org', '2023-08-10', 'images/nz9mXCxr0ppb1sGaZeIh.jpeg', '2023-08-09 22:51:27', '2023-08-09 22:51:27'),
(2, 'Prof. Mckenna Bechtelar', 'possimus', 'ip54yZKNbyY6jMi', 'elvis70@example.org', '2023-08-10', 'images/ex5NkbennYPpkYagR8EB.jpeg', '2023-08-09 22:51:27', '2023-08-09 22:51:27'),
(3, 'Kyra Legros', 'voluptatem', '1Rr02LT3JBaE9Pu', 'whudson@example.org', '2023-08-10', 'images/zwzDXKavdjxRocvr6jgq.jpeg', '2023-08-09 22:51:27', '2023-08-09 22:51:27'),
(4, 'Arielle Prosacco', 'iste', 'G0raHxSnt8ilNFl', 'deja81@example.org', '2023-08-10', 'images/rw6cLSAQVKBBydzsQtFs.jpeg', '2023-08-09 22:51:27', '2023-08-09 22:51:27'),
(5, 'Mariah Renner', 'non', 'v2oiBJJiNmzLe15', 'kirsten24@example.com', '2023-08-10', 'images/9JSZXWUyg3XdSB7tEWpz.jpeg', '2023-08-09 22:51:27', '2023-08-09 22:51:27'),
(6, 'Danny Will', 'voluptates', '144EEyKOLL6TU4d', 'bernice13@example.net', '2023-08-10', 'images/rOygNrYrzafwM2OgEeY3.jpeg', '2023-08-09 22:51:28', '2023-08-09 22:51:28'),
(7, 'Shanie McCullough', 'voluptatem', 'uiXDazevyglaCVX', 'kelton.mckenzie@example.org', '2023-08-10', 'images/4zIB1Ltx9luIuYinuXWs.jpeg', '2023-08-09 22:51:28', '2023-08-09 22:51:28'),
(8, 'Marcia Anderson', 'labore', 'oDgbecvHvvqNeKL', 'will.adriel@example.org', '2023-08-10', 'images/V3OqWQjGJQCtcrLGFK4j.jpeg', '2023-08-09 22:51:28', '2023-08-09 22:51:28'),
(9, 'Dixie Reilly', 'itaque', 'EtiJk1ClkX7OJrw', 'cecile66@example.net', '2023-08-10', 'images/59Y0fnnKN6huHEJyQQuA.jpeg', '2023-08-09 22:51:29', '2023-08-09 22:51:29'),
(10, 'Ibrahim Koch', 'deserunt', 'cn20vBIQlPD5L8d', 'nchamplin@example.net', '2023-08-10', 'images/5oiV4iRTP9MXMeSbJktw.jpeg', '2023-08-09 22:51:29', '2023-08-09 22:51:29'),
(11, 'Mavis Sawayn', 'optio', 'uyFOfSo905UPKz2', 'blaise24@example.com', '2023-08-10', 'images/WL5PcCzqYIulDS00stAk.jpeg', '2023-08-09 22:51:29', '2023-08-09 22:51:29'),
(12, 'Mr. Gino Orn III', 'quod', '7Sy7FkFpBPSCOtU', 'david.davis@example.com', '2023-08-10', 'images/0i5zPwlurwjdMqzdQRR5.jpeg', '2023-08-09 22:51:29', '2023-08-09 22:51:29'),
(13, 'Bryce Rohan', 'velit', 'F42Q8pEF9dFzK6V', 'roslyn95@example.org', '2023-08-10', 'images/hEX2DnWKzEzJibyzmMUs.jpeg', '2023-08-09 22:51:29', '2023-08-09 22:51:29'),
(14, 'Omari Jacobi', 'sit', 'm8jNeZjibbX106a', 'myrtis25@example.net', '2023-08-10', 'images/yihPDm1b39wgv3xurfMx.jpeg', '2023-08-09 22:51:30', '2023-08-09 22:51:30'),
(16, 'Rollin Dickens', 'eos', 'HKxgm4VKQKqiMQK', 'wcrist@example.net', '2023-08-10', 'images/laFAskJDUHrpX0HffNam.jpeg', '2023-08-09 22:51:30', '2023-08-09 22:51:30'),
(17, 'Reginald Fisher', 'qui', 'mwmvRiWESESKXcP', 'obode@example.com', '2023-08-10', 'images/ueEOYgdCTDrkTzzoaGrp.jpeg', '2023-08-09 22:51:30', '2023-08-09 22:51:30'),
(18, 'Ransom Lang', 'molestiae', 'rI2NfJKtvTbrZE1', 'ned.batz@example.com', '2023-08-10', 'images/1WN0D8I7dqXxN1BtCYRg.jpeg', '2023-08-09 22:51:30', '2023-08-09 22:51:30'),
(19, 'Dr. Marcia Steuber', 'nulla', 'PYGYtErXrAm2t2y', 'gerlach.stan@example.net', '2023-08-10', 'images/lLx30OsxrqqwgvQjyziw.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(20, 'Prof. Pete Batz', 'eum', 'T4YLbvryZSsFToz', 'jeromy.mills@example.org', '2023-08-10', 'images/DqvdwLYd2UmImNSLLB8U.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(21, 'Hermann Dickinson', 'et', 'HggW0OzYYn9scq8', 'emilia.jerde@example.net', '2023-08-10', 'images/pLxhxGGxWSvu0YIsnrO2.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(22, 'Alfreda Tremblay', 'ipsam', 'qlGiNyVrQbuzOBv', 'graham.ryan@example.net', '2023-08-10', 'images/IDUD0hJ5mutBd4p1KGBd.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(23, 'Aron Powlowski', 'sed', 'a0coIA5ky2R8nFN', 'bogan.shannon@example.com', '2023-08-10', 'images/gxhCdE9mVh8nfoTl44Ar.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(24, 'Savannah Braun', 'dolorem', 'EsIxUBY2I0iWt0B', 'scormier@example.net', '2023-08-10', 'images/svQHSNdcKYzLGu3tTczc.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(25, 'Noah Schneider', 'ipsa', 'uD0SbySgvfDRlWi', 'richmond.ward@example.net', '2023-08-10', 'images/n0maqqZWjj8iS1JekLJ8.jpeg', '2023-08-09 22:51:31', '2023-08-09 22:51:31'),
(26, 'Mr. Frederick Farrell I', 'quia', 'Y69SYVz6jjD3XhV', 'klebsack@example.net', '2023-08-10', 'images/Ezur7rBRWgU26ofO2YRn.jpeg', '2023-08-09 22:51:32', '2023-08-09 22:51:32'),
(27, 'Prof. Candida Farrell V', 'libero', 'TcX30XsvbsQF6EH', 'guiseppe.feeney@example.org', '2023-08-10', 'images/cZfL3D4u4E6MRIf8jM0D.jpeg', '2023-08-09 22:51:32', '2023-08-09 22:51:32'),
(28, 'Devon Douglas', 'dolor', 'kol5yztbRbe4i0h', 'kelly92@example.org', '2023-08-10', 'images/ZH4sz6BdbwXXvjXFcp9t.jpeg', '2023-08-09 22:51:32', '2023-08-09 22:51:32'),
(29, 'Prof. Edison Trantow III', 'blanditiis', 'NxBszoTrKVUTrwx', 'edgar78@example.com', '2023-08-10', 'images/HkYXZRoswk3tt5jaknwp.jpeg', '2023-08-09 22:51:32', '2023-08-09 22:51:32'),
(30, 'Kaleb Veum', 'vel', '6ggouRv6ZfSCvpI', 'pdenesik@example.org', '2023-08-10', 'images/JyI5GxCUSPio4gXiZfb1.jpeg', '2023-08-09 22:51:32', '2023-08-09 22:51:32'),
(31, 'Sally Pretty Main', 'Pretty', '0123', 'sallysallymain@yandex.ru', '2000-09-08', 'sally.png', '2023-08-09 22:56:23', '2023-08-09 23:39:17');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notebooks`
--
ALTER TABLE `notebooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notebooks_name_unique` (`name`),
  ADD UNIQUE KEY `notebooks_phone_unique` (`phone`),
  ADD UNIQUE KEY `notebooks_email_unique` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `notebooks`
--
ALTER TABLE `notebooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
