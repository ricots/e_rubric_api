-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 19 Okt 2017 pada 11.32
-- Versi Server: 10.0.32-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb1675_e_rubic`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_histori`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detail_histori` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
,`komen` varchar(250)
,`solusi` varchar(250)
,`nama_dosen` varchar(100)
,`nama_penilaian` text
,`id_kategori` varchar(10)
,`nama_kategori` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_pengevaluasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detail_pengevaluasi` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
,`komen` varchar(250)
,`solusi` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `evaluasitosaran`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `evaluasitosaran` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
,`komen` varchar(250)
,`solusi` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `evaluasitosaran_dosen`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `evaluasitosaran_dosen` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
,`komen` varchar(250)
,`solusi` varchar(250)
,`nama_dosen` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `evaluasitosaran_dosen_tonilai`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `evaluasitosaran_dosen_tonilai` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
,`komen` varchar(250)
,`solusi` varchar(250)
,`nama_dosen` varchar(100)
,`nama_penilaian` text
,`id_kategori` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `histori`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `histori` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
,`komen` varchar(250)
,`solusi` varchar(250)
,`nama_penilaian` text
,`id_kategori` varchar(10)
,`nama_kategori` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengavaluasi_hasil_nilai`
--

CREATE TABLE `pengavaluasi_hasil_nilai` (
  `id_hasil_nilai` varchar(20) DEFAULT NULL,
  `Sekolah_Universitas` varchar(50) DEFAULT NULL,
  `Kelas` varchar(50) DEFAULT NULL,
  `Mata_Pelajaran` varchar(50) DEFAULT NULL,
  `topik_evaluasi` varchar(200) DEFAULT NULL,
  `hari_tanggal` varchar(30) DEFAULT NULL,
  `waktu` varchar(10) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `score` int(2) DEFAULT NULL,
  `ulasan` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pengevaluasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pengevaluasi` (
`id_hasil_nilai` varchar(20)
,`Sekolah_Universitas` varchar(200)
,`Kelas` varchar(50)
,`Mata_Pelajaran` varchar(50)
,`topik_evaluasi` varchar(200)
,`hari_tanggal` varchar(200)
,`waktu` varchar(20)
,`nid` varchar(20)
,`id_penilaian` varchar(10)
,`score` int(2)
,`ulasan` varchar(250)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `penilaiantokategori`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `penilaiantokategori` (
`id_kategori` varchar(10)
,`id_penilaian` varchar(10)
,`nama_penilaian` text
,`nama_kategori` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `penilaian_to_score`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `penilaian_to_score` (
`id_kategori` varchar(10)
,`id_penilaian` varchar(10)
,`nama_penilaian` text
,`id_hasil_nilai` varchar(20)
,`score` int(2)
,`ulasan` varchar(250)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `score_pengevaluasi`
--

CREATE TABLE `score_pengevaluasi` (
  `id_kategori` varchar(10) DEFAULT NULL,
  `id_penilaian` varchar(10) DEFAULT NULL,
  `nama_penilaian` varchar(50) DEFAULT NULL,
  `score` int(2) DEFAULT NULL,
  `ulasan` varchar(250) DEFAULT NULL,
  `id_hasil_nilai` varchar(20) DEFAULT NULL,
  `sekolah_universitas` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `nid` varchar(20) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`nid`, `nama_dosen`) VALUES
('123', 'rts'),
('222', 'tes'),
('12222', 'rrr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hasil_penilaian`
--

CREATE TABLE `tbl_hasil_penilaian` (
  `nomor` int(11) NOT NULL,
  `id_hasil_nilai` varchar(20) NOT NULL,
  `id_penilaian` varchar(10) NOT NULL,
  `score` int(2) NOT NULL,
  `ulasan` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hasil_penilaian`
--

INSERT INTO `tbl_hasil_penilaian` (`nomor`, `id_hasil_nilai`, `id_penilaian`, `score`, `ulasan`) VALUES
(48, '145818Okt2017', 'PNO0001', 80, 'Tes'),
(47, '145818Okt2017', 'PNO0002', 80, 'Tes'),
(46, '145818Okt2017', 'PNO0003', 80, 'Tes'),
(49, '173318Okt2017', 'PNO0003', 70, 'Tes'),
(50, '173318Okt2017', 'PNO0002', 70, 'Tes'),
(51, '173318Okt2017', 'PNO0001', 70, 'Tes'),
(52, '173318Okt2017', 'PNO0006', 80, 'Trs'),
(53, '173318Okt2017', 'PNO0005', 80, 'Tes'),
(54, '173318Okt2017', 'PNO0004', 90, 'Tes'),
(55, '173318Okt2017', 'PNO0009', 80, 'Tes'),
(56, '173318Okt2017', 'PNO0008', 80, 'Tes'),
(57, '173318Okt2017', 'PNO0007', 80, 'Tes'),
(58, '173318Okt2017', 'PNO0012', 80, 'Ok'),
(59, '173318Okt2017', 'PNO0011', 80, 'Ok '),
(60, '173318Okt2017', 'PNO0010', 80, 'Tes'),
(61, '173318Okt2017', 'PNO0015', 80, 'Tes'),
(62, '173318Okt2017', 'PNO0014', 75, 'Ok '),
(63, '173318Okt2017', 'PNO0013', 70, '80'),
(64, '185318Oct2017', 'PNO0001', 90, 'te'),
(65, '185318Oct2017', 'PNO0002', 80, 'te'),
(66, '185318Oct2017', 'PNO0003', 80, 'tes'),
(67, '101719Okt2017', 'PNO0002', 80, 'Tes'),
(68, '101719Okt2017', 'PNO0001', 80, 'Tes'),
(69, '101719Okt2017', 'PNO0003', 80, 'Tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_penilaian`
--

CREATE TABLE `tbl_kategori_penilaian` (
  `id_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori_penilaian`
--

INSERT INTO `tbl_kategori_penilaian` (`id_kategori`, `nama_kategori`) VALUES
('KTO0001', 'Siswa/Mahasiswa dengan materi atau bahan ajar'),
('KTO0002', 'Siswa/Mahasiswa dengan Media Pembelajaran'),
('KTO0003', 'Siswa/Mahasiswa dengan Guru/Dosen'),
('KTO0004', 'Siswa/Mahasiswa dengan Siswa/Mahasiswa'),
('KTO0005', 'Pencapaian Tujuan Pembelajaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengevaluasi`
--

CREATE TABLE `tbl_pengevaluasi` (
  `id_hasil_nilai` varchar(20) NOT NULL,
  `Sekolah_Universitas` varchar(200) NOT NULL,
  `Kelas` varchar(50) NOT NULL,
  `Mata_Pelajaran` varchar(50) NOT NULL,
  `topik_evaluasi` varchar(200) NOT NULL,
  `hari_tanggal` varchar(200) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `nid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengevaluasi`
--

INSERT INTO `tbl_pengevaluasi` (`id_hasil_nilai`, `Sekolah_Universitas`, `Kelas`, `Mata_Pelajaran`, `topik_evaluasi`, `hari_tanggal`, `waktu`, `nid`) VALUES
('185318Oct2017', 'g', 'g', 'g', 'g', 'g', 'g', '12222'),
('173318Okt2017', 'sekolah', 'kelas', 'mapel', 'topik', 'hari', 'waktu', '12222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penilaian`
--

CREATE TABLE `tbl_penilaian` (
  `id_kategori` varchar(10) NOT NULL,
  `id_penilaian` varchar(10) NOT NULL,
  `nama_penilaian` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penilaian`
--

INSERT INTO `tbl_penilaian` (`id_kategori`, `id_penilaian`, `nama_penilaian`) VALUES
('KTO0001', 'PNO0001', 'Materi mendukung pencapaian tujuan pembelajaran'),
('KTO0001', 'PNO0002', 'Materi menarik siswa/mahasiswa untuk belajar lebih lanjut (atau dalam pembelajaran)'),
('KTO0001', 'PNO0003', 'Materi mendorong siswa/mahasiswa untuk berpikir tingkat tinggi'),
('KTO0002', 'PNO0004', 'Media pembelajaran dapat menarik siswa/mahasiswa untuk belajar'),
('KTO0002', 'PNO0005', 'Media pembelajaran dapat membantu siswa/mahasiswa memahami materi'),
('KTO0002', 'PNO0006', 'Siswa/mahasiswa dapat mengaitkan konten dengan topik atau topik lain atau menerapkan konten ke konteks dunia nyata dengan bantuan media pembelajaran yang digunakan guru/dosen'),
('KTO0003', 'PNO0007', 'Usaha guru/dosen dalam mendorong siswa/mahasiswa yang tidak aktif untuk belajar dalam PBM'),
('KTO0003', 'PNO0008', 'Rapport (hubungan guru/dosen dengan siswa/mahasiswa)'),
('KTO0003', 'PNO0009', 'Kegiatan siswa/mahasiswa-guru/dosen sesuai dengan rencana kegiatan pembelajaran dan tujuan pembelajaran.'),
('KTO0004', 'PNO0010', 'Keterlibatan/keaktifan siswa/mahasiswa dalam kegiatan pembelajaran'),
('KTO0004', 'PNO0011', 'Siswa/mahasiswa berkolaborasi secara aktif dan konstruktif  mengerjakan tugas sesuai dengan konten (kegiatan kerja kelompok)'),
('KTO0004', 'PNO0012', 'Siswa/mahasiswa mampu melakukan evaluasi diri  yang memungkinkan mereka untuk memproses dan membangun makna dari pelajaran.'),
('KTO0005', 'PNO0013', 'Ketercapaian tujuan pembelajaran '),
('KTO0005', 'PNO0014', 'Semua siswa/mahasiswa telah memahami tentang topik pembelajaran'),
('KTO0005', 'PNO0015', 'Pelajaran berharga yang dapat dipetik dari pembelajaran oleh siswa/mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_saran`
--

CREATE TABLE `tbl_saran` (
  `id_hasil_nilai` varchar(20) NOT NULL,
  `komen` varchar(250) NOT NULL,
  `solusi` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_saran`
--

INSERT INTO `tbl_saran` (`id_hasil_nilai`, `komen`, `solusi`) VALUES
('145818Okt2017', 'Qtes', 'Tes'),
('173318Okt2017', 'Ok ', 'Ok '),
('185318Oct2017', 'tes', 'tes');

-- --------------------------------------------------------

--
-- Struktur untuk view `detail_histori`
--
DROP TABLE IF EXISTS `detail_histori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `detail_histori`  AS  select `evaluasitosaran_dosen_tonilai`.`id_hasil_nilai` AS `id_hasil_nilai`,`evaluasitosaran_dosen_tonilai`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`evaluasitosaran_dosen_tonilai`.`Kelas` AS `Kelas`,`evaluasitosaran_dosen_tonilai`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`evaluasitosaran_dosen_tonilai`.`topik_evaluasi` AS `topik_evaluasi`,`evaluasitosaran_dosen_tonilai`.`hari_tanggal` AS `hari_tanggal`,`evaluasitosaran_dosen_tonilai`.`waktu` AS `waktu`,`evaluasitosaran_dosen_tonilai`.`nid` AS `nid`,`evaluasitosaran_dosen_tonilai`.`id_penilaian` AS `id_penilaian`,`evaluasitosaran_dosen_tonilai`.`score` AS `score`,`evaluasitosaran_dosen_tonilai`.`ulasan` AS `ulasan`,`evaluasitosaran_dosen_tonilai`.`komen` AS `komen`,`evaluasitosaran_dosen_tonilai`.`solusi` AS `solusi`,`evaluasitosaran_dosen_tonilai`.`nama_dosen` AS `nama_dosen`,`evaluasitosaran_dosen_tonilai`.`nama_penilaian` AS `nama_penilaian`,`evaluasitosaran_dosen_tonilai`.`id_kategori` AS `id_kategori`,`tbl_kategori_penilaian`.`nama_kategori` AS `nama_kategori` from (`evaluasitosaran_dosen_tonilai` join `tbl_kategori_penilaian`) where (`evaluasitosaran_dosen_tonilai`.`id_kategori` = `tbl_kategori_penilaian`.`id_kategori`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `detail_pengevaluasi`
--
DROP TABLE IF EXISTS `detail_pengevaluasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `detail_pengevaluasi`  AS  select `pengevaluasi`.`id_hasil_nilai` AS `id_hasil_nilai`,`pengevaluasi`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`pengevaluasi`.`Kelas` AS `Kelas`,`pengevaluasi`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`pengevaluasi`.`topik_evaluasi` AS `topik_evaluasi`,`pengevaluasi`.`hari_tanggal` AS `hari_tanggal`,`pengevaluasi`.`waktu` AS `waktu`,`pengevaluasi`.`nid` AS `nid`,`pengevaluasi`.`id_penilaian` AS `id_penilaian`,`pengevaluasi`.`score` AS `score`,`pengevaluasi`.`ulasan` AS `ulasan`,`tbl_saran`.`komen` AS `komen`,`tbl_saran`.`solusi` AS `solusi` from (`pengevaluasi` join `tbl_saran`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `evaluasitosaran`
--
DROP TABLE IF EXISTS `evaluasitosaran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `evaluasitosaran`  AS  select `pengevaluasi`.`id_hasil_nilai` AS `id_hasil_nilai`,`pengevaluasi`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`pengevaluasi`.`Kelas` AS `Kelas`,`pengevaluasi`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`pengevaluasi`.`topik_evaluasi` AS `topik_evaluasi`,`pengevaluasi`.`hari_tanggal` AS `hari_tanggal`,`pengevaluasi`.`waktu` AS `waktu`,`pengevaluasi`.`nid` AS `nid`,`pengevaluasi`.`id_penilaian` AS `id_penilaian`,`pengevaluasi`.`score` AS `score`,`pengevaluasi`.`ulasan` AS `ulasan`,`tbl_saran`.`komen` AS `komen`,`tbl_saran`.`solusi` AS `solusi` from (`pengevaluasi` join `tbl_saran`) where (`pengevaluasi`.`id_hasil_nilai` = `tbl_saran`.`id_hasil_nilai`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `evaluasitosaran_dosen`
--
DROP TABLE IF EXISTS `evaluasitosaran_dosen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `evaluasitosaran_dosen`  AS  select `evaluasitosaran`.`id_hasil_nilai` AS `id_hasil_nilai`,`evaluasitosaran`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`evaluasitosaran`.`Kelas` AS `Kelas`,`evaluasitosaran`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`evaluasitosaran`.`topik_evaluasi` AS `topik_evaluasi`,`evaluasitosaran`.`hari_tanggal` AS `hari_tanggal`,`evaluasitosaran`.`waktu` AS `waktu`,`evaluasitosaran`.`nid` AS `nid`,`evaluasitosaran`.`id_penilaian` AS `id_penilaian`,`evaluasitosaran`.`score` AS `score`,`evaluasitosaran`.`ulasan` AS `ulasan`,`evaluasitosaran`.`komen` AS `komen`,`evaluasitosaran`.`solusi` AS `solusi`,`tbl_dosen`.`nama_dosen` AS `nama_dosen` from (`evaluasitosaran` join `tbl_dosen`) where (`evaluasitosaran`.`nid` = `tbl_dosen`.`nid`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `evaluasitosaran_dosen_tonilai`
--
DROP TABLE IF EXISTS `evaluasitosaran_dosen_tonilai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `evaluasitosaran_dosen_tonilai`  AS  select `evaluasitosaran_dosen`.`id_hasil_nilai` AS `id_hasil_nilai`,`evaluasitosaran_dosen`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`evaluasitosaran_dosen`.`Kelas` AS `Kelas`,`evaluasitosaran_dosen`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`evaluasitosaran_dosen`.`topik_evaluasi` AS `topik_evaluasi`,`evaluasitosaran_dosen`.`hari_tanggal` AS `hari_tanggal`,`evaluasitosaran_dosen`.`waktu` AS `waktu`,`evaluasitosaran_dosen`.`nid` AS `nid`,`evaluasitosaran_dosen`.`id_penilaian` AS `id_penilaian`,`evaluasitosaran_dosen`.`score` AS `score`,`evaluasitosaran_dosen`.`ulasan` AS `ulasan`,`evaluasitosaran_dosen`.`komen` AS `komen`,`evaluasitosaran_dosen`.`solusi` AS `solusi`,`evaluasitosaran_dosen`.`nama_dosen` AS `nama_dosen`,`tbl_penilaian`.`nama_penilaian` AS `nama_penilaian`,`tbl_penilaian`.`id_kategori` AS `id_kategori` from (`evaluasitosaran_dosen` join `tbl_penilaian`) where (`evaluasitosaran_dosen`.`id_penilaian` = `tbl_penilaian`.`id_penilaian`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `histori`
--
DROP TABLE IF EXISTS `histori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `histori`  AS  select `detail_pengevaluasi`.`id_hasil_nilai` AS `id_hasil_nilai`,`detail_pengevaluasi`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`detail_pengevaluasi`.`Kelas` AS `Kelas`,`detail_pengevaluasi`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`detail_pengevaluasi`.`topik_evaluasi` AS `topik_evaluasi`,`detail_pengevaluasi`.`hari_tanggal` AS `hari_tanggal`,`detail_pengevaluasi`.`waktu` AS `waktu`,`detail_pengevaluasi`.`nid` AS `nid`,`detail_pengevaluasi`.`id_penilaian` AS `id_penilaian`,`detail_pengevaluasi`.`score` AS `score`,`detail_pengevaluasi`.`ulasan` AS `ulasan`,`detail_pengevaluasi`.`komen` AS `komen`,`detail_pengevaluasi`.`solusi` AS `solusi`,`penilaiantokategori`.`nama_penilaian` AS `nama_penilaian`,`penilaiantokategori`.`id_kategori` AS `id_kategori`,`penilaiantokategori`.`nama_kategori` AS `nama_kategori` from (`detail_pengevaluasi` join `penilaiantokategori`) where (`detail_pengevaluasi`.`id_penilaian` = `penilaiantokategori`.`id_penilaian`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pengevaluasi`
--
DROP TABLE IF EXISTS `pengevaluasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `pengevaluasi`  AS  select `tbl_pengevaluasi`.`id_hasil_nilai` AS `id_hasil_nilai`,`tbl_pengevaluasi`.`Sekolah_Universitas` AS `Sekolah_Universitas`,`tbl_pengevaluasi`.`Kelas` AS `Kelas`,`tbl_pengevaluasi`.`Mata_Pelajaran` AS `Mata_Pelajaran`,`tbl_pengevaluasi`.`topik_evaluasi` AS `topik_evaluasi`,`tbl_pengevaluasi`.`hari_tanggal` AS `hari_tanggal`,`tbl_pengevaluasi`.`waktu` AS `waktu`,`tbl_pengevaluasi`.`nid` AS `nid`,`tbl_hasil_penilaian`.`id_penilaian` AS `id_penilaian`,`tbl_hasil_penilaian`.`score` AS `score`,`tbl_hasil_penilaian`.`ulasan` AS `ulasan` from (`tbl_pengevaluasi` join `tbl_hasil_penilaian`) where (`tbl_pengevaluasi`.`id_hasil_nilai` = `tbl_hasil_penilaian`.`id_hasil_nilai`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `penilaiantokategori`
--
DROP TABLE IF EXISTS `penilaiantokategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `penilaiantokategori`  AS  select `tbl_penilaian`.`id_kategori` AS `id_kategori`,`tbl_penilaian`.`id_penilaian` AS `id_penilaian`,`tbl_penilaian`.`nama_penilaian` AS `nama_penilaian`,`tbl_kategori_penilaian`.`nama_kategori` AS `nama_kategori` from (`tbl_penilaian` join `tbl_kategori_penilaian`) where (`tbl_penilaian`.`id_kategori` = `tbl_kategori_penilaian`.`id_kategori`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `penilaian_to_score`
--
DROP TABLE IF EXISTS `penilaian_to_score`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mydb1675`@`localhost` SQL SECURITY DEFINER VIEW `penilaian_to_score`  AS  select `tbl_penilaian`.`id_kategori` AS `id_kategori`,`tbl_penilaian`.`id_penilaian` AS `id_penilaian`,`tbl_penilaian`.`nama_penilaian` AS `nama_penilaian`,`tbl_hasil_penilaian`.`id_hasil_nilai` AS `id_hasil_nilai`,`tbl_hasil_penilaian`.`score` AS `score`,`tbl_hasil_penilaian`.`ulasan` AS `ulasan` from (`tbl_penilaian` left join `tbl_hasil_penilaian` on((`tbl_penilaian`.`id_penilaian` = `tbl_hasil_penilaian`.`id_penilaian`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `tbl_hasil_penilaian`
--
ALTER TABLE `tbl_hasil_penilaian`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `tbl_kategori_penilaian`
--
ALTER TABLE `tbl_kategori_penilaian`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pengevaluasi`
--
ALTER TABLE `tbl_pengevaluasi`
  ADD PRIMARY KEY (`id_hasil_nilai`);

--
-- Indexes for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `tbl_saran`
--
ALTER TABLE `tbl_saran`
  ADD PRIMARY KEY (`id_hasil_nilai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hasil_penilaian`
--
ALTER TABLE `tbl_hasil_penilaian`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
