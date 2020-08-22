-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 03, 2020 lúc 04:06 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banan`
--

CREATE TABLE `tbl_banan` (
  `id_ban` int(10) NOT NULL,
  `loai_ban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietban`
--

CREATE TABLE `tbl_chitietban` (
  `id_ban` int(10) NOT NULL,
  `gio_dat` datetime NOT NULL,
  `ten_nguoi_dat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_luong_nguoi` int(100) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhMuc` int(10) NOT NULL,
  `ten_danh_muc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_daubep`
--

CREATE TABLE `tbl_daubep` (
  `id_dauBep` int(10) NOT NULL,
  `ten_dau_bep` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_dau_bep` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_thieu` int(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_taikhoan`
--

CREATE TABLE `tbl_taikhoan` (
  `id_taiKhoan` int(10) NOT NULL,
  `ten_dang_nhap` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thucdon`
--

CREATE TABLE `tbl_thucdon` (
  `id_thucDon` int(10) NOT NULL,
  `id_danhMuc` int(10) NOT NULL,
  `anh_chi_tiet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_thieu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_tien` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thuvien`
--

CREATE TABLE `tbl_thuvien` (
  `id_thuVien` int(10) NOT NULL,
  `anh_thu_vien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_banan`
--
ALTER TABLE `tbl_banan`
  ADD PRIMARY KEY (`id_ban`);

--
-- Chỉ mục cho bảng `tbl_chitietban`
--
ALTER TABLE `tbl_chitietban`
  ADD PRIMARY KEY (`gio_dat`,`id_ban`),
  ADD KEY `fk_id_ban_tbl_banan_tbl_chitietban` (`id_ban`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhMuc`);

--
-- Chỉ mục cho bảng `tbl_daubep`
--
ALTER TABLE `tbl_daubep`
  ADD PRIMARY KEY (`id_dauBep`);

--
-- Chỉ mục cho bảng `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD PRIMARY KEY (`id_taiKhoan`);

--
-- Chỉ mục cho bảng `tbl_thucdon`
--
ALTER TABLE `tbl_thucdon`
  ADD PRIMARY KEY (`id_thucDon`),
  ADD KEY `fk_id_danhmuc_tbl_danhmuc_tbl_thudon` (`id_danhMuc`);

--
-- Chỉ mục cho bảng `tbl_thuvien`
--
ALTER TABLE `tbl_thuvien`
  ADD PRIMARY KEY (`id_thuVien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_banan`
--
ALTER TABLE `tbl_banan`
  MODIFY `id_ban` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhMuc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_daubep`
--
ALTER TABLE `tbl_daubep`
  MODIFY `id_dauBep` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  MODIFY `id_taiKhoan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_thucdon`
--
ALTER TABLE `tbl_thucdon`
  MODIFY `id_thucDon` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_thuvien`
--
ALTER TABLE `tbl_thuvien`
  MODIFY `id_thuVien` int(10) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_chitietban`
--
ALTER TABLE `tbl_chitietban`
  ADD CONSTRAINT `fk_id_ban_tbl_banan_tbl_chitietban` FOREIGN KEY (`id_ban`) REFERENCES `tbl_banan` (`id_ban`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_thucdon`
--
ALTER TABLE `tbl_thucdon`
  ADD CONSTRAINT `fk_id_danhmuc_tbl_danhmuc_tbl_thudon` FOREIGN KEY (`id_danhMuc`) REFERENCES `tbl_danhmuc` (`id_danhMuc`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
