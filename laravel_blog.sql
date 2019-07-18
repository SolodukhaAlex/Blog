-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июл 18 2019 г., 11:16
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description_short`, `description`, `image`, `image_show`, `meta_title`, `meta_description`, `meta_keyword`, `published`, `viewed`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(2, 'Вторая новость', 'vtoraya-novost-1607191957', '<p><strong>Краткое описание</strong></p>', '<p><s><em><strong>Полное описание</strong></em></s></p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 1, NULL, 1, 1, '2019-07-16 16:57:50', '2019-07-17 13:30:20'),
(3, 'Первая', 'pervaya-1707190631', '<p>фычфчфыч</p>', '<p>чффычфыч</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 0, NULL, 1, NULL, '2019-07-17 03:31:01', '2019-07-17 03:31:01'),
(5, 'Первая новость', 'pervaya-yfvfyv-1707190631', '<p>Краткое описание</p>', '<p>Полное описание</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 1, NULL, 1, 1, '2019-07-17 03:31:41', '2019-07-17 13:29:51'),
(6, 'Первая', 'pervaya-1707190632', '<p>фыфыс</p>', '<p>фысфыс</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 0, NULL, 1, NULL, '2019-07-17 03:32:54', '2019-07-17 03:32:54'),
(7, 'Первая', 'pervaya-1707190636', '<p>Опача</p>', '<p>Смотри</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 1, NULL, 1, 1, '2019-07-17 03:36:36', '2019-07-17 13:25:17'),
(8, 'Супер первая', 'super-pervaya-1707190636', '<p>Супер первая</p>', '<p><em>Полное описание. Супер первая</em></p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 1, NULL, 1, 1, '2019-07-17 03:36:51', '2019-07-17 13:31:48'),
(9, 'Событие в мире моды', 'yvs-1707190637', '<p>Событие в мире моды</p>', '<p><strong>Полное описание.&nbsp;</strong>Событие в мире моды</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 1, NULL, 1, 1, '2019-07-17 03:37:04', '2019-07-17 13:31:06'),
(10, 'Супер первая', 'super-pervaya-1707190637', '<p>Супер первая</p>', '<p>Полное описание. Супер первая</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 0, NULL, 1, 1, '2019-07-17 03:37:18', '2019-07-17 13:31:26'),
(11, 'пакетов', 'paketov-1707190637', '<p>ывс</p>', '<p>ывс</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 0, NULL, 1, NULL, '2019-07-17 03:37:29', '2019-07-17 03:37:29'),
(12, 'Вторая', 'vtoraya-1707190637', '<p>ывс</p>', '<p>ывс</p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 0, NULL, 1, NULL, '2019-07-17 03:37:38', '2019-07-17 03:37:38'),
(14, 'Интересно знать', 'zborka-paketov-1707190638', '<p>Название интересной категории</p>\r\n\r\n<p><img alt=\"тратата\" src=\"https://s.0629.com.ua/section/cataloglogo/upload/images/catalog/000/001/321/winner_5ccdb6c10eba9.png\" style=\"height:240px; width:239px\" /></p>', '<p>Полное описание&nbsp;интересной категории, много умного текста</p>\r\n\r\n<p><img alt=\"\" src=\"https://s.0629.com.ua/section/cataloglogo/upload/images/catalog/000/001/321/winner_5ccdb6c10eba9.png\" style=\"height:240px; width:239px\" /></p>', NULL, NULL, 'Мета заголовок', 'Мета описание', 'Слово, проверка', 1, NULL, 1, 1, '2019-07-17 03:38:24', '2019-07-17 16:22:48');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Первая категория', 'pervaya-1607191554', 0, 1, NULL, NULL, '2019-07-16 12:54:11', '2019-07-17 13:14:14'),
(3, 'Третья категория', 'tretya-1607191557', 0, 1, NULL, NULL, '2019-07-16 12:57:00', '2019-07-17 13:14:23'),
(4, 'Четвёртая', 'chetvertaya-1607191602', 2, 1, NULL, NULL, '2019-07-16 13:02:12', '2019-07-16 13:02:12'),
(5, 'Первая', 'pervaya-1707191257', 3, 1, NULL, NULL, '2019-07-17 09:57:18', '2019-07-17 10:12:20'),
(6, 'Интересная категория', 'kakaya-to-1707191337', 0, 1, NULL, NULL, '2019-07-17 10:37:59', '2019-07-17 13:28:53');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `category_id` int(11) NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`category_id`, `categoryable_id`, `categoryable_type`) VALUES
(1, 6, 'App\\Article'),
(1, 11, 'App\\Article'),
(1, 12, 'App\\Article'),
(5, 7, 'App\\Article'),
(1, 5, 'App\\Article'),
(1, 2, 'App\\Article'),
(1, 9, 'App\\Article'),
(3, 10, 'App\\Article'),
(1, 8, 'App\\Article'),
(1, 14, 'App\\Article');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_16_132621_create_categories_table', 2),
(4, '2019_07_16_173845_create_articles_table', 3),
(5, '2019_07_16_185852_create_categoryable_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Solodudukha', 'solodukha.as@gmail.com', NULL, '$2y$10$EggsdPHsd/bvQLmyU79t4OtLIw6wWbpa9FTHK2Vh4V7jqqjihEuO.', NULL, '2019-07-16 09:06:44', '2019-07-18 04:47:39');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
