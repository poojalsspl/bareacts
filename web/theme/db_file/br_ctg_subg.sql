-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 07:30 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawhub_reserach`
--

-- --------------------------------------------------------

--
-- Table structure for table `bareact_catg_mast`
--

CREATE TABLE `bareact_catg_mast` (
  `act_catg_code` int(4) NOT NULL DEFAULT 0,
  `act_catg_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act_group_code` int(3) DEFAULT NULL,
  `country_code` int(4) DEFAULT NULL,
  `country_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bareact_catg_mast`
--

INSERT INTO `bareact_catg_mast` (`act_catg_code`, `act_catg_desc`, `short_desc`, `act_group_code`, `country_code`, `country_name`) VALUES
(1, 'Constitutional  Law                                                        \r', NULL, 1, 1, 'INDIA'),
(2, 'Torts                                                                      \r', NULL, 1, 1, 'INDIA'),
(3, 'Mercantile  law (corporate law                                             \r', NULL, 1, 1, 'INDIA'),
(4, 'Consumer  and  Trade (weight & measures)                                   \r', NULL, 1, 1, 'INDIA'),
(5, 'Criminal (Corruption                                                       \r', NULL, 1, 1, 'INDIA'),
(6, 'Taxation                                                                   \r', NULL, 1, 1, 'INDIA'),
(7, 'Family law(Hindu law                                                       \r', NULL, 1, 1, 'INDIA'),
(8, 'IPR                                                                        \r', NULL, 1, 1, 'INDIA'),
(9, 'Labour and Industrial  law                                                 \r', NULL, 1, 1, 'INDIA'),
(10, 'Arbitration                                                               \r', NULL, 1, 1, 'INDIA'),
(11, 'Health & Medical (Drugs and cosmetics)                                    \r', NULL, 1, 1, 'INDIA'),
(12, 'Media Law                                                                 \r', NULL, 1, 1, 'INDIA'),
(13, 'Environmental  Law                                                        \r', NULL, 1, 1, 'INDIA'),
(14, 'Migration  law                                                            \r', NULL, 1, 1, 'INDIA'),
(15, 'International  Trade & law                                                \r', NULL, 1, 1, 'INDIA'),
(16, 'Defence law                                                               \r', NULL, 1, 1, 'INDIA'),
(17, 'Cyber law                                                                 \r', NULL, 1, 1, 'INDIA'),
(18, 'Insurance  Law                                                            \r', NULL, 1, 1, 'INDIA'),
(19, 'Women and child                                                           \r', NULL, 1, 1, 'INDIA'),
(20, 'Motor vehicle Act                                                         \r', NULL, 1, 1, 'INDIA'),
(21, 'Administrative law                                                        \r', NULL, 1, 1, 'INDIA'),
(22, 'Finance                                                                   \r', NULL, 1, 1, 'INDIA'),
(23, 'Electricity                                                               \r', NULL, 1, 1, 'INDIA'),
(24, 'Property                                                                  \r', NULL, 1, 1, 'INDIA'),
(25, 'Land law                                                                  \r', NULL, 1, 1, 'INDIA'),
(26, 'Religion                                                                  \r', NULL, 1, 1, 'INDIA'),
(27, 'Legal Ethics & justice( stamp  Act)                                       \r', NULL, 1, 1, 'INDIA'),
(28, 'Election                                                                  \r', NULL, 1, 1, 'INDIA'),
(29, 'Agriculture & Liquor                                                      \r', NULL, 1, 1, 'INDIA'),
(30, 'Education                                                                 \r', NULL, 1, 1, 'INDIA'),
(31, 'Natural Resources                                                         \r', NULL, 1, 1, 'INDIA'),
(32, 'Human Rights                                                              \r', NULL, 1, 1, 'INDIA'),
(33, 'Public Utilities                                                          \r', NULL, 1, 1, 'INDIA'),
(34, 'Carriage Law                                                              \r', NULL, 1, 1, 'INDIA'),
(35, 'Miscellaneous (MRTP                                                       \r', NULL, 1, 1, 'INDIA'),
(36, 'PROFESSIONAL LAW                                                          \r', NULL, 1, 1, 'INDIA'),
(37, 'FOOD AND PUBLIC DISTRIBUTION                                              \r', NULL, 1, 1, 'INDIA'),
(38, 'VICTIMOLOGY AND PENOLOGY                                                  \r', NULL, 1, 1, 'INDIA'),
(39, 'Banking                                                                   \r', NULL, 1, 1, 'INDIA'),
(40, 'Tertiary Services                                                         \r', NULL, 1, 1, 'INDIA'),
(41, 'Animal and Birds                                                          \r', NULL, 1, 1, 'INDIA'),
(42, 'Science And Technology                                                    \r', NULL, 1, 1, 'INDIA'),
(43, 'Evidence                                                                  \r', NULL, 1, 1, 'INDIA'),
(44, 'Civil Law', 'cvl-law', 1, 1, 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `bareact_subcatg_mast`
--

CREATE TABLE `bareact_subcatg_mast` (
  `act_sub_catg_code` int(4) DEFAULT NULL,
  `act_sub_catg_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act_catg_code` int(4) DEFAULT NULL,
  `act_catg_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act_group_code` int(3) DEFAULT NULL,
  `act_group_desc` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` int(4) DEFAULT NULL,
  `country_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bareact_subcatg_mast`
