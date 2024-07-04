-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 24 2024 г., 14:51
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `warehouse_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `carts`
--

CREATE TABLE `carts` (
  `session_id` varchar(250) NOT NULL,
  `id_good` int(11) NOT NULL,
  `cli_` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id_cl` int(11) NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `adress_cl` varchar(255) NOT NULL,
  `phone_cl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id_cl`, `FIO`, `adress_cl`, `phone_cl`) VALUES
(1, 'Домина Диана Дмитриевна', 'адрес 2', '11111111'),
(2, 'ИП Черемушкина', 'адрес 2', '45454545'),
(3, 'ООО \"ЛК\"', 'Адрес 5', '343434');

-- --------------------------------------------------------

--
-- Структура таблицы `dirs`
--

CREATE TABLE `dirs` (
  `id_group` int(11) NOT NULL,
  `name_group` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `dirs`
--

INSERT INTO `dirs` (`id_group`, `name_group`) VALUES
(8, 'Масла'),
(9, 'Свечи');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id_good` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `name_good` varchar(250) NOT NULL,
  `manafuc` int(11) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `count_all` int(11) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id_good`, `id_group`, `name_good`, `manafuc`, `description`, `count_all`, `date_add`) VALUES
(29, 8, 'Rolf 10w-40', 13, 'Премиальное полусинтетическое моторное масло с комбинацией высококачественных базовых компонентов с новейшими присадочными технологиями обеспечивает быстрый и легкий запуск двигателя при самых низких температурах, превосходную защиту двигателя от износа и увеличенный интервал замены.', 115, '2024-06-24 12:18:02'),
(30, 8, 'Rolf 6w-40', 13, 'Премиальное полностью синтетическое моторное масло с комбинацией высококачественных базовых компонентов с новейшими присадочными технологиями обеспечивает быстрый и легкий запуск двигателя при самых низких температурах, превосходную защиту двигателя от износа и увеличенный интервал замены. ', 0, '2024-06-24 12:19:54'),
(31, 8, 'Rolf 5w-40', 13, 'Премиальное полностью синтетическое моторное масло с комбинацией высококачественных базовых компонентов с новейшими присадочными технологиями обеспечивает быстрый и легкий запуск двигателя при самых низких температурах, превосходную защиту двигателя от износа и увеличенный интервал замены. ', 15, '2024-06-24 12:21:18'),
(32, 9, '4629 C7HSA NGK', 15, 'Свеча зажигания 4629 C7HSA NGK (стандарт) для мотоцикла и питбайка. Применяется на большинстве двигателей питбайков с 2V ГБЦ. Размер гаечного ключа 16 mm. Наружная резьба 10 мм. Длина резьбы 12,7 мм. Исполнение разъема M4; Никелевый электрод; 1 электрод массы; без помехоподавления; с плоским седлом. Зазор между электродами 1,65 мм.', 50, '2024-06-24 12:22:46'),
(33, 9, '306 CPR8EA-9 NGK', 15, 'Свеча зажигания для двигателя Zongshen 190. Размер гаечного ключа 16 mm. Наружная резьба [мм] 10,0. Длина резьбы [мм] 19,0. Свеча зажигания. Исполнение разъема M4; Никелевый электрод; 1 электрод массы; с помехоподавлением, 5 кОм; с плоским седлом. Зазор между электродами [мм] 3,0.', 0, '2024-06-24 12:30:48');

-- --------------------------------------------------------

--
-- Структура таблицы `items_in_order`
--

CREATE TABLE `items_in_order` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `items_in_order`
--

INSERT INTO `items_in_order` (`id`, `id_order`, `item`, `count`) VALUES
(1, 1, 28, 1),
(2, 1, 27, 1),
(3, 1, 27, 2),
(4, 2, 28, 2),
(5, 2, 25, 1),
(6, 3, 28, 1),
(7, 3, 25, 1),
(8, 4, 28, 2),
(9, 5, 28, 6),
(10, 6, 29, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `manafacturer`
--

CREATE TABLE `manafacturer` (
  `id_m` int(11) NOT NULL,
  `name_m` varchar(255) NOT NULL,
  `adress_m` varchar(255) DEFAULT NULL,
  `phone_m` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `manafacturer`
--

INSERT INTO `manafacturer` (`id_m`, `name_m`, `adress_m`, `phone_m`) VALUES
(12, 'G-energy', '', ''),
(13, 'Rolf', '', ''),
(14, 'DENSO', '', ''),
(15, 'NGK', '', ''),
(16, 'TADEM', '', ''),
(17, 'MANN FILTER', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `cl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `number`, `date`, `user`, `status`, `cl`) VALUES
(6, 59371, '2024-06-24 12:34:36', 4, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `supplier`
--

CREATE TABLE `supplier` (
  `id_s` int(11) NOT NULL,
  `name_s` varchar(255) NOT NULL,
  `inn` int(11) NOT NULL,
  `adress_s` varchar(255) NOT NULL,
  `phone_s` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `supplier`
--

INSERT INTO `supplier` (`id_s`, `name_s`, `inn`, `adress_s`, `phone_s`) VALUES
(1, 'ООО \"Подшипники\"', 0, 'Полесская, д.8, кв.12', '34343434'),
(2, 'EXIST', 0, '5656', '5656'),
(3, 'AutoDoc', 0, '45', '4545'),
(4, 'ИП Шпагина Р.Л.', 2147483647, '454523', '4333');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fio` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `date_reg` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fio`, `login`, `pass`, `email`, `role`, `date_reg`, `phone`) VALUES
(3, 'Глебов Иван Романович', 'gleb', '12345', 'gleb@ya.ru', 0, '2021-03-10 21:00:00', NULL),
(4, 'Администратор', 'admin', 'pwd13pwd', '', 1, '2021-03-11 08:00:00', NULL),
(5, 'Фатеева Галина Александровна', 'fat', '12345', 'fat@ya.ru', 0, '2021-03-11 08:18:18', '454545'),
(6, 'Плахов Николай Алексеевич', 'plah', '1233', 'plah@ya.ru', 1, '2021-03-11 12:41:02', '3434');

-- --------------------------------------------------------

--
-- Структура таблицы `warehouse`
--

CREATE TABLE `warehouse` (
  `id_pr` int(11) NOT NULL,
  `id_good` int(11) NOT NULL,
  `id_supp` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `count_w` int(11) NOT NULL,
  `price` float NOT NULL,
  `user` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `warehouse`
--

INSERT INTO `warehouse` (`id_pr`, `id_good`, `id_supp`, `number`, `count_w`, `price`, `user`, `date_added`) VALUES
(14, 29, 3, 67142, 120, 550, 4, '2024-06-24 12:32:10'),
(15, 32, 2, 66589, 50, 160, 4, '2024-06-24 12:34:08'),
(16, 31, 3, 65470, 15, 2000, 4, '2024-06-24 12:34:50');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_cl`);

--
-- Индексы таблицы `dirs`
--
ALTER TABLE `dirs`
  ADD PRIMARY KEY (`id_group`),
  ADD UNIQUE KEY `id_group` (`id_group`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id_good`);

--
-- Индексы таблицы `items_in_order`
--
ALTER TABLE `items_in_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manafacturer`
--
ALTER TABLE `manafacturer`
  ADD PRIMARY KEY (`id_m`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Индексы таблицы `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_s`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id_pr`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `dirs`
--
ALTER TABLE `dirs`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id_good` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `items_in_order`
--
ALTER TABLE `items_in_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `manafacturer`
--
ALTER TABLE `manafacturer`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id_pr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
