-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 15 2023 г., 15:39
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `autofield`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sotrudnik`
--

CREATE TABLE IF NOT EXISTS `sotrudnik` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronymic` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `sotrudnik`
--

INSERT INTO `sotrudnik` (`id`, `surname`, `name`, `patronymic`, `birthday`) VALUES
(1, 'Семенов', 'Семен', 'Семенович', '1998-10-15'),
(2, 'Иванов', 'Иван ', 'Иванович', '1966-01-17'),
(3, 'Николаев', 'Николай', 'Николаевич', '2000-03-09'),
(4, 'Олегов', 'Никита', 'Артемович', '2003-02-08'),
(5, 'Степанов', 'Степан', 'Степанович', '2001-01-17'),
(6, 'Каринов', 'Семен', 'Олегович', '1991-02-02'),
(7, 'Портнов', 'Валерий', 'Валерьевич', '2000-02-14'),
(8, 'Петров', 'Алексей', 'Алексеевич', '1992-02-01'),
(9, 'Семенов', 'Семен', 'Семенович', '1998-10-15'),
(10, 'Иванов', 'Иван ', 'Иванович', '1966-01-17'),
(11, 'Николаев', 'Николай', 'Николаевич', '2000-03-09'),
(12, 'Олегов', 'Никита', 'Артемович', '2003-02-08'),
(13, 'Степанов', 'Степан', 'Степанович', '2001-01-17'),
(14, 'Каринов', 'Семен', 'Олегович', '1991-02-02'),
(15, 'Портнов', 'Валерий', 'Валерьевич', '2000-02-14'),
(16, 'Петров', 'Алексей', 'Алексеевич', '1992-02-01');

-- --------------------------------------------------------

--
-- Структура таблицы `svyaz`
--

CREATE TABLE IF NOT EXISTS `svyaz` (
  `id_sotrudn` int(100) NOT NULL,
  `id_phNumb` int(20) NOT NULL,
  `id_svyz'` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_svyz'`),
  KEY `id_sotrudn` (`id_sotrudn`),
  KEY `id_phNumb` (`id_phNumb`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `svyaz`
--

INSERT INTO `svyaz` (`id_sotrudn`, `id_phNumb`, `id_svyz'`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 4, 3),
(4, 3, 4),
(4, 5, 5),
(7, 10, 6),
(7, 10, 7),
(10, 12, 8),
(11, 15, 9),
(14, 14, 10),
(16, 7, 11),
(16, 8, 12),
(16, 9, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `номера тлф`
--

CREATE TABLE IF NOT EXISTS `номера тлф` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `номер тлф` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `номера тлф`
--

INSERT INTO `номера тлф` (`id`, `номер тлф`) VALUES
(1, '(495)3123'),
(2, '(495)12332'),
(3, '(495)22222'),
(4, '(495)21321'),
(5, '(495)2312313'),
(6, '(495)12323'),
(7, '(495)2133'),
(8, '(495)2131232'),
(9, '(495)2233'),
(10, '(495)44444'),
(11, '(495)23323'),
(12, '(495)345677'),
(13, '(495)776554'),
(14, '(495)444442'),
(15, '(495)213232'),
(16, '(495)3123'),
(17, '(495)12332'),
(18, '(495)22222'),
(19, '(495)21321'),
(20, '(495)2312313'),
(21, '(495)12323'),
(22, '(495)2133'),
(23, '(495)2131232'),
(24, '(495)2233'),
(25, '(495)44444'),
(26, '(495)23323'),
(27, '(495)345677'),
(28, '(495)776554'),
(29, '(495)444442'),
(30, '(495)213232');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `svyaz`
--
ALTER TABLE `svyaz`
  ADD CONSTRAINT `svyaz_ibfk_2` FOREIGN KEY (`id_phNumb`) REFERENCES `номера тлф` (`id`),
  ADD CONSTRAINT `svyaz_ibfk_1` FOREIGN KEY (`id_sotrudn`) REFERENCES `sotrudnik` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
