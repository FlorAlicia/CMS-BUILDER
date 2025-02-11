-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2025 a las 23:13:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms-builder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `rol_admin` text DEFAULT NULL,
  `permissions_admin` text DEFAULT NULL,
  `email_admin` text DEFAULT NULL,
  `password_admin` text DEFAULT NULL,
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `status_admin` int(11) DEFAULT 1,
  `title_admin` text DEFAULT NULL,
  `symbol_admin` text DEFAULT NULL,
  `font_admin` text DEFAULT NULL,
  `color_admin` text DEFAULT NULL,
  `back_admin` text DEFAULT NULL,
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `rol_admin`, `permissions_admin`, `email_admin`, `password_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `date_created_admin`, `date_updated_admin`) VALUES
(1, 'superadmin', '{\"todo\":\"on\"}', 'superadmin@dashboard.com', '$2a$07$azybxcags23425sdg23sdel1a55zzrfoipB45budVxu0ayOGq9PmO', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzkyMjE5MDMsImV4cCI6MTczOTMwODMwMywiZGF0YSI6eyJpZCI6MSwiZW1haWwiOiJzdXBlcmFkbWluQGRhc2hib2FyZC5jb20ifX0.wjmfCXNElaAYrdYlJDJexvWOei-maiY4AA4Hwl-AuX8', '1739308303', 1, 'Dashboard', '<i class=\"bi bi-database\"></i>', '<link href=\"https://fonts.googleapis.com/css2?family=IBM Plex Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap\" rel=\"stylesheet\">', '#3849c7', 'http://cms-builder-dash.com/views/assets/files/67a9452d0732241.jpg', '2025-02-09', '2025-02-10 22:06:50'),
(3, 'admin', '{\"todo\":\"on\"}', 'admin@dashboard.com', '', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzkxNjk4ODgsImV4cCI6MTczOTI1NjI4OCwiZGF0YSI6eyJpZCI6MywiZW1haWwiOiJhZG1pbkBkYXNoYm9hcmQuY29tIn19.rfOuIbiGk4sZZlxe1ViLA9Yhzwtnox2Y9a-nBI4ZU-A', '1739256288', 1, '', '', '', '', '', '2025-02-10', '2025-02-10 06:44:48'),
(4, 'editor', '{\"categorias\":\"on\",\"fotos\":\"on\"}', 'editor1@dashboard.com', '', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzkxNjkzNDcsImV4cCI6MTczOTI1NTc0NywiZGF0YSI6eyJpZCI6NCwiZW1haWwiOiJlZGl0b3IxQGRhc2hib2FyZC5jb20ifX0.YvLsyG1B45hMLqZB0FtnxWph1YkWdNPS4RJYXplNsUk', '1739255747', 1, '', '', '', '', '', '2025-02-10', '2025-02-10 06:35:47'),
(5, 'editor', '%7B%22blog%22%3A%22on%22%7D', 'editor2@dashboard.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MzkxNjkyNjIsImV4cCI6MTczOTI1NTY2MiwiZGF0YSI6eyJpZCI6NSwiZW1haWwiOiJlZGl0b3IyQGRhc2hib2FyZC5jb20ifX0.zvA98BiWO-jH7wRbZE6t80090Py42HVfKwu-gx6RtW0', '1739255662', 1, '', '', '', '', '', '2025-02-10', '2025-02-10 06:34:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id_blog` int(11) NOT NULL,
  `title_blog` text DEFAULT NULL,
  `gallery_blog` text DEFAULT NULL,
  `tags_blog` text DEFAULT NULL,
  `abstract_blog` text DEFAULT NULL,
  `url_blog` text DEFAULT NULL,
  `article_blog` longtext DEFAULT NULL,
  `date_created_blog` date DEFAULT NULL,
  `date_updated_blog` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id_blog`, `title_blog`, `gallery_blog`, `tags_blog`, `abstract_blog`, `url_blog`, `article_blog`, `date_created_blog`, `date_updated_blog`) VALUES
(1, 'Blog post title', 'http://cms-builder-dash.com/views/assets/files/67a9452d76bec41.jpg,http://cms-builder-dash.com/views/assets/files/67a9452cf17a240.jpg,http://cms-builder-dash.com/views/assets/files/67a9452d865d741.jpg', 'design,photography,fashio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tristique congue diam, a laoreet sem bibendum a. Donec ut pharetra libero. Etiam rhoncus ut ligula eu volutpat. Aenean ut posuere elit. Aliquam sit amet gravida libero, non gravida libero. Integer gravida neque et mauris tempor, a malesuada neque fermentum. Duis quis mauris ut massa congue semper. Nulla vitae eleifend nibh.', 'blog-post-title', '<blockquote style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" class=\"blockquote\"><p><i style=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis massa in libero vulputate malesuada. Donec venenatis facilisis tellus gravida vulputate.</i></p></blockquote><p><span style=\"font-family: var(--bs-font-sans-serif); font-size: 1rem; color: rgb(0, 0, 0); text-align: justify;\">Magna vel vulputate semper. Aliquam bibendum quis eros a tincidunt. Quisque nisl orci, faucibus at velit quis, tincidunt efficitur lectus. Maecenas porta sit amet massa ac pharetra. Pellentesque eu tellus libero. Duis at tincidunt augue. Cras ac nisl at eros hendrerit ornare. Suspendisse ut faucibus purus. Aliquam eu dolor sit amet quam porttitor condimentum.</span></p><h5 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \">Sed imperdiet suscipit metus sodales imperdiet. Cras sed justo sit amet dolor eleifend dictum. Sed a nibh urna. Sed sagittis vitae sem ac aliquet.</h5><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Nullam interdum nec ligula vestibulum fringilla. Mauris id quam vel lorem viverra volutpat. Vivamus sem nibh, maximus et sagittis gravida, porta sed lacus. Aenean consequat gravida eleifend.</p>', '2025-02-10', '2025-02-10 00:50:45'),
(2, 'Living+my+dream', 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452d76bec41.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452cf17a240.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452d865d741.jpg', 'design%2Cphotography%2Cfashio', 'Lorem+ipsum+dolor+sit+amet%2C+consectetur+adipiscing+elit.+Etiam+tristique+congue+diam%2C+a+laoreet+sem+bibendum+a.+Donec+ut+pharetra+libero.+Etiam+rhoncus+ut+ligula+eu+volutpat.+Aenean+ut+posuere+elit.+Aliquam+sit+amet+gravida+libero%2C+non+gravida+libero.+Integer+gravida+neque+et+mauris+tempor%2C+a+malesuada+neque+fermentum.+Duis+quis+mauris+ut+massa+congue+semper.+Nulla+vitae+eleifend+nibh.', 'living-my-dream', '%3Cblockquote+style%3D%22margin-right%3A+0px%3B+margin-bottom%3A+15px%3B+margin-left%3A+0px%3B+padding%3A+0px%3B+text-align%3A+justify%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%22+class%3D%22blockquote%22%3E%3Cp%3E%3Ci+style%3D%22%22%3ELorem+ipsum+dolor+sit+amet%2C+consectetur+adipiscing+elit.+Nam+quis+massa+in+libero+vulputate+malesuada.+Donec+venenatis+facilisis+tellus+gravida+vulputate.%3C%2Fi%3E%3C%2Fp%3E%3C%2Fblockquote%3E%3Cp%3E%3Cspan+style%3D%22font-family%3A+var%28--bs-font-sans-serif%29%3B+font-size%3A+1rem%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+text-align%3A+justify%3B%22%3EMagna+vel+vulputate+semper.+Aliquam+bibendum+quis+eros+a+tincidunt.+Quisque+nisl+orci%2C+faucibus+at+velit+quis%2C+tincidunt+efficitur+lectus.+Maecenas+porta+sit+amet+massa+ac+pharetra.+Pellentesque+eu+tellus+libero.+Duis+at+tincidunt+augue.+Cras+ac+nisl+at+eros+hendrerit+ornare.+Suspendisse+ut+faucibus+purus.+Aliquam+eu+dolor+sit+amet+quam+porttitor+condimentum.%3C%2Fspan%3E%3C%2Fp%3E%3Ch5+style%3D%22margin-right%3A+0px%3B+margin-bottom%3A+15px%3B+margin-left%3A+0px%3B+padding%3A+0px%3B+text-align%3A+justify%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%22%3ESed+imperdiet+suscipit+metus+sodales+imperdiet.+Cras+sed+justo+sit+amet+dolor+eleifend+dictum.+Sed+a+nibh+urna.+Sed+sagittis+vitae+sem+ac+aliquet.%3C%2Fh5%3E%3Cp+style%3D%22margin-right%3A+0px%3B+margin-bottom%3A+15px%3B+margin-left%3A+0px%3B+padding%3A+0px%3B+text-align%3A+justify%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%22+open%3D%22%22+sans%22%2C%3D%22%22+arial%2C%3D%22%22+sans-serif%3B%3D%22%22+font-size%3A%3D%22%22+14px%3B%22%3D%22%22%3ENullam+interdum+nec+ligula+vestibulum+fringilla.+Mauris+id+quam+vel+lorem+viverra+volutpat.+Vivamus+sem+nibh%2C+maximus+et+sagittis+gravida%2C+porta+sed+lacus.+Aenean+consequat+gravida+eleifend.%3C%2Fp%3E', '2025-02-10', '2025-02-10 00:52:13'),
(3, 'Sunny+side+up', 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452d76bec41.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452cf17a240.jpg%2Chttp%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452d865d741.jpg', 'design%2Cphotography%2Cfashio', 'Lorem+ipsum+dolor+sit+amet%2C+consectetur+adipiscing+elit.+Etiam+tristique+congue+diam%2C+a+laoreet+sem+bibendum+a.+Donec+ut+pharetra+libero.+Etiam+rhoncus+ut+ligula+eu+volutpat.+Aenean+ut+posuere+elit.+Aliquam+sit+amet+gravida+libero%2C+non+gravida+libero.+Integer+gravida+neque+et+mauris+tempor%2C+a+malesuada+neque+fermentum.+Duis+quis+mauris+ut+massa+congue+semper.+Nulla+vitae+eleifend+nibh.', 'sunny-side-up', '%3Cblockquote+style%3D%22margin-right%3A+0px%3B+margin-bottom%3A+15px%3B+margin-left%3A+0px%3B+padding%3A+0px%3B+text-align%3A+justify%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%22+class%3D%22blockquote%22%3E%3Cp%3E%3Ci+style%3D%22%22%3ELorem+ipsum+dolor+sit+amet%2C+consectetur+adipiscing+elit.+Nam+quis+massa+in+libero+vulputate+malesuada.+Donec+venenatis+facilisis+tellus+gravida+vulputate.%3C%2Fi%3E%3C%2Fp%3E%3C%2Fblockquote%3E%3Cp%3E%3Cspan+style%3D%22font-family%3A+var%28--bs-font-sans-serif%29%3B+font-size%3A+1rem%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+text-align%3A+justify%3B%22%3EMagna+vel+vulputate+semper.+Aliquam+bibendum+quis+eros+a+tincidunt.+Quisque+nisl+orci%2C+faucibus+at+velit+quis%2C+tincidunt+efficitur+lectus.+Maecenas+porta+sit+amet+massa+ac+pharetra.+Pellentesque+eu+tellus+libero.+Duis+at+tincidunt+augue.+Cras+ac+nisl+at+eros+hendrerit+ornare.+Suspendisse+ut+faucibus+purus.+Aliquam+eu+dolor+sit+amet+quam+porttitor+condimentum.%3C%2Fspan%3E%3C%2Fp%3E%3Ch5+style%3D%22margin-right%3A+0px%3B+margin-bottom%3A+15px%3B+margin-left%3A+0px%3B+padding%3A+0px%3B+text-align%3A+justify%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%22%3ESed+imperdiet+suscipit+metus+sodales+imperdiet.+Cras+sed+justo+sit+amet+dolor+eleifend+dictum.+Sed+a+nibh+urna.+Sed+sagittis+vitae+sem+ac+aliquet.%3C%2Fh5%3E%3Cp+style%3D%22margin-right%3A+0px%3B+margin-bottom%3A+15px%3B+margin-left%3A+0px%3B+padding%3A+0px%3B+text-align%3A+justify%3B+color%3A+rgb%280%2C+0%2C+0%29%3B+font-family%3A+%22+open%3D%22%22+sans%22%2C%3D%22%22+arial%2C%3D%22%22+sans-serif%3B%3D%22%22+font-size%3A%3D%22%22+14px%3B%22%3D%22%22%3ENullam+interdum+nec+ligula+vestibulum+fringilla.+Mauris+id+quam+vel+lorem+viverra+volutpat.+Vivamus+sem+nibh%2C+maximus+et+sagittis+gravida%2C+porta+sed+lacus.+Aenean+consequat+gravida+eleifend.%3C%2Fp%3E', '2025-02-10', '2025-02-10 00:53:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `title_category` text DEFAULT NULL,
  `class_category` text DEFAULT NULL,
  `date_created_category` date DEFAULT NULL,
  `date_updated_category` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `title_category`, `class_category`, `date_created_category`, `date_updated_category`) VALUES
(1, 'Nature', 'nature', '2025-02-10', '2025-02-10 00:11:28'),
(2, 'Models', 'models', '2025-02-10', '2025-02-10 00:11:47'),
(3, 'People', 'people', '2025-02-10', '2025-02-10 00:12:21'),
(4, 'Outdoor', 'outdoor', '2025-02-10', '2025-02-10 00:12:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_empresa`
--

