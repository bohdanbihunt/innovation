-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 19 Lip 2021, 16:09
-- Wersja serwera: 5.7.31
-- Wersja PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `innovation`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(19,10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `currency`
--

INSERT INTO `currency` (`id`, `name`, `currency_code`, `exchange_rate`) VALUES
(0x0182cc5617384f37910fc659ddb04dbf, 'dolar singapurski', 'SGD', '2.8639000000'),
(0x04c234a5f3634fec9897a4a970e93865, 'dolar amerykański', 'USD', '3.8968000000'),
(0x099d22b75caa4f308e1c23c81a40ea21, 'lej rumuński', 'RON', '0.9311000000'),
(0x1389ec0e5a734f04b412012de8f15498, 'bat (Tajlandia)', 'THB', '0.1186000000'),
(0x1d9f4d219ac24fd4b51c24cb98ccff96, 'dolar nowozelandzki', 'NZD', '2.7147000000'),
(0x24bec4bb00934f7fb1ce5a15e89a526c, 'korona islandzka', 'ISK', '0.0314010000'),
(0x2697528c84e74f0bbbaac20f1ddf569e, 'forint (Węgry)', 'HUF', '0.0127380000'),
(0x2b73fee3221b4f2b98215101fdcd3e63, 'dolar australijski', 'AUD', '2.8668000000'),
(0x2def4a872a064f1799f619eef6349d92, 'real (Brazylia)', 'BRL', '0.7618000000'),
(0x2fecd3567cb84fe1957cb5800ee477d4, 'korona czeska', 'CZK', '0.1791000000'),
(0x3b7db6bb8afb4fb8b760bb29dc6d7fc4, 'peso meksykańskie', 'MXN', '0.1949000000'),
(0x3b984ad753474f4591d2d9bdf65737d0, 'jen (Japonia)', 'JPY', '0.0355100000'),
(0x464c852cf3e74fd6b356ecf0565dd4e3, 'SDR (MFW)', 'XDR', '5.5302000000'),
(0x4af1c3e5d0b14ff8a49613a5cfabc08f, 'peso filipińskie', 'PHP', '0.0770000000'),
(0x4d776c2e15294f929db50f7cddffaf91, 'dolar Hongkongu', 'HKD', '0.5015000000'),
(0x507de29cf0e84f6385581be8bef91ee5, 'euro', 'EUR', '4.5877000000'),
(0x55038fb1bf6d4f77b491fcfaa937701a, 'rand (Republika Południowej Afryki)', 'ZAR', '0.2690000000'),
(0x716327f579e34f16bcdf79ed43d9a7b1, 'lira turecka', 'TRY', '0.4528000000'),
(0x72f9a9a5b74d4f9080e62f483bf1a378, 'korona duńska', 'DKK', '0.6168000000'),
(0x7b4547d5a98b4ff28e0b91d41cc6fee2, 'funt szterling', 'GBP', '5.3432000000'),
(0x7f8cf9c4ccf44f3284b11da825d30462, 'rupia indyjska', 'INR', '0.0520410000'),
(0x83e03281cfa74f28a8a9a176be3104ee, 'lew (Bułgaria)', 'BGN', '2.3456000000'),
(0x8a15415da2454f1997cc1e6c84f788c0, 'korona szwedzka', 'SEK', '0.4469000000'),
(0x8da18fb444f04fc992fcb3b7d3639579, 'frank szwajcarski', 'CHF', '4.2297000000'),
(0x998bbcbf688f4f01a68fe6e2b2749359, 'ringgit (Malezja)', 'MYR', '0.9227000000'),
(0xaa7bc2cb99354f869780a6420a023b7f, 'rubel rosyjski', 'RUB', '0.0523000000'),
(0xad3896666eed4fb8a9a4501ceaff87e4, 'rupia indonezyjska', 'IDR', '0.0002684200'),
(0xb0f8cfba08884f28a784bf654f12911b, 'korona norweska', 'NOK', '0.4370000000'),
(0xb9f1bbc253144f76acf600444592356d, 'hrywna (Ukraina)', 'UAH', '0.1432000000'),
(0xcaadc29dace84f90ac641eacd83b8bb5, 'won południowokoreański', 'KRW', '0.0033860000'),
(0xcdf25e304e114f288dbd5083afbe7c96, 'yuan renminbi (Chiny)', 'CNY', '0.6006000000'),
(0xdcce89056eb54f3f9498023c20afec1d, 'kuna (Chorwacja)', 'HRK', '0.6118000000'),
(0xe1cc650c56004fb6a695a9867555ba44, 'peso chilijskie', 'CLP', '0.0051540000'),
(0xe9a73bf8ee4e4f2db76d495441c83f4c, 'dolar kanadyjski', 'CAD', '3.0602000000'),
(0xf392cd1d0b4d4fb8a667079c494d824c, 'nowy izraelski szekel', 'ILS', '1.1820000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
