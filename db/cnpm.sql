-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 04:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `tai_khoan` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ten_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `tai_khoan`, `mat_khau`, `ten_admin`) VALUES
(1, 'admin@gmail.com', '123456780a', 'OCD Team');

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id_danh_gia` int(11) NOT NULL,
  `ten_khach` varchar(255) DEFAULT NULL,
  `id_don` int(11) DEFAULT NULL,
  `loai_danh_gia` int(11) DEFAULT NULL,
  `chi_tiet` text DEFAULT NULL,
  `ngay_gio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danh_gia`
--

INSERT INTO `danh_gia` (`id_danh_gia`, `ten_khach`, `id_don`, `loai_danh_gia`, `chi_tiet`, `ngay_gio`) VALUES
(7, 'Tùng', 20218, 1, 'Rất ngon', '2021-11-20 20:09:39'),
(10, 'Hiền', 20238, 1, 'Đồ ăn ngon, hơi cay', '2021-11-21 12:38:01'),
(11, 'Hiền', 20239, 1, 'Đồ ăn ngon, hơi cay', '2021-11-21 12:39:35'),
(12, 'Hiền', 20240, 1, 'Đồ ăn ngon, hơi cay', '2021-11-21 12:40:42'),
(13, 'Hiền', 20241, 1, 'Đồ ăn ngon, hơi cay', '2021-11-21 12:45:25'),
(14, 'Hải', 20242, 2, 'Quán hơi nóng!!', '2021-11-21 12:55:50'),
(15, 'Hiền', 20243, 1, 'Đồ ăn ngon, hơi cay', '2021-11-21 12:56:52'),
(16, 'Hải', 20244, 2, 'Khổ qua đắng', '2021-11-21 12:59:59'),
(17, 'Hùng', 20245, 2, 'Đồ ăn rất ngon', '2021-11-21 13:05:52'),
(18, 'Hùng', 20246, 2, 'Đồ ăn rất ngon', '2021-11-21 13:07:14'),
(19, 'Hùng', 20247, 2, 'Đồ ăn rất ngon', '2021-11-21 13:10:28'),
(20, 'Hải', 20249, 2, 'cơm ngon ', '2021-11-21 14:15:04'),
(21, 'Cường', 20250, 4, 'Món ăn khá mặn', '2021-11-21 14:24:59'),
(22, 'Dũng', 20251, 1, 'Món ăn rất ngon', '2021-11-21 14:28:25'),
(23, 'Kiên', 20252, 1, 'Món ăn rát ngon', '2021-11-21 14:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `id_don` int(11) NOT NULL,
  `id_gio` int(11) DEFAULT NULL,
  `so_ban` int(11) DEFAULT NULL,
  `ten_khach` varchar(255) DEFAULT NULL,
  `ghi_chu` text DEFAULT NULL,
  `ngay_gio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trang_thai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id_don`, `id_gio`, `so_ban`, `ten_khach`, `ghi_chu`, `ngay_gio`, `trang_thai`) VALUES
(20211, 1, 11, 'Hiền test1', '', '2021-11-21 12:19:44', 1),
(20217, 2, 5, 'Quyên', '', '2021-11-20 20:11:00', 1),
(20218, 3, 5, 'Tùng', '', '2021-11-20 20:11:05', 1),
(20220, 4, 5, 'Quyên', '', '2021-11-21 05:02:35', 1),
(20221, 5, 5, 'Tùng', '', '2021-11-21 05:02:29', 1),
(20235, 19, 5, 'Quyên', '', '2021-11-21 12:10:23', 1),
(20238, 21, 0, 'Hiền', '', '2021-11-21 12:57:44', 1),
(20244, 27, 8, 'Hải', '', '2021-11-21 12:59:45', 0),
(20245, 28, 8, 'Hùng', '', '2021-11-21 13:05:37', 0),
(20246, 29, 8, 'Hùng', '', '2021-11-21 13:07:07', 0),
(20247, 30, 8, 'Hùng', '', '2021-11-21 13:10:21', 0),
(20248, 31, 5, 'Quyên', '', '2021-11-21 13:48:03', 0),
(20249, 32, 10, 'Hải', '', '2021-11-21 14:14:48', 0),
(20250, 33, 10, 'Cường', '', '2021-11-21 14:24:43', 0),
(20251, 34, 8, 'Dũng', '', '2021-11-21 14:28:09', 0),
(20252, 35, 8, 'Kiên', '', '2021-11-21 14:29:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `STT` int(11) NOT NULL,
  `id_gio` int(11) DEFAULT NULL,
  `id_mon` int(11) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gio_hang`
--

