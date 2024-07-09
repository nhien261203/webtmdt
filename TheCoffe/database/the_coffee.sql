-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2023 lúc 06:32 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `the_coffee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Cafe'),
(2, 'Trà sữa'),
(6, 'Đồ uống khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `firstname`, `lastname`, `email`, `phone`, `subject_name`, `note`) VALUES
(1, 'lam', 'hua', 'huatunglam1205@gmail.com', '0328443736', 'hihi', 'hahahaha');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder_view`
--

CREATE TABLE `tbl_oder_view` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder_view`
--

INSERT INTO `tbl_oder_view` (`id`, `id_user`, `id_order`, `product_id`, `num`, `price`) VALUES
(15, 3, 47, 20, 1, '20000'),
(16, 3, 47, 17, 2, '40000'),
(17, 3, 48, 17, 1, '20000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `total_money` int(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_time` datetime NOT NULL,
  `trangthai` varchar(110) NOT NULL DEFAULT 'Chưa nhận hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_user`, `fullname`, `email`, `phone`, `address`, `note`, `total_money`, `order_date`, `delivery_time`, `trangthai`) VALUES
(47, 3, 'lam', 'huatunglam1205@gmail.com', 328443736, 'tân triều', 'dfhđ', 60000, '2023-10-14 12:47:53', '2023-10-14 13:23:50', 'Đã nhận hàng'),
(48, 3, 'lam', 'huatunglam1205@gmail.com', 276353454, 'triều khúc', 'nhanh nhé', 20000, '2023-10-14 14:02:23', '0000-00-00 00:00:00', 'Chưa nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(110) NOT NULL,
  `price` int(255) NOT NULL,
  `num` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `cartegory_id` varchar(110) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `cartegory_id`, `product_name`, `product_img`, `product_price`) VALUES