CREATE TABLE `clientes_empresa` (
  `id_clients` int(11) NOT NULL,
  `date_created_clients` date DEFAULT NULL,
  `date_updated_clients` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columns`
--

CREATE TABLE `columns` (
  `id_column` int(11) NOT NULL,
  `id_module_column` int(11) DEFAULT 0,
  `title_column` text DEFAULT NULL,
  `alias_column` text DEFAULT NULL,
  `type_column` text DEFAULT NULL,
  `matrix_column` text DEFAULT NULL,
  `visible_column` int(11) DEFAULT 1,
  `date_created_column` date DEFAULT NULL,
  `date_updated_column` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `columns`
--

INSERT INTO `columns` (`id_column`, `id_module_column`, `title_column`, `alias_column`, `type_column`, `matrix_column`, `visible_column`, `date_created_column`, `date_updated_column`) VALUES
(1, 2, 'rol_admin', 'rol', 'select', 'superadmin,admin,editor', 1, '2025-02-09', '2025-02-09 20:25:53'),
(2, 2, 'permissions_admin', 'permisos', 'object', '', 1, '2025-02-09', '2025-02-09 20:25:53'),
(3, 2, 'email_admin', 'email', 'email', '', 1, '2025-02-09', '2025-02-10 05:55:19'),
(4, 2, 'password_admin', 'pass', 'password', '', 0, '2025-02-09', '2025-02-10 05:26:46'),
(5, 2, 'token_admin', 'token', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:53'),
(6, 2, 'token_exp_admin', 'expiración', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:53'),
(7, 2, 'status_admin', 'estado', 'boolean', '', 1, '2025-02-09', '2025-02-09 20:25:53'),
(8, 2, 'title_admin', 'título', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:53'),
(9, 2, 'symbol_admin', 'simbolo', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:54'),
(10, 2, 'font_admin', 'tipografía', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:54'),
(11, 2, 'color_admin', 'color', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:54'),
(12, 2, 'back_admin', 'fondo', 'text', '', 0, '2025-02-09', '2025-02-09 20:25:54'),
(13, 29, 'name_profile', 'Nombre', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:12:42'),
(14, 29, 'about_profile', 'Perfil', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:12:42'),
(15, 29, 'phone_profile', 'Celular', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:12:42'),
(16, 29, 'email_profile', 'Email', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:12:43'),
(17, 29, 'image_profile', 'Imagen', 'image', NULL, 1, '2025-02-10', '2025-02-09 23:12:43'),
(18, 29, 'description_profile', 'Descripcion', 'textarea', NULL, 1, '2025-02-10', '2025-02-10 03:16:41'),
(19, 29, 'video_profile', 'Video', 'video', NULL, 1, '2025-02-10', '2025-02-09 23:12:43'),
(20, 29, 'social_profile', 'Redes', 'json', NULL, 0, '2025-02-10', '2025-02-10 03:00:41'),
(21, 31, 'title_category', 'Título', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:18:29'),
(22, 31, 'class_category', 'Clases CSS', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:18:29'),
(23, 33, 'file_photo', 'Foto', 'image', NULL, 1, '2025-02-10', '2025-02-09 23:21:33'),
(24, 33, 'title_photo', 'Título', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:21:34'),
(25, 33, 'description_photo', 'Descripción', 'textarea', NULL, 1, '2025-02-10', '2025-02-09 23:21:34'),
(26, 33, 'categories_photo', 'Categorías', 'array', NULL, 1, '2025-02-10', '2025-02-09 23:21:34'),
(27, 35, 'title_blog', 'Título', 'text', NULL, 1, '2025-02-10', '2025-02-09 23:26:39'),
(28, 35, 'gallery_blog', 'Galería', 'array', NULL, 1, '2025-02-10', '2025-02-10 03:26:05'),
(29, 35, 'tags_blog', 'Etiquetas', 'array', NULL, 1, '2025-02-10', '2025-02-10 00:46:25'),
(30, 35, 'abstract_blog', 'Resumen', 'textarea', NULL, 1, '2025-02-10', '2025-02-09 23:26:40'),
(31, 35, 'url_blog', 'Link', 'link', NULL, 1, '2025-02-10', '2025-02-09 23:26:40'),
(32, 35, 'article_blog', 'Artículo', 'code', NULL, 0, '2025-02-10', '2025-02-10 00:51:14'),
(33, 29, 'logo_profile', 'Logo', 'image', NULL, 1, '2025-02-10', '2025-02-10 00:53:58'),
(34, 33, 'id_category_photo', 'Rel. Categoría', 'relations', 'categories', 1, '2025-02-10', '2025-02-10 08:22:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `id_folder_file` int(11) DEFAULT 0,
  `name_file` text DEFAULT NULL,
  `extension_file` text DEFAULT NULL,
  `type_file` text DEFAULT NULL,
  `size_file` double DEFAULT 0,
  `link_file` text DEFAULT NULL,
  `thumbnail_vimeo_file` text DEFAULT NULL,
  `id_mailchimp_file` text DEFAULT NULL,
  `date_created_file` date DEFAULT NULL,
  `date_updated_file` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_folder_file`, `name_file`, `extension_file`, `type_file`, `size_file`, `link_file`, `thumbnail_vimeo_file`, `id_mailchimp_file`, `date_created_file`, `date_updated_file`) VALUES
