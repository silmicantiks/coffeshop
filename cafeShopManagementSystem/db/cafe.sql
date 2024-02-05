-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2024 pada 21.21
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `prod_id`, `prod_name`, `type`, `quantity`, `price`, `date`, `image`, `em_username`) VALUES
(4, 1, 'PROD-01', 'amer', 'Drinks', 1, 12, '2024-01-30', 'D:\\\\\\\\\\\\\\\\File Sakinah\\\\\\\\\\\\\\\\Dokumen\\\\\\\\\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', 'admin1234'),
(5, 2, 'PROD-01', 'amer', 'Drinks', 1, 12, '2024-01-30', 'D:\\\\\\\\\\\\\\\\File Sakinah\\\\\\\\\\\\\\\\Dokumen\\\\\\\\\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', 'admin1234'),
(6, 3, 'PROD-01', 'amer', 'Drinks', 1, 12, '2024-01-30', 'D:\\\\\\\\\\\\\\\\File Sakinah\\\\\\\\\\\\\\\\Dokumen\\\\\\\\\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', 'admin1234'),
(7, 4, 'PROD-01', 'amer', 'Drinks', 1, 12, '2024-01-30', 'D:\\\\\\\\\\\\\\\\File Sakinah\\\\\\\\\\\\\\\\Dokumen\\\\\\\\\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', 'admin1234'),
(8, 5, 'PROD-01', 'amer', 'Drinks', 1, 12, '2024-01-30', 'D:\\\\\\\\\\\\\\\\File Sakinah\\\\\\\\\\\\\\\\Dokumen\\\\\\\\\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', 'admin1234'),
(9, 6, 'PROD-01', 'amer', 'Drinks', 1, 12, '2024-01-30', 'D:\\\\\\\\\\\\\\\\File Sakinah\\\\\\\\\\\\\\\\Dokumen\\\\\\\\\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', 'admin1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `question` tinytext DEFAULT NULL,
  `answer` tinytext DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `question`, `answer`, `date`) VALUES
(1, 'adam1234', '12345678', 'What is your favorite Color?', 'red', '2024-01-30'),
(2, 'admin1234', '12345678', 'What is your favorite Color?', 'red', '2024-01-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(1) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `prod_id`, `prod_name`, `type`, `stock`, `price`, `status`, `image`, `date`) VALUES
(1, 'PROD-01', 'amer', 'Drinks', 1, 12, 'Available', 'D:\\\\\\\\File Sakinah\\\\\\\\Dokumen\\\\\\\\WhatsApp Image 2023-06-02 at 21.24.43.jpg', '2024-01-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `receipt`
--

INSERT INTO `receipt` (`id`, `customer_id`, `total`, `date`, `em_username`) VALUES
(1, 1, 12, '2024-01-30', 'admin1234'),
(2, 2, 12, '2024-01-30', 'admin1234'),
(3, 3, 12, '2024-01-30', 'admin1234'),
(4, 4, 12, '2024-01-30', 'admin1234'),
(5, 5, 12, '2024-01-30', 'admin1234'),
(6, 6, 12, '2024-01-30', 'admin1234');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
