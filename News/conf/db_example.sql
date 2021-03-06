--
-- Database: `newsfeed`
--

CREATE DATABASE `newsfeed` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `newsfeed`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, '����������'),
(2, '�����'),
(3, '��������'),
(4, '�����'),
(5, '�����������');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(17),
(17);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `date_published` datetime NOT NULL,
  `header` varchar(255) COLLATE utf8_bin NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `content`, `date_published`, `header`, `category_id`) VALUES
(5, '����� ������� � ������� �������� ������� ������, ������������� ��������. ������ ���������� ��������� ����������� � ���������� ��������� ��������. ����������, ��� ��������� ���������� � ������� ��������� ������ ���������� � 1,5 ����.', '2018-07-31 19:33:39', '����� ������� � ������� �������� ������� ������ �� ��������', 2),
(6, '��������� ����� � � 31 ���� �� 1 ������� 2018 ���� - ������, ����� � ���� ���������� � ���� �����, � ������� ������� �������� �� ����������� ���������� �� �����, ���������� NASA. ���������� �� ����� �� ����� ������� �������� ����� 57,6 �������� ����������.', '2018-07-31 20:04:02', '���� 31 ���� �������� � ����� �� �������� ������� ����������', 2),
(7, '������ ������������� ��������� ��������� ����������������� ������� �������, � ���� �� ������� ������������� ������ � ��������� ���������� �����. � �� ������� ����������� � �������� ��������� ���������, ��� ������ ���� ������� ���� ������������ �� �����������.', '2018-07-31 20:05:49', '������ ������� � ������������� ����������������� �� �����', 2),
(8, '������� � Mail.Ru Group ������� � ����������� ���������� � ����������� ������������ �������� ������, ��������� � ��������� ��������. ����������� ��������� �� �������� �� ������ ������������� ��� ������������ ������ ������, �������� � Mail.Ru.', '2018-07-31 20:08:43', 'Mail.ru ���������� ���������� � ��������� �������� ������', 1),
(9, '�� ���������� �������, ������������, �������� iOS 12, ���������� ������������� ��������� ���� SIM-���� � ����� iPhone. ��� ����������, � ��������� �������, ����������� ������ � ������ ����������, ��������� ������� ������� ������ SIM-������ � ������� ����� ������ SIM-������.', '2018-07-31 20:19:00', '����� iPhone ����� ������������ ��� SIM-�����', 1),
(10, '���� ������� �������������� ����� � �������� ������ ���������� ������, ������ � ������ ������ � ��������� ������� � 1-� ���� ���-2018/19. ���� ����������� �� ������ 0:0.', '2018-07-31 20:24:25', '���� �� ����������� � ���������� ������ � ������ � �������� ����', 4),
(11, '�������� Uber ������� ������������� Uber Advanced Technologies, ������� � 2016 ���� ���������� ����������� ����������� ����������. �� ������ ������������ ����� ������������� ����� ���������, � ��������� ���� �������� ������������ ��������� ������� ������� �������� �������������.', '2018-07-31 20:27:53', 'Uber ���������� �� ���������� ����������� ����������', 5),
(12, '�������� �������� BMW �������� ����� ����� � �������. �����������, � ������� ����� ������������� ������� 1 ��������� ����, ����� ������������� �� ������ ������, ���������� �� ������ ��������.', '2018-07-31 20:30:36', '�������� BMW �������� ����� ����� � ������� �� 1 ���� ����', 5),
(13, '�� ������������� �������� ���� 30 ���� ����� �� ����� ����, ����� Guardian. ������� ����� ������� �� ������������ ������ ������� �������� � ���� ������ �� ���������������� ����� ������������� ���������, ��������� ���� ������� � ���� �������������.', '2018-07-31 20:38:39', '������ XIII ���� ������� � ��������������� ����� ������ 500 ���', 3),
(14, '������������� ����������� ����� ���� ����������� ������ �������� ������ ����������� ������, �������� ������� � ������������� ������������� �������. ����� ����� � ����� 15 ���������� ��������, ������� �������� �������� ��������.', '2018-07-31 20:39:52', '����������� ������ ���� �������������� ������ ���� ����� ������� �����', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6itmfjj4ma8lfpj10jx24mhvx` (`category_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK6itmfjj4ma8lfpj10jx24mhvx` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);