--

INSERT INTO `bareact_subcatg_mast` (`act_sub_catg_code`, `act_sub_catg_desc`, `short_desc`, `act_catg_code`, `act_catg_desc`, `act_group_code`, `act_group_desc`, `country_code`, `country_name`) VALUES
(1, 'Noise Pollution                                                                                     ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(2, 'Air Pollution                                                                                       ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(3, 'Water Pollution                                                                                     ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(4, 'Soil Pollution                                                                                      ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(5, 'Forest                                                                                              ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(6, 'Wildlife                                                                                            ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(7, 'Green Tribunal                                                                                      ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(8, 'Environment Protection                                                                              ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(9, 'Miscellaneous                                                                                       ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(10, 'Trade Mark                                                                                          ', NULL, 8, 'IPR', 1, 'CENTRAL ACT', 1, 'INDIA'),
(11, 'Copyright                                                                                           ', NULL, 8, 'IPR', 1, 'CENTRAL ACT', 1, 'INDIA'),
(12, 'Patent                                                                                              ', NULL, 8, 'IPR', 1, 'CENTRAL ACT', 1, 'INDIA'),
(13, 'Designs Act                                                                                         ', NULL, 8, 'IPR', 1, 'CENTRAL ACT', 1, 'INDIA'),
(14, 'Factories                                                                                           ', NULL, 9, 'Labour and Industrial  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(15, 'Industrial                                                                                          ', NULL, 9, 'Labour and Industrial  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(16, 'Employees                                                                                           ', NULL, 9, 'Labour and Industrial  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(17, 'Labour                                                                                              ', NULL, 9, 'Labour and Industrial  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(18, 'Employers                                                                                           ', NULL, 9, 'Labour and Industrial  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(19, 'Telecommunication                                                                                   ', NULL, 40, 'Tertiary Services', 1, 'CENTRAL ACT', 1, 'INDIA'),
(20, 'Telegraph                                                                                           ', NULL, 40, 'Tertiary Services', 1, 'CENTRAL ACT', 1, 'INDIA'),
(21, 'Warehousing                                                                                         ', NULL, 40, 'Tertiary Services', 1, 'CENTRAL ACT', 1, 'INDIA'),
(22, 'Fundamental Rights                                                                                  ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(23, 'Legislature                                                                                         ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(24, 'Executive                                                                                           ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(25, 'Judiciary                                                                                           ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(26, 'RTI                                                                                                 ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(27, 'SC', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(28, 'Citizenship                                                                                         ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(29, 'By Land                                                                                             ', NULL, 34, 'Carriage Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(30, 'By Air                                                                                              ', NULL, 34, 'Carriage Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(31, 'By Sea                                                                                              ', NULL, 34, 'Carriage Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(32, 'Airways                                                                                             ', NULL, 33, 'Public Utilities', 1, 'CENTRAL ACT', 1, 'INDIA'),
(33, 'Roadways                                                                                            ', NULL, 33, 'Public Utilities', 1, 'CENTRAL ACT', 1, 'INDIA'),
(34, 'Tramways                                                                                            ', NULL, 33, 'Public Utilities', 1, 'CENTRAL ACT', 1, 'INDIA'),
(35, 'Railways                                                                                            ', NULL, 33, 'Public Utilities', 1, 'CENTRAL ACT', 1, 'INDIA'),
(36, 'Contract                                                                                            ', NULL, 3, 'Mercantile  law (corporate law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(37, 'Companies                                                                                           ', NULL, 3, 'Mercantile  law (corporate law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(38, 'Partnership                                                                                         ', NULL, 3, 'Mercantile  law (corporate law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(39, 'Textile & Trade                                                                                     ', NULL, 3, 'Mercantile  law (corporate law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(40, 'Working Journalist                                                                                  ', NULL, 12, 'Media Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(41, 'Visual Media                                                                                        ', NULL, 12, 'Media Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(42, 'Non- Visual Media                                                                                   ', NULL, 12, 'Media Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(43, 'Appointments                                                                                        ', NULL, 30, 'Education', 1, 'CENTRAL ACT', 1, 'INDIA'),
(44, 'University and Schools                                                                              ', NULL, 30, 'Education', 1, 'CENTRAL ACT', 1, 'INDIA'),
(45, 'Council and Boards                                                                                  ', NULL, 30, 'Education', 1, 'CENTRAL ACT', 1, 'INDIA'),
(46, 'Petroleum                                                                                           ', NULL, 31, 'Natural Resources', 1, 'CENTRAL ACT', 1, 'INDIA'),
(47, 'Oilfields                                                                                           ', NULL, 31, 'Natural Resources', 1, 'CENTRAL ACT', 1, 'INDIA'),
(48, 'Coal Mines                                                                                          ', NULL, 31, 'Natural Resources', 1, 'CENTRAL ACT', 1, 'INDIA'),
(49, 'Energy                                                                                              ', NULL, 31, 'Natural Resources', 1, 'CENTRAL ACT', 1, 'INDIA'),
(50, 'Mines and Minerals                                                                                  ', NULL, 31, 'Natural Resources', 1, 'CENTRAL ACT', 1, 'INDIA'),
(51, 'Currency                                                                                            ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(52, 'Pulic debts                                                                                         ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(53, 'Insolvency                                                                                          ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(54, 'Banks                                                                                               ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(55, 'Financial Banks                                                                                     ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(56, 'Food Adulteration                                                                                   ', NULL, 4, 'Consumer  and  Trade (weight & measures)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(57, 'Black Marketing                                                                                     ', NULL, 4, 'Consumer  and  Trade (weight & measures)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(58, 'Consumer Protection                                                                                 ', NULL, 4, 'Consumer  and  Trade (weight & measures)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(59, 'Essential Commodities                                                                               ', NULL, 4, 'Consumer  and  Trade (weight & measures)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(60, 'Weight and Measures                                                                                 ', NULL, 4, 'Consumer  and  Trade (weight & measures)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(61, 'Drugs and Cosmetics                                                                                 ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(62, 'Diceases                                                                                            ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(63, 'Health Care                                                                                         ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(64, 'Institutes ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(65, 'Medcal Therapy                                                                                      ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(66, 'Doctors and Nurses                                                                                  ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(67, 'Pharmacy                                                                                            ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(68, 'Human Organs                                                                                        ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(69, 'Indian Penal                                                                                        ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(70, 'Unlawful Activities                                                                                 ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(71, 'Smuggling                                                                                           ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(72, 'Money Laundering                                                                                    ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(73, 'Corruption                                                                                          ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(74, 'NDPS                                                                                                ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(75, 'Criminal Procedure Code                                                                             ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(76, 'GST                                                                                                 ', NULL, 6, 'Taxation', 1, 'CENTRAL ACT', 1, 'INDIA'),
(77, 'Income Tax                                                                                          ', NULL, 6, 'Taxation', 1, 'CENTRAL ACT', 1, 'INDIA'),
(78, 'Other Taxes                                                                                         ', NULL, 6, 'Taxation', 1, 'CENTRAL ACT', 1, 'INDIA'),
(79, 'IT Act                                                                                              ', NULL, 17, 'Cyber law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(80, 'IT Institute                                                                                        ', NULL, 17, 'Cyber law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(81, 'Board  and Authorities                                                                              ', NULL, 42, 'Science And Technology', 1, 'CENTRAL ACT', 1, 'INDIA'),
(82, 'Institute', NULL, 42, 'Science And Technology', 1, 'CENTRAL ACT', 1, 'INDIA'),
(83, 'Miscellaneous                                                                                       ', NULL, 42, 'Science And Technology', 1, 'CENTRAL ACT', 1, 'INDIA'),
(84, 'Agriculture University                                                                              ', NULL, 29, 'Agriculture & Liquor', 1, 'CENTRAL ACT', 1, 'INDIA'),
(85, 'Agricultural Products                                                                               ', NULL, 29, 'Agriculture & Liquor', 1, 'CENTRAL ACT', 1, 'INDIA'),
(86, 'Miscellaneous                                                                                       ', NULL, 29, 'Agriculture & Liquor', 1, 'CENTRAL ACT', 1, 'INDIA'),
(87, 'Juvenile Justice                                                                                    ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(88, 'Institutes and Commission                                                                           ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(89, 'Immoral Trafficking                                                                                 ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(90, 'Dowry                                                                                               ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(91, 'Domestic Violence                                                                                   ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(92, 'Sexual Offences                                                                                     ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(93, 'Indecent Representation                                                                             ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(94, 'PNDT                                                                                                ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(95, 'Property                                                                                            ', NULL, 24, 'Property', 1, 'CENTRAL ACT', 1, 'INDIA'),
(96, 'Government Property                                                                                 ', NULL, 24, 'Property', 1, 'CENTRAL ACT', 1, 'INDIA'),
(97, 'Property of Army                                                                                    ', NULL, 24, 'Property', 1, 'CENTRAL ACT', 1, 'INDIA'),
(98, 'Miscllaneous                                                                                        ', NULL, 24, 'Property', 1, 'CENTRAL ACT', 1, 'INDIA'),
(99, 'Safety Standards                                                                                    ', NULL, 37, 'FOOD AND PUBLIC DISTRIBUTION', 1, 'CENTRAL ACT', 1, 'INDIA'),
(100, 'Food                                                                                                ', NULL, 37, 'FOOD AND PUBLIC DISTRIBUTION', 1, 'CENTRAL ACT', 1, 'INDIA'),
(101, 'Miscllaneous                                                                                        ', NULL, 37, 'FOOD AND PUBLIC DISTRIBUTION', 1, 'CENTRAL ACT', 1, 'INDIA'),
(102, 'Advocates                                                                                           ', NULL, 27, 'Legal Ethics & justice( stamp  Act) ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(103, 'Limitation Act                                                                                      ', NULL, 27, 'Legal Ethics & justice( stamp  Act) ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(104, 'Bar                                                                                                 ', NULL, 27, 'Legal Ethics & justice( stamp  Act) ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(105, 'Library                                                                                             ', NULL, 35, 'Miscellaneous (MRTP', 1, 'CENTRAL ACT', 1, 'INDIA'),
(106, 'Art and Heritage                                                                                    ', NULL, 35, 'Miscellaneous (MRTP', 1, 'CENTRAL ACT', 1, 'INDIA'),
(107, 'iscellaneous                                                                                        ', NULL, 35, 'Miscellaneous (MRTP', 1, 'CENTRAL ACT', 1, 'INDIA'),
(108, 'Marriage and Divorce                                                                                ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(109, 'Adoption and Maintenance                                                                            ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(110, 'Minority and Guardianship                                                                           ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(110, 'Succession                                                                                          ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(111, 'Miscellaneous                                                                                       ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(112, 'Insurance                                                                                           ', NULL, 18, 'Insurance  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(113, 'Marine Insurance                                                                                    ', NULL, 18, 'Insurance  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(114, 'General Insurance                                                                                   ', NULL, 18, 'Insurance  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(115, 'Fire Insurance                                                                                      ', NULL, 18, 'Insurance  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(116, 'Life Insurance                                                                                      ', NULL, 18, 'Insurance  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(117, 'Army                                                                                                ', NULL, 16, 'Defence law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(118, 'Air Force                                                                                           ', NULL, 16, 'Defence law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(119, 'Navy                                                                                                ', NULL, 16, 'Defence law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(120, 'Miscellaneous                                                                                       ', NULL, 16, 'Defence law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(121, 'Finance                                                                                             ', NULL, 22, 'Finance', 1, 'CENTRAL ACT', 1, 'INDIA'),
(188, 'Revenue                                                                                             ', NULL, 22, 'Finance', 1, 'CENTRAL ACT', 1, 'INDIA'),
(122, 'Transport                                                                                           ', NULL, 20, 'Motor vehicle Act', 1, 'CENTRAL ACT', 1, 'INDIA'),
(123, 'Motor Vehicle                                                                                       ', NULL, 20, 'Motor vehicle Act', 1, 'CENTRAL ACT', 1, 'INDIA'),
(124, 'Election                                                                                            ', NULL, 28, 'Election', 1, 'CENTRAL ACT', 1, 'INDIA'),
(125, 'Representation of People                                                                            ', NULL, 28, 'Election', 1, 'CENTRAL ACT', 1, 'INDIA'),
(126, 'Prisoners and Offenders                                                                             ', NULL, 38, 'VICTIMOLOGY AND PENOLOGY', 1, 'CENTRAL ACT', 1, 'INDIA'),
(127, 'Police                                                                                              ', NULL, 38, 'VICTIMOLOGY AND PENOLOGY', 1, 'CENTRAL ACT', 1, 'INDIA'),
(128, 'Convention                                                                                          ', NULL, 15, 'International  Trade & law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(129, 'Foreign Trade                                                                                       ', NULL, 15, 'International  Trade & law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(130, 'Miscellaneous                                                                                       ', NULL, 15, 'International  Trade & law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(131, 'Trust                                                                                               ', NULL, 26, 'Religion', 1, 'CENTRAL ACT', 1, 'INDIA'),
(132, 'Religion                                                                                            ', NULL, 26, 'Religion', 1, 'CENTRAL ACT', 1, 'INDIA'),
(133, 'Co-op Socities                                                                                      ', NULL, 26, 'Religion', 1, 'CENTRAL ACT', 1, 'INDIA'),
(134, 'Corporation                                                                                         ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(135, ' Commissions ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(136, 'Panchayat                                                                                           ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(137, 'Central Government                                                                                  ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(138, 'State Government                                                                                    ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(139, 'Architecture                                                                                        ', NULL, 36, 'PROFESSIONAL LAW', 1, 'CENTRAL ACT', 1, 'INDIA'),
(140, 'Fashion Technology                                                                                  ', NULL, 36, 'PROFESSIONAL LAW', 1, 'CENTRAL ACT', 1, 'INDIA'),
(141, 'CA                                                                                                  ', NULL, 36, 'PROFESSIONAL LAW', 1, 'CENTRAL ACT', 1, 'INDIA'),
(142, 'CS                                                                                                  ', NULL, 36, 'PROFESSIONAL LAW', 1, 'CENTRAL ACT', 1, 'INDIA'),
(143, 'Animal Husbandry and Poultry                                                                        ', NULL, 29, 'Agriculture & Liquor', 1, 'CENTRAL ACT', 1, 'INDIA'),
(144, 'Constitution of india                                                                               ', NULL, 1, 'Constitutional  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(145, 'EXIM                                                                                                ', NULL, 3, 'Mercantile  law (corporate law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(146, 'Miscellaneous                                                                                       ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(147, 'CWA                                                                                                 ', NULL, 36, 'PROFESSIONAL LAW', 1, 'CENTRAL ACT', 1, 'INDIA'),
(148, 'Police Force                                                                                        ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(149, 'Court                                                                                               ', NULL, 27, 'Legal Ethics & justice( stamp  Act) ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(150, 'Miscellaneous                                                                                       ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(151, 'Post Office                                                                                         ', NULL, 40, 'Tertiary Services', 1, 'CENTRAL ACT', 1, 'INDIA'),
(152, 'Miscellaneous                                                                                       ', NULL, 5, 'Criminal (Corruption ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(153, 'Custom & Exise                                                                                      ', NULL, 6, 'Taxation', 1, 'CENTRAL ACT', 1, 'INDIA'),
(154, 'Authority                                                                                           ', NULL, 8, 'IPR', 1, 'CENTRAL ACT', 1, 'INDIA'),
(155, 'Miscellaneous                                                                                       ', NULL, 6, 'Taxation', 1, 'CENTRAL ACT', 1, 'INDIA'),
(156, 'Authority                                                                                           ', NULL, 6, 'Taxation', 1, 'CENTRAL ACT', 1, 'INDIA'),
(157, 'electricity                                                                                         ', NULL, 23, 'Electricity', 1, 'CENTRAL ACT', 1, 'INDIA'),
(158, 'Child                                                                                               ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(159, 'Authority                                                                                           ', NULL, 29, 'Agriculture & Liquor', 1, 'CENTRAL ACT', 1, 'INDIA'),
(160, 'Torts                                                                                               ', NULL, 2, 'Torts', 1, 'CENTRAL ACT', 1, 'INDIA'),
(160, 'Animal and Birds                                                                                    ', NULL, 2, 'Torts', 1, 'CENTRAL ACT', 1, 'INDIA'),
(161, 'Animal and Birds                                                                                    ', NULL, 41, 'Animal and Birds', 1, 'CENTRAL ACT', 1, 'INDIA'),
(162, 'SC & ST                                                                                             ', NULL, 35, 'Miscellaneous (MRTP', 1, 'CENTRAL ACT', 1, 'INDIA'),
(163, 'Mics.                                                                                               ', NULL, 19, 'Women and child', 1, 'CENTRAL ACT', 1, 'INDIA'),
(164, 'Authority                                                                                           ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(165, 'Misc.                                                                                               ', NULL, 12, 'Media Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(166, 'Misc.                                                                                               ', NULL, 27, 'Legal Ethics & justice( stamp  Act) ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(167, 'Authority                                                                                           ', NULL, 17, 'Cyber law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(168, 'Human Rights                                                                                        ', NULL, 32, 'Human Rights', 1, 'CENTRAL ACT', 1, 'INDIA'),
(169, 'Authority                                                                                           ', NULL, 32, 'Human Rights', 1, 'CENTRAL ACT', 1, 'INDIA'),
(170, 'Geographical Designs                                                                                ', NULL, 8, 'IPR', 1, 'CENTRAL ACT', 1, 'INDIA'),
(171, 'Authority                                                                                           ', NULL, 12, 'Media Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(172, 'Misc.                                                                                               ', NULL, 9, 'Labour and Industrial  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(173, 'Competition                                                                                         ', NULL, 35, 'Miscellaneous (MRTP', 1, 'CENTRAL ACT', 1, 'INDIA'),
(174, 'Depositories                                                                                        ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(175, 'Plant Varieties                                                                                     ', NULL, 13, 'Environmental  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(176, 'Migration                                                                                           ', NULL, 14, 'Migration  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(177, 'Misc.                                                                                               ', NULL, 14, 'Migration  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(178, 'Waterways                                                                                           ', NULL, 33, 'Public Utilities', 1, 'CENTRAL ACT', 1, 'INDIA'),
(179, 'misc.                                                                                               ', NULL, 18, 'Insurance  Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(180, 'Forign Exchange                                                                                     ', NULL, 15, 'International  Trade & law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(181, 'Security force                                                                                      ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(182, 'Majority                                                                                            ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(183, 'Easement                                                                                            ', NULL, 24, 'Property', 1, 'CENTRAL ACT', 1, 'INDIA'),
(184, 'Authority                                                                                           ', NULL, 23, 'Electricity', 1, 'CENTRAL ACT', 1, 'INDIA'),
(185, 'Personal Law                                                                                        ', NULL, 7, 'Family law(Hindu law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(186, 'Explosives                                                                                          ', NULL, 42, 'Science And Technology', 1, 'CENTRAL ACT', 1, 'INDIA'),
(187, 'NI                                                                                                  ', NULL, 39, 'Banking', 1, 'CENTRAL ACT', 1, 'INDIA'),
(189, 'Budget                                                                                              ', NULL, 22, 'Finance', 1, 'CENTRAL ACT', 1, 'INDIA'),
(190, 'Misc.                                                                                               ', NULL, 11, 'Health & Medical (Drugs and cosmetics)', 1, 'CENTRAL ACT', 1, 'INDIA'),
(191, 'Charity                                                                                             ', NULL, 26, 'Religion', 1, 'CENTRAL ACT', 1, 'INDIA'),
(192, 'Local Authorities                                                                                   ', NULL, 21, 'Administrative law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(193, 'llaw relating to land                                                                               ', NULL, 25, 'Land law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(194, 'Lok adalat                                                                                          ', NULL, 27, 'Legal Ethics & justice( stamp  Act) ', 1, 'CENTRAL ACT', 1, 'INDIA'),
(195, 'Misc                                                                                                ', NULL, 40, 'Tertiary Services', 1, 'CENTRAL ACT', 1, 'INDIA'),
(196, 'misc.                                                                                               ', NULL, 34, 'Carriage Law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(197, 'Business                                                                                            ', NULL, 36, 'PROFESSIONAL LAW', 1, 'CENTRAL ACT', 1, 'INDIA'),
(198, 'Authority                                                                                           ', NULL, 37, 'FOOD AND PUBLIC DISTRIBUTION', 1, 'CENTRAL ACT', 1, 'INDIA'),
(199, 'Arbitration                                                                                         ', NULL, 10, 'Arbitration', 1, 'CENTRAL ACT', 1, 'INDIA'),
(200, 'sales of goods                                                                                      ', NULL, 3, 'Mercantile  law (corporate law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(201, 'Foreigners                                                                                          ', NULL, 15, 'International  Trade & law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(202, 'Emigration                                                                                          ', NULL, 14, 'Migration  law', 1, 'CENTRAL ACT', 1, 'INDIA'),
(203, 'Rubber                                                                                              ', NULL, 31, 'Natural Resources', 1, 'CENTRAL ACT', 1, 'INDIA'),
(204, 'Civil                                                                                               ', NULL, 35, 'Miscellaneous (MRTP', 1, 'CENTRAL ACT', 1, 'INDIA'),
(205, 'Evidence                                                                                            ', NULL, 43, 'Evidence', 1, 'CENTRAL ACT', 1, 'INDIA'),
(206, 'Torts', 'tort', 2, 'Torts', 1, 'CENTRAL ACT', 1, 'INDIA'),
(207, 'Succession', 'sucs', 7, 'Family Law(Hindu Law', 1, 'CENTRAL ACT', 1, 'INDIA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bareact_catg_mast`
--
ALTER TABLE `bareact_catg_mast`
  ADD PRIMARY KEY (`act_catg_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
