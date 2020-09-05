/*
 Navicat Premium Data Transfer

 Source Server         : thary
 Source Server Type    : MariaDB
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : laravelonlineshop

 Target Server Type    : MariaDB
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 22/09/2019 17:55:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE `bill_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bill_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of bill_detail
-- ----------------------------
INSERT INTO `bill_detail` VALUES (1, 1, 7, 1, 970, '2019-06-28 09:56:37', '2019-06-28 09:56:37');
INSERT INTO `bill_detail` VALUES (2, 1, 6, 1, 1100, '2019-06-28 09:56:37', '2019-06-28 09:56:37');
INSERT INTO `bill_detail` VALUES (3, 2, 7, 1, 970, '2019-06-28 09:59:33', '2019-06-28 09:59:33');
INSERT INTO `bill_detail` VALUES (4, 2, 6, 1, 1100, '2019-06-28 09:59:33', '2019-06-28 09:59:33');
INSERT INTO `bill_detail` VALUES (5, 3, 8, 1, 450, '2019-06-29 07:27:06', '2019-06-29 07:27:06');
INSERT INTO `bill_detail` VALUES (6, 3, 7, 1, 970, '2019-06-29 07:27:06', '2019-06-29 07:27:06');
INSERT INTO `bill_detail` VALUES (7, 4, 9, 1, 700, '2019-06-29 09:04:57', '2019-06-29 09:04:57');
INSERT INTO `bill_detail` VALUES (8, 4, 8, 1, 450, '2019-06-29 09:04:57', '2019-06-29 09:04:57');
INSERT INTO `bill_detail` VALUES (9, 5, 9, 1, 700, '2019-07-03 13:30:43', '2019-07-03 13:30:43');
INSERT INTO `bill_detail` VALUES (10, 5, 8, 1, 450, '2019-07-03 13:30:43', '2019-07-03 13:30:43');
INSERT INTO `bill_detail` VALUES (11, 6, 8, 3, 450, '2019-07-04 13:50:17', '2019-07-04 13:50:17');
INSERT INTO `bill_detail` VALUES (12, 7, 7, 1, 970, '2019-07-04 13:56:08', '2019-07-04 13:56:08');
INSERT INTO `bill_detail` VALUES (13, 7, 6, 1, 1100, '2019-07-04 13:56:08', '2019-07-04 13:56:08');

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_price` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bills
-- ----------------------------
INSERT INTO `bills` VALUES (1, 'rith', '12345678', 'pp', 2, 3, '2019-06-28 09:56:37', '2019-06-29 07:37:49', 'rith@gmail.com');
INSERT INTO `bills` VALUES (2, 'rith', '12345678', 'pp', 2, 3, '2019-06-28 09:59:33', '2019-06-29 07:37:55', 'rith@gmail.com');
INSERT INTO `bills` VALUES (3, 'rith', '0965564677', 'pp', 1, 3, '2019-06-29 07:27:06', '2019-06-29 07:37:57', 'rith@gmail.com');
INSERT INTO `bills` VALUES (4, 'lyprono', '0965564677', 'pp', 1, 2, '2019-06-29 09:04:57', '2019-07-04 13:56:24', 'lyprono@gmail.com');
INSERT INTO `bills` VALUES (5, 'hhh', '0965564677', 'dfghj', 1, 1, '2019-07-03 13:30:43', '2019-07-04 13:51:38', 'pora@gmail.com');
INSERT INTO `bills` VALUES (6, 'Lyprono', '0965564677', 'dfghj', 1, 1, '2019-07-04 13:50:17', '2019-07-04 13:51:39', 'lyprono@gmail.com');
INSERT INTO `bills` VALUES (7, 'lyprono', '0965564677', 'dfghj', 2, 1, '2019-07-04 13:56:08', '2019-07-04 13:56:08', 'lyprono@gmail.com');

-- ----------------------------
-- Table structure for export
-- ----------------------------
DROP TABLE IF EXISTS `export`;
CREATE TABLE `export`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total_quantity` int(11) NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of export
-- ----------------------------
INSERT INTO `export` VALUES (1, 3, 2, 2070, 1, '2019-06-29 07:37:49', '2019-06-29 07:37:49');
INSERT INTO `export` VALUES (2, 3, 2, 2070, 1, '2019-06-29 07:37:55', '2019-06-29 07:37:55');
INSERT INTO `export` VALUES (3, 3, 2, 1420, 1, '2019-06-29 07:37:57', '2019-06-29 07:37:57');

-- ----------------------------
-- Table structure for export_detail
-- ----------------------------
DROP TABLE IF EXISTS `export_detail`;
CREATE TABLE `export_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `export_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of export_detail
-- ----------------------------
INSERT INTO `export_detail` VALUES (1, 1, 7, 1, 970, '2019-06-29 07:37:49', '2019-06-29 07:37:49');
INSERT INTO `export_detail` VALUES (2, 1, 6, 1, 1100, '2019-06-29 07:37:49', '2019-06-29 07:37:49');
INSERT INTO `export_detail` VALUES (3, 2, 7, 1, 970, '2019-06-29 07:37:55', '2019-06-29 07:37:55');
INSERT INTO `export_detail` VALUES (4, 2, 6, 1, 1100, '2019-06-29 07:37:55', '2019-06-29 07:37:55');
INSERT INTO `export_detail` VALUES (5, 3, 8, 1, 450, '2019-06-29 07:37:57', '2019-06-29 07:37:57');
INSERT INTO `export_detail` VALUES (6, 3, 7, 1, 970, '2019-06-29 07:37:57', '2019-06-29 07:37:57');

-- ----------------------------
-- Table structure for import
-- ----------------------------
DROP TABLE IF EXISTS `import`;
CREATE TABLE `import`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total_quantity` int(11) NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of import
-- ----------------------------
INSERT INTO `import` VALUES (1, 1, 6, 36000, 2, '2019-06-20 13:04:24', '2019-06-20 13:05:03');
INSERT INTO `import` VALUES (2, 3, 0, 0, 2, '2019-06-26 14:30:23', '2019-06-26 14:40:17');
INSERT INTO `import` VALUES (3, 3, 10, 5000, 1, '2019-06-26 14:30:42', '2019-07-04 13:53:27');
INSERT INTO `import` VALUES (4, 3, 0, 0, 2, '2019-06-29 07:44:31', '2019-06-29 07:44:55');
INSERT INTO `import` VALUES (5, 3, 0, 0, 2, '2019-06-29 07:45:06', '2019-06-29 07:45:27');
INSERT INTO `import` VALUES (6, 3, 10, 5000, 2, '2019-06-29 07:45:18', '2019-06-29 07:46:22');
INSERT INTO `import` VALUES (7, 3, 0, 0, 1, '2019-06-29 07:45:21', '2019-06-29 07:45:21');
INSERT INTO `import` VALUES (8, 3, 15, 10500, 2, '2019-06-29 07:45:37', '2019-06-29 07:50:01');
INSERT INTO `import` VALUES (9, 3, 0, 0, 1, '2019-06-29 07:45:52', '2019-06-29 07:45:52');
INSERT INTO `import` VALUES (10, 3, 0, 0, 1, '2019-07-04 13:53:09', '2019-07-04 13:53:09');

-- ----------------------------
-- Table structure for import_detail
-- ----------------------------
DROP TABLE IF EXISTS `import_detail`;
CREATE TABLE `import_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `import_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of import_detail
-- ----------------------------
INSERT INTO `import_detail` VALUES (1, 1, 1, 6, 6000, '2019-06-20 13:04:53', '2019-06-20 13:04:53');
INSERT INTO `import_detail` VALUES (2, 6, 9, 10, 500, '2019-06-29 07:46:17', '2019-06-29 07:46:17');
INSERT INTO `import_detail` VALUES (3, 8, 7, 15, 700, '2019-06-29 07:49:25', '2019-06-29 07:49:25');
INSERT INTO `import_detail` VALUES (4, 3, 9, 10, 500, '2019-07-04 13:53:27', '2019-07-04 13:53:27');

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (1, 'Foxconn Technology Group', '2019-06-01 21:51:59', '2019-06-19 21:52:04');
INSERT INTO `manufacturers` VALUES (2, 'Samsung company', '2019-06-22 14:15:47', '2019-06-22 14:15:55');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2017_09_26_224717_create_roles_table', 1);
INSERT INTO `migrations` VALUES (4, '2017_09_26_224837_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (5, '2017_09_26_224909_create_news_table', 1);
INSERT INTO `migrations` VALUES (6, '2017_09_26_224929_create_bills_table', 1);
INSERT INTO `migrations` VALUES (7, '2017_09_26_224946_create_import_table', 1);
INSERT INTO `migrations` VALUES (8, '2017_09_26_225024_create_export_table', 1);
INSERT INTO `migrations` VALUES (9, '2017_09_26_225049_create_import_detail_table', 1);
INSERT INTO `migrations` VALUES (10, '2017_09_26_225107_create_export_detail_table', 1);
INSERT INTO `migrations` VALUES (11, '2017_09_26_225132_create_bill_detail_table', 1);
INSERT INTO `migrations` VALUES (12, '2017_09_26_225208_create_products_table', 1);
INSERT INTO `migrations` VALUES (13, '2017_09_26_225238_create_manufacturers_table', 1);
INSERT INTO `migrations` VALUES (14, '2017_09_29_215256_update_bills_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_10_06_234353_add_price_products_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_10_07_013923_add_new_and_hot_products_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_10_08_132930_create_types_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_10_08_133646_create_product_type_table', 1);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `promotion_price` double NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `OS` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `memory` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `RAM` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `display` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `new` int(11) NOT NULL DEFAULT 0,
  `hot` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (9, 1, 'Iphone7', 'iphone7', 'good', '80bdd9c3-fccb-4ce1-ada3-fe9052d68005_1.eda20373d8d69127055bf1276f19a385.jpeg', 700, 700, 10, 'ios', '64GB', '4G', '12', 'Gold', 1, '2019-06-29 07:44:15', '2019-09-16 10:44:13', 700, 1, 0);
INSERT INTO `products` VALUES (8, 1, 'iphone7', 'iphone7', 'good', 'ip7plus_gold.jpg', 500, 450, -1, 'ios', '32', '6', '12', 'Gold', 1, '2019-06-27 15:35:01', '2019-09-09 21:42:34', 450, 1, 0);
INSERT INTO `products` VALUES (7, 1, 'iphonex', 'iphonex', 'good', 'iphonex.png', 1000, 970, 12, 'ios', '64GB', '6', '12', '5.80\"', 1, '2019-06-26 13:23:31', '2019-08-19 11:06:33', 970, 0, 0);
INSERT INTO `products` VALUES (6, 1, 'iPhone XS Max', 'iphone-xs-max', 'good', 'iphone-xs-gold-select-2018.png', 1200, 1100, -2, 'ios', '120', '4G', '12', 'Gold', 1, '2019-06-26 13:11:21', '2019-08-19 11:06:33', 1100, 0, 0);
INSERT INTO `products` VALUES (10, 1, 'iphone x plur', 'iphone-x-plur', 'black', '80bdd9c3-fccb-4ce1-ada3-fe9052d68005_1.eda20373d8d69127055bf1276f19a385.jpeg', 1150, 5, 0, 'mac', '32', '5', 'iphone', 'black', 1, '2019-08-04 08:57:22', '2019-09-09 21:42:34', 5, 1, 0);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', '2019-06-19 19:12:30', '2019-06-19 19:12:34');
INSERT INTO `roles` VALUES (2, 'Business', '2019-09-16 10:48:09', '2019-09-16 10:48:09');
INSERT INTO `roles` VALUES (3, 'Normal', '2019-09-16 10:48:17', '2019-09-16 10:48:17');

-- ----------------------------
-- Table structure for type_product
-- ----------------------------
DROP TABLE IF EXISTS `type_product`;
CREATE TABLE `type_product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type_product_product_id_unique`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of type_product
-- ----------------------------
INSERT INTO `type_product` VALUES (1, 1, 1, '2019-06-19 21:53:34', '2019-06-19 21:53:39');
INSERT INTO `type_product` VALUES (2, 2, 1, '2019-06-22 12:36:25', '2019-06-22 12:36:25');
INSERT INTO `type_product` VALUES (3, 3, 1, '2019-06-22 14:11:29', '2019-06-22 14:11:29');
INSERT INTO `type_product` VALUES (4, 4, 2, '2019-06-22 14:17:42', '2019-06-22 14:17:42');
INSERT INTO `type_product` VALUES (5, 5, 1, '2019-06-24 16:41:44', '2019-06-24 16:41:44');
INSERT INTO `type_product` VALUES (6, 6, 1, '2019-06-26 13:11:21', '2019-06-26 13:11:21');
INSERT INTO `type_product` VALUES (7, 7, 1, '2019-06-26 13:23:31', '2019-06-26 13:23:31');
INSERT INTO `type_product` VALUES (8, 8, 1, '2019-06-27 15:35:01', '2019-06-27 15:35:01');
INSERT INTO `type_product` VALUES (9, 9, 1, '2019-06-29 07:44:15', '2019-06-29 07:44:15');
INSERT INTO `type_product` VALUES (10, 10, 1, '2019-08-04 08:57:22', '2019-08-04 08:57:22');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, 'Iphone', '2019-06-13 21:53:01', '2019-06-19 21:53:16');
INSERT INTO `types` VALUES (2, 'samsung Note8', '2019-06-22 14:17:42', '2019-06-22 14:17:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NULL DEFAULT 1,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 1, 'lyprono', 'Lyprono@gmail.com', '$2y$10$.Q25mstdSo8huxnicEEpnuII/GJXUBi9qz..a.FQiC1wRGSsxYVkS', '0965564677', 1, 'UP9gYMrKReNUrDoWvWbyIuxHDwI3yVPrxBTNdvo3bBnsGMwelgDa17ebzsQr', '2019-06-19 20:39:16', '2019-06-20 17:12:10');
INSERT INTO `users` VALUES (5, 1, 'long', 'long@gmail.com', '$2y$10$0MtJcVURzrQg85a6mcotJOXe97J.FbEmE76Ly7wvra9TXKkndcVem', '12345678', 1, 'miPaMEm4uJVMqx9CSACgk9dHSUgc51hYSrsLf1Vj3YwD6rpOmduMZRvLB17M', '2019-09-09 21:55:47', '2019-09-09 21:57:41');
INSERT INTO `users` VALUES (4, 1, 'thary', 'thary@gmail.com', '$2y$10$sg78aKWl3hjDjv6InT2hJuZemobg8V2KcFAVu1YcIik0ed5PswJ0q', NULL, 1, 'vkdOAxx397cA4tSUvewgktE041LV53XeLMlBHme5HBhDse2AYKlkW8z3uacA', '2019-09-09 21:35:36', '2019-09-09 21:56:25');
INSERT INTO `users` VALUES (1, 1, 'admin', 'admin@gmail.com', '$2y$10$lftHME9ikigrYRqU5jy8AOkoY0LkgbRgEUDPSHown4wtugb4Vxrpe', NULL, 1, '8nOKTVMTrNVs2ZJeuNcSzlbbASupliFcLYx4Zb82Hz7dzW2uDenT3yckQfxB', '2019-09-11 21:00:37', '2019-09-11 21:00:37');

SET FOREIGN_KEY_CHECKS = 1;
