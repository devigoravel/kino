-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 07 2024 г., 12:52
-- Версия сервера: 8.0.31
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cinema`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` tinyint NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Фильмы'),
(2, 'Сериалы');

-- --------------------------------------------------------

--
-- Структура таблицы `movie`
--

CREATE TABLE `movie` (
  `id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `year` int NOT NULL,
  `rating` float NOT NULL,
  `poster` varchar(255) NOT NULL,
  `player_code` varchar(255) NOT NULL,
  `add_date` datetime NOT NULL,
  `category_id` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `movie`
--

INSERT INTO `movie` (`id`, `slug`, `name`, `descriptions`, `year`, `rating`, `poster`, `player_code`, `add_date`, `category_id`) VALUES
(605, 'joy', 'Джой', 'Joy', 2015, 0, 'http://c.cinemate.cc/media/m/4/5/154054/0.big.jpg', 'https://www.youtube.com/embed/uR-2TiQVY-k?showinfo=0', '2015-12-05 17:50:27', 1),
(606, 'by-the-sea', 'Лазурный берег', 'By the Sea', 2015, 0, 'http://c.cinemate.cc/media/m/3/1/159513/0.big.jpg', 'https://www.youtube.com/embed/vUFZOO9zO0Q?showinfo=0', '2015-12-05 17:50:27', 1),
(607, 'concussion', 'Сотрясение', 'Concussion', 2015, 0, 'http://c.cinemate.cc/media/m/9/4/157449/0.big.jpg', 'https://www.youtube.com/embed/Io6hPdC41RM?showinfo=0', '2015-12-05 17:50:27', 1),
(608, 'the-boy', 'Кукла', 'The Boy', 2015, 5.7, 'http://c.cinemate.cc/media/m/7/6/159067/0.big.jpg', 'https://www.youtube.com/embed/yPxybc_aJWU?showinfo=0', '2015-12-05 17:50:27', 1),
(609, 'the-finest-hours', 'И грянул шторм', 'The Finest Hours', 2015, 0, 'http://c.cinemate.cc/media/m/8/9/159198/0_1.big.jpg', 'https://www.youtube.com/embed/-1QOTS-OkIg?showinfo=0', '2015-12-05 17:50:27', 1),
(610, 'daughter-of-god', 'Дочь Бога', 'Daughter of God', 2015, 0, 'http://c.cinemate.cc/media/m/2/7/159272/0.big.jpg', 'https://www.youtube.com/embed/sutfsWmgWgs?showinfo=0', '2015-12-05 17:50:27', 1),
(611, 'the-danish-girl', 'Девушка из Дании', 'The Danish Girl', 2015, 5.4, 'http://c.cinemate.cc/media/m/8/8/159788/0.big.jpg', 'https://www.youtube.com/embed/9VF3-6Odwu4?showinfo=0', '2015-12-05 17:50:27', 1),
(612, 'the-revenant', 'Выживший', 'The Revenant', 2015, 0, 'http://c.cinemate.cc/media/m/0/9/155290/0.big.jpg', 'https://www.youtube.com/embed/QRfj1VCg16Y?showinfo=0', '2015-12-03 17:50:27', 1),
(613, 'sisters', 'Сестры', 'Sisters', 2015, 0, 'http://c.cinemate.cc/media/m/0/1/153610/0_1.big.jpg', 'https://www.youtube.com/embed/vRnhEjP3R-c?showinfo=0', '2015-12-05 17:50:27', 1),
(614, 'creed', 'Крид', 'Creed', 2015, 0, 'http://c.cinemate.cc/media/m/5/7/157775/0_qHqshz3.big.jpg', 'https://www.youtube.com/embed/Uv554B7YHk4?showinfo=0', '2015-12-05 17:50:27', 1),
(615, 'alvin-and-the-chipmunks-the-road-chip', 'Элвин и бурундуки 4', 'Alvin and the Chipmunks: The Road Chip', 2015, 0, 'http://c.cinemate.cc/media/m/5/7/137475/0.big.jpg', 'https://www.youtube.com/embed/xA6cOSEZhzM?showinfo=0', '2015-12-05 17:50:27', 1),
(616, 'steve-jobs', 'Стив Джобс', 'Steve Jobs', 2015, 6.4, 'http://c.cinemate.cc/media/m/1/7/157771/0_RfDTyDZ.big.jpg', 'https://www.youtube.com/embed/aEr6K1bwIVs?showinfo=0', '2015-12-05 17:50:27', 1),
(617, 'krampus', 'Крампус', 'Krampus', 2015, 0, 'http://c.cinemate.cc/media/m/3/7/157773/0.big.jpg', 'https://www.youtube.com/embed/h6cVyoMH4QE?showinfo=0', '2015-12-05 17:50:27', 1),
(618, 'point-break', 'На гребне волны', 'Point Break', 2015, 0, 'http://c.cinemate.cc/media/m/6/0/155006/0.big.jpg', 'https://www.youtube.com/embed/ncvFAm4kYCo?showinfo=0', '2015-12-05 17:50:27', 1),
(619, 'dekiru-the-three-stones', 'Декиру: Магические камни', 'Dekiru: The Three Stones', 2015, 0, 'http://c.cinemate.cc/media/m/5/8/159885/0.big.jpg', 'https://www.youtube.com/embed/G5whoJ2GLUA?showinfo=0', '2015-12-05 17:50:27', 1),
(620, 'masterminds', 'Зачинщики', 'Masterminds', 2015, 0, 'http://c.cinemate.cc/media/m/5/3/153535/0.big.jpg', 'https://www.youtube.com/embed/onOblb6W_yw?showinfo=0', '2015-12-05 17:50:27', 1),
(621, 'love-the-coopers', 'Любите Куперов', 'Love the Coopers', 2015, 0, 'http://c.cinemate.cc/media/m/2/6/159062/0.big.jpg', 'https://www.youtube.com/embed/-TSX_0rwPNc?showinfo=0', '2015-12-05 17:50:27', 1),
(622, 'star-wars', 'Звёздные войны: Пробуждение силы', 'Star Wars: Episode VII - The Force Awakens', 2015, 0, 'http://c.cinemate.cc/media/m/6/8/120786/0.big.jpg', 'https://www.youtube.com/embed/gAUxw4umkdY?showinfo=0', '2015-12-05 17:50:27', 1),
(623, 'x-mas', 'Рождество', 'X-Mas', 2015, 0, 'http://c.cinemate.cc/media/m/7/3/156737/0.big.jpg', 'https://www.youtube.com/embed/ocjpSBMNyoU?showinfo=0', '2015-12-05 17:50:27', 1),
(624, 'solace', 'Утешение', 'Solace', 2015, 6.4, 'http://c.cinemate.cc/media/m/2/6/157762/0.big.jpg', 'https://www.youtube.com/embed/yiH5V5psa7M?showinfo=0', '2015-12-05 17:50:27', 1),
(625, 'in-the-heart-of-the-sea', 'В сердце моря', 'In the Heart of the Sea', 2015, 0, 'http://c.cinemate.cc/media/m/6/9/154996/0.big.jpg', 'https://www.youtube.com/embed/4Atz6dfryss?showinfo=0', '2015-12-05 17:50:27', 1),
(626, 'bridge-of-spies', 'Шпионский мост', 'Bridge of Spies', 2015, 8.3, 'http://c.cinemate.cc/media/m/0/1/155010/0.big.jpg', 'https://www.youtube.com/embed/jxUk1RsajcI?showinfo=0', '2015-12-05 17:50:27', 1),
(627, 'goosebumps', 'Ужастики', 'Goosebumps', 2015, 7.3, 'http://c.cinemate.cc/media/m/4/8/155284/0_VvqPtmT.big.jpg', 'https://www.youtube.com/embed/7Cn716jv61s?showinfo=0', '2015-12-05 17:50:27', 1),
(628, 'the-good-dinosaur', 'Хороший динозавр', 'The Good Dinosaur', 2015, 0, 'http://c.cinemate.cc/media/m/4/7/137474/0.big.jpg', 'https://www.youtube.com/embed/O-RgquKVTPE?showinfo=0', '2015-12-05 17:50:27', 1),
(629, 'sicario', 'Наёмница', 'Sicario', 2015, 8.1, 'http://c.cinemate.cc/media/m/1/2/158621/0.big.jpg', 'https://www.youtube.com/embed/kuCddASCWyo?showinfo=0', '2015-12-05 17:50:27', 1),
(655, 'quantico', 'База Куантико', 'Quantico', 2015, 7.6, 'http://c.cinemate.cc/media/m/9/6/159969/0.big.jpg', 'https://www.youtube.com/embed/wJp-BZpVBPA?showinfo=0', '2015-12-05 17:50:41', 2),
(656, 'secrets-and-lies', 'Тайны и ложь', 'Secrets and Lies', 2015, 7.7, 'http://c.cinemate.cc/media/m/3/6/157863/0.big.jpg', 'https://www.youtube.com/embed/84LUUehDMB4?showinfo=0', '2015-12-05 17:50:41', 2),
(657, 'miles-from-tomorrowland', 'Майлз с другой планеты', 'Miles from Tomorrowland', 2015, 7.9, 'http://c.cinemate.cc/media/m/5/7/158275/0.big.jpg', 'https://www.youtube.com/embed/r59DjoDB-5Q?showinfo=0', '2015-12-05 17:50:41', 2),
(658, 'fear-the-walking-dead', 'Бойтесь ходячих мертвецов', 'Fear the Walking Dead', 2015, 7.7, 'http://c.cinemate.cc/media/m/2/5/159652/0.big.jpg', 'https://www.youtube.com/embed/yzXglr5bc3w?showinfo=0', '2015-12-05 17:50:41', 2),
(659, 'show-me-a-hero', 'Покажите мне героя', 'Show Me a Hero', 2015, 8.3, 'http://c.cinemate.cc/media/m/9/9/159599/0.big.jpg', 'https://www.youtube.com/embed/0FPIflcWIOk?showinfo=0', '2015-12-05 17:50:41', 2),
(660, 'k-c-undercover', 'Кей Си. Под прикрытием', 'K.C. Undercover', 2015, 6.1, 'http://c.cinemate.cc/media/m/0/4/159640/0.big.jpg', 'https://www.youtube.com/embed/_4tynKL-zyM?showinfo=0', '2015-12-05 17:50:41', 2),
(661, 'big-giant-swords', 'Гигантские мечи', 'Big Giant Swords', 2015, 8.1, 'http://c.cinemate.cc/media/m/7/9/159297/0.big.jpg', 'https://www.youtube.com/embed/iwM7GaXXtcA?showinfo=0', '2015-12-05 17:50:41', 2),
(662, 'ballers', 'Футболисты', 'Ballers', 2015, 7.5, 'http://c.cinemate.cc/media/m/7/1/159017/0.big.jpg', 'https://www.youtube.com/embed/go_V0xBH2TY?showinfo=0', '2015-12-05 17:50:41', 2),
(663, 'the-brink', 'На грани', 'The Brink', 2015, 7.9, 'http://c.cinemate.cc/media/m/8/1/159018/0.big.jpg', 'https://www.youtube.com/embed/z9SJxSXySSo?showinfo=0', '2015-12-05 17:50:41', 2),
(664, 'the-whispers', 'Шёпот', 'The Whispers', 2015, 7.4, 'http://c.cinemate.cc/media/m/4/1/158814/0.big.jpg', 'https://www.youtube.com/embed/DMG9TMnJfOs?showinfo=0', '2015-12-05 17:50:41', 2),
(665, 'harvey-beaks', 'Харви Бикс', 'Harvey Beaks', 2015, 6.9, 'http://c.cinemate.cc/media/m/9/3/158939/0_1.big.jpg', 'https://www.youtube.com/embed/XgBUo2eFUXY?showinfo=0', '2015-12-05 17:50:41', 2),
(666, 'aquarius', 'Водолей', 'Aquarius', 2015, 7, 'http://c.cinemate.cc/media/m/1/5/158751/0.big.jpg', 'https://www.youtube.com/embed/sFP-hW7JpUQ?showinfo=0', '2015-12-05 17:50:41', 2),
(667, 'wayward-pines', 'Сосны', 'Wayward Pines', 2015, 7.8, 'http://c.cinemate.cc/media/m/0/0/157700/0_1.big.jpg', 'https://www.youtube.com/embed/RsQ9Fl0VCkk?showinfo=0', '2015-12-05 17:50:41', 2),
(668, 'happyish', 'Типа счастье', 'Happyish', 2015, 7.2, 'http://c.cinemate.cc/media/m/4/2/158424/0.big.jpg', 'https://www.youtube.com/embed/oZzsRNBq42Q?showinfo=0', '2015-12-05 17:50:41', 2),
(669, 'bella-and-the-bulldogs', 'Белла и Бульдоги', 'Bella and the Bulldogs', 2015, 5, 'http://c.cinemate.cc/media/m/7/0/160007/0.big.jpg', 'https://www.youtube.com/embed/CVdxMzRQk5A?showinfo=0', '2015-12-05 17:50:41', 2),
(670, 'battle-creek', 'Батл Крик', 'Battle Creek', 2015, 7.4, 'http://c.cinemate.cc/media/m/0/3/157830/0.big.jpg', 'https://www.youtube.com/embed/6whby3eS8vw?showinfo=0', '2015-12-05 17:50:41', 2),
(671, 'better-call-saul', 'Лучше звоните Солу', 'Better Call Saul', 2015, 8.9, 'http://c.cinemate.cc/media/m/0/2/157520/0.big.jpg', 'https://www.youtube.com/embed/lK_70f7PamE?showinfo=0', '2015-12-05 17:50:41', 2),
(672, 'togetherness', 'Вместе', 'Togetherness', 2015, 7.5, 'http://c.cinemate.cc/media/m/1/6/156961/0.big.jpg', 'https://www.youtube.com/embed/IBt3XoWxvOo?showinfo=0', '2015-12-05 17:50:41', 2),
(673, 'empire', 'Империя', 'Empire', 2015, 8, 'http://c.cinemate.cc/media/m/5/8/156885/0.big.jpg', 'https://www.youtube.com/embed/dBzu_jKLJek?showinfo=0', '2015-12-05 17:50:41', 2),
(674, 'the-astronaut-wives-club', 'Клуб жён астронавтов', 'The Astronaut Wives Club', 2015, 7.1, 'http://c.cinemate.cc/media/m/1/8/158981/0.big.jpg', 'https://www.youtube.com/embed/dKMDli5b3W8?showinfo=0', '2015-12-05 17:50:41', 2),
(675, 'unreal', 'Нереально', 'UnREAL', 2015, 7.8, 'http://c.cinemate.cc/media/m/2/8/158982/0.big.jpg', 'https://www.youtube.com/embed/BU7AjoWGHwc?showinfo=0', '2015-12-05 17:50:41', 2),
(676, 'the-odd-couple', 'Странная парочка', 'The Odd Couple', 2015, 6.4, 'http://c.cinemate.cc/media/m/5/1/157715/0.big.jpg', 'https://www.youtube.com/embed/H8lY2kLmnbQ?showinfo=0', '2015-12-05 17:50:41', 2),
(677, 'you-me-and-the-apocalypse', 'Ты, я и конец света', 'You, Me and the Apocalypse', 2015, 7.9, 'http://c.cinemate.cc/media/m/0/2/160020/0.big.jpg', 'https://www.youtube.com/embed/nnFTbj7QyBE?showinfo=0', '2015-12-05 17:50:41', 2),
(678, 'catching-monsters', 'Крупный улов', 'Catching Monsters', 2015, 0, 'http://c.cinemate.cc/media/m/4/2/160024/0.big.jpg', 'https://www.youtube.com/embed/8cadxeA__v4?showinfo=0', '2015-12-05 17:50:41', 2),
(679, 'american-odyssey', 'Американская одиссея', 'American Odyssey', 2015, 7.2, 'http://c.cinemate.cc/media/m/3/3/158233/0.big.jpg', 'https://www.youtube.com/embed/7PYepYHaitg?showinfo=0', '2015-12-05 17:50:41', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(256) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `slug`) VALUES
(3, 'Новость Первая', 'Текст Новости Первой', 'new-1'),
(4, 'Новость Вторая', 'Текст Новости Второй', 'new-2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
