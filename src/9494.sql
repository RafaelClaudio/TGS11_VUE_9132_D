-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 03:20 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `9494`
--

-- --------------------------------------------------------

--
-- Table structure for table `detil_pemesanan`
--

CREATE TABLE `detil_pemesanan` (
  `id` int(255) NOT NULL,
  `id_pemesanan` int(255) NOT NULL,
  `id_produk` int(255) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_pemesanan`
--

INSERT INTO `detil_pemesanan` (`id`, `id_pemesanan`, `id_produk`, `jumlah`, `updated_at`, `updated_by`, `created_at`, `created_by`) VALUES
(1, 1, 2, 2, NULL, NULL, '2020-03-03 17:00:00', 3),
(2, 2, 4, 1, NULL, NULL, '2020-03-02 17:00:00', 3),
(3, 5, 3, 5, NULL, NULL, '2020-03-25 17:00:00', 3),
(4, 3, 5, 1, NULL, NULL, '2020-03-22 17:00:00', 3),
(5, 2, 4, 10, NULL, NULL, '2020-03-19 17:00:00', 3),
(6, 6, 5, 9, '2020-04-25 12:55:48', 4, '2020-04-25 12:48:28', 4),
(8, 6, 1, 10, NULL, NULL, '2020-04-25 12:53:19', 4);

-- --------------------------------------------------------

--
-- Table structure for table `detil_transaksi_layanan`
--

CREATE TABLE `detil_transaksi_layanan` (
  `id` int(255) NOT NULL,
  `id_layanan` int(255) NOT NULL,
  `id_hewan` int(255) NOT NULL,
  `harga` decimal(65,5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_transaksi` int(255) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_transaksi_layanan`
--

INSERT INTO `detil_transaksi_layanan` (`id`, `id_layanan`, `id_hewan`, `harga`, `jumlah`, `id_transaksi`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 1, 1, '500000.00000', 1, 1, NULL, NULL, 1, '2020-02-29 17:00:00'),
(2, 1, 2, '700000.00000', 1, 2, NULL, NULL, 1, '2020-03-03 17:00:00'),
(3, 3, 3, '1000000.00000', 1, 3, NULL, NULL, 1, '2020-03-02 17:00:00'),
(4, 4, 4, '300000.00000', 1, 3, NULL, NULL, 1, '2020-03-01 17:00:00'),
(5, 5, 5, '400000.00000', 1, 5, NULL, NULL, 1, '2020-02-29 17:00:00'),
(6, 1, 6, '300000.00000', 2, 18, 4, '2020-04-22 00:20:49', 4, '2020-04-22 00:14:03'),
(10, 1, 12, '300000.00000', 2, 18, NULL, NULL, 4, '2020-04-22 00:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `detil_transaksi_penjualan`
--

CREATE TABLE `detil_transaksi_penjualan` (
  `id` int(255) NOT NULL,
  `id_produk` int(255) NOT NULL,
  `id_transaksi` int(255) NOT NULL,
  `harga` decimal(65,5) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_transaksi_penjualan`
--

INSERT INTO `detil_transaksi_penjualan` (`id`, `id_produk`, `id_transaksi`, `harga`, `jumlah`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 2, 2, '100000.00000', 2, NULL, NULL, 3, '2020-03-10 17:00:00'),
(2, 2, 3, '300000.00000', 2, NULL, NULL, 3, '2020-03-19 17:00:00'),
(3, 5, 4, '250000.00000', 1, NULL, NULL, 3, '2020-03-18 17:00:00'),
(4, 5, 3, '400000.00000', 5, NULL, NULL, 3, '2020-03-07 17:00:00'),
(5, 4, 1, '150000.00000', 1, NULL, NULL, 3, '2020-03-25 17:00:00'),
(6, 5, 8, '300000.00000', 2, 4, '2020-04-21 23:46:30', 4, '2020-04-21 12:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `hewan`
--

CREATE TABLE `hewan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_jenis_hewan` int(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hewan`
--

INSERT INTO `hewan` (`id`, `nama`, `id_jenis_hewan`, `tanggal_lahir`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Miko', 5, '2020-03-03', 0, 4, '2020-03-04 00:47:14', 3, '2020-03-21 17:00:00'),
(2, 'Kitty', 4, '2020-03-16', 0, 3, '2020-03-04 00:58:24', 3, '2020-03-02 17:00:00'),
(3, 'Oki', 1, '2020-03-01', 0, 1, '2020-03-04 00:48:10', 3, '2020-03-25 17:00:00'),
(4, 'sam', 2, '2020-03-16', 0, 2, '2020-03-04 00:47:36', 3, '2020-03-03 17:00:00'),
(5, 'Gogo', 3, '2020-03-07', 1, 4, '2020-04-20 11:23:54', 3, '2020-03-04 00:48:21'),
(6, 'asep baru', 1, '2020-02-12', 1, 4, '2020-04-22 12:03:15', 4, '2020-04-20 11:33:45'),
(7, 'minuman enak', 1, '2020-12-01', 0, NULL, NULL, 4, '2020-04-20 11:35:27'),
(8, 'asep', 1, '2020-02-12', 0, NULL, NULL, 4, '2020-04-22 00:14:03'),
(12, 'asep baru', 1, '2020-02-12', 1, 4, '2020-04-22 12:03:15', 4, '2020-04-22 00:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_hewan`
--

CREATE TABLE `jenis_hewan` (
  `id` int(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_hewan`
--

INSERT INTO `jenis_hewan` (`id`, `keterangan`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Herder', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(2, 'Pitbull', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(3, 'Pudel', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(4, 'Kintamani', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(5, 'Husky', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(6, 'mas koki', 1, 6, '2020-04-13 11:01:05', 6, '2020-04-13 10:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_layanan`
--

CREATE TABLE `jenis_layanan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_layanan`
--

INSERT INTO `jenis_layanan` (`id`, `nama`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Grooming Mandi Kutu Anjing', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(2, 'Grooming Biasa Anjing', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(3, 'Penitipan Anjing', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(4, 'Potong Kuku Anjing', 0, 6, '2020-04-13 11:19:47', 1, '2020-03-01 17:00:00'),
(5, 'Potong Kuku Anjing', 1, 6, '2020-04-13 11:20:25', 1, '2020-03-01 17:00:00'),
(6, 'Penitipan Kucing', 0, NULL, NULL, 6, '2020-04-13 11:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `isDelete` int(1) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `keterangan`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Makanan', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(2, 'Mainan', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(3, 'Minuman', 0, NULL, NULL, 1, '2020-03-02 17:00:00'),
(4, 'Sabun', 1, 6, '2020-04-13 11:04:56', 1, '2020-03-01 17:00:00'),
(5, 'Accessories', 0, NULL, NULL, 1, '2020-02-29 17:00:00'),
(6, 'vitamin C', 0, 6, '2020-04-13 11:04:22', 6, '2020-04-13 11:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int(255) NOT NULL,
  `harga` decimal(65,5) NOT NULL,
  `id_ukuran_hewan` int(10) NOT NULL,
  `id_layanan` int(255) NOT NULL,
  `url_gambar` varchar(255) DEFAULT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `harga`, `id_ukuran_hewan`, `id_layanan`, `url_gambar`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, '500000.00000', 1, 3, NULL, 0, 0, NULL, 1, '2020-02-29 17:00:00'),
(2, '700000.00000', 3, 1, NULL, 0, 0, NULL, 1, '2020-03-03 17:00:00'),
(3, '1000000.00000', 2, 3, NULL, 0, 0, NULL, 1, '2020-02-29 17:00:00'),
(4, '300000.00000', 1, 5, NULL, 0, 0, NULL, 1, '2020-03-01 17:00:00'),
(5, '400000.00000', 1, 4, NULL, 0, 0, NULL, 1, '2020-03-02 17:00:00'),
(6, '20000.00000', 1, 1, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png', 0, NULL, NULL, 4, '2020-03-26 04:49:01'),
(7, '20000.00000', 1, 1, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/fe0d57999181afd6da358100b122c578.png', 0, NULL, NULL, 4, '2020-03-26 05:31:09'),
(8, '20000.00000', 1, 1, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/82d54b90003f3a596aba21fc9d6204b6.png', 0, 4, '2020-03-26 05:56:10', 4, '2020-03-26 05:31:12'),
(9, '20000.00000', 1, 1, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png', 0, NULL, NULL, 4, '2020-03-26 05:58:51'),
(10, '20000.00000', 1, 1, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png', 0, NULL, NULL, 4, '2020-03-26 05:58:54'),
(11, '10000.00000', 2, 1, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/60aac9adfa3f01b3698d98beedb2998c.png', 0, 6, '2020-04-13 04:07:57', 6, '2020-04-13 04:05:55'),
(12, '20000.00000', 5, 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/6a803042bc5ab123f8a2ffa17a4d83f4.jpg', 1, 6, '2020-04-13 11:28:57', 6, '2020-04-13 10:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `isDelete` int(1) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `no_telp`, `tanggal`, `isDelete`, `alamat`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Abdul Qodir', '08912345', '2020-03-02', 0, 'Jalan Solo Km 43 Yogyakarta', NULL, NULL, 1, '2020-03-01 17:00:00'),
(2, 'Hery Susanto', '0854336578', '2020-03-03', 0, 'Jalan Affandi no 21 Yogyakarta', NULL, NULL, 1, '2020-03-02 17:00:00'),
(3, 'Ferda Evina', '0823563422', '2020-03-01', 0, 'Jalan Kranggan no 1 Yogyakarta', NULL, NULL, 1, '2020-02-29 17:00:00'),
(4, 'Alin Persada', '0851243666', '2020-03-04', 0, 'Jalan Kranggan no 28 Yogyakarta', NULL, NULL, 1, '2020-03-03 17:00:00'),
(5, 'Aurelia', '081994971313', '1999-11-01', 0, 'Babarsari', NULL, NULL, 1, '2020-03-01 17:00:00'),
(6, 'minuman enak', '08912345123', '2020-12-01', 1, 'jl.bantul', 4, '2020-04-20 12:01:20', 4, '2020-04-20 11:44:08'),
(7, 'minuman enak', '089123451231', '2020-12-01', 0, 'jl.bantul', NULL, NULL, 4, '2020-04-20 12:05:48'),
(8, 'minuman enak', '089123451232', '2020-12-01', 0, 'jl.bantul', NULL, NULL, 4, '2020-04-20 12:06:25'),
(9, 'minuman enak', '089123451233', '2020-12-01', 0, 'jl.bantul', NULL, NULL, 4, '2020-04-20 12:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `id_role_pegawai` int(255) NOT NULL,
  `isDelete` int(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `tanggal_lahir`, `alamat`, `no_telp`, `id_role_pegawai`, `isDelete`, `username`, `password`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Yosafat Nababan', '1999-10-24', 'Jalan Babarsari No.42', '081994971313', 1, 0, 'Yosafat9204', '9204', '2020-03-01 17:00:00', 1, NULL, 0),
(2, 'Rafael Claudio', '1999-03-02', 'Jalan Kaliurang No.22', '082146872546', 2, 0, 'Rafael66', 'RinduKamu05', '2020-03-01 17:00:00', 1, NULL, 0),
(3, 'Kelvin Ignasius Saputra', '1999-03-01', 'Jalan Babarsari No.44', '084666512554', 3, 0, 'KelvinAja', 'Aku12345', '2020-03-01 17:00:00', 1, NULL, 0),
(4, 'I Putu Ari', '1999-03-04', 'Jalan Kusumanegara No.12a', '081945876588', 2, 0, 'PutuAri11', 'ScrumMaster', '2020-03-01 17:00:00', 1, NULL, 0),
(5, 'Angela Ajeng', '2020-03-12', 'Jalan Kusumanegara No.55', '08554846552136', 2, 1, 'Ajeng9999', 'UAJY1945', '2020-03-17 17:00:00', 1, '2020-04-13 02:04:30', 6),
(6, 'putu ary', '1999-02-02', 'jln jln', '123213', 1, 0, 'test', '$2y$10$JJElfUhcKk.01v8huNkp3O9Eix3PGVY5mOXQDiPwECC3fSiJRFz/S', '2020-03-11 01:10:53', 4, '2020-04-13 11:46:03', 6),
(7, 'test cashier', '1999-04-08', 'jln barbasari', '21093902193', 3, 1, 'cashier', '$2y$10$UxXuiTnXnaiEDVlOOUIqFOXqRGxQxu3gikRhEpJeCDtNg7aTvH7sK', '2020-04-13 10:13:18', 6, '2020-04-13 11:38:48', 6),
(8, 'ary test baru', '1999-06-16', 'jln bali', '09830893', 1, 0, 'test2', '$2y$10$hjdjiS0JkjIXe8.3EvCH0ul5wJKfLjHylx7zz9zqo3HQCOs8dktIO', '2020-04-13 11:36:20', 6, '2020-04-13 11:38:34', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_layanan`
--

CREATE TABLE `pembayaran_layanan` (
  `id` int(255) NOT NULL,
  `id_transaksi` int(255) NOT NULL,
  `diskon` decimal(65,5) NOT NULL,
  `bayar` decimal(65,5) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran_layanan`
--

INSERT INTO `pembayaran_layanan` (`id`, `id_transaksi`, `diskon`, `bayar`, `updated_at`, `updated_by`, `created_at`, `created_by`) VALUES
(1, 1, '0.00000', '500000.00000', NULL, NULL, '2020-03-01 17:00:00', 1),
(2, 2, '70000.00000', '630000.00000', NULL, NULL, '2020-03-02 17:00:00', 1),
(3, 3, '100000.00000', '900000.00000', NULL, NULL, '2020-02-29 17:00:00', 1),
(4, 4, '0.00000', '300000.00000', NULL, NULL, '2020-03-03 17:00:00', 1),
(5, 5, '40000.00000', '360000.00000', NULL, NULL, '2020-03-01 17:00:00', 1),
(7, 18, '500.00000', '500000.00000', NULL, NULL, '2020-04-22 12:03:15', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_penjualan`
--

CREATE TABLE `pembayaran_penjualan` (
  `id` int(255) NOT NULL,
  `id_transaksi` int(255) NOT NULL,
  `diskon` decimal(65,5) NOT NULL,
  `bayar` decimal(65,5) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran_penjualan`
--

INSERT INTO `pembayaran_penjualan` (`id`, `id_transaksi`, `diskon`, `bayar`, `updated_at`, `updated_by`, `created_at`, `created_by`) VALUES
(1, 3, '20000.00000', '230000.00000', NULL, NULL, '2020-03-01 17:00:00', 3),
(2, 1, '0.00000', '100000.00000', NULL, NULL, '2020-03-02 17:00:00', 3),
(3, 2, '30000.00000', '270000.00000', NULL, NULL, '2020-03-16 17:00:00', 3),
(4, 4, '50000.00000', '350000.00000', NULL, NULL, '2020-03-03 17:00:00', 3),
(5, 5, '0.00000', '150000.00000', NULL, NULL, '2020-03-09 17:00:00', 3),
(9, 8, '500.00000', '500000.00000', NULL, NULL, '2020-04-22 12:37:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(255) NOT NULL,
  `no_PO` varchar(255) DEFAULT NULL,
  `tgl_pemesanan` date NOT NULL,
  `id_supplier` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `no_PO`, `tgl_pemesanan`, `id_supplier`, `status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'PO-2020-03-01-01', '2020-03-01', 1, 'tercetak', NULL, NULL, 1, '2020-03-02 17:00:00'),
(2, 'PO-2020-03-01-02', '2020-03-01', 2, 'belum tercetak', NULL, NULL, 1, '2020-03-03 17:00:00'),
(3, 'PO-2020-03-02-03', '2020-03-02', 3, 'diterima', NULL, NULL, 1, '2020-02-29 17:00:00'),
(4, 'PO-2020-03-03-04', '2020-03-03', 4, 'tercetak', NULL, NULL, 1, '2020-03-02 17:00:00'),
(5, 'PO-2020-03-03-05', '2020-03-03', 5, 'belum tercetak', NULL, NULL, 1, '2020-03-01 17:00:00'),
(6, 'PO-2020-04-24-06', '2020-04-24', 6, 'belum tercetak', 4, '2020-04-25 12:59:51', 4, '2020-04-24 14:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_kategori_produk` int(255) NOT NULL,
  `harga` decimal(65,5) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `jmlh_min` int(255) NOT NULL,
  `jmlh` int(255) NOT NULL,
  `isDelete` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `link_gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `id_kategori_produk`, `harga`, `satuan`, `jmlh_min`, `jmlh`, `isDelete`, `updated_at`, `updated_by`, `created_at`, `created_by`, `link_gambar`) VALUES
(1, 'Royal Canin Mini Adult', 1, '1500000.00000', 'Bungkus', 10, 20, 0, NULL, NULL, '2020-03-01 17:00:00', 1, NULL),
(2, 'Snack Jerry High Carrot', 1, '700000.00000', 'Bungkus', 10, 20, 0, NULL, NULL, '2020-03-01 17:00:00', 1, NULL),
(3, 'Vita Fortan', 1, '450000.00000', 'Bungkus', 10, 20, 0, NULL, NULL, '2020-03-01 17:00:00', 1, NULL),
(4, 'Snack Parama Lamb', 1, '350000.00000', 'Bungkus', 10, 20, 0, NULL, NULL, '2020-03-01 17:00:00', 1, NULL),
(5, 'Snack Parama Salmon', 1, '300000.00000', 'Bungkus', 10, 18, 0, '2020-04-22 12:37:49', 4, '2020-03-01 17:00:00', 1, NULL),
(7, 'Dog Food Ding Ding Dong', 1, '9000.00000', 'Bungkus', 10, 100, 0, NULL, NULL, '2020-03-01 17:00:00', 1, NULL),
(8, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, NULL, NULL, '2020-03-26 05:13:06', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(9, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, NULL, NULL, '2020-03-26 05:17:35', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(10, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, NULL, NULL, '2020-03-26 05:29:36', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(11, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, NULL, NULL, '2020-03-26 05:30:39', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/df1f534f7d599f2006ec2c37e13c3b4d.png'),
(12, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, '2020-03-26 06:07:14', 4, '2020-03-26 05:30:40', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/542074c8eea2b84279f9859c26ba3500.png'),
(13, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, NULL, NULL, '2020-03-26 06:07:43', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(14, 'minuman enak', 1, '20000.00000', 'biji', 10, 20, 0, NULL, NULL, '2020-04-13 01:17:37', 4, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(15, 'test biji', 1, '123213.00000', 'biji', 1, 123, 0, NULL, NULL, '2020-04-13 02:07:33', 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/8be71497623a8366f9253d30e40aa28d.jpg'),
(16, 'test 2', 1, '123.00000', 'biji', 123, 123, 0, NULL, NULL, '2020-04-13 02:10:10', 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(17, 'test2', 1, '123.00000', 'biji', 1, 123, 0, NULL, NULL, '2020-04-13 02:12:07', 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(18, 'test4', 1, '1234.00000', 'bungkus', 1, 123, 0, NULL, NULL, '2020-04-13 02:13:16', 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/default.png'),
(19, 'testbaru1', 1, '1234.00000', 'bungkus', 1, 123, 0, '2020-04-13 02:21:27', 6, '2020-04-13 02:19:53', 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/dcae69b7c4e1440c602028860a93b3ff.jpg'),
(20, 'wiscas kucing', 1, '20000.00000', 'bungkus', 4, 10, 1, '2020-04-13 11:16:32', 6, '2020-04-13 10:12:11', 6, 'http://localhost:8080/rest_api-kouvee-pet-shop/resource/edadaae67f445a0a0be726fceaeaa8b7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `role_pegawai`
--

CREATE TABLE `role_pegawai` (
  `id` int(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `isDelete` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_pegawai`
--

INSERT INTO `role_pegawai` (`id`, `keterangan`, `isDelete`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Owner', 0, '2020-03-01 17:00:00', 1, NULL, NULL),
(2, 'Customer Service', 0, '2020-03-01 17:00:00', 1, NULL, NULL),
(3, 'Cashier', 0, '2020-03-01 17:00:00', 1, NULL, NULL),
(4, 'courier motor', 1, '2020-04-13 11:31:02', 6, '2020-04-13 11:32:13', 6);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `isDelete` int(1) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `no_telp`, `alamat`, `kota`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Nugraha', '081801234567', 'Jl. Babarsari,Yogyakarta', '', 0, 4, '2020-03-04 01:26:29', 1, '2020-03-01 17:00:00'),
(2, 'Nugraha', '081801234567', 'jl.Babarsari Kota Yogyakarta', '', 0, 3, '2020-03-04 01:16:51', 1, '2020-03-01 17:00:00'),
(3, 'Nugraha', '081801234567', 'Jl. Babarsari Kota Yogyakarta', '', 0, 1, '2020-03-04 01:00:34', 1, '2020-03-01 17:00:00'),
(4, 'Nugraha', '81801234567', 'Jl. Babarsari', '', 0, 2, '2020-03-04 00:57:13', 1, '2020-03-01 17:00:00'),
(5, 'Nugraha', '081801234567', 'Jl Babarsari', 'Yogyakarta', 0, 6, '2020-04-13 11:42:09', 1, '0000-00-00 00:00:00'),
(6, 'ary supplier', '098746', 'jln bali', 'denpasar', 1, 6, '2020-04-13 11:42:39', 6, '2020-04-13 11:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_layanan`
--

CREATE TABLE `transaksi_layanan` (
  `id` int(255) NOT NULL,
  `no_transaksi` varchar(255) DEFAULT NULL,
  `is_member` int(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `id_cashier` int(255) DEFAULT NULL,
  `id_CS` int(255) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_layanan`
--

INSERT INTO `transaksi_layanan` (`id`, `no_transaksi`, `is_member`, `no_telp`, `id_cashier`, `id_CS`, `tgl_transaksi`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'LY-010320-01', 0, '8912345', NULL, 2, '2020-03-01', 'belum selesai', '2020-02-29 17:00:00', 1, NULL, NULL),
(2, 'LY-010320-02', 0, '854336578', 7, 3, '2020-03-01', 'lunas', '2020-03-03 17:00:00', 1, NULL, NULL),
(3, 'LY-020320-03', 0, '823563422', 7, 5, '2020-03-02', 'lunas', '2020-03-02 17:00:00', 1, NULL, NULL),
(4, 'LY-020320-04', 0, '851243666', NULL, 2, '2020-03-02', 'belum lunas', '2020-03-01 17:00:00', 1, NULL, NULL),
(5, 'LY-030320-05', 0, '816528166', 4, 1, '2020-03-03', 'lunas', '2020-02-29 17:00:00', 1, NULL, NULL),
(6, NULL, 1, '089123451233', NULL, 4, '2020-04-21', 'dibatalkan', '2020-04-21 06:18:03', 4, '2020-04-21 06:38:34', NULL),
(7, '10177', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:18:36', 4, NULL, NULL),
(8, 'LY-010170-08', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:24:03', 4, NULL, NULL),
(9, 'LY--09', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:25:23', 4, NULL, NULL),
(10, 'LY-010170-10', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:25:45', 4, NULL, NULL),
(11, 'LY-010170-11', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:28:55', 4, NULL, NULL),
(12, 'LY--12', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:29:28', 4, NULL, NULL),
(13, 'LY-210420-13', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:29:54', 4, NULL, NULL),
(14, 'LY-210420-14', 0, '2147483647', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:31:20', 4, NULL, NULL),
(15, 'LY-210420-15', 0, '12312312321', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:32:34', 4, NULL, NULL),
(16, 'LY-210420-16', 0, '12312312321', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:32:56', 4, NULL, NULL),
(17, 'LY-210420-17', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 06:33:15', 4, NULL, NULL),
(18, 'LY-210420-18', 1, '089123451233', NULL, 4, '2020-04-21', 'belum selesai', '2020-04-21 07:02:28', 4, '2020-04-22 12:03:15', 4);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `id` int(255) NOT NULL,
  `no_transaksi` varchar(255) DEFAULT NULL,
  `is_member` int(25) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `id_CS` int(255) NOT NULL,
  `id_cashier` int(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`id`, `no_transaksi`, `is_member`, `no_telp`, `tgl_transaksi`, `id_CS`, `id_cashier`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'PR-010320-01', 0, '08912345', '2020-03-01', 1, 2, 'belum lunas', '2020-03-01 17:00:00', 1, NULL, NULL),
(2, 'PR-010320-02', 0, '0854336578', '2020-03-01', 2, 3, 'belum lunas', '2020-02-29 17:00:00', 1, NULL, NULL),
(3, 'PR-020320-03', 0, '0823563422', '2020-03-02', 4, 5, 'belum lunas', '2020-03-03 17:00:00', 1, NULL, NULL),
(4, 'PR-020320-04', 0, '0851243666', '2020-03-02', 5, 3, 'belum lunas', '2020-03-01 17:00:00', 1, NULL, NULL),
(5, 'PR-030320-05', 0, '0816528166', '2020-03-03', 5, 2, 'dibatalkan', '2020-03-01 17:00:00', 1, NULL, NULL),
(6, 'PR-210420-06', 0, '12321312321', '2020-04-21', 4, NULL, 'dibatalkan', '2020-04-21 07:16:47', 4, '2020-04-21 07:18:46', NULL),
(7, 'PR-210420-07', 1, '089123451233', '2020-04-21', 4, NULL, 'belum lunas', '2020-04-21 07:17:06', 4, NULL, NULL),
(8, 'PR-210420-08', 1, '089123451233', '2020-04-21', 4, NULL, 'belum lunas', '2020-04-21 07:18:13', 4, '2020-04-22 12:37:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ukuran_hewan`
--

CREATE TABLE `ukuran_hewan` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0,
  `updated_by` int(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran_hewan`
--

INSERT INTO `ukuran_hewan` (`id`, `nama`, `isDelete`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'Small', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(2, 'Medium', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(3, 'Large', 0, NULL, NULL, 1, '2020-03-01 17:00:00'),
(4, 'extra large', 0, 6, '2020-04-13 10:34:38', 4, '2020-04-13 10:33:00'),
(5, 'extra medium', 0, NULL, NULL, 4, '2020-04-13 10:38:36'),
(6, 'extra test', 1, 6, '2020-04-13 10:56:29', 6, '2020-04-13 10:46:06'),
(7, 'extra very small', 0, 6, '2020-04-13 10:55:30', 6, '2020-04-13 10:53:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detil_pemesanan`
--
ALTER TABLE `detil_pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkPemesanan` (`id_pemesanan`),
  ADD KEY `fkProduk2` (`id_produk`);

--
-- Indexes for table `detil_transaksi_layanan`
--
ALTER TABLE `detil_transaksi_layanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkLayanan` (`id_layanan`),
  ADD KEY `fkHewan` (`id_hewan`),
  ADD KEY `fkTransasksiLayanan` (`id_transaksi`);

--
-- Indexes for table `detil_transaksi_penjualan`
--
ALTER TABLE `detil_transaksi_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkTransaksiPenjualan2` (`id_transaksi`),
  ADD KEY `fkProduk` (`id_produk`);

--
-- Indexes for table `hewan`
--
ALTER TABLE `hewan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis_hewan` (`id_jenis_hewan`);

--
-- Indexes for table `jenis_hewan`
--
ALTER TABLE `jenis_hewan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkUkuranHewan` (`id_ukuran_hewan`),
  ADD KEY `fkIDLayanan` (`id_layanan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkRolePegawai` (`id_role_pegawai`);

--
-- Indexes for table `pembayaran_layanan`
--
ALTER TABLE `pembayaran_layanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkTransaksiLayanan2` (`id_transaksi`);

--
-- Indexes for table `pembayaran_penjualan`
--
ALTER TABLE `pembayaran_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkTransaksiPenjualan` (`id_transaksi`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkSupplier` (`id_supplier`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkKategoriProduk` (`id_kategori_produk`);

--
-- Indexes for table `role_pegawai`
--
ALTER TABLE `role_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_layanan`
--
ALTER TABLE `transaksi_layanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkPegawai1` (`id_cashier`),
  ADD KEY `fkPegawai2` (`id_CS`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkMember2` (`is_member`),
  ADD KEY `fkPegawai3` (`id_CS`),
  ADD KEY `fkPegawai4` (`id_cashier`);

--
-- Indexes for table `ukuran_hewan`
--
ALTER TABLE `ukuran_hewan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detil_pemesanan`
--
ALTER TABLE `detil_pemesanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detil_transaksi_layanan`
--
ALTER TABLE `detil_transaksi_layanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detil_transaksi_penjualan`
--
ALTER TABLE `detil_transaksi_penjualan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hewan`
--
ALTER TABLE `hewan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jenis_hewan`
--
ALTER TABLE `jenis_hewan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayaran_layanan`
--
ALTER TABLE `pembayaran_layanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembayaran_penjualan`
--
ALTER TABLE `pembayaran_penjualan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `role_pegawai`
--
ALTER TABLE `role_pegawai`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi_layanan`
--
ALTER TABLE `transaksi_layanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ukuran_hewan`
--
ALTER TABLE `ukuran_hewan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detil_pemesanan`
--
ALTER TABLE `detil_pemesanan`
  ADD CONSTRAINT `fkPemesanan` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id`),
  ADD CONSTRAINT `fkProduk2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`);

--
-- Constraints for table `detil_transaksi_layanan`
--
ALTER TABLE `detil_transaksi_layanan`
  ADD CONSTRAINT `fkHewan` FOREIGN KEY (`id_hewan`) REFERENCES `hewan` (`id`),
  ADD CONSTRAINT `fkTransasksiLayanan` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_layanan` (`id`);

--
-- Constraints for table `detil_transaksi_penjualan`
--
ALTER TABLE `detil_transaksi_penjualan`
  ADD CONSTRAINT `fkProduk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `fkTransaksiPenjualan2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_penjualan` (`id`);

--
-- Constraints for table `hewan`
--
ALTER TABLE `hewan`
  ADD CONSTRAINT `fkJenisHewan` FOREIGN KEY (`id_jenis_hewan`) REFERENCES `jenis_hewan` (`id`);

--
-- Constraints for table `layanan`
--
ALTER TABLE `layanan`
  ADD CONSTRAINT `fkUkuranHewan` FOREIGN KEY (`id_ukuran_hewan`) REFERENCES `ukuran_hewan` (`id`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fkRolePegawai` FOREIGN KEY (`id_role_pegawai`) REFERENCES `role_pegawai` (`id`);

--
-- Constraints for table `pembayaran_layanan`
--
ALTER TABLE `pembayaran_layanan`
  ADD CONSTRAINT `fkTransaksiLayanan2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_layanan` (`id`);

--
-- Constraints for table `pembayaran_penjualan`
--
ALTER TABLE `pembayaran_penjualan`
  ADD CONSTRAINT `fkTransaksiPenjualan` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_penjualan` (`id`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fkSupplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fkKategoriProduk` FOREIGN KEY (`id_kategori_produk`) REFERENCES `kategori_produk` (`id`);

--
-- Constraints for table `transaksi_layanan`
--
ALTER TABLE `transaksi_layanan`
  ADD CONSTRAINT `fkPegawai1` FOREIGN KEY (`id_cashier`) REFERENCES `pegawai` (`id`),
  ADD CONSTRAINT `fkPegawai2` FOREIGN KEY (`id_CS`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD CONSTRAINT `fkPegawai3` FOREIGN KEY (`id_CS`) REFERENCES `pegawai` (`id`),
  ADD CONSTRAINT `fkPegawai4` FOREIGN KEY (`id_cashier`) REFERENCES `pegawai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
