-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 04:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `binatang`
--

CREATE TABLE `binatang` (
  `id_binatang` int(11) NOT NULL,
  `nama_binatang` varchar(50) NOT NULL,
  `keterangan_binatang` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binatang`
--

INSERT INTO `binatang` (`id_binatang`, `nama_binatang`, `keterangan_binatang`, `gambar`, `id_kategori`) VALUES
(1, 'Harry Potter', 'Buku ini adlaah', '65ae7ee8d2eb8.jpg', 2),
(3, 'The Nightingale', 'Merupakan kisah tentang dua saudara perempuan di Perancis selama Perang Dunia II, yang melibatkan perjuangan mereka untuk bertahan hidup dan melawan pendudukan Nazi.', '65ae84041798c.jpg', 3),
(4, 'All the Light We Cannot See', 'Novel ini menceritakan kisah seorang gadis buta di Prancis dan seorang pemuda di Jerman yang hidup terpisah selama Perang Dunia II, dan bagaimana takdir mereka saling terkait.', '65ae841d08ca7.jpg', 3),
(5, 'The Pillars of the Earth', 'Sebuah epik sejarah yang melibatkan kehidupan masyarakat di Abad Pertengahan, dengan fokus pada pembangunan katedral dan intrik politik di Inggris.', '65ae84389b86d.jpeg', 3),
(6, 'Cosmos', 'Sebuah eksplorasi luar angkasa dan evolusi ilmu pengetahuan, yang ditulis oleh fisikawan dan astrofisikawan terkenal, Carl Sagan.', '65ae855b7343d.jpeg', 4),
(7, 'A Short History of Nearly Everything', 'Bill Bryson menjelajahi sejarah pengetahuan manusia, membahas segala sesuatu mulai dari fisika hingga biologi dalam gaya yang menyenangkan dan mudah dimengerti.', '65ae856f0ee38.jpeg', 4),
(8, 'The Gene: An Intimate History', 'Siddhartha Mukherjee mengeksplorasi sejarah dan dampak penemuan genetika, membawa pembaca dalam perjalanan yang mendalam melalui pemahaman manusia terhadap gen dan pewarisan.', '65ae8584492f0.jpg', 4),
(9, 'The 7 Habits of Highly Effective People', 'Sebuah buku klasik tentang pengembangan diri yang membahas prinsip-prinsip efektivitas dan manajemen diri untuk mencapai kesuksesan.', '65ae864a03d5e.jpeg', 5),
(10, 'Mindset: The New Psychology of Success', 'Carol Dweck menggali konsep \"mindset\" dan bagaimana pandangan kita terhadap keberhasilan dan kegagalan dapat memengaruhi pencapaian kita dalam berbagai aspek kehidupan.', '65ae8660a4cc5.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Fiksi Sejarah '),
(4, 'Sains Populer'),
(5, 'Pengembangan Pribadi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binatang`
--
ALTER TABLE `binatang`
  ADD PRIMARY KEY (`id_binatang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binatang`
--
ALTER TABLE `binatang`
  MODIFY `id_binatang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