(1, 1, '1 (2)', 'jpg', 'image/jpeg', 45011, 'http://cms-builder-dash.com/views/assets/files/67a94168d32f636.jpg', NULL, NULL, '2025-02-10', '2025-02-09 23:59:37'),
(2, 1, '19', 'jpg', 'image/jpeg', 333758, 'http://cms-builder-dash.com/views/assets/files/67a9452cee58140.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(3, 1, '20', 'jpg', 'image/jpeg', 243725, 'http://cms-builder-dash.com/views/assets/files/67a9452ceed6940.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(4, 1, '22', 'jpg', 'image/jpeg', 158467, 'http://cms-builder-dash.com/views/assets/files/67a9452cf17a240.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(5, 1, '15', 'jpg', 'image/jpeg', 390964, 'http://cms-builder-dash.com/views/assets/files/67a9452cee60040.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(6, 1, '23', 'jpg', 'image/jpeg', 136923, 'http://cms-builder-dash.com/views/assets/files/67a9452d0011741.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(7, 1, '17', 'jpg', 'image/jpeg', 206686, 'http://cms-builder-dash.com/views/assets/files/67a9452d0732241.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(8, 1, '24', 'jpg', 'image/jpeg', 163587, 'http://cms-builder-dash.com/views/assets/files/67a9452d3235541.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(9, 1, 'about-sb', 'jpg', 'image/jpeg', 53700, 'http://cms-builder-dash.com/views/assets/files/67a9452d4a6c841.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(10, 1, '25', 'jpg', 'image/jpeg', 94758, 'http://cms-builder-dash.com/views/assets/files/67a9452d3f7de41.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(11, 1, '1 (2)', 'jpg', 'image/jpeg', 45011, 'http://cms-builder-dash.com/views/assets/files/67a9452d4d82141.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(12, 1, 'video-banner', 'jpg', 'image/jpeg', 390964, 'http://cms-builder-dash.com/views/assets/files/67a9452d5d0a941.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(13, 1, '26', 'jpg', 'image/jpeg', 195415, 'http://cms-builder-dash.com/views/assets/files/67a9452d4694541.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(14, 1, '1', 'jpg', 'image/jpeg', 189034, 'http://cms-builder-dash.com/views/assets/files/67a9452d76bec41.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(15, 1, '2', 'jpg', 'image/jpeg', 102998, 'http://cms-builder-dash.com/views/assets/files/67a9452d838f141.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(16, 1, '4', 'jpg', 'image/jpeg', 186576, 'http://cms-builder-dash.com/views/assets/files/67a9452d865d741.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(17, 1, '5', 'jpg', 'image/jpeg', 353214, 'http://cms-builder-dash.com/views/assets/files/67a9452d9e94f41.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(18, 1, '7', 'jpg', 'image/jpeg', 223762, 'http://cms-builder-dash.com/views/assets/files/67a9452d923ea41.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(19, 1, '8', 'jpg', 'image/jpeg', 172754, 'http://cms-builder-dash.com/views/assets/files/67a9452db064b41.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:41'),
(20, 1, '11', 'jpg', 'image/jpeg', 228419, 'http://cms-builder-dash.com/views/assets/files/67a9452dd65e741.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:42'),
(21, 1, '10', 'jpg', 'image/jpeg', 310662, 'http://cms-builder-dash.com/views/assets/files/67a9452dd0d0641.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:42'),
(22, 1, '9', 'jpg', 'image/jpeg', 290364, 'http://cms-builder-dash.com/views/assets/files/67a9452dd904b41.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:42'),
(23, 1, '14', 'jpg', 'image/jpeg', 251635, 'http://cms-builder-dash.com/views/assets/files/67a9452de2db941.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:42'),
(24, 1, '12', 'jpg', 'image/jpeg', 102661, 'http://cms-builder-dash.com/views/assets/files/67a9452de43e841.jpg', NULL, NULL, '2025-02-10', '2025-02-10 00:15:42'),
(25, 1, 'logo', 'png', 'image/png', 3538, 'http://cms-builder-dash.com/views/assets/files/67a94e5085d2440.png', NULL, NULL, '2025-02-10', '2025-02-10 00:54:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id_folder` int(11) NOT NULL,
  `name_folder` text DEFAULT NULL,
  `size_folder` text DEFAULT NULL,
  `total_folder` double DEFAULT 0,
  `max_upload_folder` text DEFAULT NULL,
  `url_folder` text DEFAULT NULL,
  `keys_folder` text DEFAULT NULL,
  `date_created_folder` date DEFAULT NULL,
  `date_updated_folder` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id_folder`, `name_folder`, `size_folder`, `total_folder`, `max_upload_folder`, `url_folder`, `keys_folder`, `date_created_folder`, `date_updated_folder`) VALUES
(1, 'Server', '200000000000', 4874586, '500000000', 'http://cms-builder-dash.com', NULL, '2025-02-09', '2025-02-10 00:54:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id_module` int(11) NOT NULL,
  `id_page_module` int(11) DEFAULT 0,
  `type_module` text DEFAULT NULL,
  `title_module` text DEFAULT NULL,
  `suffix_module` text DEFAULT NULL,
  `content_module` text DEFAULT NULL,
  `width_module` int(11) DEFAULT 100,
  `editable_module` int(11) DEFAULT 1,
  `date_created_module` date DEFAULT NULL,
  `date_updated_module` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id_module`, `id_page_module`, `type_module`, `title_module`, `suffix_module`, `content_module`, `width_module`, `editable_module`, `date_created_module`, `date_updated_module`) VALUES
(1, 2, 'breadcrumbs', 'Administradores', NULL, NULL, 100, 1, '2025-02-09', '2025-02-09 20:25:52'),
(2, 2, 'tables', 'admins', 'admin', NULL, 100, 0, '2025-02-09', '2025-02-09 20:25:52'),
(28, 14, 'breadcrumbs', 'perfiles', '', '', 100, 1, '2025-02-10', '2025-02-10 01:40:43'),
(29, 14, 'tables', 'profiles', 'profile', '', 100, 1, '2025-02-10', '2025-02-09 23:12:42'),
(30, 15, 'breadcrumbs', 'categorías', '', '', 100, 1, '2025-02-10', '2025-02-09 23:16:17'),
(31, 15, 'tables', 'categories', 'category', '', 100, 1, '2025-02-10', '2025-02-09 23:18:29'),
(32, 16, 'breadcrumbs', 'fotos', '', '', 100, 1, '2025-02-10', '2025-02-09 23:19:56'),
(33, 16, 'tables', 'photos', 'photo', '', 100, 1, '2025-02-10', '2025-02-09 23:21:33'),
(34, 17, 'breadcrumbs', 'blog', '', '', 100, 1, '2025-02-10', '2025-02-09 23:24:10'),
(35, 17, 'tables', 'blogs', 'blog', '', 100, 1, '2025-02-10', '2025-02-09 23:26:39'),
(44, 1, 'metrics', 'categorías', '', '{\"type\":\"total\",\"table\":\"categories\", \"column\":\"id_category\",\"config\":\"unit\",\"icon\":\"bi bi-card-list\",\"color\":\"5, 195, 251\"  }', 33, 1, '2025-02-10', '2025-02-10 04:13:54'),
(45, 1, 'metrics', 'fotos', '', '{\"type\":\"total\",\"table\":\"photos\", \"column\":\"id_photo\",\"config\":\"unit\",\"icon\":\"bi bi-camera-fill\",\"color\":\"29, 216, 113\"  }', 33, 1, '2025-02-10', '2025-02-10 04:15:21'),
(46, 1, 'metrics', 'archivos', '', '{\"type\":\"total\",\"table\":\"files\", \"column\":\"id_file\",\"config\":\"unit\",\"icon\":\"bi bi-folder\",\"color\":\"137, 39, 236\"  }', 33, 1, '2025-02-10', '2025-02-10 04:16:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL,
  `title_page` text DEFAULT NULL,
  `url_page` text DEFAULT NULL,
  `icon_page` text DEFAULT NULL,
  `type_page` text DEFAULT NULL,
  `order_page` int(11) DEFAULT 1,
  `date_created_page` date DEFAULT NULL,
  `date_updated_page` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id_page`, `title_page`, `url_page`, `icon_page`, `type_page`, `order_page`, `date_created_page`, `date_updated_page`) VALUES
(1, 'Inicio', 'inicio', 'bi bi-house-door-fill', 'modules', 1, '2025-02-09', '2025-02-09 20:25:52'),
(2, 'Admins', 'admins', 'bi bi-person-fill-gear', 'modules', 2, '2025-02-09', '2025-02-09 20:25:52'),
(3, 'Archivos', 'archivos', 'bi bi-folder2-open', 'custom', 3, '2025-02-09', '2025-02-10 00:14:04'),
(14, 'Perfiles', 'perfiles', 'bi bi-person-badge', 'modules', 1000, '2025-02-10', '2025-02-09 23:08:03'),
(15, 'Categorías', 'categorias', 'bi bi-card-list', 'modules', 1000, '2025-02-10', '2025-02-09 23:15:45'),
(16, 'Fotos', 'fotos', 'bi bi-images', 'modules', 1000, '2025-02-10', '2025-02-09 23:19:44'),
(17, 'Blog', 'blog', 'bi bi-journal-richtext', 'modules', 1000, '2025-02-10', '2025-02-09 23:23:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos`
--

CREATE TABLE `photos` (
  `id_photo` int(11) NOT NULL,
  `file_photo` text DEFAULT NULL,
  `title_photo` text DEFAULT NULL,
  `description_photo` text DEFAULT NULL,
  `categories_photo` text DEFAULT NULL,
  `id_category_photo` int(11) DEFAULT 0,
  `date_created_photo` date DEFAULT NULL,
  `date_updated_photo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `photos`
--

INSERT INTO `photos` (`id_photo`, `file_photo`, `title_photo`, `description_photo`, `categories_photo`, `id_category_photo`, `date_created_photo`, `date_updated_photo`) VALUES
(1, 'http://cms-builder-dash.com/views/assets/files/67a9452d76bec41.jpg', 'Shutter Up', 'Here you can place an optional description of your Project', 'nature', 1, '2025-02-10', '2025-02-10 08:03:22'),
(2, 'http://cms-builder-dash.com/views/assets/files/67a9452d838f141.jpg', 'Ambient Portraiture', 'Here you can place an optional description of your Project', 'models', 0, '2025-02-10', '2025-02-10 00:33:31'),
(3, 'http://cms-builder-dash.com/views/assets/files/67a9452d0732241.jpg', 'The Picture Patch', 'Here you can place an optional description of your Project', 'people', 0, '2025-02-10', '2025-02-10 00:34:46'),
(4, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452d865d741.jpg', 'Photography', 'Here+you+can+place+an+optional+description+of+your+Project', 'people,outdoor', 0, '2025-02-10', '2025-02-10 00:40:17'),
(5, 'http://cms-builder-dash.com/views/assets/files/67a9452d4694541.jpg', 'Picture Perfect', 'Here you can place an optional description of your Project', 'nature', 0, '2025-02-10', '2025-02-10 00:36:19'),
(6, 'http://cms-builder-dash.com/views/assets/files/67a9452d9e94f41.jpg', 'In The Moment', 'Here you can place an optional description of your Project', 'outdoor,nature', 0, '2025-02-10', '2025-02-10 00:35:58'),
(7, 'http://cms-builder-dash.com/views/assets/files/67a9452db064b41.jpg', 'Artsy Lens', 'Here you can place an optional description of your Project', 'models', 0, '2025-02-10', '2025-02-10 00:36:45'),
(8, 'http://cms-builder-dash.com/views/assets/files/67a9452d923ea41.jpg', 'Lens Queen', 'Here you can place an optional description of your Project', 'nature', 0, '2025-02-10', '2025-02-10 00:36:31'),
(9, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452dd904b41.jpg', 'Tripod', 'Here+you+can+place+an+optional+description+of+your+Project', 'people', 0, '2025-02-10', '2025-02-10 00:40:41'),
(10, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452dd0d0641.jpg', 'Studio', 'Here+you+can+place+an+optional+description+of+your+Project', 'people', 0, '2025-02-10', '2025-02-10 00:40:45'),
(11, 'http://cms-builder-dash.com/views/assets/files/67a9452dd65e741.jpg', 'Picturesque', 'Here you can place an optional description of your Project', 'models', 0, '2025-02-10', '2025-02-10 00:37:15'),
(12, 'http://cms-builder-dash.com/views/assets/files/67a9452d3235541.jpg', 'In a Pinch', 'Here you can place an optional description of your Project', 'people', 0, '2025-02-10', '2025-02-10 00:38:16'),
(13, 'http://cms-builder-dash.com/views/assets/files/67a9452de43e841.jpg', 'Awesome Offspring', 'Here you can place an optional description of your Project', 'outdoor,people', 0, '2025-02-10', '2025-02-10 00:37:31'),
(14, 'http://cms-builder-dash.com/views/assets/files/67a9452cf17a240.jpg', 'Kiss the Bride', 'Here you can place an optional description of your Project', 'nature', 0, '2025-02-10', '2025-02-10 00:37:45'),
(15, 'http://cms-builder-dash.com/views/assets/files/67a9452cee58140.jpg', 'Bright Diamond', 'Here you can place an optional description of your Project', 'outdoor', 0, '2025-02-10', '2025-02-10 00:38:02'),
(16, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452ceed6940.jpg', 'Moments', 'Here+you+can+place+an+optional+description+of+your+Project', 'models,people', 0, '2025-02-10', '2025-02-10 00:41:01'),
(17, 'http%3A%2F%2Fcms-builder-dash.com%2Fviews%2Fassets%2Ffiles%2F67a9452d3f7de41.jpg', 'Photo', 'Here+you+can+place+an+optional+description+of+your+Project', 'models,people', 0, '2025-02-10', '2025-02-10 00:41:37'),
(18, 'http://cms-builder-dash.com/views/assets/files/67a9452d0011741.jpg', 'Photo', 'Here you can place an optional description of your Project', 'outdoor,people', 2, '2025-02-10', '2025-02-10 08:22:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id_profile` int(11) NOT NULL,
  `name_profile` text DEFAULT NULL,
  `about_profile` text DEFAULT NULL,
  `phone_profile` text DEFAULT NULL,
  `email_profile` text DEFAULT NULL,
  `image_profile` text DEFAULT NULL,
  `description_profile` text DEFAULT NULL,
  `video_profile` text DEFAULT NULL,
  `social_profile` text DEFAULT '[]',
  `logo_profile` text DEFAULT NULL,
  `date_created_profile` date DEFAULT NULL,
  `date_updated_profile` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id_profile`, `name_profile`, `about_profile`, `phone_profile`, `email_profile`, `image_profile`, `description_profile`, `video_profile`, `social_profile`, `logo_profile`, `date_created_profile`, `date_updated_profile`) VALUES
(1, 'Benny Kowalsky', 'Photographer / Designer', '7 (111) 123456789', 'youmail@domin.com', 'http://cms-builder-dash.com/views/assets/files/67a94168d32f636.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vulputate mauris vitae aliquet mollis. Quisque est sem, tempor sed dui in, cursus posuere nisi. Nunc eget fermentum dui, sit amet scelerisque ligula. Donec eget felis diam. Cras id nunc mauris. Cras convallis purus sit amet est volutpat fringilla. Sed tristique a sem et cursus. Curabitur aliquet aliquam sodales.', 'https://vimeo.com/77416730', '[{\"tipo\":\"facebook\",\"icon\":\"<i class=\\\"bi bi-facebook\\\"></i>\",\"link\":\"https://facebook.com\"},{\"tipo\":\"twitter\",\"icon\":\"<i class=\\\"bi bi-twitter\\\"></i>\",\"link\":\"https://twitter.com\"},{\"tipo\":\"instagram\",\"icon\":\"<i class=\\\"bi bi-instagram\\\"></i>\",\"link\":\"https://instagram.com\"},{\"tipo\":\"pinterest\",\"icon\":\"<i class=\\\"bi bi-pinterest\\\"></i>\",\"link\":\"https://pinterest.com\"},{\"tipo\":\"tumblr\",\"icon\":\"<i class=\\\"fab fa-tumblr\\\"></i>\",\"link\":\"https://tumblr.com\"}]', 'http://cms-builder-dash.com/views/assets/files/67a94e5085d2440.png', '2025-02-10', '2025-02-10 02:46:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `clientes_empresa`
--
ALTER TABLE `clientes_empresa`
  ADD PRIMARY KEY (`id_clients`);

--
-- Indices de la tabla `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id_column`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`),
  ADD KEY `id_page_module` (`id_page_module`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indices de la tabla `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id_photo`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes_empresa`
--
ALTER TABLE `clientes_empresa`
  MODIFY `id_clients` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `photos`
--
ALTER TABLE `photos`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`id_page_module`) REFERENCES `pages` (`id_page`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