INSERT INTO `gio_hang` (`STT`, `id_gio`, `id_mon`, `so_luong`) VALUES
(86, 1, 8, 1),
(87, 1, 2, 1),
(88, 1, 12, 1),
(89, 1, 40, 2),
(92, 21, 3, 1),
(93, 21, 9, 1),
(94, 21, 28, 1),
(95, 21, 38, 1),
(96, 22, 3, 1),
(97, 22, 9, 1),
(98, 22, 28, 1),
(99, 22, 38, 1),
(100, 23, 3, 1),
(101, 23, 9, 1),
(102, 23, 28, 1),
(103, 23, 38, 1),
(104, 24, 3, 1),
(105, 24, 9, 1),
(106, 24, 28, 1),
(107, 24, 38, 1),
(108, 25, 2, 1),
(109, 25, 38, 2),
(110, 26, 3, 1),
(111, 26, 9, 1),
(112, 26, 28, 1),
(113, 26, 38, 1),
(115, 27, 1, 1),
(116, 27, 26, 1),
(117, 27, 38, 1),
(122, 28, 1, 1),
(123, 28, 2, 1),
(124, 28, 5, 1),
(125, 28, 40, 3),
(126, 29, 1, 1),
(127, 29, 2, 1),
(128, 29, 5, 1),
(129, 29, 40, 3),
(133, 30, 1, 1),
(134, 30, 2, 1),
(135, 30, 5, 1),
(136, 30, 40, 3),
(137, 31, 12, 2),
(138, 31, 27, 1),
(139, 32, 1, 1),
(140, 32, 2, 1),
(141, 32, 40, 1),
(142, 32, 39, 2),
(143, 33, 2, 2),
(144, 33, 8, 2),
(145, 33, 40, 3),
(146, 33, 33, 1),
(147, 0, 33, 1),
(148, 0, 34, 1),
(149, 34, 40, 1),
(150, 34, 1, 2),
(151, 34, 27, 1),
(152, 34, 32, 1),
(153, 35, 27, 1),
(154, 35, 1, 2),
(155, 35, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang`
--

CREATE TABLE `loai_hang` (
  `id_loai` int(11) NOT NULL,
  `ten_loai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai_hang`
--

INSERT INTO `loai_hang` (`id_loai`, `ten_loai`) VALUES
(1, 'Món chính'),
(2, 'Món thêm'),
(3, 'Nước giải khát');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_mon` int(11) NOT NULL,
  `id_loai` int(11) DEFAULT NULL,
  `ten_mon` varchar(255) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `so_luong_con` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `ban_chay` int(11) DEFAULT NULL,
  `hinh_anh` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_mon`, `id_loai`, `ten_mon`, `mo_ta`, `so_luong_con`, `gia`, `ban_chay`, `hinh_anh`) VALUES
(1, 1, 'Cơm Tấm', 'dĩa', 95, 40000, 1, '61992864a3ec0-1637427300.jpg'),
(2, 1, 'Cơm gà xối xả', 'dĩa', 74, 40000, 1, '6199288ea6cc7-1637427342.jpg'),
(3, 1, 'Cơm chiên', 'dĩa', 80, 40000, 0, '619928b3e724b-1637427379.jpg'),
(4, 1, 'Mì xào hải sản', 'dĩa', 97, 40000, 0, '619928f3bd655-1637427443.jpg'),
(5, 1, 'Mì xào giòn', 'dĩa', 94, 45000, 0, '6199290f2963a-1637427471.jpg'),
(7, 1, 'Mì Quảng', 'tô', 99, 40000, 0, '61992931ea55c-1637427505.jpg'),
(8, 1, 'Bún thịt nướng', 'tô', 82, 35000, 1, '61992957a1f5c-1637427543.jpg'),
(9, 1, 'Bún bò Huế', 'tô', 93, 40000, 0, '6199296f07220-1637427567.jpg'),
(10, 1, 'Bún chả cá', 'tô', 50, 35000, 0, '6199298f30493-1637427599.jpg'),
(11, 1, 'Bún mọc', 'tô', 99, 35000, 0, '619929c5b2f2a-1637427653.jpg'),
(12, 1, 'Bánh canh cua', 'tô', 90, 40000, 1, '619929e006ba3-1637427680.jpg'),
(13, 1, 'Hủ tiếu mực', 'tô', 94, 40000, 0, '61992b537c104-1637428051.jpg'),
(26, 2, 'Canh khổ qua', 'tô', 99, 15000, 0, '61992b93e652b-1637428115.jpg'),
(27, 2, 'Canh chua cá', 'tô', 91, 20000, 1, '61992bb123bce-1637428145.jpg'),
(28, 2, 'Canh rong biển', 'tô', 90, 15000, 0, '61992bd1c5cd4-1637428177.jpg'),
(29, 2, 'Dưa chua', 'dĩa', 99, 10000, 0, '61992bf5c775a-1637428213.png'),
(30, 2, 'Kimchi', 'dĩa', 100, 10000, 0, '6199b2c1a6e2d-1637462721.jpg'),
(31, 2, 'Rau sống', 'dĩa', 100, 5000, 0, '61992c233f0a3-1637428259.jpg'),
(32, 2, 'Rau xào', 'dĩa', 99, 10000, 0, '61992c3bea128-1637428283.jpg'),
(33, 3, 'Coca Cola', 'lon', 43, 15000, 0, '61992c5f59deb-1637428319.jfif'),
(34, 3, 'Pepsi', 'lon', 95, 15000, 0, '61992c7420a5c-1637428340.jpg'),
(35, 3, 'Sprite', 'lon', 41, 15000, 0, '61992c8604302-1637428358.jpg'),
(36, 3, 'Tiger', 'lon', 50, 20000, 0, '61992ca842767-1637428392.jpg'),
(37, 3, 'Heniken', 'lon', 47, 20000, 0, '61992cbfa792a-1637428415.jpg'),
(38, 3, 'Nước cam', 'ly', 18, 15000, 1, '61992cdb99b11-1637428443.jpg'),
(39, 3, 'Nước chanh', 'ly', 98, 15000, 0, '61992cf26c930-1637428466.jpg'),
(40, 3, 'Dừa tắc', 'ly', 12, 15000, 1, '61992d0b7759e-1637428491.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id_danh_gia`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id_don`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `id_mon` (`id_mon`);

--
-- Indexes for table `loai_hang`
--
ALTER TABLE `loai_hang`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_mon`),
  ADD KEY `id_loai` (`id_loai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id_danh_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20253;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `loai_hang`
--
ALTER TABLE `loai_hang`
  MODIFY `id_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_mon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_loai`) REFERENCES `loai_hang` (`id_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
