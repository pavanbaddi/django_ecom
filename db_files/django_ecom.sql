-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2021 at 08:02 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product model', 7, 'add_productmodel'),
(26, 'Can change product model', 7, 'change_productmodel'),
(27, 'Can delete product model', 7, 'delete_productmodel'),
(28, 'Can view product model', 7, 'view_productmodel'),
(29, 'Can add cart model', 8, 'add_cartmodel'),
(30, 'Can change cart model', 8, 'change_cartmodel'),
(31, 'Can delete cart model', 8, 'delete_cartmodel'),
(32, 'Can view cart model', 8, 'view_cartmodel'),
(33, 'Can add order model', 9, 'add_ordermodel'),
(34, 'Can change order model', 9, 'change_ordermodel'),
(35, 'Can delete order model', 9, 'delete_ordermodel'),
(36, 'Can view order model', 9, 'view_ordermodel'),
(37, 'Can add order item model', 10, 'add_orderitemmodel'),
(38, 'Can change order item model', 10, 'change_orderitemmodel'),
(39, 'Can delete order item model', 10, 'delete_orderitemmodel'),
(40, 'Can view order item model', 10, 'view_orderitemmodel'),
(41, 'Can add order model', 11, 'add_ordermodel'),
(42, 'Can change order model', 11, 'change_ordermodel'),
(43, 'Can delete order model', 11, 'delete_ordermodel'),
(44, 'Can view order model', 11, 'view_ordermodel'),
(45, 'Can add order item model', 12, 'add_orderitemmodel'),
(46, 'Can change order item model', 12, 'change_orderitemmodel'),
(47, 'Can delete order item model', 12, 'delete_orderitemmodel'),
(48, 'Can view order item model', 12, 'view_orderitemmodel'),
(49, 'Can add slide model', 13, 'add_slidemodel'),
(50, 'Can change slide model', 13, 'change_slidemodel'),
(51, 'Can delete slide model', 13, 'delete_slidemodel'),
(52, 'Can view slide model', 13, 'view_slidemodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$VpUD51v5Hp54rz5Woztyr3$Wm1osA3yPJkUBnKu28Gbb7XpBwYk+DZtXIFHkrtKhag=', '2021-09-20 07:46:17.350405', 0, 'kunal123', 'Kunal', 'Patil', 'kunal123@g.com', 0, 1, '2021-09-20 07:30:26.856956'),
(2, 'pbkdf2_sha256$260000$PcPR7XPGPo0Eo4FglJDghW$vvw39Xb5sTGj+JWzdeSTF1gbf8QqlSSOqJndh1WPXvw=', '2021-09-20 07:46:54.542032', 0, 'p123', 'prakash', 'patil', 'p@g.com', 0, 1, '2021-09-20 07:46:42.449264');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'orders', 'orderitemmodel'),
(11, 'orders', 'ordermodel'),
(7, 'products', 'productmodel'),
(13, 'products', 'slidemodel'),
(6, 'sessions', 'session'),
(8, 'shop', 'cartmodel'),
(10, 'shop', 'orderitemmodel'),
(9, 'shop', 'ordermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-16 06:53:27.628652'),
(2, 'auth', '0001_initial', '2021-09-16 06:53:28.661958'),
(3, 'admin', '0001_initial', '2021-09-16 06:53:28.904836'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-16 06:53:28.940739'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-16 06:53:28.968665'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-16 06:53:29.136214'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-16 06:53:29.185089'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-16 06:53:29.251906'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-16 06:53:29.272736'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-16 06:53:29.354240'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-16 06:53:29.362215'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-16 06:53:29.403106'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-16 06:53:29.443001'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-16 06:53:29.484117'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-16 06:53:29.543944'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-16 06:53:29.581841'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-16 06:53:29.621735'),
(18, 'sessions', '0001_initial', '2021-09-16 06:53:29.743412'),
(19, 'products', '0001_initial', '2021-09-16 07:14:07.745386'),
(20, 'shop', '0001_initial', '2021-09-17 07:07:55.461951'),
(21, 'shop', '0002_rename_product_id_cartmodel_product', '2021-09-17 07:14:53.641286'),
(22, 'shop', '0003_orderitemmodel_ordermodel', '2021-09-18 07:04:30.289273'),
(23, 'orders', '0001_initial', '2021-09-20 06:03:12.467383'),
(24, 'shop', '0004_auto_20210920_1132', '2021-09-20 06:03:12.486312'),
(25, 'products', '0002_productmodel_featured_image', '2021-09-21 06:29:54.532980'),
(26, 'products', '0003_remove_productmodel_featured_image', '2021-09-21 06:30:37.096118'),
(27, 'products', '0004_productmodel_featured_image', '2021-09-21 06:31:15.301675'),
(28, 'products', '0005_slidemodel', '2021-09-21 07:31:55.445793'),
(29, 'products', '0006_rename_product_id_slidemodel_product', '2021-09-21 07:31:55.574755'),
(30, 'products', '0007_productmodel_content', '2021-09-21 07:50:55.298075');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cuhwwk16jh3y5ze1q7xwm4okkyt0z4ag', '.eJxVjDEOwjAMRe-SGUWx65DAyM4ZKttJSQGlUtNOiLtDpQ6w_vfef5me16X0a8tzPyZzNmgOv5uwPnLdQLpzvU1Wp7rMo9hNsTtt9jql_Lzs7t9B4Va-dXYhRSIvKoEdKahCjOz4BNQpdiA5ixsGxHgMhOw8IHQcMQzgSdC8P-DMN0k:1mSE0s:39YuNCUdeLYQiRIUI1ZoGCGyP0SgO8EaXnmJF2MGOHc', '2021-10-04 07:46:54.551999'),
('fzzjuq08etu7rwnloo6f6w80nv2jni9g', 'e30:1mSDvz:6GiaK4PCNRzd6JTc22nqqYMYYZmSNRIzYAX6gPIHqaY', '2021-10-04 07:41:51.737713');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` longtext,
  `payment_order_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `delivery_desc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `phone`, `address`, `payment_order_id`, `payment_id`, `delivery_desc`) VALUES
(1, 'Kunal', '8892279412', 'sample addresss', 'pay_HyqCVNcGP31cvz', 'order_HyqBOdrWZPwwtb', NULL),
(2, 'Sam', '8896696969', 'hubli', 'pay_HzcYTZuAOQC63p', 'order_HzcY0ORJRmzqmR', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `rate` double NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `rate`, `qty`, `price`, `order_id`, `product_id`) VALUES
(1, 25, 1, 25, 1, 4),
(2, 55, 1, 55, 2, 5),
(3, 25, 1, 25, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `featured_image`, `content`) VALUES
(3, 'Head Phones', 300, NULL, NULL),
(4, 'Toothbrush', 25, NULL, NULL),
(5, 'Napkin', 55, NULL, NULL),
(6, 'Valentine Olson', 550, 'f1330085-c9aa-434b-a50b-9516d3ae41cf.png', NULL),
(7, 'Quyn Pennington', 843, '822063f0-fa2d-4893-8b5e-d8c69451f6e0.jpeg', '<p>None</p><p><br></p><p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/OyVWDF-_Ooo\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `path`, `product_id`) VALUES
(1, '2db5e232-af99-4000-a184-4583e816849a.jpeg', 7),
(3, '72dd38aa-e871-4bda-bdcc-7753408ff739.jpeg', 7),
(5, '8f791a85-754e-4cb8-b796-d3706e3a072e.jpeg', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `carts_product_id_02913eac_fk_products_product_id` (`product_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_items_order_id_412ad78b_fk_orders_order_id` (`order_id`),
  ADD KEY `order_items_product_id_dd557d5a_fk_products_product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`),
  ADD KEY `slides_product_id_cca92c74_fk_products_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_02913eac_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_412ad78b_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_product_id_dd557d5a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_product_id_cca92c74_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