(14, '  Cafe', 'Cà phê đá say', 'https://saigoncasacafe.com.vn/wp-content/uploads/2020/09/CAPHE-SUA-DUA-DA-XAY_Coconut_Coffee_Ice_Blended_S.png', 25000),
(15, '  Cafe', 'Bạc xỉu', 'https://nhahangmonhue.vn/wp-content/uploads/2020/11/bac-xiu_large.png', 20000),
(16, '  Cafe', 'Cacao nóng', 'https://cafebuivan.com.vn/thumbs/200x230x2/upload/product/sua-tuoi-ca-phe-3850.png', 20000),
(17, '  Cafe', 'Cà phê đá', 'https://kfehouse.vn/wp-content/uploads/2020/12/Ca-phe-da.png', 20000),
(18, '  Cafe', 'Cà phê sữa', 'https://vinafreshfruit.vn/wp-content/uploads/2022/06/1-ca-phe-sua-1586320543.jpg', 20000),
(19, '  Cafe', 'Cà phê đen', 'https://khothietke.net/wp-content/uploads/2021/03/taifree1407-ly-ca-phe-den.png', 25000),
(20, '  Trà sữa', 'Trà sữa Matcha', 'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-matcha-latte-pearl-milk-tea-png-free-image_1181802.jpg', 20000),
(27, '  Trà sữa', 'Trà sữa Socola', 'https://www.pngitem.com/pimgs/m/520-5208057_tr-sa-socola-gongcha-hd-png-download.png', 20000),
(28, '  Trà sữa', 'Trà sữa dâu', 'https://bizweb.dktcdn.net/thumb/grande/100/454/902/products/tra-sua-dau-4c6f23b7e77a4eae820b6f37dd835e64-grande.png?v=1653365833177', 20000),
(29, '  Trà sữa', 'Trà sữa bạc hà', 'https://product.hstatic.net/200000078599/product/tra_ua_bac_ha_577b1d2a4fad4c16b2163ce140d1721d_grande.jpg', 20000),
(30, '  Trà sữa', 'Trà sữa trân châu', 'https://png.pngtree.com/png-clipart/20230423/original/pngtree-delicious-milk-tea-pearls-png-image_9092516.png', 20000),
(31, '  Trà sữa', 'Trà sữa xoài', 'https://png.pngtree.com/png-clipart/20210912/original/pngtree-pineapple-mango-milk-tea-png-image_6730890.jpg', 20000),
(32, '  Đồ uống khác', 'Trà chanh truyền thống', 'https://khothietke.net/wp-content/uploads/2021/03/taifree1393-tra-chanh-coc-tra-chanh.png', 10000),
(33, '  Đồ uống khác', 'Trà quất nha đam', 'https://getngo.vn/wp-content/uploads/2023/04/tra-tac-nha-dam-sai-gon-1.jpg', 15000),
(34, '  Đồ uống khác', 'Nước ép dâu', 'https://khothietke.net/wp-content/uploads/2021/03/taifree1403-nuoc-ep-dau-tay.png', 20000),
(35, '  Đồ uống khác', 'Hồng trà chanh', 'https://product.hstatic.net/200000421745/product/hong-luc_tra_vi_chanh_2a824645ede349ecb5eaab5b9939531a.png', 20000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `noidung` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`id`, `title`, `mota`, `img`, `noidung`) VALUES
(2, 'Tuyển dụng', 'DLV Coffe là công ty Cá nhân đang hoạt động lĩnh vực quán nước tại Hà Nội. Hiện tại chúng tôi đang cần tuyển vị trị trí \"Tuyển nhân viên cho quán cafe.......', '../css/img/tuyendung.png', '<p><strong>Giới thiệu:</strong><br />\r\nDLV Coffe l&agrave; c&ocirc;ng ty C&aacute; nh&acirc;n đang hoạt động lĩnh vực qu&aacute;n nước tại H&agrave; Nội. Hiện tại ch&uacute;ng t&ocirc;i đang cần tuyển vị trị tr&iacute; &quot;Tuyển nh&acirc;n vi&ecirc;n cho qu&aacute;n cafe&quot; với c&aacute;c kỹ năng như Năng Động, Nhiệt Huyết, Quản L&yacute; Thiết Bị. Bạn sẽ được hưởng c&aacute;c chế độ ph&uacute;c lợi như Du Lịch, Hỗ trợ ph&iacute; đ&agrave;o tạo khi l&agrave;m việc tại DLV Coffe<br />\r\nDLV Coffe 20 T&acirc;n Triều tuyển dụng nh&acirc;n vi&ecirc;n<br />\r\nNG&Agrave;Y Đ&Agrave;O TẠO DỰ T&Iacute;NH ( 17/03/2023)<br />\r\n<br />\r\n<strong>1. VỊ TR&Iacute;:</strong>&nbsp;4 BARISTA &ndash; 6 PHỤC VỤ - 2 THU NG&Acirc;N<br />\r\n<br />\r\n<strong>2. Y&Ecirc;U CẦU CHUNG:</strong></p>\r\n\r\n<ul>\r\n	<li>Trung thực, nhanh nhẹn, giao tiếp tốt, th&aacute;i độ tốt</li>\r\n	<li>C&oacute; &yacute; thức vệ sinh sạch sẽ cửa h&agrave;ng</li>\r\n	<li>Cam kết l&agrave;m việc cuối tuần v&agrave; c&aacute;c ng&agrave;y lễ</li>\r\n	<li>Ưu ti&ecirc;n bạn đ&atilde; c&oacute; kinh nghiệm sử dụng được m&aacute;y pha caf&eacute; ( đối với barista)</li>\r\n</ul>\r\n\r\n<p><strong>3. QUYỀN LỢI:</strong></p>\r\n\r\n<ul>\r\n	<li>ĐƯỢC TRAINING MIỄN PH&Iacute; (phải đảm bảo đi đủ để l&agrave;m việc hiệu quả)</li>\r\n	<li>LƯƠNG KHỞI ĐIỂM</li>\r\n	<li>Barista: 20k/1h th&aacute;ng đầu , sau 1 th&aacute;ng thử việc lương 22-25k/1h t&ugrave;y năng lực.</li>\r\n	<li>Thu Ng&acirc;n, Phục vụ : 15k/1h th&aacute;ng đầu, sau thử việc 17k/h.</li>\r\n	<li>Được sắp xếp ca l&agrave;m ph&ugrave; hợp</li>\r\n	<li>L&agrave;m việc m&ocirc;i trường sạch sẽ, năng động</li>\r\n</ul>\r\n\r\n<p><strong>4. THỜI GIAN L&Agrave;M VIỆC :</strong></p>\r\n\r\n<ul>\r\n	<li>Fulltime 7h-15h ; 15h-23h ( đối với barista )</li>\r\n	<li>Part time 7h-12h; 12h-17h ; 17h-23h ( đối với thu ng&acirc;n, phục vụ)</li>\r\n</ul>\r\n\r\n<p>5. ĐỊA ĐIỂM L&Agrave;M VIỆC<br />\r\n<strong>L&agrave;m việc tại:</strong>&nbsp;20 T&acirc;n Triều, Thanh Tr&igrave; , HN<br />\r\n(Ưu ti&ecirc;n c&aacute;c bạn ở gần, thuận tiện đi lại)<br />\r\n<strong>Địa điểm l&agrave;m việc:</strong>&nbsp;H&agrave; Nội<br />\r\n<strong>Lương:</strong>&nbsp;5000K VND một th&aacute;ng<br />\r\n<strong>Loại h&igrave;nh c&ocirc;ng việc:</strong>&nbsp;Thỏa thuận thời gian<br />\r\n<strong>Y&ecirc;u cầu:</strong>&nbsp;Chứng Minh Nh&acirc;n D&acirc;n (CMND), Cover Letter<br />\r\n<strong>Quyền lợi:</strong>&nbsp;Du Lịch, Hỗ trợ ph&iacute; đ&agrave;o tạo, M&ocirc;i Trường Chuy&ecirc;n Nghiệp, Thưởng doanh thu, Thưởng Lễ-Tết<br />\r\n<strong>Hạn nộp:</strong>&nbsp;2023-10-06<br />\r\n<strong>Kinh nghiệm:</strong>&nbsp;Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm l&agrave;m việc<br />\r\n<strong>Bằng cấp:</strong>&nbsp;Kh&ocirc;ng y&ecirc;u cầu<br />\r\n<strong>Lĩnh vực:</strong>&nbsp;Dịch vụ -Nh&agrave; h&agrave;ng, Kh&aacute;ch sạn<br />\r\n<strong>Số lượng cần tuyển:</strong>&nbsp;12<br />\r\n<strong>Giới t&iacute;nh:</strong>&nbsp;Kh&ocirc;ng y&ecirc;u cầu</p>\r\n'),
(3, 'Người nghiện cafe chính cống', 'Bạn thích nhất là uống cà phê nào? Liệu sở thích uống cà phê có tiết lộ được tính cách không? Mỗi người trong chúng ta đều có sở thích uống cà phê khác nhau, Một số người lựa chọn về chất lượng của cà phê hay một số người quan tâm đến hương vị nhiều hơn. ', '../css/img/nghiencafe.png', '<h3><strong>1. Bạn th&iacute;ch Espresso</strong></h3>\r\n\r\n<p>Bạn l&agrave; một người chăm chỉ, c&oacute; tư chất l&atilde;nh đạo, lu&ocirc;n l&agrave;m việc tr&ecirc;n tinh thần cầu thị. Bạn kh&ocirc;ng ngại m&ocirc;i trường mới, lu&ocirc;n muốn thử th&aacute;ch bản th&acirc;n trước điều kiện, ho&agrave;n cảnh kh&aacute;c biệt thay v&igrave; ph&agrave;n n&agrave;n, ch&aacute;n nản. Trong cuộc sống, bạn th&acirc;n thiện, cởi mở với bạn b&egrave; v&agrave; được mọi người t&ocirc;n trọng. L&agrave; một người y&ecirc;u th&iacute;ch hương vị Espresso, bạn y&ecirc;u th&iacute;ch cafe, con người bạn cũng như vậy, th&iacute;ch những thứ r&otilde; r&agrave;ng, đơn giản.</p>\r\n\r\n<h3><strong>2. Bạn th&iacute;ch Latte</strong></h3>\r\n\r\n<p>Con người bạn thiếu một ch&uacute;t quyết đo&aacute;n, thế n&ecirc;n bạn lu&ocirc;n gặp vấn đề trong việc đưa ra c&aacute;c quyết định. T&iacute;nh c&aacute;ch bạn đơn giản, kh&ocirc;ng hay nghĩ ngợi qu&aacute; nhiều về c&aacute;c vấn đề, thậm ch&iacute; bu&ocirc;ng xu&ocirc;i mọi việc cho tr&iacute; tưởng tượng, cảm x&uacute;c x&eacute;t đo&aacute;n thay v&igrave; l&yacute; tr&iacute;.</p>\r\n\r\n<h3><strong>3. Bạn th&iacute;ch Cappuccino</strong></h3>\r\n\r\n<p>Cũng giống như loại thức uống sủi bọt n&agrave;y, người m&ecirc; cappuccino c&oacute; t&acirc;m hồn phong ph&uacute;. N&ecirc;n d&ugrave; rất y&ecirc;u th&iacute;ch chuyện gối chăn, họ dễ cảm thấy ch&aacute;n nếu bạn t&igrave;nh qu&aacute; thụ động v&agrave; m&aacute;y m&oacute;c tr&ecirc;n giường. Họ kh&ocirc;ng ham lợi danh hay những g&igrave; qu&aacute; tỉ mỉ, vụn vặt. Họ th&iacute;ch bắt tay v&agrave;o l&agrave;m việc hơn l&agrave; t&igrave;m hiểu c&aacute;c tiểu tiết l&ecirc; th&ecirc;. Đ&acirc;y l&agrave; t&uacute;yp người lạc quan, sống c&oacute; phong c&aacute;ch v&agrave; tr&acirc;n trọng c&aacute;i đẹp.</p>\r\n\r\n<h3><strong>4. Bạn th&iacute;ch Macchiato</strong></h3>\r\n\r\n<p>Những người nghiện macchiato thường kh&ocirc;ng chạy theo xu hướng, kh&ocirc;ng bận t&acirc;m đến những g&igrave; đang diễn ra trong đời sống. Bạn sống nội t&acirc;m, c&oacute; phần thụ động, thậm ch&iacute; rất hiếm khi chủ động trong bất cứ c&ocirc;ng việc n&agrave;o, cũng như x&acirc;y dựng c&aacute;c mối quan hệ.</p>\r\n\r\n<h3><strong>5. Bạn th&iacute;ch Mocha</strong></h3>\r\n\r\n<p>Nếu bạn th&iacute;ch hương vị mocha, bạn l&agrave; người thi&ecirc;n bẩm c&oacute; tư chất lạc quan, lu&ocirc;n t&igrave;m thấy niềm vui, tiếng cười trong mọi vấn đề. Trong cuộc sống, bạn hướng ngoại, th&iacute;ch c&aacute;c hoạt động tương t&aacute;c, giao lưu thay v&igrave; giấu m&igrave;nh trong ph&ograve;ng để đọc s&aacute;ch hay nghiền ngẫm. Bạn cũng y&ecirc;u th&iacute;ch c&aacute;c c&ocirc;ng việc s&aacute;ng tạo hơn l&agrave; những c&ocirc;ng việc truyền thống, kh&ocirc; cứng.</p>\r\n\r\n<h3><strong>6. Bạn th&iacute;ch c&agrave; ph&ecirc; đen</strong></h3>\r\n\r\n<p>Kiểu người th&iacute;ch uống c&agrave; ph&ecirc; đen&nbsp;thường rất truyền thống v&agrave; c&oacute; t&iacute;nh c&aacute;ch hướng nội. Do đ&oacute;, họ sẽ cảm thấy thoải m&aacute;i khi được sống trong kh&ocirc;ng gian y&ecirc;n tĩnh v&agrave; đơn giản. Trong c&ocirc;ng việc, người th&iacute;ch uống c&agrave; ph&ecirc; đen sẽ c&oacute; xu hướng l&agrave;m quản l&yacute; hoặc l&atilde;nh đạo. Nguy&ecirc;n nh&acirc;n n&agrave;y l&agrave; do t&iacute;nh c&aacute;ch chăm chỉ, thẳng thắn v&agrave; xem trọng hiệu quả l&agrave;m việc. Nhược điểm của nh&oacute;m người n&agrave;y l&agrave; th&iacute;ch kiểm so&aacute;t mọi thứ v&agrave; kh&aacute; độc đo&aacute;n.</p>\r\n\r\n<h3><strong>7. Bạn th&iacute;ch c&agrave; ph&ecirc; sữa</strong></h3>\r\n\r\n<p>Nếu bạn th&iacute;ch c&agrave; ph&ecirc; của m&igrave;nh c&oacute; vị ngọt v&agrave; b&eacute;o, bạn sẽ l&agrave; một người kh&aacute; dễ chịu v&agrave; h&ograve;a đồng. Những người n&agrave;y phần lớn đều sống thi&ecirc;n về t&igrave;nh cảm n&ecirc;n sẽ biết c&aacute;ch lắng nghe người kh&aacute;c. Tuy nhi&ecirc;n, họ lại kh&ocirc;ng giỏi chịu đựng &aacute;p lực n&ecirc;n sẽ dễ rơi v&agrave;o trạng th&aacute;i căng thẳng. Ngo&agrave;i ra, một điểm yếu kh&aacute;c ở người th&iacute;ch uống c&agrave; ph&ecirc; sữa l&agrave; họ thường c&oacute; xu hướng muốn l&agrave;m h&agrave;i l&ograve;ng người kh&aacute;c. Về c&ocirc;ng việc, nh&oacute;m người n&agrave;y c&oacute; thẩm mỹ kh&aacute; tốt v&agrave; rất gi&agrave;u tr&iacute; tưởng tượng.&nbsp;</p>\r\n\r\n<h3><strong>8. Bạn th&iacute;ch c&agrave; ph&ecirc; cold brew</strong></h3>\r\n\r\n<p>Tương tự như c&agrave; ph&ecirc; đen, người th&iacute;ch uống c&agrave; ph&ecirc; cold brew sẽ c&oacute; t&iacute;nh c&aacute;ch rất quyết đo&aacute;n. Trong c&ocirc;ng việc, họ được đ&aacute;nh gi&aacute; l&agrave; người kh&ocirc;ng ồn &agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng chịu tr&aacute;ch nhiệm với bản th&acirc;n. Điểm mạnh của nh&oacute;m người n&agrave;y l&agrave; sự tự tin v&agrave; lu&ocirc;n giữ vững ch&iacute;nh kiến của m&igrave;nh. V&igrave; thế, người th&iacute;ch uống c&agrave; ph&ecirc; cold brew thường được đ&aacute;nh gi&aacute; l&agrav'),
(4, 'Kỉ niệm 1 năm thành lập', 'Kỉ niệm 1 năm thành lập DLV COFFEE chúng tôi giảm giá.....', '../css/img/sales.png', '<h2><strong>Chương tr&igrave;nh khuyến m&atilde;i qu&aacute;n cafe tặng qu&agrave; tri &acirc;n bất ngờ</strong></h2>\r\n\r\n<p>1/1/2023 - 1/1/2024 Mừng sinh nhật 1 tuổi DLV COFFEE , ch&uacute;ng t&ocirc;i giảm gi&aacute; 20% to&agrave;n bộ sản phẩm khi kh&aacute;ch h&agrave;ng mua sản phẩm mang về .</p>\r\n\r\n<p><strong>Chi tiết:</strong></p>\r\n\r\n<p><em>Từ 1/1/2024 đến 1/2/2024 :&nbsp;</em>to&agrave;n bộ sản phẩm giảm 20%&nbsp;khi kh&aacute;ch h&agrave;ng mua sản phẩm mang về.</p>\r\n\r\n<p>Tổng h&oacute;a đơn lớn hơn 200.000vnđ kh&aacute;ch h&agrave;ng sẽ được tham gia chương tr&igrave;nh bốc thăm tr&uacute;ng thưởng.</p>\r\n\r\n<p><strong>Cơ cấu giải thưởng:</strong></p>\r\n\r\n<p>- <em>1 giải nhất</em>: 1 Chiếc Iphone 15promax</p>\r\n\r\n<p>- <em>3 giải nh&igrave;: </em>&nbsp;1 năm uống c&agrave; ph&ecirc; miễn ph&iacute;</p>\r\n\r\n<p>- <em>10 giải 3:</em> phiếu giảm gi&aacute; 500k cho h&oacute;a đơn từ 100k</p>\r\n\r\n<p>- 50 giải khuyến kh&iacute;ch: 1 con gấu b&ocirc;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(110) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', '123', 'admin@gmail.com', 1),
(3, 'lam', '123', 'lam@gmail.com', 0),
(4, 'vung', '123', 'vung@gmail.com', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_oder_view`
--
ALTER TABLE `tbl_oder_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_oder_view`
--
ALTER TABLE `tbl_oder_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_oder_view`
--
ALTER TABLE `tbl_oder_view`
  ADD CONSTRAINT `tbl_oder_view_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`),
  ADD CONSTRAINT `tbl_oder_view_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`),
  ADD CONSTRAINT `tbl_oder_view_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`);

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Các ràng buộc cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`),
  ADD CONSTRAINT `tbl_order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
