/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : localhost:3306
 Source Schema         : easyjob

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 11/01/2024 22:16:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_carousel
-- ----------------------------
DROP TABLE IF EXISTS `app_carousel`;
CREATE TABLE `app_carousel`  (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `img_path` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `object_type` tinyint(4) NULL DEFAULT NULL COMMENT '0:分享1:问题 2:考题 3:外部连接',
  `object_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章ID',
  `outer_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外部连接',
  `sort` tinyint(4) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'app轮播' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_carousel
-- ----------------------------
INSERT INTO `app_carousel` VALUES (5, '202309/JAu3kwLqpB2viRFrOZ8mJnMvg2yCs7.jpg', 1, '10193', '', 3);
INSERT INTO `app_carousel` VALUES (6, '202309/AyNtnobWMx8MfyzHLF0KCid8XZB3YB.jpg', 2, '9', '', 4);
INSERT INTO `app_carousel` VALUES (7, '202309/TRMK7Y7URTPrJPW2rrKqmlu3Dpo0IU.jpg', 0, '10000', '', 2);
INSERT INTO `app_carousel` VALUES (8, '202309/Q9jCE4By6GJmssMxQIKS7l9ihbgJSj.jpg', 3, 'http://eas', 'http://easyshop.wuhancoder.com', 1);

-- ----------------------------
-- Table structure for app_device
-- ----------------------------
DROP TABLE IF EXISTS `app_device`;
CREATE TABLE `app_device`  (
  `device_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备ID',
  `device_brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机品牌',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `last_use_time` datetime NULL DEFAULT NULL COMMENT '最后使用时间',
  `ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`device_id`) USING BTREE,
  INDEX `index_brand`(`device_brand`) USING BTREE,
  INDEX `index_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '设备信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_device
-- ----------------------------
INSERT INTO `app_device` VALUES ('16877859822958546579', '', '2023-10-06 15:46:37', '2023-10-06 15:56:27', '127.0.0.1');

-- ----------------------------
-- Table structure for app_exam
-- ----------------------------
DROP TABLE IF EXISTS `app_exam`;
CREATE TABLE `app_exam`  (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '0:未完成 1:已完成',
  `remark` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`exam_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户在线考试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_exam
-- ----------------------------
INSERT INTO `app_exam` VALUES (10040, '0851658636', 'MIAO?', '2023-08-20 21:38:40', '2023-08-20 21:38:41', '2023-08-20 21:38:55', 1, '噢噢');
INSERT INTO `app_exam` VALUES (10041, '0851658636', 'MIAO?', '2023-08-20 21:39:06', '2023-08-20 21:39:08', '2023-08-20 21:39:11', 1, '噢噢');
INSERT INTO `app_exam` VALUES (10048, '9919416259', '少少洛', '2023-08-20 22:00:09', '2023-08-20 22:00:13', '2023-08-20 22:01:47', 1, '测试所有全勾考试');
INSERT INTO `app_exam` VALUES (10050, '8202436101', '张三', '2023-08-20 22:10:40', '2023-08-20 22:10:41', '2023-08-20 22:11:50', 1, 'ghjgjv');
INSERT INTO `app_exam` VALUES (10052, '9919416259', '少少洛', '2023-08-21 10:34:54', '2023-08-21 10:34:58', '2023-08-21 10:36:29', 1, '唱跳rap篮球music');
INSERT INTO `app_exam` VALUES (10057, '4581405264', 'Sakura', '2023-08-21 17:12:21', NULL, NULL, 0, NULL);
INSERT INTO `app_exam` VALUES (10059, '9807522475', '程序员老罗', '2023-08-26 22:02:14', '2023-08-26 22:02:15', '2023-08-26 22:02:24', 1, '测试');
INSERT INTO `app_exam` VALUES (10064, '6445025745', '测试', '2023-08-27 13:33:52', '2023-08-27 13:33:54', '2023-08-27 13:34:20', 1, '测试');
INSERT INTO `app_exam` VALUES (10065, '7439725398', 'hzf717', '2023-08-27 13:35:48', '2023-08-27 13:35:56', NULL, 0, NULL);
INSERT INTO `app_exam` VALUES (10066, '1140195679', '告白', '2023-08-27 14:13:36', '2023-08-27 14:13:40', '2023-08-27 14:14:05', 1, '1');
INSERT INTO `app_exam` VALUES (10067, '6171885295', 'yunzee', '2023-08-27 14:45:16', '2023-08-27 14:45:22', '2023-08-27 14:45:36', 1, '1');
INSERT INTO `app_exam` VALUES (10070, '9807522475', '程序员老罗', '2023-08-27 16:18:23', '2023-08-27 16:18:32', '2023-08-27 16:20:07', 1, '测试');
INSERT INTO `app_exam` VALUES (10072, '9807522475', '程序员老罗', '2023-08-27 18:38:23', '2023-09-06 22:25:53', NULL, 0, NULL);
INSERT INTO `app_exam` VALUES (10075, '9726459773', '努力前端', '2023-08-28 07:32:58', '2023-08-29 18:29:21', '2023-08-29 18:32:40', 1, '测试1');
INSERT INTO `app_exam` VALUES (10076, '2770579068', '花生', '2023-08-28 09:52:10', '2023-08-28 09:52:13', NULL, 0, NULL);
INSERT INTO `app_exam` VALUES (10077, '0841979275', '少年', '2023-08-28 10:07:36', '2023-08-28 10:07:40', '2023-08-28 10:08:01', 1, '。。');
INSERT INTO `app_exam` VALUES (10079, '9886306901', 'rain', '2023-08-28 13:27:29', '2023-08-28 13:27:35', '2023-08-28 13:27:47', 1, '第一次');
INSERT INTO `app_exam` VALUES (10081, '7439725398', 'hzf717', '2023-08-28 16:43:15', NULL, NULL, 0, NULL);
INSERT INTO `app_exam` VALUES (10085, '6171885295', 'yunzee', '2023-08-29 17:40:58', '2023-08-29 17:41:00', '2023-08-29 17:41:09', 1, 'v');
INSERT INTO `app_exam` VALUES (10087, '5649800806', '张三', '2023-08-29 20:08:49', '2023-08-29 20:08:53', '2023-08-29 20:09:19', 1, '0.0');
INSERT INTO `app_exam` VALUES (10090, '2815717207', '二十三年夏', '2023-08-31 16:25:43', '2023-08-31 16:25:44', '2023-08-31 16:26:17', 1, '头一次');
INSERT INTO `app_exam` VALUES (10092, '5352396120', 'tockm', '2023-09-02 09:26:55', '2023-09-02 09:26:57', '2023-09-02 09:27:16', 1, '1');
INSERT INTO `app_exam` VALUES (10094, '9886306901', 'rain', '2023-09-02 22:39:30', '2023-09-02 22:39:39', '2023-09-02 22:39:49', 1, '1');
INSERT INTO `app_exam` VALUES (10095, '2606390817', '喜羊羊', '2023-09-04 02:23:52', '2023-09-04 02:23:55', '2023-09-04 02:34:11', 1, '1');
INSERT INTO `app_exam` VALUES (10098, '1291594995', 'cyx', '2023-09-06 07:58:08', '2023-09-06 07:58:11', '2023-09-06 09:06:20', 1, '1');
INSERT INTO `app_exam` VALUES (10099, '9807522475', '程序员老罗', '2023-09-06 22:26:01', '2023-09-06 22:26:03', '2023-09-06 22:26:20', 1, '测试');
INSERT INTO `app_exam` VALUES (10100, '1755440960', '小鬼', '2023-09-07 11:59:26', '2023-09-07 11:59:28', '2023-09-07 11:59:35', 1, '1');

-- ----------------------------
-- Table structure for app_exam_question
-- ----------------------------
DROP TABLE IF EXISTS `app_exam_question`;
CREATE TABLE `app_exam_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `exam_id` int(11) NOT NULL COMMENT '考试ID',
  `user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '问题ID',
  `user_answer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户答案',
  `answer_result` tinyint(1) NULL DEFAULT NULL COMMENT '0:未作答 1:正确  2:错误',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_key`(`exam_id`, `user_id`, `question_id`) USING BTREE,
  INDEX `idx_exam_id`(`exam_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_answer_result`(`answer_result`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13604 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试问题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_exam_question
-- ----------------------------
INSERT INTO `app_exam_question` VALUES (11656, 10040, '0851658636', 9, '0', 2);
INSERT INTO `app_exam_question` VALUES (11658, 10041, '0851658636', 9, '1', 1);
INSERT INTO `app_exam_question` VALUES (11882, 10048, '9919416259', 10000, '1', 2);
INSERT INTO `app_exam_question` VALUES (11883, 10048, '9919416259', 24, '1', 2);
INSERT INTO `app_exam_question` VALUES (11884, 10048, '9919416259', 10013, '2', 2);
INSERT INTO `app_exam_question` VALUES (11885, 10048, '9919416259', 10024, '2', 2);
INSERT INTO `app_exam_question` VALUES (11886, 10048, '9919416259', 10022, '3', 1);
INSERT INTO `app_exam_question` VALUES (11887, 10048, '9919416259', 25, '1', 2);
INSERT INTO `app_exam_question` VALUES (11888, 10048, '9919416259', 10045, '3', 2);
INSERT INTO `app_exam_question` VALUES (11889, 10048, '9919416259', 10009, '2', 2);
INSERT INTO `app_exam_question` VALUES (11890, 10048, '9919416259', 10020, '3', 2);
INSERT INTO `app_exam_question` VALUES (11891, 10048, '9919416259', 10014, '3', 1);
INSERT INTO `app_exam_question` VALUES (11892, 10048, '9919416259', 10007, '0', 2);
INSERT INTO `app_exam_question` VALUES (11893, 10048, '9919416259', 10011, '3', 2);
INSERT INTO `app_exam_question` VALUES (11894, 10048, '9919416259', 10004, '1', 2);
INSERT INTO `app_exam_question` VALUES (11895, 10048, '9919416259', 10026, '1', 2);
INSERT INTO `app_exam_question` VALUES (11896, 10048, '9919416259', 10029, '1', 2);
INSERT INTO `app_exam_question` VALUES (11897, 10048, '9919416259', 10012, '3', 2);
INSERT INTO `app_exam_question` VALUES (11898, 10048, '9919416259', 10032, '2', 2);
INSERT INTO `app_exam_question` VALUES (11899, 10048, '9919416259', 10016, '3', 2);
INSERT INTO `app_exam_question` VALUES (11900, 10048, '9919416259', 40, '2', 1);
INSERT INTO `app_exam_question` VALUES (11901, 10048, '9919416259', 35, '1', 2);
INSERT INTO `app_exam_question` VALUES (11902, 10048, '9919416259', 13, '0', 2);
INSERT INTO `app_exam_question` VALUES (11903, 10048, '9919416259', 10027, '2', 2);
INSERT INTO `app_exam_question` VALUES (11904, 10048, '9919416259', 10023, '3', 2);
INSERT INTO `app_exam_question` VALUES (11905, 10048, '9919416259', 8, '1', 2);
INSERT INTO `app_exam_question` VALUES (11906, 10048, '9919416259', 10002, '1', 2);
INSERT INTO `app_exam_question` VALUES (11907, 10048, '9919416259', 5, '0', 2);
INSERT INTO `app_exam_question` VALUES (11908, 10048, '9919416259', 10005, '1', 2);
INSERT INTO `app_exam_question` VALUES (11909, 10048, '9919416259', 29, '2', 2);
INSERT INTO `app_exam_question` VALUES (11910, 10048, '9919416259', 7, '0', 1);
INSERT INTO `app_exam_question` VALUES (11911, 10048, '9919416259', 10028, '1', 2);
INSERT INTO `app_exam_question` VALUES (11912, 10048, '9919416259', 15, '0', 2);
INSERT INTO `app_exam_question` VALUES (11913, 10048, '9919416259', 10003, '1', 2);
INSERT INTO `app_exam_question` VALUES (11914, 10048, '9919416259', 10010, '3', 1);
INSERT INTO `app_exam_question` VALUES (11915, 10048, '9919416259', 10048, '2', 2);
INSERT INTO `app_exam_question` VALUES (11916, 10048, '9919416259', 10017, '0', 2);
INSERT INTO `app_exam_question` VALUES (11917, 10048, '9919416259', 26, '1', 1);
INSERT INTO `app_exam_question` VALUES (11918, 10048, '9919416259', 10, '0', 2);
INSERT INTO `app_exam_question` VALUES (11919, 10048, '9919416259', 18, '1', 2);
INSERT INTO `app_exam_question` VALUES (11920, 10048, '9919416259', 30, '1', 2);
INSERT INTO `app_exam_question` VALUES (11921, 10048, '9919416259', 10019, '3', 2);
INSERT INTO `app_exam_question` VALUES (11922, 10048, '9919416259', 16, '1', 2);
INSERT INTO `app_exam_question` VALUES (11923, 10048, '9919416259', 10018, '1', 2);
INSERT INTO `app_exam_question` VALUES (11924, 10048, '9919416259', 10046, '2', 2);
INSERT INTO `app_exam_question` VALUES (11925, 10048, '9919416259', 10030, '1', 2);
INSERT INTO `app_exam_question` VALUES (11926, 10048, '9919416259', 10031, '2', 2);
INSERT INTO `app_exam_question` VALUES (11927, 10048, '9919416259', 10044, '2', 2);
INSERT INTO `app_exam_question` VALUES (11928, 10048, '9919416259', 34, '2', 1);
INSERT INTO `app_exam_question` VALUES (11929, 10048, '9919416259', 17, '0', 2);
INSERT INTO `app_exam_question` VALUES (11930, 10048, '9919416259', 10006, '1', 2);
INSERT INTO `app_exam_question` VALUES (11931, 10048, '9919416259', 12, '0', 2);
INSERT INTO `app_exam_question` VALUES (11996, 10050, '8202436101', 10007, '1', 2);
INSERT INTO `app_exam_question` VALUES (11997, 10050, '8202436101', 10000, '2', 2);
INSERT INTO `app_exam_question` VALUES (11998, 10050, '8202436101', 10012, '0', 2);
INSERT INTO `app_exam_question` VALUES (11999, 10050, '8202436101', 10001, '1', 2);
INSERT INTO `app_exam_question` VALUES (12000, 10050, '8202436101', 10010, '1', 2);
INSERT INTO `app_exam_question` VALUES (12001, 10050, '8202436101', 10011, '1', 2);
INSERT INTO `app_exam_question` VALUES (12002, 10050, '8202436101', 10005, '1', 2);
INSERT INTO `app_exam_question` VALUES (12003, 10050, '8202436101', 10003, '1', 2);
INSERT INTO `app_exam_question` VALUES (12004, 10050, '8202436101', 10009, '1', 1);
INSERT INTO `app_exam_question` VALUES (12005, 10050, '8202436101', 10004, '1', 2);
INSERT INTO `app_exam_question` VALUES (12006, 10050, '8202436101', 10008, '1', 1);
INSERT INTO `app_exam_question` VALUES (12007, 10050, '8202436101', 10006, '1', 2);
INSERT INTO `app_exam_question` VALUES (12008, 10050, '8202436101', 10013, '1', 2);
INSERT INTO `app_exam_question` VALUES (12009, 10050, '8202436101', 10002, '1', 2);
INSERT INTO `app_exam_question` VALUES (12074, 10052, '9919416259', 10019, '0', 2);
INSERT INTO `app_exam_question` VALUES (12075, 10052, '9919416259', 37, '0', 2);
INSERT INTO `app_exam_question` VALUES (12076, 10052, '9919416259', 23, '0', 2);
INSERT INTO `app_exam_question` VALUES (12077, 10052, '9919416259', 10032, '0', 2);
INSERT INTO `app_exam_question` VALUES (12078, 10052, '9919416259', 10020, '0', 2);
INSERT INTO `app_exam_question` VALUES (12079, 10052, '9919416259', 5, '0', 2);
INSERT INTO `app_exam_question` VALUES (12080, 10052, '9919416259', 10028, '0', 1);
INSERT INTO `app_exam_question` VALUES (12081, 10052, '9919416259', 10043, '0', 2);
INSERT INTO `app_exam_question` VALUES (12082, 10052, '9919416259', 10017, '0', 2);
INSERT INTO `app_exam_question` VALUES (12083, 10052, '9919416259', 36, '0', 2);
INSERT INTO `app_exam_question` VALUES (12084, 10052, '9919416259', 31, '0', 2);
INSERT INTO `app_exam_question` VALUES (12085, 10052, '9919416259', 10009, '0', 2);
INSERT INTO `app_exam_question` VALUES (12086, 10052, '9919416259', 10002, '0', 2);
INSERT INTO `app_exam_question` VALUES (12087, 10052, '9919416259', 10021, '0', 2);
INSERT INTO `app_exam_question` VALUES (12088, 10052, '9919416259', 10006, '0', 2);
INSERT INTO `app_exam_question` VALUES (12089, 10052, '9919416259', 10033, '0', 2);
INSERT INTO `app_exam_question` VALUES (12090, 10052, '9919416259', 12, '0', 2);
INSERT INTO `app_exam_question` VALUES (12091, 10052, '9919416259', 17, '1', 1);
INSERT INTO `app_exam_question` VALUES (12092, 10052, '9919416259', 10047, '0', 1);
INSERT INTO `app_exam_question` VALUES (12093, 10052, '9919416259', 10008, '0', 2);
INSERT INTO `app_exam_question` VALUES (12094, 10052, '9919416259', 24, '0', 2);
INSERT INTO `app_exam_question` VALUES (12095, 10052, '9919416259', 15, '0', 2);
INSERT INTO `app_exam_question` VALUES (12096, 10052, '9919416259', 32, '0', 2);
INSERT INTO `app_exam_question` VALUES (12097, 10052, '9919416259', 10015, '0', 1);
INSERT INTO `app_exam_question` VALUES (12098, 10052, '9919416259', 33, '0', 2);
INSERT INTO `app_exam_question` VALUES (12099, 10052, '9919416259', 10029, '0', 1);
INSERT INTO `app_exam_question` VALUES (12100, 10052, '9919416259', 10012, '0', 2);
INSERT INTO `app_exam_question` VALUES (12101, 10052, '9919416259', 10045, '0', 2);
INSERT INTO `app_exam_question` VALUES (12102, 10052, '9919416259', 10005, '0', 2);
INSERT INTO `app_exam_question` VALUES (12103, 10052, '9919416259', 25, '0', 2);
INSERT INTO `app_exam_question` VALUES (12104, 10052, '9919416259', 28, '0', 2);
INSERT INTO `app_exam_question` VALUES (12105, 10052, '9919416259', 21, '0', 2);
INSERT INTO `app_exam_question` VALUES (12106, 10052, '9919416259', 9, '0', 2);
INSERT INTO `app_exam_question` VALUES (12107, 10052, '9919416259', 11, '0', 2);
INSERT INTO `app_exam_question` VALUES (12108, 10052, '9919416259', 6, '0', 2);
INSERT INTO `app_exam_question` VALUES (12109, 10052, '9919416259', 27, '0', 2);
INSERT INTO `app_exam_question` VALUES (12110, 10052, '9919416259', 10030, '0', 2);
INSERT INTO `app_exam_question` VALUES (12111, 10052, '9919416259', 10016, '0', 2);
INSERT INTO `app_exam_question` VALUES (12112, 10052, '9919416259', 10003, '1', 2);
INSERT INTO `app_exam_question` VALUES (12113, 10052, '9919416259', 10024, '0', 1);
INSERT INTO `app_exam_question` VALUES (12114, 10052, '9919416259', 8, '0', 2);
INSERT INTO `app_exam_question` VALUES (12115, 10052, '9919416259', 10018, '0', 1);
INSERT INTO `app_exam_question` VALUES (12116, 10052, '9919416259', 10004, '0', 2);
INSERT INTO `app_exam_question` VALUES (12117, 10052, '9919416259', 10027, '0', 2);
INSERT INTO `app_exam_question` VALUES (12118, 10052, '9919416259', 10013, '0', 1);
INSERT INTO `app_exam_question` VALUES (12119, 10052, '9919416259', 10044, '0', 2);
INSERT INTO `app_exam_question` VALUES (12120, 10052, '9919416259', 10001, '0', 2);
INSERT INTO `app_exam_question` VALUES (12121, 10052, '9919416259', 19, '2', 2);
INSERT INTO `app_exam_question` VALUES (12122, 10052, '9919416259', 30, '0', 2);
INSERT INTO `app_exam_question` VALUES (12123, 10052, '9919416259', 10025, '0', 2);
INSERT INTO `app_exam_question` VALUES (12252, 10057, '4581405264', 10010, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12253, 10057, '4581405264', 33, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12254, 10057, '4581405264', 16, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12255, 10057, '4581405264', 10032, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12256, 10057, '4581405264', 10016, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12257, 10057, '4581405264', 10025, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12258, 10057, '4581405264', 26, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12259, 10057, '4581405264', 10030, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12260, 10057, '4581405264', 10045, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12261, 10057, '4581405264', 10046, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12262, 10057, '4581405264', 10006, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12263, 10057, '4581405264', 10044, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12264, 10057, '4581405264', 25, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12265, 10057, '4581405264', 10043, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12266, 10057, '4581405264', 8, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12267, 10057, '4581405264', 10001, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12268, 10057, '4581405264', 10008, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12269, 10057, '4581405264', 10, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12270, 10057, '4581405264', 20, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12271, 10057, '4581405264', 11, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12272, 10057, '4581405264', 10026, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12273, 10057, '4581405264', 10007, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12274, 10057, '4581405264', 10009, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12275, 10057, '4581405264', 19, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12276, 10057, '4581405264', 10047, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12277, 10057, '4581405264', 10012, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12278, 10057, '4581405264', 9, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12279, 10057, '4581405264', 10020, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12280, 10057, '4581405264', 10004, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12281, 10057, '4581405264', 10013, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12282, 10057, '4581405264', 10019, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12283, 10057, '4581405264', 10023, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12284, 10057, '4581405264', 10002, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12285, 10057, '4581405264', 10028, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12286, 10057, '4581405264', 10005, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12287, 10057, '4581405264', 10027, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12288, 10057, '4581405264', 18, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12289, 10057, '4581405264', 39, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12290, 10057, '4581405264', 15, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12291, 10057, '4581405264', 21, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12292, 10057, '4581405264', 10048, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12293, 10057, '4581405264', 10022, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12294, 10057, '4581405264', 28, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12295, 10057, '4581405264', 10017, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12296, 10057, '4581405264', 10003, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12297, 10057, '4581405264', 24, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12298, 10057, '4581405264', 13, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12299, 10057, '4581405264', 10015, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12300, 10057, '4581405264', 10018, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12301, 10057, '4581405264', 10000, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12314, 10059, '9807522475', 10045, '4', 2);
INSERT INTO `app_exam_question` VALUES (12448, 10064, '6445025745', 10005, '2', 2);
INSERT INTO `app_exam_question` VALUES (12449, 10064, '6445025745', 10004, '1', 2);
INSERT INTO `app_exam_question` VALUES (12450, 10064, '6445025745', 10010, '1', 2);
INSERT INTO `app_exam_question` VALUES (12451, 10064, '6445025745', 10009, '1', 1);
INSERT INTO `app_exam_question` VALUES (12452, 10064, '6445025745', 10012, '3', 2);
INSERT INTO `app_exam_question` VALUES (12453, 10064, '6445025745', 10002, '2', 2);
INSERT INTO `app_exam_question` VALUES (12454, 10064, '6445025745', 10001, '1', 2);
INSERT INTO `app_exam_question` VALUES (12455, 10064, '6445025745', 10011, '0', 2);
INSERT INTO `app_exam_question` VALUES (12456, 10064, '6445025745', 10006, '0', 2);
INSERT INTO `app_exam_question` VALUES (12457, 10064, '6445025745', 10008, '1', 1);
INSERT INTO `app_exam_question` VALUES (12458, 10064, '6445025745', 10013, '2', 2);
INSERT INTO `app_exam_question` VALUES (12459, 10064, '6445025745', 10007, '2', 2);
INSERT INTO `app_exam_question` VALUES (12460, 10064, '6445025745', 10003, '2', 2);
INSERT INTO `app_exam_question` VALUES (12461, 10064, '6445025745', 10000, '0', 2);
INSERT INTO `app_exam_question` VALUES (12476, 10065, '7439725398', 10030, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12477, 10065, '7439725398', 25, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12478, 10065, '7439725398', 18, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12479, 10065, '7439725398', 23, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12480, 10065, '7439725398', 34, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12481, 10065, '7439725398', 28, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12482, 10065, '7439725398', 10046, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12483, 10065, '7439725398', 10032, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12484, 10065, '7439725398', 10031, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12485, 10065, '7439725398', 37, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12486, 10065, '7439725398', 17, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12487, 10065, '7439725398', 26, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12488, 10065, '7439725398', 16, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12489, 10065, '7439725398', 36, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12490, 10065, '7439725398', 19, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12491, 10065, '7439725398', 10033, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12492, 10065, '7439725398', 38, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12493, 10065, '7439725398', 33, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12494, 10065, '7439725398', 21, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12495, 10065, '7439725398', 29, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12496, 10065, '7439725398', 40, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12497, 10065, '7439725398', 31, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12498, 10065, '7439725398', 27, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12499, 10065, '7439725398', 32, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12500, 10065, '7439725398', 10044, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12501, 10065, '7439725398', 35, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12502, 10065, '7439725398', 22, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12503, 10065, '7439725398', 10029, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12504, 10065, '7439725398', 24, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12505, 10065, '7439725398', 20, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12506, 10065, '7439725398', 10047, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12507, 10065, '7439725398', 10043, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12508, 10065, '7439725398', 39, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12509, 10065, '7439725398', 30, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12510, 10066, '1140195679', 10045, '0,4', 2);
INSERT INTO `app_exam_question` VALUES (12512, 10067, '6171885295', 9, '0', 2);
INSERT INTO `app_exam_question` VALUES (12576, 10070, '9807522475', 10020, '2', 2);
INSERT INTO `app_exam_question` VALUES (12577, 10070, '9807522475', 7, '1', 2);
INSERT INTO `app_exam_question` VALUES (12578, 10070, '9807522475', 19, '3', 2);
INSERT INTO `app_exam_question` VALUES (12579, 10070, '9807522475', 10045, '3,4', 2);
INSERT INTO `app_exam_question` VALUES (12580, 10070, '9807522475', 10033, '1', 1);
INSERT INTO `app_exam_question` VALUES (12581, 10070, '9807522475', 34, '2', 1);
INSERT INTO `app_exam_question` VALUES (12582, 10070, '9807522475', 10000, '2', 2);
INSERT INTO `app_exam_question` VALUES (12583, 10070, '9807522475', 20, '1', 1);
INSERT INTO `app_exam_question` VALUES (12584, 10070, '9807522475', 10010, '3', 1);
INSERT INTO `app_exam_question` VALUES (12585, 10070, '9807522475', 10031, '3', 1);
INSERT INTO `app_exam_question` VALUES (12586, 10070, '9807522475', 10021, '2', 1);
INSERT INTO `app_exam_question` VALUES (12587, 10070, '9807522475', 29, '1', 2);
INSERT INTO `app_exam_question` VALUES (12588, 10070, '9807522475', 37, '2', 2);
INSERT INTO `app_exam_question` VALUES (12589, 10070, '9807522475', 22, '2', 2);
INSERT INTO `app_exam_question` VALUES (12590, 10070, '9807522475', 8, '3', 2);
INSERT INTO `app_exam_question` VALUES (12591, 10070, '9807522475', 10014, '2', 2);
INSERT INTO `app_exam_question` VALUES (12592, 10070, '9807522475', 10003, '1', 2);
INSERT INTO `app_exam_question` VALUES (12593, 10070, '9807522475', 10004, '2', 2);
INSERT INTO `app_exam_question` VALUES (12594, 10070, '9807522475', 33, '2', 2);
INSERT INTO `app_exam_question` VALUES (12595, 10070, '9807522475', 10, '1', 1);
INSERT INTO `app_exam_question` VALUES (12596, 10070, '9807522475', 10032, '2', 2);
INSERT INTO `app_exam_question` VALUES (12597, 10070, '9807522475', 31, '2', 2);
INSERT INTO `app_exam_question` VALUES (12598, 10070, '9807522475', 13, '1', 2);
INSERT INTO `app_exam_question` VALUES (12599, 10070, '9807522475', 17, '3', 2);
INSERT INTO `app_exam_question` VALUES (12600, 10070, '9807522475', 10012, '3', 2);
INSERT INTO `app_exam_question` VALUES (12601, 10070, '9807522475', 36, '1', 1);
INSERT INTO `app_exam_question` VALUES (12602, 10070, '9807522475', 30, '2', 1);
INSERT INTO `app_exam_question` VALUES (12603, 10070, '9807522475', 24, '2', 1);
INSERT INTO `app_exam_question` VALUES (12604, 10070, '9807522475', 10028, '1', 2);
INSERT INTO `app_exam_question` VALUES (12605, 10070, '9807522475', 23, '1', 1);
INSERT INTO `app_exam_question` VALUES (12606, 10070, '9807522475', 10007, '1', 2);
INSERT INTO `app_exam_question` VALUES (12607, 10070, '9807522475', 10043, '2', 2);
INSERT INTO `app_exam_question` VALUES (12608, 10070, '9807522475', 27, '2', 2);
INSERT INTO `app_exam_question` VALUES (12609, 10070, '9807522475', 10026, '2', 2);
INSERT INTO `app_exam_question` VALUES (12610, 10070, '9807522475', 15, '1', 2);
INSERT INTO `app_exam_question` VALUES (12611, 10070, '9807522475', 32, '2', 2);
INSERT INTO `app_exam_question` VALUES (12612, 10070, '9807522475', 39, '2', 2);
INSERT INTO `app_exam_question` VALUES (12613, 10070, '9807522475', 10030, '1', 2);
INSERT INTO `app_exam_question` VALUES (12614, 10070, '9807522475', 10006, '2', 2);
INSERT INTO `app_exam_question` VALUES (12615, 10070, '9807522475', 28, '2', 2);
INSERT INTO `app_exam_question` VALUES (12616, 10070, '9807522475', 11, '2', 2);
INSERT INTO `app_exam_question` VALUES (12617, 10070, '9807522475', 10024, '3', 2);
INSERT INTO `app_exam_question` VALUES (12618, 10070, '9807522475', 10015, '3', 2);
INSERT INTO `app_exam_question` VALUES (12619, 10070, '9807522475', 21, '1', 1);
INSERT INTO `app_exam_question` VALUES (12620, 10070, '9807522475', 35, '2', 2);
INSERT INTO `app_exam_question` VALUES (12621, 10070, '9807522475', 16, '3', 1);
INSERT INTO `app_exam_question` VALUES (12622, 10070, '9807522475', 26, '1', 1);
INSERT INTO `app_exam_question` VALUES (12623, 10070, '9807522475', 10008, '2', 2);
INSERT INTO `app_exam_question` VALUES (12624, 10070, '9807522475', 12, '1', 1);
INSERT INTO `app_exam_question` VALUES (12625, 10070, '9807522475', 10009, '3', 2);
INSERT INTO `app_exam_question` VALUES (12726, 10072, '9807522475', 6, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12727, 10072, '9807522475', 10011, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12728, 10072, '9807522475', 10029, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12729, 10072, '9807522475', 10024, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12730, 10072, '9807522475', 10027, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12731, 10072, '9807522475', 19, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12732, 10072, '9807522475', 10020, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12733, 10072, '9807522475', 22, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12734, 10072, '9807522475', 10003, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12735, 10072, '9807522475', 10026, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12736, 10072, '9807522475', 10043, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12737, 10072, '9807522475', 28, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12738, 10072, '9807522475', 10004, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12739, 10072, '9807522475', 39, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12740, 10072, '9807522475', 14, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12741, 10072, '9807522475', 38, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12742, 10072, '9807522475', 32, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12743, 10072, '9807522475', 25, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12744, 10072, '9807522475', 33, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12745, 10072, '9807522475', 8, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12746, 10072, '9807522475', 17, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12747, 10072, '9807522475', 10000, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12748, 10072, '9807522475', 10013, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12749, 10072, '9807522475', 15, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12750, 10072, '9807522475', 40, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12751, 10072, '9807522475', 18, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12752, 10072, '9807522475', 10014, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12753, 10072, '9807522475', 10017, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12754, 10072, '9807522475', 10016, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12755, 10072, '9807522475', 7, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12756, 10072, '9807522475', 10012, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12757, 10072, '9807522475', 5, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12758, 10072, '9807522475', 10009, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12759, 10072, '9807522475', 35, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12760, 10072, '9807522475', 10001, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12761, 10072, '9807522475', 13, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12762, 10072, '9807522475', 10022, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12763, 10072, '9807522475', 10007, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12764, 10072, '9807522475', 10030, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12765, 10072, '9807522475', 10044, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12766, 10072, '9807522475', 10048, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12767, 10072, '9807522475', 10005, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12768, 10072, '9807522475', 10006, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12769, 10072, '9807522475', 10045, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12770, 10072, '9807522475', 10002, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12771, 10072, '9807522475', 10023, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12772, 10072, '9807522475', 10046, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12773, 10072, '9807522475', 10047, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12774, 10072, '9807522475', 10028, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12775, 10072, '9807522475', 10025, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12876, 10075, '9726459773', 23, '2', 2);
INSERT INTO `app_exam_question` VALUES (12877, 10075, '9726459773', 10017, '0', 2);
INSERT INTO `app_exam_question` VALUES (12878, 10075, '9726459773', 10014, '1', 2);
INSERT INTO `app_exam_question` VALUES (12879, 10075, '9726459773', 39, '3', 1);
INSERT INTO `app_exam_question` VALUES (12880, 10075, '9726459773', 10024, '2', 2);
INSERT INTO `app_exam_question` VALUES (12881, 10075, '9726459773', 10012, '3', 2);
INSERT INTO `app_exam_question` VALUES (12882, 10075, '9726459773', 28, '3', 1);
INSERT INTO `app_exam_question` VALUES (12883, 10075, '9726459773', 32, '2', 2);
INSERT INTO `app_exam_question` VALUES (12884, 10075, '9726459773', 10009, '3', 2);
INSERT INTO `app_exam_question` VALUES (12885, 10075, '9726459773', 29, '2', 2);
INSERT INTO `app_exam_question` VALUES (12886, 10075, '9726459773', 10021, '1', 2);
INSERT INTO `app_exam_question` VALUES (12887, 10075, '9726459773', 10020, '0,1,2', 2);
INSERT INTO `app_exam_question` VALUES (12888, 10075, '9726459773', 10043, '1', 2);
INSERT INTO `app_exam_question` VALUES (12889, 10075, '9726459773', 22, '3', 1);
INSERT INTO `app_exam_question` VALUES (12890, 10075, '9726459773', 10006, '0,1', 2);
INSERT INTO `app_exam_question` VALUES (12891, 10075, '9726459773', 10031, '2', 2);
INSERT INTO `app_exam_question` VALUES (12892, 10075, '9726459773', 10022, '2', 2);
INSERT INTO `app_exam_question` VALUES (12893, 10075, '9726459773', 8, '0', 2);
INSERT INTO `app_exam_question` VALUES (12894, 10075, '9726459773', 14, '2', 2);
INSERT INTO `app_exam_question` VALUES (12895, 10075, '9726459773', 17, '2', 2);
INSERT INTO `app_exam_question` VALUES (12896, 10075, '9726459773', 12, '1', 1);
INSERT INTO `app_exam_question` VALUES (12897, 10075, '9726459773', 10, '2', 2);
INSERT INTO `app_exam_question` VALUES (12898, 10075, '9726459773', 7, '1', 2);
INSERT INTO `app_exam_question` VALUES (12899, 10075, '9726459773', 10011, '1', 2);
INSERT INTO `app_exam_question` VALUES (12900, 10075, '9726459773', 30, '0', 2);
INSERT INTO `app_exam_question` VALUES (12901, 10075, '9726459773', 10049, '1', 2);
INSERT INTO `app_exam_question` VALUES (12902, 10075, '9726459773', 38, '3', 1);
INSERT INTO `app_exam_question` VALUES (12903, 10075, '9726459773', 6, '2', 1);
INSERT INTO `app_exam_question` VALUES (12904, 10075, '9726459773', 10004, '0,1', 2);
INSERT INTO `app_exam_question` VALUES (12905, 10075, '9726459773', 10015, '2', 2);
INSERT INTO `app_exam_question` VALUES (12906, 10075, '9726459773', 13, '3', 2);
INSERT INTO `app_exam_question` VALUES (12907, 10075, '9726459773', 10029, '0', 1);
INSERT INTO `app_exam_question` VALUES (12908, 10075, '9726459773', 10018, '1', 2);
INSERT INTO `app_exam_question` VALUES (12909, 10075, '9726459773', 10000, '1,2,3', 2);
INSERT INTO `app_exam_question` VALUES (12910, 10075, '9726459773', 18, '1,2', 1);
INSERT INTO `app_exam_question` VALUES (12911, 10075, '9726459773', 10030, '1', 2);
INSERT INTO `app_exam_question` VALUES (12912, 10075, '9726459773', 5, '3', 2);
INSERT INTO `app_exam_question` VALUES (12913, 10075, '9726459773', 10047, '1', 2);
INSERT INTO `app_exam_question` VALUES (12914, 10075, '9726459773', 10032, '3', 1);
INSERT INTO `app_exam_question` VALUES (12915, 10075, '9726459773', 10045, '0,1,4', 2);
INSERT INTO `app_exam_question` VALUES (12916, 10075, '9726459773', 10023, '1', 2);
INSERT INTO `app_exam_question` VALUES (12917, 10075, '9726459773', 16, '2', 2);
INSERT INTO `app_exam_question` VALUES (12918, 10075, '9726459773', 40, '3', 2);
INSERT INTO `app_exam_question` VALUES (12919, 10075, '9726459773', 36, '1', 1);
INSERT INTO `app_exam_question` VALUES (12920, 10075, '9726459773', 10048, '2', 2);
INSERT INTO `app_exam_question` VALUES (12921, 10075, '9726459773', 21, '2', 2);
INSERT INTO `app_exam_question` VALUES (12922, 10075, '9726459773', 11, '0', 2);
INSERT INTO `app_exam_question` VALUES (12923, 10075, '9726459773', 10001, '0,1', 2);
INSERT INTO `app_exam_question` VALUES (12924, 10075, '9726459773', 10046, '1,2', 2);
INSERT INTO `app_exam_question` VALUES (12925, 10075, '9726459773', 33, '1', 2);
INSERT INTO `app_exam_question` VALUES (12926, 10076, '2770579068', 10014, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12927, 10076, '2770579068', 11, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12928, 10076, '2770579068', 10002, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12929, 10076, '2770579068', 10015, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12930, 10076, '2770579068', 6, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12931, 10076, '2770579068', 10021, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12932, 10076, '2770579068', 14, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12933, 10076, '2770579068', 10024, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12934, 10076, '2770579068', 34, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12935, 10076, '2770579068', 25, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12936, 10076, '2770579068', 10008, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12937, 10076, '2770579068', 35, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12938, 10076, '2770579068', 29, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12939, 10076, '2770579068', 10028, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12940, 10076, '2770579068', 10031, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12941, 10076, '2770579068', 10012, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12942, 10076, '2770579068', 10022, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12943, 10076, '2770579068', 10005, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12944, 10076, '2770579068', 17, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12945, 10076, '2770579068', 10009, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12946, 10076, '2770579068', 10044, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12947, 10076, '2770579068', 30, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12948, 10076, '2770579068', 10016, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12949, 10076, '2770579068', 10013, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12950, 10076, '2770579068', 12, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12951, 10076, '2770579068', 10017, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12952, 10076, '2770579068', 38, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12953, 10076, '2770579068', 20, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12954, 10076, '2770579068', 22, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12955, 10076, '2770579068', 10020, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12956, 10076, '2770579068', 23, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12957, 10076, '2770579068', 10027, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12958, 10076, '2770579068', 10032, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12959, 10076, '2770579068', 7, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12960, 10076, '2770579068', 10006, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12961, 10076, '2770579068', 40, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12962, 10076, '2770579068', 27, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12963, 10076, '2770579068', 36, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12964, 10076, '2770579068', 21, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12965, 10076, '2770579068', 10007, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12966, 10076, '2770579068', 18, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12967, 10076, '2770579068', 28, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12968, 10076, '2770579068', 10046, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12969, 10076, '2770579068', 10011, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12970, 10076, '2770579068', 15, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12971, 10076, '2770579068', 10033, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12972, 10076, '2770579068', 10025, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12973, 10076, '2770579068', 16, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12974, 10076, '2770579068', 10, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12975, 10076, '2770579068', 10043, NULL, 0);
INSERT INTO `app_exam_question` VALUES (12976, 10077, '0841979275', 9, '0', 2);
INSERT INTO `app_exam_question` VALUES (13028, 10079, '9886306901', 9, '1', 1);
INSERT INTO `app_exam_question` VALUES (13080, 10081, '7439725398', 10049, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13081, 10081, '7439725398', 21, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13082, 10081, '7439725398', 29, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13083, 10081, '7439725398', 20, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13084, 10081, '7439725398', 19, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13085, 10081, '7439725398', 28, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13086, 10081, '7439725398', 32, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13087, 10081, '7439725398', 40, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13088, 10081, '7439725398', 34, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13089, 10081, '7439725398', 10033, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13090, 10081, '7439725398', 24, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13091, 10081, '7439725398', 23, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13092, 10081, '7439725398', 31, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13093, 10081, '7439725398', 25, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13094, 10081, '7439725398', 18, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13095, 10081, '7439725398', 10032, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13096, 10081, '7439725398', 10030, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13097, 10081, '7439725398', 10046, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13098, 10081, '7439725398', 27, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13099, 10081, '7439725398', 16, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13100, 10081, '7439725398', 26, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13101, 10081, '7439725398', 10029, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13102, 10081, '7439725398', 38, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13103, 10081, '7439725398', 30, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13104, 10081, '7439725398', 10043, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13105, 10081, '7439725398', 33, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13106, 10081, '7439725398', 10031, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13107, 10081, '7439725398', 17, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13108, 10081, '7439725398', 39, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13109, 10081, '7439725398', 22, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13110, 10081, '7439725398', 37, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13111, 10081, '7439725398', 10047, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13112, 10081, '7439725398', 35, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13113, 10081, '7439725398', 36, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13114, 10081, '7439725398', 10044, NULL, 0);
INSERT INTO `app_exam_question` VALUES (13214, 10085, '6171885295', 9, '1', 1);
INSERT INTO `app_exam_question` VALUES (13280, 10087, '5649800806', 9, '1', 1);
INSERT INTO `app_exam_question` VALUES (13358, 10090, '2815717207', 9, '0', 2);
INSERT INTO `app_exam_question` VALUES (13361, 10092, '5352396120', 10045, '1,3,4', 2);
INSERT INTO `app_exam_question` VALUES (13413, 10094, '9886306901', 10045, '0,1,2,3,4', 2);
INSERT INTO `app_exam_question` VALUES (13415, 10095, '2606390817', 36, '2', 2);
INSERT INTO `app_exam_question` VALUES (13416, 10095, '2606390817', 10031, '3', 1);
INSERT INTO `app_exam_question` VALUES (13417, 10095, '2606390817', 40, '2', 1);
INSERT INTO `app_exam_question` VALUES (13418, 10095, '2606390817', 10029, '3', 2);
INSERT INTO `app_exam_question` VALUES (13419, 10095, '2606390817', 10033, '0', 2);
INSERT INTO `app_exam_question` VALUES (13420, 10095, '2606390817', 18, '1,2', 1);
INSERT INTO `app_exam_question` VALUES (13421, 10095, '2606390817', 33, '3', 1);
INSERT INTO `app_exam_question` VALUES (13422, 10095, '2606390817', 10043, '3', 1);
INSERT INTO `app_exam_question` VALUES (13423, 10095, '2606390817', 10030, '1', 2);
INSERT INTO `app_exam_question` VALUES (13424, 10095, '2606390817', 10046, '0,2,3', 2);
INSERT INTO `app_exam_question` VALUES (13425, 10095, '2606390817', 17, '1', 1);
INSERT INTO `app_exam_question` VALUES (13426, 10095, '2606390817', 32, '1', 1);
INSERT INTO `app_exam_question` VALUES (13427, 10095, '2606390817', 26, '1', 1);
INSERT INTO `app_exam_question` VALUES (13428, 10095, '2606390817', 10049, '1', 2);
INSERT INTO `app_exam_question` VALUES (13429, 10095, '2606390817', 10032, '2', 2);
INSERT INTO `app_exam_question` VALUES (13430, 10095, '2606390817', 20, '2', 2);
INSERT INTO `app_exam_question` VALUES (13431, 10095, '2606390817', 10044, '3', 1);
INSERT INTO `app_exam_question` VALUES (13432, 10095, '2606390817', 19, '2', 2);
INSERT INTO `app_exam_question` VALUES (13433, 10095, '2606390817', 38, '2', 2);
INSERT INTO `app_exam_question` VALUES (13434, 10095, '2606390817', 28, '1', 2);
INSERT INTO `app_exam_question` VALUES (13435, 10095, '2606390817', 34, '3', 2);
INSERT INTO `app_exam_question` VALUES (13436, 10095, '2606390817', 21, '0', 2);
INSERT INTO `app_exam_question` VALUES (13437, 10095, '2606390817', 23, '1', 1);
INSERT INTO `app_exam_question` VALUES (13438, 10095, '2606390817', 37, '2', 2);
INSERT INTO `app_exam_question` VALUES (13439, 10095, '2606390817', 30, '1', 2);
INSERT INTO `app_exam_question` VALUES (13440, 10095, '2606390817', 25, '1', 2);
INSERT INTO `app_exam_question` VALUES (13441, 10095, '2606390817', 39, '2', 2);
INSERT INTO `app_exam_question` VALUES (13442, 10095, '2606390817', 27, '2', 2);
INSERT INTO `app_exam_question` VALUES (13443, 10095, '2606390817', 24, '0', 2);
INSERT INTO `app_exam_question` VALUES (13444, 10095, '2606390817', 35, '2', 2);
INSERT INTO `app_exam_question` VALUES (13445, 10095, '2606390817', 10047, '1', 2);
INSERT INTO `app_exam_question` VALUES (13446, 10095, '2606390817', 16, '2', 2);
INSERT INTO `app_exam_question` VALUES (13447, 10095, '2606390817', 31, '0', 2);
INSERT INTO `app_exam_question` VALUES (13448, 10095, '2606390817', 29, '0', 1);
INSERT INTO `app_exam_question` VALUES (13449, 10095, '2606390817', 22, '2', 2);
INSERT INTO `app_exam_question` VALUES (13501, 10098, '1291594995', 10007, '2', 2);
INSERT INTO `app_exam_question` VALUES (13502, 10098, '1291594995', 10030, '2', 1);
INSERT INTO `app_exam_question` VALUES (13503, 10098, '1291594995', 10017, '1', 1);
INSERT INTO `app_exam_question` VALUES (13504, 10098, '1291594995', 10012, '2', 1);
INSERT INTO `app_exam_question` VALUES (13505, 10098, '1291594995', 10013, '0', 1);
INSERT INTO `app_exam_question` VALUES (13506, 10098, '1291594995', 27, '3', 1);
INSERT INTO `app_exam_question` VALUES (13507, 10098, '1291594995', 17, '1', 1);
INSERT INTO `app_exam_question` VALUES (13508, 10098, '1291594995', 14, '0', 2);
INSERT INTO `app_exam_question` VALUES (13509, 10098, '1291594995', 10014, '1', 2);
INSERT INTO `app_exam_question` VALUES (13510, 10098, '1291594995', 35, '0', 1);
INSERT INTO `app_exam_question` VALUES (13511, 10098, '1291594995', 10006, '0,1', 2);
INSERT INTO `app_exam_question` VALUES (13512, 10098, '1291594995', 10043, '3', 1);
INSERT INTO `app_exam_question` VALUES (13513, 10098, '1291594995', 10023, '0', 2);
INSERT INTO `app_exam_question` VALUES (13514, 10098, '1291594995', 10051, '0,1,2,3,4,5', 2);
INSERT INTO `app_exam_question` VALUES (13515, 10098, '1291594995', 18, '1', 2);
INSERT INTO `app_exam_question` VALUES (13516, 10098, '1291594995', 37, '1', 1);
INSERT INTO `app_exam_question` VALUES (13517, 10098, '1291594995', 15, '3', 2);
INSERT INTO `app_exam_question` VALUES (13518, 10098, '1291594995', 34, '1', 2);
INSERT INTO `app_exam_question` VALUES (13519, 10098, '1291594995', 28, '3', 1);
INSERT INTO `app_exam_question` VALUES (13520, 10098, '1291594995', 24, '1', 2);
INSERT INTO `app_exam_question` VALUES (13521, 10098, '1291594995', 38, '0', 2);
INSERT INTO `app_exam_question` VALUES (13522, 10098, '1291594995', 10, '2', 2);
INSERT INTO `app_exam_question` VALUES (13523, 10098, '1291594995', 10021, '0', 2);
INSERT INTO `app_exam_question` VALUES (13524, 10098, '1291594995', 5, '1', 1);
INSERT INTO `app_exam_question` VALUES (13525, 10098, '1291594995', 10009, '1', 1);
INSERT INTO `app_exam_question` VALUES (13526, 10098, '1291594995', 10025, '2', 2);
INSERT INTO `app_exam_question` VALUES (13527, 10098, '1291594995', 12, '3', 2);
INSERT INTO `app_exam_question` VALUES (13528, 10098, '1291594995', 10015, '0', 1);
INSERT INTO `app_exam_question` VALUES (13529, 10098, '1291594995', 10047, '1', 2);
INSERT INTO `app_exam_question` VALUES (13530, 10098, '1291594995', 10029, '0', 1);
INSERT INTO `app_exam_question` VALUES (13531, 10098, '1291594995', 10016, '1', 1);
INSERT INTO `app_exam_question` VALUES (13532, 10098, '1291594995', 13, '1', 2);
INSERT INTO `app_exam_question` VALUES (13533, 10098, '1291594995', 11, '0', 2);
INSERT INTO `app_exam_question` VALUES (13534, 10098, '1291594995', 21, '2', 2);
INSERT INTO `app_exam_question` VALUES (13535, 10098, '1291594995', 22, '2', 2);
INSERT INTO `app_exam_question` VALUES (13536, 10098, '1291594995', 10045, '3,4', 2);
INSERT INTO `app_exam_question` VALUES (13537, 10098, '1291594995', 10001, '0,3', 1);
INSERT INTO `app_exam_question` VALUES (13538, 10098, '1291594995', 25, '3', 2);
INSERT INTO `app_exam_question` VALUES (13539, 10098, '1291594995', 10005, '0,1,2,3', 2);
INSERT INTO `app_exam_question` VALUES (13540, 10098, '1291594995', 10010, '1', 2);
INSERT INTO `app_exam_question` VALUES (13541, 10098, '1291594995', 10032, '3', 1);
INSERT INTO `app_exam_question` VALUES (13542, 10098, '1291594995', 40, '2', 1);
INSERT INTO `app_exam_question` VALUES (13543, 10098, '1291594995', 32, '2', 2);
INSERT INTO `app_exam_question` VALUES (13544, 10098, '1291594995', 10022, '1', 2);
INSERT INTO `app_exam_question` VALUES (13545, 10098, '1291594995', 31, '2', 2);
INSERT INTO `app_exam_question` VALUES (13546, 10098, '1291594995', 10050, '2', 2);
INSERT INTO `app_exam_question` VALUES (13547, 10098, '1291594995', 10008, '0', 2);
INSERT INTO `app_exam_question` VALUES (13548, 10098, '1291594995', 39, '3', 1);
INSERT INTO `app_exam_question` VALUES (13549, 10098, '1291594995', 19, '1', 2);
INSERT INTO `app_exam_question` VALUES (13550, 10098, '1291594995', 10049, '3', 1);
INSERT INTO `app_exam_question` VALUES (13601, 10099, '9807522475', 10045, '4', 2);
INSERT INTO `app_exam_question` VALUES (13603, 10100, '1755440960', 9, '1', 1);

-- ----------------------------
-- Table structure for app_feedback
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback`;
CREATE TABLE `app_feedback`  (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '反馈内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `p_feedback_id` int(11) NULL DEFAULT NULL COMMENT '父级ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态0:未回复 1:已回复',
  `send_type` tinyint(4) NULL DEFAULT NULL COMMENT '0:访客 1:管理员',
  `client_last_send_time` datetime NULL DEFAULT NULL COMMENT '访客最后发送时间',
  PRIMARY KEY (`feedback_id`) USING BTREE,
  UNIQUE INDEX `idx_key`(`feedback_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10021 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for app_update
-- ----------------------------
DROP TABLE IF EXISTS `app_update`;
CREATE TABLE `app_update`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `version` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本号',
  `update_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新描述',
  `update_type` tinyint(1) NULL DEFAULT NULL COMMENT '更新类型0:全更新 1:局部热更新',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '0:未发布 1:灰度发布 2:全网发布',
  `grayscale_device` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '灰度设备ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'app发布' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_update
-- ----------------------------

-- ----------------------------
-- Table structure for app_user_collect
-- ----------------------------
DROP TABLE IF EXISTS `app_user_collect`;
CREATE TABLE `app_user_collect`  (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `object_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主体ID 问题ID,考题ID,分享文章ID',
  `collect_type` tinyint(1) NULL DEFAULT NULL COMMENT '0:分享收藏 1:问题收藏  2:考题收藏',
  `collect_time` datetime NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`collect_id`) USING BTREE,
  UNIQUE INDEX `idx_key`(`user_id`, `object_id`, `collect_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_user_collect
-- ----------------------------
INSERT INTO `app_user_collect` VALUES (123, '8202436101', '10002', 0, '2023-08-20 20:05:06');
INSERT INTO `app_user_collect` VALUES (125, '4581405264', '10199', 1, '2023-08-20 21:40:40');
INSERT INTO `app_user_collect` VALUES (126, '9919416259', '10200', 1, '2023-08-20 21:52:33');
INSERT INTO `app_user_collect` VALUES (127, '9919416259', '10199', 1, '2023-08-20 22:11:11');
INSERT INTO `app_user_collect` VALUES (129, '9919416259', '10198', 1, '2023-08-20 22:11:14');
INSERT INTO `app_user_collect` VALUES (131, '9919416259', '10190', 1, '2023-08-21 10:18:50');
INSERT INTO `app_user_collect` VALUES (132, '0494355681', '10198', 1, '2023-08-21 10:42:22');
INSERT INTO `app_user_collect` VALUES (133, '0494355681', '10199', 1, '2023-08-21 10:42:53');
INSERT INTO `app_user_collect` VALUES (134, '0494355681', '10196', 1, '2023-08-21 10:43:44');
INSERT INTO `app_user_collect` VALUES (135, '9807522475', '10195', 1, '2023-08-25 14:21:49');
INSERT INTO `app_user_collect` VALUES (136, '9807522475', '10196', 1, '2023-08-26 21:05:18');
INSERT INTO `app_user_collect` VALUES (138, '4158978932', '10185', 1, '2023-08-27 15:43:01');
INSERT INTO `app_user_collect` VALUES (139, '4158978932', '10184', 1, '2023-08-27 15:43:06');
INSERT INTO `app_user_collect` VALUES (140, '4158978932', '10183', 1, '2023-08-27 15:43:09');
INSERT INTO `app_user_collect` VALUES (141, '4158978932', '10182', 1, '2023-08-27 15:43:13');
INSERT INTO `app_user_collect` VALUES (160, '9726459773', '10015', 2, '2023-08-29 08:28:54');
INSERT INTO `app_user_collect` VALUES (161, '2497817038', '10000', 0, '2023-09-01 03:49:11');
INSERT INTO `app_user_collect` VALUES (164, '9807522475', '10045', 2, '2023-09-06 22:26:38');
INSERT INTO `app_user_collect` VALUES (166, '9807522475', '10000', 0, '2023-09-06 22:27:01');

-- ----------------------------
-- Table structure for app_user_info
-- ----------------------------
DROP TABLE IF EXISTS `app_user_info`;
CREATE TABLE `app_user_info`  (
  `user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别 0:女 1:男',
  `join_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `last_use_device_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后使用的设备ID',
  `last_use_device_brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机品牌',
  `last_login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登录IP',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '0:禁用 1:正常',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `idx_key_email`(`email`) USING BTREE,
  INDEX `idx_join_time`(`join_time`) USING BTREE,
  INDEX `idx_last_login_time`(`last_login_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` tinyint(4) NULL DEFAULT NULL COMMENT '排序',
  `icon_path` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `bg_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景颜色',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '0:问题分类 1:考题分类 2:问题分类和考题分类',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10014 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (10000, '数据库', NULL, '', '#B3AECC', 2);
INSERT INTO `category` VALUES (10001, '算法题', NULL, '', '#A294E8', 2);
INSERT INTO `category` VALUES (10002, '前端工程化', NULL, '', '#9678A4', 2);
INSERT INTO `category` VALUES (10003, 'Linux', NULL, '', '#6E80E5', 2);
INSERT INTO `category` VALUES (10009, 'JavaScript', NULL, '', '#7E4CB1', 2);
INSERT INTO `category` VALUES (10010, 'Vue.js', NULL, '', '#A294E8', 2);
INSERT INTO `category` VALUES (10011, 'Java', NULL, '', '#A294E8', 2);
INSERT INTO `category` VALUES (10012, 'React', NULL, '', '#B4B1CE', 2);
INSERT INTO `category` VALUES (10013, 'CSS+HTML', NULL, '', '#6E80E5', 2);

-- ----------------------------
-- Table structure for exam_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question`  (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题ID',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '分类ID',
  `category_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `difficulty_level` tinyint(1) NULL DEFAULT NULL COMMENT '难度',
  `question_type` tinyint(4) NULL DEFAULT NULL COMMENT '问题类型 0:判断 1:单选题 2:多选',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '问题描述',
  `question_answer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '答案',
  `answer_analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回答解释',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '0:未发布 1:已发布',
  `create_user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `create_user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `post_user_type` tinyint(1) NULL DEFAULT 0 COMMENT '0:内部 1:外部投稿',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10051 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试题目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_question
-- ----------------------------
INSERT INTO `exam_question` VALUES (5, '关于W3C制定的 JavaScript 标准事件模型，以下正确的顺序以及描述是', 10009, 'JavaScript', 1, 1, '', '1', '先事件捕获从windows -> document 往下级直到 特定的事件节点，然后进行事件处理，再事件冒泡，从特定节点往上级，这个完整的过程', '2023-07-25 22:48:06', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (6, '执行以下程序，输出结果是', 10009, 'JavaScript', 1, 1, '<p>var uname = \"window\";</p><p>var object = { </p><p>&nbsp;&nbsp;&nbsp;&nbsp;      uname :\"object\", </p><p>&nbsp;&nbsp;&nbsp;&nbsp;  fun:function(){ </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     console.log(this.uname); </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       return function(){ </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;                                      console.log(this.uname); </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     } </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     }</p><p>&nbsp; &nbsp;}</p><p>object.fun()();</p>', '2', '先事件捕获从windows -> document 往下级直到 特定的事件节点，然后进行事件处理，再事件冒泡，从特定节点往上级，这个完整的过程', '2023-07-25 22:54:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (7, '以下代码执行后，array 的结果是', 10009, 'JavaScript', 2, 1, '<p>let array = [,1,,2,,3];</p><p>array = array.map((i) =&gt; ++i)</p>', '0', 'forEach(), filter(), reduce(), every() 和some()都会跳过空位。\r\nmap()会跳过空位，但会保留这个值。\r\njoin()和toString()会将空位视为undefined，而undefined和null会被处理成空字符串。', '2023-07-25 23:05:08', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (8, '下面判断对象myObj是否存在的写法错误的是？', 10009, 'JavaScript', 1, 1, '', '2', '前提是myobj是一个对象，只是存在与不存在的问题，几种表示方法：\n\n1、！obj 2、！window.obj 3、typeof myObj == \"undefined\"（判断对象是否有定义，已定义未赋值，返回true） 4、myObj == undefined（已定义未赋值。返回true） 5、myObj === undefined （已定义未赋值，返回true） 6、!this.hasOwnProperty(\'myObj\'))（判断是否为顶层对象的一个属性） 7、myobj == null（注意null与undefined的区别，ull指的是已经赋值为null的空对象，\n\n即这个对象实际上是有值的，而undefined指的是不存在或没有赋值的对象。） 以上几种都正确，但是我用的最多争议最少的是第三种', '2023-07-25 23:05:08', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (9, 'float a = 1/2输出结果是什么', 10011, 'Java', 3, 1, '<pre><span style=\"color:#cc7832\">float </span>a = <span style=\"color:#6897bb\">1 </span>/ <span style=\"color:#6897bb\">2</span><span style=\"color:#cc7832\">;<br></span>System.<span style=\"color:#9876aa\">out</span>.println(a)<span style=\"color:#cc7832\">;</span></pre>', '1', '<p>1和2都是整数类型，那么1/2结果就是0，但是定义的类型为float类型就会自动将0转换为float类型，输出时自动转为字符串类型所以就是0.0</p>', '2023-07-26 09:21:48', 1, '1000001', '老罗铁粉', NULL);
INSERT INTO `exam_question` VALUES (10, '如果想要获取整个网页文档中h1标签\n的个数，可以通过', 10009, 'JavaScript', 1, 1, '', '1', 'document.getElementById() document.getElementsByTagName() document.getElementsByName() document.getElementsByClassName()\n除了ById是Element，其余都是Elements', '2023-07-26 09:42:03', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (11, '下列选项中，能获取到input节点的\n一项是', 10009, 'JavaScript', 1, 1, '<form class=\"file\" name=\"upload\">\n    <input id=\"file\" name=\"file\"/>\n</form>', '3', 'document. getElementById(\'file\')。id唯一性，它不可能是一个数组。', '2023-07-26 09:42:03', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (12, '以下代码中,给class为test的div对象设置红色背景的正确js代码为', 10009, 'JavaScript', 1, 1, '<div class=\"test\"></div>', '1', 'getElementsByClassName返回的是一个节点列表', '2023-07-26 09:42:03', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (13, '以下代码执行的结果是', 10009, 'JavaScript', 1, 1, '<p>for(var i=0;i&lt;3;++i){ </p><p>&nbsp;&nbsp;&nbsp;&nbsp;   setTimeout(function(){        console.log(i)；</p><p>    &nbsp;&nbsp;&nbsp;&nbsp;},100);</p><p>}</p>', '2', '每次for循环的时候setTimeout都会执行，因为setTimeout是异步函数，里面的function则不会立即执行，而是会被放入任务队列，因此放了3次；for循环的3次执行完之后,，i变为3，也就是每次循环，i都会被后一个i值覆盖，然后全部执行任务队列中的函数，所以就是输出3个3。', '2023-07-26 09:42:03', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (14, 'void();表达式的结果是', 10009, 'JavaScript', 1, 1, '', '3', 'typeof  1; //\'number\'\ntypeof (1);//\'number\'\ntypeof (); //SyntaxError 语法错误\n\nvoid  0; //undefined\nvoid (0);//undefined\nvoid (); //SyntaxError 语法错误', '2023-07-26 09:42:03', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (15, '问一下JS代码输出结果是', 10009, 'JavaScript', 2, 1, '<p>console.log(typeof \'\'.prototype);</p><p>console.log(typeof \'\'.__proto__); </p><p>console.log(typeof \'\'.__proto__ === typeof \'\'.prototype);</p>', '2', '这里考察原型，js原型遵循5个规则：\r\n\r\n1、所有的引用类型（数组、对象、函数），都具有对象特性，即可自由扩展属性； 2、所有的引用类型（数组、对象、函数），都有一个__proto__（隐式原型）属性，属性值是一个普通的对象； 3、所有的函数，都有一个prototype（显式原型）属性，属性值也是一个普通对象； 4、所有的引用类型（数组、对象、函数），proto__属性值指向（完全相等）它的构造函数的“prototype”属性值； 5、当试图得到一个对象的某个属性时，如果这个对象本身没有这个属性，那么会去__proto（即它的构造函数的prototype中）寻找。', '2023-07-26 09:42:03', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (16, '下列关于Vue内置组件的描述错误的是', 10010, 'Vue.js', 1, 1, '', '3', '当组件在keep-alive内被切换时，它的mounted和unmounted生命周期钩子会被activated和、deactivated代替。', '2023-07-26 09:44:32', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (17, '关于Vue组件化说法错误的是', 10010, 'Vue.js', 1, 1, '', '1', '组件是资源独立的，组件在系统内部可复用，但是组件和组件之间可以嵌套', '2023-07-26 09:44:32', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (18, '以下属于Vue绑定事件的指令是', 10010, 'Vue.js', 1, 2, '', '1,2', '注意是绑定事件', '2023-07-26 09:44:32', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (19, 'vue中，现有以下代码，打印的结果是', 10010, 'Vue.js', 1, 1, '', '0', '由于Vue实例没有执行DOM挂载，所以不会执行mounted钩子函数', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (20, '下列关于vue-lazyload的描述错误的是', 10010, 'Vue.js', 1, 1, '', '1', ':key可以不加，如果不加:key属性，刷新页面时，可能由于key相同，图片不刷新。', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (21, '关于路由守卫说法错误的是', 10010, 'Vue.js', 1, 1, '', '1', '全局路由守卫的钩子函数有：beforeEach（全局前置守卫）、beforeResolve（全局解析守卫）、afterEach（全局后置守卫） 名字中间没有“Route”， 组件级路由守卫的钩子函数才有“Route”', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (22, '关于Vue中的diff算法说法错误的是', 10010, 'Vue.js', 2, 1, '', '3', '老 VNode 节点的start和新VNode节点的end满足 sameVnode 时，这说明这次数据更新后oldStartVnode已经跑到了oldEndVnode后面去了，这时候在patchVnode后，还需要将当前真实dom节点移动到oldEndVnode的后面，同时老VNode节点开始索引加 1，新VNode节点的结束索引减 1。', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (23, 'vue中，下面说法错误的是', 10010, 'Vue.js', 1, 1, '', '1', 'vue无法监听数组变化的情况，但是数组在下面两种情况下无法监听：\n1.利用索引直接设置数组项时，例如arr[indexofitem]=newValue\n2.修改数组的长度时，例如arr.length=newLength', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (24, '下列关于Vue响应式的描述错误的是', 10010, 'Vue.js', 1, 1, '', '2', 'Vue无法检测property的添加或移除。由于Vue会在初始化实例时对property执行getter/setter转化，所以property必须在data对象上存在才能让Vue将它转换为响应式的。', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (25, '关于Vuex说法错误的是', 10010, 'Vue.js', 1, 1, '', '2', 'vuex的五个属性：state、mutation、actions、getters， module,没有setters。mutations和actions用于修改状态的方法。', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (26, '下列关于Vue的描述错误的是', 10010, 'Vue.js', 2, 1, '', '1', '当环境不支持Promise.then、MutationObserver和setImmediate时，Vue会使用setTimeout(fn, 0)代替。', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (27, '关于Vuex说法错误的是', 10010, 'Vue.js', 1, 1, '', '3', 'Actions提交的是mutations中的方法，而不是直接变更状态。', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (28, '关于Vue组件间通信说法错误的是', 10010, 'Vue.js', 1, 1, '', '3', 'context是用在react中进行组件间的传值，vue并不提供该方法，Vue组件间传值可以通过props，$emit,Vuex,事件总线。通过props获取父组件的基本数据类型的值，在修改时会报错', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (29, '以下获取动态路由{ path: \'/name/:id\' }中id的值正确的是', 10010, 'Vue.js', 1, 1, '', '0', 'router其实是VueRouter的一个实例，所以它是一个全局对象，包含了所有的子对象和属性\n\n而route是正在跳转的这个路由的局部对象，可以获取这个正在跳转的路由的name，path，params，query等', '2023-07-26 13:42:36', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (30, '下列关于Vuex说法错误的是', 10010, 'Vue.js', 1, 1, '', '2', '异步操作放在actions中，actions通过commit调用mutations中方法操作state\n\n一般使用ajax时会使用异步处理，而mutation是写同步操作的，异步一般写在actions中', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (31, '现有以下代码，下面说法错误的是', 10010, 'Vue.js', 1, 1, '<div v-show=\'flag\'>使用v-show控制</div>\n<div v-if=\'flag\'>使用v-if控制</div>', '3', 'v-show 本质就是通过设置 css 中的 display 设置为 none，控制隐藏\nv-if 是动态的向 DOM 树内添加或者删除 DOM 元素', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (32, '关于Vue双向数据绑定说法错误的是', 10010, 'Vue.js', 1, 1, '', '1', 'Object.defineProperty(obj,key,val)不可以监听数组变化，需要做特殊处理，所以Vue3.0使用Proxy实现数据监听', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (33, '不属于Vue使用的虚拟DOM的特点是', 10010, 'Vue.js', 2, 1, '', '3', 'Virtual DOM 是以 JavaScript 对象为基础而不依赖真实平台环境，所以使它具有了跨平台的能力，比如说浏览器平台、Weex、Node 等。', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (34, '下列关于Vue2和Vue3的描述错误的是', 10010, 'Vue.js', 1, 1, '', '2', 'Vue3的组合API中的setup()方法包含了所有的基本内容，包括生命周期，可以在setup()中使用生命周期钩子函数。', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (35, 'vue中，下面说法错误的是', 10010, 'Vue.js', 1, 1, '', '0', 'watch和computed的其中一个关键区别就是watch可以执行异步操作，而computed不能执行异步操作。', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (36, '关于$nextTick说法错误的是', 10010, 'Vue.js', 2, 1, '', '1', '在created等虚拟DOM没有完成挂载的钩子函数中，避免操作DOM报错可以把操作语句放在$nextTick的回调函数中', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (37, 'vue中，关于scoped 的描述错误的是', 10010, 'Vue.js', 2, 1, '', '1', '使用scoped后，父组件的样式将不会渗透到子组件中。\n不过一个子组件的根节点会同时受其父组件的scoped css和子组件的scoped css的影响。\n这样设计是为了让父组件可以从布局的角度出发，调整其子组件根元素的样式。', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (38, '关于v-model的修饰符说法错误的是', 10010, 'Vue.js', 2, 1, '', '3', 'v-model添加number修饰符,如果这个值无法被parseFloat()解析，则会返回原始的值。', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (39, '下列不属于Vue的特点的是', 10010, 'Vue.js', 1, 1, '', '3', 'Vue支持JSX', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (40, '下列关于v-for说法错误的是', 10010, 'Vue.js', 1, 1, '', '2', '<p>v-for可以遍历对象属性；</p><p><br></p>', '2023-07-26 13:45:39', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10000, '关于CSS选择器，以下说法正确的是', 10013, 'CSS+HTML', 1, 2, '', '0,2', ':nth-child(n),n从1开始计数\n:nth-child(odd)和:nth-child(even),从1开始计数\n:nth-child(an+b),会匹配所有兄弟节点中位置位于 an+b 位置的元素。n从0开始计数', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10001, '下列哪些元素在浏览器默认样式下会加粗文本', 10013, 'CSS+HTML', 1, 2, '', '0,3', 'A：<h1> - <h6> 标签表示 HTML 标题，默认加粗 B：<caption> 标签表示表格标题，标题一般被居中表格之上，但不加粗文本 C：<em> 标签表示强调内容，显示为斜体，但不加粗文本 D：<th> 标签表示表格的表头，默认加粗文本', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10002, '关于表单元素和表单控件，以下说法正确的有', 10013, 'CSS+HTML', 2, 2, '', '1,2,3', 'Input标签的readonly属性规定输入的字段为只读，即用户不可修改，但是用户可以通过tab切换到该字段，还可以选中复制该字段。可以配合js设置条件控制用户是否可以更改或输入内容', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10003, '以下哪些样式会创建BFC', 10013, 'CSS+HTML', 1, 2, '', '1,2,3,4', 'BFC(Block formatting context)直译为\"块级格式化上下文\"。它是一个独立的渲染区域。以下情况产生BFC：\nfloat属性不为none\nposition为absolute或fixed\ndisplay为inline-block, table-cell, table-caption, flex, inline-flex\noverflow不为visible', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10004, '创建带有ID属性的DOM元素有什么副作用', 10013, 'CSS+HTML', 2, 2, '', '1,2', '如果一个元素拥有ID属性,那么ID属性的属性值就会成为window对象的属性名.', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10005, '下列哪些情况可触发reflow', 10013, 'CSS+HTML', 1, 2, '', '0,3', 'reflow(回流)是指浏览器为了重新渲染部分或者全部的文档,重新计算文档中的元素的位置和几何构造的过程。\nreflow与repaint（重绘）是减缓js的几大主要原因，尤其是reflow更是性能杀手，所以我们应该想法避免', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10006, '下列哪些是预编译CSS工具', 10013, 'CSS+HTML', 1, 2, '', '0,1,3', 'CSS 预编译工具有stylus，sass，less 为什么会出现CSS预编译器这个东西呢？\n\n这就要谈到CSS的不足了：没有变量(新的规范已经支持了)，不支持嵌套，编程可以力较弱，代码复使用性差。这些不足导致写出来的CSS维护性极差，同时包含大量重复性的代码；为了弥补这些不足之处，CSS预编译器应运而生。\n\n而谈到CSS预编译器，就离不开这三剑客Sass、Less、Stylus。历史上，最先登场的是Sass，由于出现最早，所以也是最完善的，有各种丰富的功可以；Less的出现伴随着Bootstrap的流行，因而也取得大量使用户；\n\n最后是Stylus，由TJ大神开发(敬大神)，因为其简洁的语法，更像是一门编程语言，写起来非常Cool。所以下面我们来做一个简单的比照。', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10007, '下面哪个语法能够正确的将一个div的每个外边距都设置为5px', 10013, 'CSS+HTML', 1, 2, '', '1,2', 'margin外边距，padding内边距', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10008, '关于link和@import区别说法错误的是', 10013, 'CSS+HTML', 1, 1, '', '1', 'link属于HTML范畴——除了加载CSS，还能支持其他事务，且在HTML页面加载的同时加载\n@import属于CSS范畴——只能加载CSS；\n首选link', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10009, '下面CSS3新增伪类中不正确的是', 10013, 'CSS+HTML', 1, 1, '', '1', '没有only-of-child\nonly-child 匹配任何没有任何兄弟元素的元素。', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10010, '哪个HTML5元素用于显示已知范围内的标量测量', 10013, 'CSS+HTML', 1, 1, '', '3', '<meter> 标签定义已知范围或分数值内的标量测量。也被称为 gauge（尺度）。\n\n例子：磁盘用量、查询结果的相关性，等等。\n\n注释：<meter> 标签不应用于指示进度（在进度条中）。如果标记进度条，请使用 <progress> 标签。', '2023-07-26 14:39:42', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10011, '浮动会导致页面的非正常显示，以下几种清除浮动的方法，哪个是不推荐使用的', 10013, 'CSS+HTML', 1, 1, '', '2', 'A选项中，通过添加空标签，是W3C推荐的，但会增加多余标签，一般不采用（非不推荐）。而父元素也添加浮动，则使整体浮动影响布局，不推荐。', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10012, '下列定义的 CSS 选择器中，哪个权重是最低的', 10013, 'CSS+HTML', 1, 1, '', '2', '选择器的优先级\n1、最高优先级是 (直接在标签中的设置样式，假设级别为1000)<div style=\"color:Red;\"></div> 2、次优先级是（ID选择器 ,假设级别为100） #myDiv{color:Red;} 3、其次优先级是（类选择器，假设级别为10） .divClass{color:Red;} 4、最后优先级是 （标签选择器，假设级别是 1） div{color:Red;} 5、那么后代选择器的优先级就可以计算了啊 比如 .divClass span { color:Red;} 优先级别就是：10+1=11', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10013, '以下哪个CSS属性可以继承', 10013, 'CSS+HTML', 1, 1, '', '0', '在这里列举下css可继承属性：\n所有元素可继承：visibility和cursor。\n内联元素可继承：letter-spacing、word-spacing、white-space、line-height、color、font、font-family、font-size、font-style、font-variant、font-weight、text-decoration、text-transform、direction。\n终端块状元素可继承：text-indent和text-align。\n列表元素可继承：list-style、list-style-type、list-style-position、list-style-image。', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10014, '请问以下JS代码会输出什么', 10009, 'JavaScript', 1, 1, '<p>var a = 10; </p><p>(function a() {</p><p>&nbsp;&nbsp;&nbsp;&nbsp;    a = 20; </p><p>&nbsp;&nbsp;&nbsp;&nbsp;   console.log(a); </p><p>})()</p>', '3', '<p>var a = 10;  //函数已经在体内找到名为a的了//因此不会到全局作用域去找全局变量a</p><p>（var a = 10）(function a() {  a = 20; //这里的a是函数名，相当于修改函数a=20,无效&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(a); //a是函数名，打印整个a函数体</p><p>})( )</p>', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10015, '请问以下JS代码，在浏览器中运行的结果是', 10009, 'JavaScript', 1, 1, '<p>var arrTemp = [1,2,3];</p><p>arrTemp.shift();</p><p>arrTemp.push(1);</p><p>arrTemp.unshift(2);</p><p>var arrNew = arrTemp.concat([1,2]);</p><p>console.log(arrNew);</p>', '0', 'shift删除数组第一个元素，此时arrTemp变成[2,3]；push在数组后面添加一个元素，此时arrTemp变成[2,3,1]；unshift在数组前面添加一个元素，此时arrTemp变成[2,2,3,1]；concat是将两个数组进行连接，此时arrTemp变成[2,2,3,1,1,2]。', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10016, '请问以下JS代码执行后，console输出的信息是', 10009, 'JavaScript', 1, 1, '<p>for(let i = 0; i &lt; 5; i++){ </p><p>   &nbsp;&nbsp;&nbsp;&nbsp;window.requestAnimationFrame(() =&gt; console.log(i));</p><p>}</p>', '1', 'window.requestAnimationFrame() 告诉浏览器——你希望执行一个动画，并且要求浏览器在下次重绘之前调用指定的回调函数更新动画。该方法需要传入一个回调函数作为参数，该回调函数会在浏览器下一次重绘之前执行', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10017, '执行以下程序，输出结果为', 10009, 'JavaScript', 1, 1, 'var a =[1,2,3];\nvar b = a.slice();\nb.push(4);\nconsole.log(a)', '1', 'JS中slice()方法是选取数组的的一部分，并返回一个新数组。\n注意：是新数组\n所以执行后跟a一点关系都没有。', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10018, '1==true的返回值是true，这句话是否正确', 10009, 'JavaScript', 1, 1, '', '0', '看到很多说的类型转化其实有点错误，并不是把1转化成true，而是把true转化成1。\n在==的隐式转化中，是对两边进行Number(),\nNumber(true) = 1', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10019, '关于JavaScript里的xml处理，以下说法正确的是', 10009, 'JavaScript', 1, 2, '', '1,2,3', 'XML 指可扩展标记语言（EXtensible Markup Language） XML 是一种标记语言，很类似 HTML XML 的设计宗旨是传输数据，而非显示数据 XML 标签没有被预定义。您需要自行定义标签。 XML 被设计为具有自我描述性。 XML 是 W3C 的推荐标准\n\nXML 不是 HTML 的替代。\nXML 和 HTML 为不同的目的而设计：\nXML 被设计为传输和存储数据，其焦点是数据的内容。\nHTML 被设计用来显示数据，其焦点是数据的外观。\nHTML 旨在显示信息，而 XML 旨在传输信息。', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10020, '以下对闭包（closure）理解正确的有', 10009, 'JavaScript', 1, 2, '', '0,1,2,3', '<p>闭包的作用：</p><p>1.可以读取函数内部的变量</p><p>2.可以把变量始终保存在内存中 闭包的写法 ① 一个函数(即外部函数)里面包含另一个函数(即内部函数)，并且return返回这个内部函数， 然后内部函数在定义内部函数之外的作用域被调用，这时的内部函数就是一个闭包了。② 内部函数引用了外部函数的变量，这个变量不会被销毁，因为闭包需要这个变量， 所以通过闭包可以访问闭包保存的变量闭包的缺点：因为闭包的变量保存在内存中，内存泄漏，对内存的消耗很大，所以不要滥用闭包</p>', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10021, '执行以下程序，输出结果为', 10009, 'JavaScript', 1, 1, 'function a(){\r\n  console.log(this);\r\n} \r\na.call(null);', '2', '<p>call/apply用来改变函数的执行上下文（this），它们的第一个参数thisArg是个对象，即作为函数内的this。</p><p>有两种情况需要注意，传null或undefined时，将是JS执行环境的全局变量。浏览器中是window，其它环境（如node）则是global</p>', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10022, '下面关于Promise的all方法说法错误的是', 10009, 'JavaScript', 1, 1, '', '3', 'iterable是一个全部为promise对象的数组，只要数组中有一个promise实例被reject，那么最终的promise触发catch，只有数组中全部promise实例都resolve才会触发then，并且要带上iterable中全部promise，其中promise实例将会被结果代替', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10023, '0xff ^ 33 的结果是', 10009, 'JavaScript', 1, 1, '', '2', '0xff  1111 1111  (255)\n        0010 0001(33)\n异或操作     \n        1101 1110（222）', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10024, '从字符串 const str = \'qwbewrbbeqqbbbweebbbbqee\';中能得到结果 [\"b\", \"bb\", \"bbb\", \"bbbb\"] 以下错误语句是', 10009, 'JavaScript', 1, 1, '', '0', '正则表达式里：\n？出现0次或1次. [0,1]\n* 出现0次或多次. [0,+∞]\n+ 出现1次或多次 [1,+∞]', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10025, '下列哪个方法不能改变自身数组', 10009, 'JavaScript', 1, 1, '', '1', 'concat连接数组但是不改变原数组，splice删除数据会改变数组，sort排序会改变数组，pop出栈返回最后一个最后一个元素，改变数组', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10026, '执行以下程序，输出结果为', 10009, 'JavaScript', 1, 1, 'function test(a){\n    a=a+10;\n}\nvar a=10;\ntest(a);\nconsole.log(a);', '0', 'a是形参，属于局部变量，不影响全局变量a的值，因此输出的a是全局变量的值10', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10027, '在 JavaScript 中，用于阻止默认事件的默认操作的方法是', 10009, 'JavaScript', 1, 1, '', '4', '<p>下面三个事件都是事件对象的方法：</p><p>1. stopPropagation() 阻止事件冒泡。 这个事件不会阻止定义在元素上的其他事件。</p><p>2. stopImmediatePropagation() 会彻底的阻止事件， 在其之后的绑定在元素上的其他监听事件都不会触发</p><p>3. preventDefault() 阻止事件的默认动作</p>', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10028, '只能输入零和非零开头的数字，正确的正则表达式是', 10009, 'JavaScript', 1, 1, '', '0', '只能输入零／非零开头的数字\n^ 以。。。开头，$以。。。结尾。\n*任意多次\n|或的意思\n（）组\n[]集合', '2023-07-26 17:03:55', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10029, '可以用来创建store实例对象的是', 10010, 'Vue.js', 1, 1, '<p>可以用来创建store实例对象的是<br></p>', '0', '<p><br></p><p>在Vue.js中，要创建一个Vuex的store实例对象，我们使用<code>new Vuex.Store({})</code>来创建一个store实例，选项A是正确的。其他选项不是用来创建Vuex的store实例的方式。</p><ul><li>选项B <code>new Vue({})</code> 是用来创建一个Vue实例的，而不是Vuex的store实例。</li><li>选项C <code>new Vuex({})</code> 不是创建Vuex的正确方式。正确的方式是使用<code>new Vuex.Store({})</code>，其中<code>Store</code>是Vuex的构造函数。</li><li>选项D <code>new Store({})</code> 不是正确的Vuex的构造函数名称，正确的构造函数名称是<code>Vuex.Store</code>。</li></ul>', '2023-07-27 10:44:16', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10030, 'const store = new Vuex.Store({ state: { name: \'name初始值\' },  })  store.replaceState({ name: \'b\' })  console..log(store.state.name)执行后的结果是（）', 10010, 'Vue.js', 2, 1, '<p><br></p>', '2', '<ol><li><p><code>const store = new Vuex.Store({ state: { name: \'name初始值\' } })</code>：这行代码创建了一个新的Vuex store实例，其中的初始状态中 <code>name</code> 属性被设置为 <code>\'name初始值\'</code>。</p></li><li><p><code>store.replaceState({ name: \'b\' })</code>：这行代码用一个新的状态对象 <code>{ name: \'b\' }</code> 替换了Vuex store的当前状态。这意味着先前的状态 <code>{ name: \'name初始值\' }</code> 被完全替换为 <code>{ name: \'b\' }</code>。</p></li><li><p><code>console.log(store.state.name)</code>：这行代码将状态中的 <code>name</code> 属性输出到控制台。由于状态已被替换为 <code>{ name: \'b\' }</code>，所以这行代码的输出结果将是 <code>\'b\'</code>。</p></li></ol>', '2023-07-27 11:19:39', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10031, '可以实现actions中事件处理函数状态分发的是', 10010, 'Vue.js', 1, 1, '可以实现actions中事件处理函数状态分发的是', '3', '在Vuex中，你可以通过使用dispatch()方法来触发（dispatch）一个在actions中定义的事件处理函数。dispatch()方法用于异步地触发一个action，而commit()方法则用于同步地触发一个mutation。\n\n所以，选项D dispatch()是用来实现actions中事件处理函数状态分发的正确方法。选项A mutations 是用来同步地修改状态的方法，选项B actions() 是无效的语法，而选项C commit() 是用来同步地触发mutation的方法，不是用来触发actions的。', '2023-07-27 11:42:17', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10032, 'devtools选项用来设置是否在devtools调试工具中启用Vuex，表示启用的值是', 10010, 'Vue.js', 2, 1, 'devtools选项用来设置是否在devtools调试工具中启用Vuex，表示启用的值是', '3', '在Vuex中，devtools选项用来设置是否在Vue开发者工具（Devtools）中启用Vuex调试。如果将devtools选项设置为true，则表示启用Vuex调试功能，允许你在Vue开发者工具中查看和跟踪Vuex的状态变化。而如果设置为false，则表示禁用Vuex调试功能，将无法在Vue开发者工具中查看Vuex状态的变化。', '2023-07-27 11:42:17', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10033, '可以用来创建vue项目的命令的是（）。', 10010, 'Vue.js', 3, 1, '可以用来创建vue项目的命令的是（）。', '1', '在Vue CLI 2.x版本中，可以使用vue init webpack命令来创建一个新的Vue项目。其中，webpack是一个预设模板，用于创建一个基于Webpack构建工具的Vue项目。\n\n所以，要创建一个名为shopcart的Vue项目，正确的命令应该是：vue init webpack shopcart。\n\n选项A vue init shopcart 是错误的，因为缺少预设模板的名称（例如webpack）。\n\n选项C vue shopcart 也是错误的，因为缺少init关键词，而且这不是创建Vue项目的正确方式。\n\n选项D vue install shopcart 也是错误的，因为这不是用来创建Vue项目的命令', '2023-07-27 11:42:17', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10043, '以下代码', 10010, 'Vue.js', 3, 1, 'const store = new Vuex.Store({\n    state: {\n      count: 0\n    },\n    mutations: {\n      increase (state) {\n     console.log(state.count)      }\n    }\n  })', '3', '首先，我们创建了一个Vuex的store实例，其中state中包含一个count属性，初始值为0。\n\n然后，我们定义了一个mutations对象，其中有一个方法increase。这个方法用于修改state中的count值。\n\n当我们调用store.commit(\'increase\')时，实际上会调用mutations中定义的increase方法。在这个方法中，我们通过console.log(state.count)来输出state.count的值。在这里，state.count的初始值是0。\n\n因此，执行store.commit(\'increase\')后，控制台会输出0。这表示count的值在increase方法中被输出了。但在这个示例中，并没有实际上对count的值进行修改。如果要修改count的值，我们需要在mutations中使用方法来更新它。', '2023-07-27 11:44:42', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10044, '用来定义store实例的初始数据的是（）。', 10010, 'Vue.js', 2, 1, '用来定义store实例的初始数据的是（）。', '3', 'A getters：用于定义计算状态的方法，而不是定义初始数据。\nB actions：用于定义异步修改状态的方法，不是用来定义初始数据。\nC mutations：用于定义同步修改状态的方法，也不是用来定义初始数据。', '2023-07-27 11:44:42', 1, '1000007', '迟來', NULL);
INSERT INTO `exam_question` VALUES (10045, '下面对HTTP状态码描述正确的是', 10002, '前端工程化', 1, 2, NULL, '0,1,3,4', '<p>HTTP状态码：表示在用HTTP协议交互过程中，服务器对客户端请求的处理结果的标识。<br></p><p>3** 是重定向</p><p><strong>常见状态码</strong></p><ul><li><code>200</code>&nbsp;成功</li><li><code>301</code>&nbsp;永久重定向（配合<code>location</code>，浏览器自动处理）</li><li><code>302</code>&nbsp;临时重定向（配合<code>location</code>，浏览器自动处理）</li><li><code>304</code>&nbsp;资源未被修改</li><li><code>403</code>&nbsp;没有权限访问，一般做权限角色</li><li><code>404</code>&nbsp;资源未找到</li><li><code>500</code><code>Internal Server Error</code>服务器内部错误</li><li><code>502</code><code>Bad Gateway</code></li><li><code>503</code><code>Service Unavailable</code></li><li><code>504</code><code>Gateway Timeout</code>网关超时</li></ul><p></p><p><br></p>', '2023-07-27 15:46:51', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10046, '下面对vue里的时间修饰符描述正确的是', 10010, 'Vue.js', 1, 2, NULL, '0,3', '<p>.stop为阻止冒泡</p><p>.prevent为阻止默认事件</p><p>.capture为捕获阶段</p><p>​<span style=\"color: rgb(36, 41, 47);font-size: 14px\">在浏览器的DOM事件模型中，默认情况下是冒泡阶段（bubbling phase），而非捕获阶段（capturing phase）。</span>​</p>', '2023-07-27 15:53:43', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10047, '下面对vue中v-model描述正确的是', 10010, 'Vue.js', 1, 1, NULL, '0', '<p>：是v-bind的缩写</p><p>v-bind是单向绑定，多用于动态绑定属性，如class、style、src等</p><p>v-model是双向绑定，多用于表单元素，如input、textarea、checkbox、radio等</p>', '2023-07-27 16:00:10', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10048, '下列选项中输出 true 的是', 10009, 'JavaScript', 1, 1, '', '0', '<p><br></p>', '2023-08-01 10:46:27', 1, '1000009', 'mrmayor', NULL);
INSERT INTO `exam_question` VALUES (10049, '以下输出结果是什么', 10010, 'Vue.js', 3, 1, '<pre>​const myPromise = Promise.resolve(Promise.resolve(\"Promise!\"));<br>function funcOne() {<br>	myPromise.then(res =&gt; res).then(res =&gt; console.log(res));<br>	setTimeout(() =&gt; console.log(\"Timeout!\"), 0);<br>	console.log(\"Last line!\");<br>}<br>async function funcTwo() {<br>	const res = await myPromise;<br>	console.log(await res);<br>	setTimeout(() =&gt; console.log(\"Timeout!\"), 0);<br>	console.log(\"Last line!\");<br>}<br>funcOne();<br>funcTwo();<br></pre>', '3', '<p>首先，我们调用<code>funcOne</code>。<br></p><p>在函数<code>funcOne</code>的第一行，我们调用<code>myPromise</code>promise<em>异步操作</em>。当JS引擎在忙于执行 promise，它继续执行函数<code>funcOne</code>。下一行<em>异步操作</em><code>setTimeout</code>，其回调函数被 Web API 调用。</p><p>promise 和 timeout 都是异步操作，函数继续执行当JS引擎忙于执行 promise 和 处理<code>setTimeout</code>的回调。相当于<code>Last line!</code>首先被输出， 因为它不是异步操作。</p><p>执行完<code>funcOne</code>的最后一行，继续往后执行<code>funcTwo</code>，但<code>funcTwo</code>函数内部第一行就是<code>await</code>阻止了后面代码的执行，所以才会去执行<code>funcOne</code>中<code>myPromise</code>的第一个<code>then</code>。<code>funcOne</code>中第一行的<code>promise</code>状态转变为 resolved，<code>Promise!</code>被打印。</p><p>然而，我们调用了<code>funcTwo()</code>, 调用栈不为空，<code>setTimeout</code>的回调仍不能入栈。</p><p>我们现在处于<code>funcTwo</code>，先<em>awaiting</em>myPromise。通过<code>await</code>关键字， 我们暂停了函数的执行直到 promise 状态变为 resolved (或 rejected)。然后，我们输出<code>res</code>的 awaited 值（因为 promise 本身返回一个 promise）。 接着输出<code>Promise!</code>。</p><p>下一行就是<em>异步操作</em><code>setTimeout</code>，其回调函数被 Web API 调用。</p><p>我们执行到函数<code>funcTwo</code>的最后一行，输出<code>Last line!</code>。现在，因为<code>funcTwo</code>出栈，调用栈为空。在事件队列中等待的回调函数（<code>() =&gt; console.log(\"Timeout!\")</code>from<code>funcOne</code>, and<code>() =&gt; console.log(\"Timeout!\")</code>from<code>funcTwo</code>）以此入栈。第一个回调输出<code>Timeout!</code>，并出栈。然后，第二个回调输出<code>Timeout!</code>，并出栈。得到结果<code>Last line! Promise! Promise! Last line! Timeout! Timeout!</code></p>', '2023-08-27 19:17:58', 1, '1000000', '程序员老罗', 0);
INSERT INTO `exam_question` VALUES (10050, '以下判断错误的是', 10009, 'JavaScript', 1, 1, NULL, '3', '<p>D错误，打印出 object</p><p>JS数据类型检测：typeof 能检测出除null以外的原始类型，string number boolean undefined bigint symbol；只能检测出引用类型中的Function，其他为object。</p>', '2023-08-29 11:13:59', 1, '1000009', 'mrmayor', 0);

-- ----------------------------
-- Table structure for exam_question_item
-- ----------------------------
DROP TABLE IF EXISTS `exam_question_item`;
CREATE TABLE `exam_question_item`  (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL COMMENT '问题ID',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `sort` tinyint(4) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 540 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_question_item
-- ----------------------------
INSERT INTO `exam_question_item` VALUES (185, 3, '3333', 1);
INSERT INTO `exam_question_item` VALUES (186, 3, '44444', 2);
INSERT INTO `exam_question_item` VALUES (187, 3, '55555', 3);
INSERT INTO `exam_question_item` VALUES (194, 5, '事件捕获->事件冒泡', 1);
INSERT INTO `exam_question_item` VALUES (195, 5, '事件捕获->事件处理->事件冒泡', 2);
INSERT INTO `exam_question_item` VALUES (196, 5, '事件冒泡->事件处理', 3);
INSERT INTO `exam_question_item` VALUES (197, 5, '事件冒泡->事件处理->事件捕获', 4);
INSERT INTO `exam_question_item` VALUES (198, 5, '事件处理->事件捕获->事件冒泡', 5);
INSERT INTO `exam_question_item` VALUES (199, 6, 'object', 1);
INSERT INTO `exam_question_item` VALUES (200, 6, 'window', 2);
INSERT INTO `exam_question_item` VALUES (201, 6, 'object window', 3);
INSERT INTO `exam_question_item` VALUES (202, 6, 'window object', 4);
INSERT INTO `exam_question_item` VALUES (203, 7, '[,2,,3,,4]', 1);
INSERT INTO `exam_question_item` VALUES (204, 7, '[NaN,2,NaN,3,NaN,4]', 2);
INSERT INTO `exam_question_item` VALUES (205, 7, '[1,2,1,3,1,4]', 3);
INSERT INTO `exam_question_item` VALUES (206, 7, '[null,2,null,3,null,4]', 4);
INSERT INTO `exam_question_item` VALUES (207, 8, 'typeof myObj == \"undefined\"', 1);
INSERT INTO `exam_question_item` VALUES (208, 8, 'myObj === undefined', 2);
INSERT INTO `exam_question_item` VALUES (209, 8, 'myObj === null', 3);
INSERT INTO `exam_question_item` VALUES (210, 8, '!this.hasOwnProperty(\'myObj\')', 4);
INSERT INTO `exam_question_item` VALUES (211, 9, '0.5', 1);
INSERT INTO `exam_question_item` VALUES (212, 9, '0.0', 2);
INSERT INTO `exam_question_item` VALUES (213, 9, '0', 3);
INSERT INTO `exam_question_item` VALUES (214, 10, 'var hele=document.getElementByTagName(\'h1\'); alert(hele.length)', 1);
INSERT INTO `exam_question_item` VALUES (215, 10, 'var hele=document.getElementsByTagName(\'h1\'); alert(hele.length)', 2);
INSERT INTO `exam_question_item` VALUES (216, 10, 'var hele=getElementsByTagName(\'h1\'); alert(hele.length)', 3);
INSERT INTO `exam_question_item` VALUES (217, 10, 'var hele=getElementByTagName(\'h1\'); alert(hele.length)', 4);
INSERT INTO `exam_question_item` VALUES (218, 11, 'document.querySelectorAll(\'file\')[0]', 1);
INSERT INTO `exam_question_item` VALUES (219, 11, 'document.getElementById(\'file\')[0]', 2);
INSERT INTO `exam_question_item` VALUES (220, 11, 'document.getElementByTagName(\'file\')[0]', 3);
INSERT INTO `exam_question_item` VALUES (221, 11, 'document.getElementById(\'file\')', 4);
INSERT INTO `exam_question_item` VALUES (222, 12, 'document.getElementsByClassName(\"test\").style.backgroundColor=\"red\"', 1);
INSERT INTO `exam_question_item` VALUES (223, 12, 'document.getElementsByClassName(\"test\")[0].style.backgroundColor=\"red\"', 2);
INSERT INTO `exam_question_item` VALUES (224, 12, 'document.getElementsByClassName(\"test\")[0].style.background-color=\"red\"', 3);
INSERT INTO `exam_question_item` VALUES (225, 12, 'document.getElementsByClassName(\"test\").style.background-color=\"red\"', 4);
INSERT INTO `exam_question_item` VALUES (226, 13, '0,1,2', 1);
INSERT INTO `exam_question_item` VALUES (227, 13, '1,2,3', 2);
INSERT INTO `exam_question_item` VALUES (228, 13, '3,3,3', 3);
INSERT INTO `exam_question_item` VALUES (229, 13, '0,0,0', 4);
INSERT INTO `exam_question_item` VALUES (230, 14, 'undefined', 1);
INSERT INTO `exam_question_item` VALUES (231, 14, 'TypeError', 2);
INSERT INTO `exam_question_item` VALUES (232, 14, 'null', 3);
INSERT INTO `exam_question_item` VALUES (233, 14, 'SyntaxError', 4);
INSERT INTO `exam_question_item` VALUES (234, 15, 'object、object、true', 1);
INSERT INTO `exam_question_item` VALUES (235, 15, 'undefined、undefined、true', 2);
INSERT INTO `exam_question_item` VALUES (236, 15, 'undefined、object、false', 3);
INSERT INTO `exam_question_item` VALUES (237, 15, 'object、undefined、false', 4);
INSERT INTO `exam_question_item` VALUES (238, 16, 'transition：为组件的载入和切换提供动画效果', 1);
INSERT INTO `exam_question_item` VALUES (239, 16, 'transition-group：作为多个元素/组件的过渡效果', 2);
INSERT INTO `exam_question_item` VALUES (240, 16, 'keep-alive：缓存子组件，被包裹的子组件会多出两个生命周期：activated、deactivated', 3);
INSERT INTO `exam_question_item` VALUES (241, 16, '当组件在keep-alive内被切换时，它的mounted和unmounted生命周期钩子也会被调用', 4);
INSERT INTO `exam_question_item` VALUES (242, 17, '所谓组件化，就是把页面拆分成多个组件 (component)，每个组件依赖的 CSS、JavaScript、模板、图片等资源放在一起开发和维护', 1);
INSERT INTO `exam_question_item` VALUES (243, 17, '组件是资源独立的，组件在系统内部可复用，但是组件和组件之间不可以嵌套', 2);
INSERT INTO `exam_question_item` VALUES (244, 17, 'vue的组件之间可以进行通信', 3);
INSERT INTO `exam_question_item` VALUES (245, 17, '组件化能提高开发效率，方便重复使用，简化调试步骤，提升项目可维护性，便于多人协同开发', 4);
INSERT INTO `exam_question_item` VALUES (246, 18, 'v-bind', 1);
INSERT INTO `exam_question_item` VALUES (247, 18, '@', 2);
INSERT INTO `exam_question_item` VALUES (248, 18, 'v-on', 3);
INSERT INTO `exam_question_item` VALUES (249, 19, '\'first\'', 1);
INSERT INTO `exam_question_item` VALUES (250, 19, '\'first\' \'second\'', 2);
INSERT INTO `exam_question_item` VALUES (251, 19, 'undefined undefined', 3);
INSERT INTO `exam_question_item` VALUES (252, 19, '空', 4);
INSERT INTO `exam_question_item` VALUES (253, 20, '组件中使用vue-lazyload时，v-lazy代替v-bind:src', 1);
INSERT INTO `exam_question_item` VALUES (254, 20, '组件中使用vue-lazyload时，必须要加:key属性', 2);
INSERT INTO `exam_question_item` VALUES (255, 20, 'vue-lazyload指令可以实现图片的懒加载', 3);
INSERT INTO `exam_question_item` VALUES (256, 20, '使用vue-lazyload时，扩展功能api中的attempt代表尝试加载图片数量', 4);
INSERT INTO `exam_question_item` VALUES (257, 21, 'Vue路由守卫分为全局路由、单个路由守卫、组件内部路由', 1);
INSERT INTO `exam_question_item` VALUES (258, 21, '全局路由守卫的钩子函数有：beforeRouteEach（全局前置守卫）、beforeRouteResolve（全局解析守卫）、afterRouteEach（全局后置守卫）', 2);
INSERT INTO `exam_question_item` VALUES (259, 21, '单个路由独享的钩子函数只有一个：beforeEnter', 3);
INSERT INTO `exam_question_item` VALUES (260, 21, '组件路由守卫相关的钩子函数：beforeRouteEnter、 beforeRouteUpdate、beforeRouteLeave', 4);
INSERT INTO `exam_question_item` VALUES (261, 22, '比较只会在同层级节点进行比较, 不会跨层级比较', 1);
INSERT INTO `exam_question_item` VALUES (262, 22, '在diff比较的过程中，循环从两边向中间收拢', 2);
INSERT INTO `exam_question_item` VALUES (263, 22, 'vue的虚拟dom渲染真实dom的过程中首先会对新老VNode的开始和结束位置进行标记：oldStartIdx、oldEndIdx、newStartIdx、newEndIdx', 3);
INSERT INTO `exam_question_item` VALUES (264, 22, '当老VNode节点的start和新VNode节点的end满足sameVnode时,新VNode节点会被提到start位置', 4);
INSERT INTO `exam_question_item` VALUES (265, 23, 'watch内部可以写异步方法 ', 1);
INSERT INTO `exam_question_item` VALUES (266, 23, '数组直接通过索引修改属性值，能触发watch方法', 2);
INSERT INTO `exam_question_item` VALUES (267, 23, 'immediate: true可以开启首次赋值监听', 3);
INSERT INTO `exam_question_item` VALUES (268, 24, '当利用索引值设置一个数组项时，Vue不能检测到数组的变动', 1);
INSERT INTO `exam_question_item` VALUES (269, 24, '当修改数组的长度时，Vue不能检测到数组的变动', 2);
INSERT INTO `exam_question_item` VALUES (270, 24, 'Vue可以监听对象属性的添加或删除', 3);
INSERT INTO `exam_question_item` VALUES (271, 24, '可以通过Vue.set()方法向嵌套对象添加响应式属性', 4);
INSERT INTO `exam_question_item` VALUES (272, 25, 'Vuex可以用来管理数据', 1);
INSERT INTO `exam_question_item` VALUES (273, 25, 'Vuex也可以实现组件间的传值', 2);
INSERT INTO `exam_question_item` VALUES (274, 25, 'Vuex的属性有state、mutations、actions、setters等', 3);
INSERT INTO `exam_question_item` VALUES (275, 25, 'mutation中的方法按照规定最好不要涉及异步方法', 4);
INSERT INTO `exam_question_item` VALUES (276, 26, '当给某个组件修改某个值时，该组件不会立即重新渲染', 1);
INSERT INTO `exam_question_item` VALUES (277, 26, 'Vue内部使用原生Promise.then、MutationObserver和setImmediate实现异步队列，不会采用setTimeout(fn, 0)', 2);
INSERT INTO `exam_question_item` VALUES (278, 26, '$nextTick()返回一个Promise对象', 3);
INSERT INTO `exam_question_item` VALUES (279, 26, '$nextTick()可以配合async/await使用', 4);
INSERT INTO `exam_question_item` VALUES (280, 27, '可以使用this.$store.state获取Vuex中存储的状态', 1);
INSERT INTO `exam_question_item` VALUES (281, 27, 'getter的返回值会根据它的依赖被缓存起来，且只有当它的依赖值发生了改变才会被重新计算', 2);
INSERT INTO `exam_question_item` VALUES (282, 27, '更改Vuex的store中的状态的唯一方法是提交mutations中的方法', 3);
INSERT INTO `exam_question_item` VALUES (283, 27, 'Actions可以包含任意异步操作, 可以直接变更状态', 4);
INSERT INTO `exam_question_item` VALUES (284, 28, 'Vuex可以实现任何关系的组件间的通信', 1);
INSERT INTO `exam_question_item` VALUES (285, 28, '如果子组件修改，通过props获取的父组件传过去的字符串或数字会报错', 2);
INSERT INTO `exam_question_item` VALUES (286, 28, '子组件可以通过$emit给父组件传值', 3);
INSERT INTO `exam_question_item` VALUES (287, 28, '可以通过context进行组件间传值', 4);
INSERT INTO `exam_question_item` VALUES (288, 29, 'this.$route.params.id', 1);
INSERT INTO `exam_question_item` VALUES (289, 29, 'this.route.params.id', 2);
INSERT INTO `exam_question_item` VALUES (290, 29, 'this.$router.params.id', 3);
INSERT INTO `exam_question_item` VALUES (291, 29, 'this.router.params.id', 4);
INSERT INTO `exam_question_item` VALUES (292, 30, 'actions通过commit触发mutations中的方法进行状态变更', 1);
INSERT INTO `exam_question_item` VALUES (293, 30, 'Vuex是单项数据流变更数据', 2);
INSERT INTO `exam_question_item` VALUES (294, 30, 'ajax一般放在mutations中，把获取到的数据存储state中', 3);
INSERT INTO `exam_question_item` VALUES (295, 30, '由于Vuex使用单一状态树，应用的所有状态会集中到一个比较大的对象', 4);
INSERT INTO `exam_question_item` VALUES (296, 31, '当flag是true时，两个div都能显示出来', 1);
INSERT INTO `exam_question_item` VALUES (297, 31, '当flag是false时，第一个div进行了渲染', 2);
INSERT INTO `exam_question_item` VALUES (298, 31, '当flag是false时，第一个div设置了display: none', 3);
INSERT INTO `exam_question_item` VALUES (299, 31, '当flag是false时，第二个div设置了visible: hidden', 4);
INSERT INTO `exam_question_item` VALUES (300, 32, 'Vue实现双向数据绑定是采用数据劫持和发布者-订阅者模式', 1);
INSERT INTO `exam_question_item` VALUES (301, 32, 'Object.defineProperty(obj,key,val)可以监听数组变化，不需要做特殊处理', 2);
INSERT INTO `exam_question_item` VALUES (302, 32, 'Vue2.0 数据劫持是利用ES5的Object.defineProperty(obj,key,val)方法来劫持每个属性的getter和setter', 3);
INSERT INTO `exam_question_item` VALUES (303, 32, '用户更新了View，Model的数据也自动被更新了，这种情况就是双向数据绑定', 4);
INSERT INTO `exam_question_item` VALUES (304, 33, '虚拟节点可以理解成节点描述对象，它描述了应该怎样去创建真实的DOM节点', 1);
INSERT INTO `exam_question_item` VALUES (305, 33, '虚拟DOM优势：渲染引擎操作 DOM 慢，js运行效率高，于是将DOM对比操作放在JS层，提高效率', 2);
INSERT INTO `exam_question_item` VALUES (306, 33, '提升渲染性能 Virtual DOM的优势不在于单次的操作，而是在大量、频繁的数据更新下，能够对视图进行合理、高效的更新', 3);
INSERT INTO `exam_question_item` VALUES (307, 33, 'Virtual DOM 是以 JavaScript 对象为基础,所以必须依赖于浏览器才能运行', 4);
INSERT INTO `exam_question_item` VALUES (308, 34, 'Vue3中Template支持多个根标签，Vue2不支持', 1);
INSERT INTO `exam_question_item` VALUES (309, 34, 'Vue3中的生命周期的挂载钩子是onMounted，需要引入才能使用', 2);
INSERT INTO `exam_question_item` VALUES (310, 34, 'Vue3组合API中的setup()方法中不可以使用生命周期钩子函数', 3);
INSERT INTO `exam_question_item` VALUES (311, 34, 'Vue3引入了tree-shaking，以模块的方式引入api，减小打包体积', 4);
INSERT INTO `exam_question_item` VALUES (312, 35, 'watch方法中不能执行异步操作', 1);
INSERT INTO `exam_question_item` VALUES (313, 35, '不应该使用箭头函数来定义 method 函数,箭头函数绑定了父级作用域的上下文，所以this将不会按照期望指向 Vue 实例', 2);
INSERT INTO `exam_question_item` VALUES (314, 35, 'Vue 实例将会在实例化时调用$watch()，遍历 watch 对象的每一个 property', 3);
INSERT INTO `exam_question_item` VALUES (315, 35, 'computed的结果会被缓存，除非依赖的响应式 property 变化才会重新计算', 4);
INSERT INTO `exam_question_item` VALUES (316, 36, '在组件内使用vm.$nextTick()实例方法特别方便，因为它不需要全局Vue，并且回调函数中的this将自动绑定到当前的Vue实例上', 1);
INSERT INTO `exam_question_item` VALUES (317, 36, '在created等虚拟DOM没有完成挂载的钩子函数中，不能把操作语句放在$nextTick的回调函数中', 2);
INSERT INTO `exam_question_item` VALUES (318, 36, '$nextTick()返回一个Promise对象', 3);
INSERT INTO `exam_question_item` VALUES (319, 36, '需要使用$nextTick()原因是Vue是异步渲染', 4);
INSERT INTO `exam_question_item` VALUES (320, 37, 'scoped原理是在标签上添加data-v属性，然后使用属性选择器实现样式局部化', 1);
INSERT INTO `exam_question_item` VALUES (321, 37, '使用scoped，父组件的样式会渗透到子组件内部的元素', 2);
INSERT INTO `exam_question_item` VALUES (322, 37, '使用scoped不会造成全局污染', 3);
INSERT INTO `exam_question_item` VALUES (323, 37, '\">\"可以实现样式穿透', 4);
INSERT INTO `exam_question_item` VALUES (324, 38, 'lazy修饰符让内容在“change”事件时而非“input”事件时更新', 1);
INSERT INTO `exam_question_item` VALUES (325, 38, 'v-model添加number修饰符,可以自动将用户的输入值转为数值类型', 2);
INSERT INTO `exam_question_item` VALUES (326, 38, '可以给v-model添加trim修饰符,自动过滤用户输入的首尾空白字符', 3);
INSERT INTO `exam_question_item` VALUES (327, 38, 'v-model添加number修饰符,如果这个值无法被parseFloat()解析，则会返回null', 4);
INSERT INTO `exam_question_item` VALUES (328, 39, 'Vue.js的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进DOM的系统', 1);
INSERT INTO `exam_question_item` VALUES (329, 39, '实现了双向数据绑定', 2);
INSERT INTO `exam_question_item` VALUES (330, 39, 'Vue.js可以进行组件化开发，使代码编写量大大减少，读者更加易于理解', 3);
INSERT INTO `exam_question_item` VALUES (331, 39, 'Vue虽然也提供了渲染函数，默认使用模板渲染，且不支持JSX', 4);
INSERT INTO `exam_question_item` VALUES (332, 40, 'v-for指令基于一个数组来渲染一个列表', 1);
INSERT INTO `exam_question_item` VALUES (333, 40, 'v-for指令需要使用item in items形式的特殊语法，其中items是源数据数组，而item则是被迭代的数组元素的别名', 2);
INSERT INTO `exam_question_item` VALUES (334, 40, '不可以用v-for来遍历一个对象的property', 3);
INSERT INTO `exam_question_item` VALUES (335, 40, 'v-for在使用的时候最好添加key，且key最好不是索引', 4);
INSERT INTO `exam_question_item` VALUES (336, 10000, '每个选择器最多只能出现一个伪元素', 1);
INSERT INTO `exam_question_item` VALUES (337, 10000, '每格选择器最多只能出现一个伪类', 2);
INSERT INTO `exam_question_item` VALUES (338, 10000, ':nth-child(an+b) 中 n 的取值从 0 开始', 3);
INSERT INTO `exam_question_item` VALUES (339, 10000, 'A+B 匹配 A 之后所有符合 B 规则的元素', 4);
INSERT INTO `exam_question_item` VALUES (340, 10001, 'h1', 1);
INSERT INTO `exam_question_item` VALUES (341, 10001, 'caption', 2);
INSERT INTO `exam_question_item` VALUES (342, 10001, 'em', 3);
INSERT INTO `exam_question_item` VALUES (343, 10001, 'th', 4);
INSERT INTO `exam_question_item` VALUES (344, 10002, 'A：设置 readonly 属性的表单控件不能获得焦点', 1);
INSERT INTO `exam_question_item` VALUES (345, 10002, 'B：button 元素可以嵌套没有 control 属性的 video 元素', 2);
INSERT INTO `exam_question_item` VALUES (346, 10002, 'C：step 属性不可以为负值或 0', 3);
INSERT INTO `exam_question_item` VALUES (347, 10002, 'D：form 元素的 method 属性和 enctype 属性不能任意赋值', 4);
INSERT INTO `exam_question_item` VALUES (348, 10003, 'A:zoom:1', 1);
INSERT INTO `exam_question_item` VALUES (349, 10003, 'B:display:inline-block', 2);
INSERT INTO `exam_question_item` VALUES (350, 10003, 'C:floatleft', 3);
INSERT INTO `exam_question_item` VALUES (351, 10003, 'D:float:right', 4);
INSERT INTO `exam_question_item` VALUES (352, 10003, 'E:position:absolute', 5);
INSERT INTO `exam_question_item` VALUES (353, 10004, '会造成DOM树分支过多', 1);
INSERT INTO `exam_question_item` VALUES (354, 10004, '会增加内存负担', 2);
INSERT INTO `exam_question_item` VALUES (355, 10004, '会创建同名的全局变量', 3);
INSERT INTO `exam_question_item` VALUES (356, 10005, '改变任何元素的 width 或 height', 1);
INSERT INTO `exam_question_item` VALUES (357, 10005, '改变 background-color', 2);
INSERT INTO `exam_question_item` VALUES (358, 10005, 'visibility:hidden', 3);
INSERT INTO `exam_question_item` VALUES (359, 10005, '改变 font-size', 4);
INSERT INTO `exam_question_item` VALUES (360, 10006, 'less', 1);
INSERT INTO `exam_question_item` VALUES (361, 10006, 'sass', 2);
INSERT INTO `exam_question_item` VALUES (362, 10006, 'bass', 3);
INSERT INTO `exam_question_item` VALUES (363, 10006, 'stylus', 4);
INSERT INTO `exam_question_item` VALUES (364, 10007, 'div{padding: 5px;}', 1);
INSERT INTO `exam_question_item` VALUES (365, 10007, 'div{margin: 5px 5px;}', 2);
INSERT INTO `exam_question_item` VALUES (366, 10007, 'div{margin: 5px;}', 3);
INSERT INTO `exam_question_item` VALUES (367, 10007, 'div{padding: 5px 5px;}', 4);
INSERT INTO `exam_question_item` VALUES (368, 10008, 'link 是 XTHML 标签，无兼容问题', 1);
INSERT INTO `exam_question_item` VALUES (369, 10008, '两者均属于 CSS 范畴', 2);
INSERT INTO `exam_question_item` VALUES (370, 10008, 'link 可以使用 JavaScript 控制 DOM 改变样式，@import 不支持', 3);
INSERT INTO `exam_question_item` VALUES (371, 10008, 'link 引用 CSS 时，页面加载同时加载样式，@import 需要页面完全载入以后加载', 4);
INSERT INTO `exam_question_item` VALUES (372, 10009, 'p:first-of-type', 1);
INSERT INTO `exam_question_item` VALUES (373, 10009, 'p:only-of-child', 2);
INSERT INTO `exam_question_item` VALUES (374, 10009, 'p:nth-child(2)', 3);
INSERT INTO `exam_question_item` VALUES (375, 10009, ':disabled', 4);
INSERT INTO `exam_question_item` VALUES (376, 10010, '<gauge>', 1);
INSERT INTO `exam_question_item` VALUES (377, 10010, '<range>', 2);
INSERT INTO `exam_question_item` VALUES (378, 10010, '<measure>', 3);
INSERT INTO `exam_question_item` VALUES (379, 10010, '<meter>', 4);
INSERT INTO `exam_question_item` VALUES (380, 10011, '在浮动元素末尾添加一个空的标签例如 <div style=”clear:both”></div>', 1);
INSERT INTO `exam_question_item` VALUES (381, 10011, '通过设置父元素 overflow 值为 hidden', 2);
INSERT INTO `exam_question_item` VALUES (382, 10011, '父元素也设置浮动', 3);
INSERT INTO `exam_question_item` VALUES (383, 10011, '给父元素添加 clearfix 类', 4);
INSERT INTO `exam_question_item` VALUES (384, 10012, '#game div.name', 1);
INSERT INTO `exam_question_item` VALUES (385, 10012, '#game .name', 2);
INSERT INTO `exam_question_item` VALUES (386, 10012, '#game div', 3);
INSERT INTO `exam_question_item` VALUES (387, 10012, '#game .name span', 4);
INSERT INTO `exam_question_item` VALUES (388, 10013, 'font-size', 1);
INSERT INTO `exam_question_item` VALUES (389, 10013, 'margin', 2);
INSERT INTO `exam_question_item` VALUES (390, 10013, 'width', 3);
INSERT INTO `exam_question_item` VALUES (391, 10013, 'padding', 4);
INSERT INTO `exam_question_item` VALUES (392, 10014, '10', 1);
INSERT INTO `exam_question_item` VALUES (393, 10014, '20', 2);
INSERT INTO `exam_question_item` VALUES (394, 10014, 'undefined', 3);
INSERT INTO `exam_question_item` VALUES (395, 10014, 'D：输出函数a', 4);
INSERT INTO `exam_question_item` VALUES (396, 10015, '[2,2,3,1,1,2]', 1);
INSERT INTO `exam_question_item` VALUES (397, 10015, '[2,1,2,1,1,2]', 2);
INSERT INTO `exam_question_item` VALUES (398, 10015, '[2,2,3,1,[1,2]]', 3);
INSERT INTO `exam_question_item` VALUES (399, 10015, '[2,1,2,1,[1,2]]', 4);
INSERT INTO `exam_question_item` VALUES (400, 10016, '1 2 3 4 5', 1);
INSERT INTO `exam_question_item` VALUES (401, 10016, '0 1 2 3 4', 2);
INSERT INTO `exam_question_item` VALUES (402, 10016, '4 4 4 4 4', 3);
INSERT INTO `exam_question_item` VALUES (403, 10016, '5 5 5 5 5', 4);
INSERT INTO `exam_question_item` VALUES (404, 10017, '[1,2,3,4]', 1);
INSERT INTO `exam_question_item` VALUES (405, 10017, '[1,2,3]', 2);
INSERT INTO `exam_question_item` VALUES (406, 10017, '[4]', 3);
INSERT INTO `exam_question_item` VALUES (407, 10017, '[2,3,4]', 4);
INSERT INTO `exam_question_item` VALUES (408, 10018, '正确', 1);
INSERT INTO `exam_question_item` VALUES (409, 10018, '错误', 2);
INSERT INTO `exam_question_item` VALUES (410, 10019, 'Xml是种可扩展标记语言，格式更规范，是作为未来html的替代', 1);
INSERT INTO `exam_question_item` VALUES (411, 10019, 'Xml一般用于传输和存储数据，是对html的补充，两者的目的不同', 2);
INSERT INTO `exam_question_item` VALUES (412, 10019, '在JavaScript里解析和处理xml数据时，因为浏览器的不同，其做法也不同', 3);
INSERT INTO `exam_question_item` VALUES (413, 10019, '在IE浏览器里处理xml，首先需要创建ActiveXObject对象', 4);
INSERT INTO `exam_question_item` VALUES (414, 10020, '闭包是指有权访问另一个函数作用域中变量的函数', 1);
INSERT INTO `exam_question_item` VALUES (415, 10020, '函数内再嵌套函数，返回到外部形成闭包', 2);
INSERT INTO `exam_question_item` VALUES (416, 10020, '内部函数可以引用外层的参数和变量', 3);
INSERT INTO `exam_question_item` VALUES (417, 10020, '参数和变量不会被垃圾回收机制回收', 4);
INSERT INTO `exam_question_item` VALUES (418, 10021, 'document', 1);
INSERT INTO `exam_question_item` VALUES (419, 10021, 'null', 2);
INSERT INTO `exam_question_item` VALUES (420, 10021, 'window', 3);
INSERT INTO `exam_question_item` VALUES (421, 10021, 'a', 4);
INSERT INTO `exam_question_item` VALUES (422, 10021, 'undefined', 5);
INSERT INTO `exam_question_item` VALUES (423, 10022, 'promise.all(iterable)，参数是一个数组', 1);
INSERT INTO `exam_question_item` VALUES (424, 10022, '只有这个数组中的所有promise实例都resolve之后才会触发其返回的promise实例的then', 2);
INSERT INTO `exam_question_item` VALUES (425, 10022, '只要其中有任何一个promise实例被reject，那么最终的promise实例将触发catch', 3);
INSERT INTO `exam_question_item` VALUES (426, 10022, '触发then时可以只带上iterable参数中的部分值，也可以带所有值。', 4);
INSERT INTO `exam_question_item` VALUES (427, 10023, '220', 1);
INSERT INTO `exam_question_item` VALUES (428, 10023, '221', 2);
INSERT INTO `exam_question_item` VALUES (429, 10023, '222', 3);
INSERT INTO `exam_question_item` VALUES (430, 10023, '223', 4);
INSERT INTO `exam_question_item` VALUES (431, 10024, 'str.match(/b+/g)', 1);
INSERT INTO `exam_question_item` VALUES (432, 10024, 'str.match(/b*/g)', 2);
INSERT INTO `exam_question_item` VALUES (433, 10024, 'str.match(/b{1,4}/g)', 3);
INSERT INTO `exam_question_item` VALUES (434, 10024, 'str.match(/b{1,5}/g)', 4);
INSERT INTO `exam_question_item` VALUES (435, 10025, 'splice', 1);
INSERT INTO `exam_question_item` VALUES (436, 10025, 'concat', 2);
INSERT INTO `exam_question_item` VALUES (437, 10025, 'sort', 3);
INSERT INTO `exam_question_item` VALUES (438, 10025, 'pop', 4);
INSERT INTO `exam_question_item` VALUES (439, 10026, '10', 1);
INSERT INTO `exam_question_item` VALUES (440, 10026, '20', 2);
INSERT INTO `exam_question_item` VALUES (441, 10026, '抛出异常', 3);
INSERT INTO `exam_question_item` VALUES (442, 10026, 'D：undefined', 4);
INSERT INTO `exam_question_item` VALUES (443, 10027, 'A：stopDeafault()', 1);
INSERT INTO `exam_question_item` VALUES (444, 10027, 'B：stopPropagation()', 2);
INSERT INTO `exam_question_item` VALUES (445, 10027, 'C：preventPropagation()', 3);
INSERT INTO `exam_question_item` VALUES (446, 10027, 'D：preventDefaultEven()', 4);
INSERT INTO `exam_question_item` VALUES (447, 10027, 'E：preventDefault()', 5);
INSERT INTO `exam_question_item` VALUES (448, 10028, '^(0|[1-9][0-9]*)$', 1);
INSERT INTO `exam_question_item` VALUES (449, 10028, '^(0|[1-9][1-9]*)$', 2);
INSERT INTO `exam_question_item` VALUES (450, 10028, '^(0|[1-9][0-9])$', 3);
INSERT INTO `exam_question_item` VALUES (451, 10028, '^\\+[1-9][0-9]*$', 4);
INSERT INTO `exam_question_item` VALUES (452, 10029, 'new Vuex.Store({})', 1);
INSERT INTO `exam_question_item` VALUES (453, 10029, 'new Vue({})', 2);
INSERT INTO `exam_question_item` VALUES (454, 10029, 'new Vuex({})', 3);
INSERT INTO `exam_question_item` VALUES (455, 10029, 'new Store({})', 4);
INSERT INTO `exam_question_item` VALUES (456, 10030, 'name', 1);
INSERT INTO `exam_question_item` VALUES (457, 10030, 'name初始值', 2);
INSERT INTO `exam_question_item` VALUES (458, 10030, 'b', 3);
INSERT INTO `exam_question_item` VALUES (459, 10030, 'a', 4);
INSERT INTO `exam_question_item` VALUES (460, 10031, 'A  mutations', 1);
INSERT INTO `exam_question_item` VALUES (461, 10031, 'B  actions()', 2);
INSERT INTO `exam_question_item` VALUES (462, 10031, 'C  commit()', 3);
INSERT INTO `exam_question_item` VALUES (463, 10031, 'D  dispatch()', 4);
INSERT INTO `exam_question_item` VALUES (464, 10032, 'A  vuex', 1);
INSERT INTO `exam_question_item` VALUES (465, 10032, 'B  false', 2);
INSERT INTO `exam_question_item` VALUES (466, 10032, 'C  devtools', 3);
INSERT INTO `exam_question_item` VALUES (467, 10032, 'D  true', 4);
INSERT INTO `exam_question_item` VALUES (468, 10033, 'A  vue init shopcart', 1);
INSERT INTO `exam_question_item` VALUES (469, 10033, 'B  vue init webpack shopcart', 2);
INSERT INTO `exam_question_item` VALUES (470, 10033, 'C  vue shopcart', 3);
INSERT INTO `exam_question_item` VALUES (471, 10033, 'D  vue install shopcart', 4);
INSERT INTO `exam_question_item` VALUES (508, 10043, 'A  2', 1);
INSERT INTO `exam_question_item` VALUES (509, 10043, 'B  -1', 2);
INSERT INTO `exam_question_item` VALUES (510, 10043, 'C  1', 3);
INSERT INTO `exam_question_item` VALUES (511, 10043, 'D  0', 4);
INSERT INTO `exam_question_item` VALUES (512, 10044, 'A  getters', 1);
INSERT INTO `exam_question_item` VALUES (513, 10044, 'B  actions', 2);
INSERT INTO `exam_question_item` VALUES (514, 10044, 'C  mutations', 3);
INSERT INTO `exam_question_item` VALUES (515, 10044, 'D  state', 4);
INSERT INTO `exam_question_item` VALUES (516, 10045, '1**：信息状态码', 1);
INSERT INTO `exam_question_item` VALUES (517, 10045, '2**：成功状态码', 2);
INSERT INTO `exam_question_item` VALUES (518, 10045, '3**：失败状态码', 3);
INSERT INTO `exam_question_item` VALUES (519, 10045, '4**：客户端错误', 4);
INSERT INTO `exam_question_item` VALUES (520, 10045, '5**：服务器提示信息', 5);
INSERT INTO `exam_question_item` VALUES (521, 10046, '.stop：阻止冒泡', 1);
INSERT INTO `exam_question_item` VALUES (522, 10046, '.prevent：阻止冒泡', 2);
INSERT INTO `exam_question_item` VALUES (523, 10046, '.capture：阻止捕获', 3);
INSERT INTO `exam_question_item` VALUES (524, 10046, '.once：一次性的绑定', 4);
INSERT INTO `exam_question_item` VALUES (525, 10047, 'v-model其实是 属性绑定和事件综合使用的语法糖', 1);
INSERT INTO `exam_question_item` VALUES (526, 10047, '<input type=\"text\"  :value=\"msg\"  />等价于v-model', 2);
INSERT INTO `exam_question_item` VALUES (527, 10047, 'v-model可以实现数据的单向绑定', 3);
INSERT INTO `exam_question_item` VALUES (528, 10048, 'console.log(null == undefined)', 1);
INSERT INTO `exam_question_item` VALUES (529, 10048, 'console.log(null === undefined)', 2);
INSERT INTO `exam_question_item` VALUES (530, 10048, 'console.log(null == 0)', 3);
INSERT INTO `exam_question_item` VALUES (531, 10048, 'console.log(undefined == 0)', 4);
INSERT INTO `exam_question_item` VALUES (532, 10049, 'Promise! Last line! Promise! Last line! Last line! Promise!', 1);
INSERT INTO `exam_question_item` VALUES (533, 10049, 'Last line! Timeout! Promise! Last line! Timeout! Promise!', 2);
INSERT INTO `exam_question_item` VALUES (534, 10049, 'Promise! Last line! Last line! Promise! Timeout! Timeout!', 3);
INSERT INTO `exam_question_item` VALUES (535, 10049, 'Last line! Promise! Promise! Last line! Timeout! Timeout!', 4);
INSERT INTO `exam_question_item` VALUES (536, 10050, 'console.log(typeof 2);                    // number', 1);
INSERT INTO `exam_question_item` VALUES (537, 10050, 'console.log(typeof \'str\');                // string', 2);
INSERT INTO `exam_question_item` VALUES (538, 10050, 'console.log(typeof function(){});    // function', 3);
INSERT INTO `exam_question_item` VALUES (539, 10050, 'console.log(typeof []);                   // array', 4);

-- ----------------------------
-- Table structure for question_info
-- ----------------------------
DROP TABLE IF EXISTS `question_info`;
CREATE TABLE `question_info`  (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '分类ID',
  `category_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `difficulty_level` tinyint(1) NULL DEFAULT NULL COMMENT '难度',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '问题描述',
  `answer_analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回答解释',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '0:未发布 1:已发布',
  `create_user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `create_user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `read_count` int(11) NULL DEFAULT 0 COMMENT '阅读数量',
  `collect_count` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  `post_user_type` tinyint(1) NULL DEFAULT 0 COMMENT '0:内部 1:外部投稿',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10223 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_info
-- ----------------------------
INSERT INTO `question_info` VALUES (10002, 'J2SE、J2EE、J2ME三者区别', 10011, 'Java', 1, '<p>J2SE、J2EE、J2ME三者区别<br></p>', '<p>Java SE = Java Standard Edition=j2se = java  标准版<br>Java EE = Java Enterprise Edition=j2ee= java 企业版<br>Java ME = Java Mobile Edition=j2me = java  移动版<br><br>三者特点：<br>J2SE主要用于桌面程序（swing），控制台开发（main程序）。<br>J2EE企业级开发（JSP,EJB,Spring MVC,Struts,hibernate,ibatis等），用于企业级软件开发，网络开发，web开发。<br>J2ME嵌入式开发(手机，小家电，PDA)。[苹果的ios，黑莓]。<br><br>三者之间的关系：<br>Java SE（Java Platform，Standard Edition，Java标准版）就是基于JDK和JRE的。Java SE为Java EE提供了基础。Java EE除了基于我们这个所谓的Java SE外，还新加了企业应用所需的类库。<br></p>', '2023-07-25 22:04:15', 1, '1000003', 'Eternal', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10003, 'JDK、JRE、JVM区别', 10011, 'Java', 1, '', 'Jdk【Java Development ToolKit】就是java开发工具箱， JDK是整个JAVA的核心里边包含了jre，它除了包含jre之外还包含了一些javac的工具类，把java源文件编译成class文件，java文件是用来运行这个程序的，除此之外，里边还包含了java源生的API，java.lang.integer在rt的jar包里边【可以在项目中看到】，通过rt这个jar包来调用我们的这些io流写入写出等。\n\nJDK有以下三种版本：\nJ2SE，standard edition，标准版，是我们通常用的一个版本\nJ2EE，enterpsise edtion，企业版，使用这种JDK开发J2EE应用程序\nJ2ME，micro edtion，主要用于移动设备、嵌入式设备上的java应用程序\n\nJre【Java Runtime Enviromental】是java运行时环境，那么所谓的java运行时环境，就是为了保证java程序能够运行时，所必备的一基础环境，也就是它只是保证java程序运行的，不能用来开发，而jdk才是用来开发的，所有的Java程序都要在JRE下才能运行。\n包括JVM和JAVA核心类库和支持文件。与JDK相比，它不包含开发工具——编译器、调试器和其它工具。Jre里边包含jvm。\n\nJvm：【Java Virtual Mechinal】因为jre是java运行时环境，java运行靠什么运行，而底层就是依赖于jvm，即java虚拟机，java虚拟机用来加载类文件，java中之所以有跨平台的作用，就是因为我们的jvm。\n\n三者关系：J2se是基于jdk和jre，JDK是整个JAVA的核心里边包含了jre，Jre里边包含jvm。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10004, 'JDK常用的包', 10011, 'Java', 1, '', 'java.lang: 这个是系统的基础类，比如String、Math、Integer、System和Thread，提供常用功能。\njava.io: 这里面是所有输入输出有关的类，比如文件操作等。\njava.net: 这里面是与网络有关的类，比如URL,URLConnection等。\njava.util : 这个是系统辅助类，特别是集合类Collection,List,Map等。\njava.sql: 这个是数据库操作的类，Connection，Statememt，ResultSet等。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10005, 'Java中的基本数据类型', 10011, 'Java', 1, '', '数据类型	大小\nbyte(字节)	1(8位)\nshot(短整型)	2(16位)\nint(整型)	4(32位)\nlong(长整型)	8(32位)\nfloat(浮点型)	4(32位)\ndouble(双精度)	8(64位)\nchar(字符型)	2(16位)\nboolean(布尔型)	1位\n	\n附加：\nString是基本数据类型吗?(String不是基本数据类型)\nString的长度是多少，有限制?(长度受内存大小的影响)', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10006, 'Java中switch接受的几种数据类型', 10011, 'Java', 1, '', 'Short， int， byte，char\nenum（JDK1.5以后支持）\nString（JDK1.7以后支持）', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10007, 'String、StringBuffer、StringBuilder区别', 10011, 'Java', 1, '', 'String	字符串常量	不可变	使用字符串拼接时是不同的2个空间。\nStringBuffer	字符串变量	可变	线程安全，字符串拼接直接在字符串后追加。\nStringBuilder	字符串变量	可变	非线程安全，字符串拼接直接在字符串后追加。\n\n1、	StringBuilder执行效率高于StringBuffer高于String。\n2、	String是一个常量，是不可变的，所以对于每一次+=赋值都会创建一个新的对象，StringBuffer和StringBuilder都是可变的，当进行字符串拼接时采用append方法，在原来的基础上进行追加，所以性能比String要高，又因为StringBuffer是线程安全的而StringBuilder是线程非安全的，所以StringBuilder的效率高于StringBuffer。\n3、	对于大数据量的字符串的拼接，采用StringBuffer,StringBuilder。\n4、	另一种说法，JDK1.6做了优化，通过String声明的字符串在进行用“+”进行拼接时，底层调用的是StringBuffer，所以性能上基本和后两者没有什么区别。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10008, 'Char型变量能不能存储一个汉字？', 10011, 'Java', 1, '', 'char型变量是用来存储Unicode编码的字符的，unicode编码字符集中包含了汉字，补充说明：unicode编码占用两个字节，所以，char类型的变量也是占用两个字节。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10009, '“==”和equals方法的区别', 10011, 'Java', 1, '', '“==”如果前后比较的是对象，则比较的是对象的地址，如果前后是数字，则比较的数值。\n“equals”如果前后是对象，比较的是对象的地址。如果比较的对象重写了equals方法，则有可能比较的是“值”。像八个基本数据类型的封装类、String、File、Date都比较的是值。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10010, '静态变量和实例变量的区别', 10011, 'Java', 1, '', '在语法定义上的区别：静态变量前要加static关键字，而实例变量前则不加。\n在程序运行时的区别：实例变量属于某个对象的属性，必须创建了实例对象，其中的实例变量才会被分配空间，才能使用这个实例变量。静态变量不属于某个实例对象，而是属于类，所以也称为类变量，只要程序加载了类的字节码，不用创建任何实例对象，静态变量就会被分配空间，静态变量就可以被使用了。\n总之，实例变量必须创建对象后才可以通过这个对象来使用，静态变量则可以直接使用类名来引用。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10011, 'Integer和int的区别', 10011, 'Java', 1, '', 'int是java提供的8种原始数据类型之一，意思整型，占用4字节。\nInteger是java为int提供的封装类，是引用数据类型。\nint的默认值为0，而Integer的默认值为null，即Integer可以区分出未赋值和值为0的区别，int则无法表达出未赋值的情况。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10012, 'Math.round()的使用', 10011, 'Java', 1, '<p><strong>首次导入题目测试</strong></p>', '<p>Math类中提供了三个与取整有关的方法：ceil、floor、round，这些方法的作用与它们的英文名称的含义相对应，</p><p>例如：</p><p>ceil的英文意义是天花板，该方法就表示向上取整，Math.ceil(11.3)的结果为12,Math.ceil(-11.3)的结果是-11；</p><p>floor的英文意义是地板，该方法就表示向下取整，Math.ceil(11.6)的结果为11,Math.ceil(-11.6)的结果是-12；</p><p class=\"__se__p-spaced __se__p-bordered\">最难掌握的是round方法，它表示“四舍五入”，算法为Math.floor(x+0.5)，即将原来的数字加上0.5后再向下取整，所以，Math.round(11.5)的结果为12，Math.round(-11.5)的结果为-11。</p>', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10013, '构造器是否可以被重写', 10011, 'Java', 1, '', '构造器Constructor不能被继承，因此不能重写Override，但可以被重载Overload', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 9, 0, NULL);
INSERT INTO `question_info` VALUES (10014, '抽象类和接口的区别', 10011, 'Java', 1, '', '含有abstract修饰符的class即为抽象类，abstract类不能创建的实例对象。含有abstract方法的类必须定义为abstract class，abstract class类中的方法不必是抽象的。abstract class类中定义抽象方法必须在具体(Concrete)子类中实现，所以，不能有抽象构造方法或抽象静态方法。如果的子类没有实现抽象父类中的所有抽象方法，那么子类也必须定义为abstract类型。\n接口（interface）可以说成是抽象类的一种特例，接口中的所有方法都必须是抽象的。接口中的方法定义默认为public abstract类型，接口中的成员变量类型默认为public static final。\n下面比较一下两者的语法区别：\n1. 抽象类可以有构造方法，接口中不能有构造方法。\n2. 抽象类中可以有普通成员变量，接口中没有普通成员变量\n3. 抽象类中可以包含非抽象的普通方法，接口中的所有方法必须都是抽象的，不能有非抽象的普通方法。\n4. 抽象类中的抽象方法的访问类型可以是public，protected和默认类型，但接口中的抽象方法只能是public类型的，并且默认即为public abstract类型。\n5. 抽象类中可以包含静态方法，接口中不能包含静态方法\n6. 抽象类和接口中都可以包含静态成员变量，抽象类中的静态成员变量的访问类型可以任意，但接口中定义的变量只能是public static final类型，并且默认即为public static final类型。\n7. 一个类可以实现多个接口，但只能继承一个抽象类。\n下面接着再说说两者在应用上的区别：\n接口更多的是在系统架构设计方法发挥作用，主要用于定义模块之间的通信契约；\n而抽象类在代码实现方面发挥作用，可以实现代码的重用。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10015, '新建对象有几种方式', 10011, 'Java', 1, '', '1. 使用new关键字\n2. 使用反射，调用newInstance\n3. 使用clone方法\n4. 使用序列化与反序列化\n5. 动态代理(Proxy类和CGLIB)', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10016, '&和&&的区别', 10011, 'Java', 1, '', '<p>&amp;和&amp;&amp;都可以用作逻辑与的运算符，&amp;&amp;为短路与，&amp;不是短路与。</p><p>另外&amp;可以做为整数的位运算符</p><p>例1：对于if(str != null&amp;&amp; !str.equals(“”))表达式，当str为null时，后面的表达式不会执行，所以不会出现NullPointerException如果将&amp;&amp;改为&amp;，则会抛出NullPointerException异常。</p><p>例2：If(x==33 &amp;++y&gt;0) y会增长，if(x==33 &amp;&amp; ++y&gt;0)不会增长。</p><p>备注：这道题先说两者的共同点，再说出&amp;&amp;和&amp;的特殊之处，并列举一些经典的例子来表明自己理解透彻深入、实际经验丰富</p>', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10017, '面向对象什么特性', 10011, 'Java', 1, '', '对于面向对象的特性，一般有两种说法：一种是有三大特性，分别是封装，继承，多态，一种说法是有四大特性，封装，继承，多态，抽象。讲三大特性的时候更多一些，注意，这里的提问方式是面向对象的特性，而不是Java的特性。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10018, '面向对象中多态特性', 10011, 'Java', 1, '', '多态是面向对象很重要的一个特性，转型是多态的具体体现。多态还包括重载和重写。\n\n转型：转型分为向上转型和向下转型。向上转型是子类对象转换成父类对象，直接转就可以，向下转型是父类对象转换成子类对象，这需要强转，在转换过程中要保证此父类对象“本体”是由子类对象实例化的。\n\n重载：重载发生在同一个类中，在该类中如果存在多个同名方法，但是方法的参数类型和个数不一样，那么说明该方法被重载了。\n\n重写：重写发生在子类继承父类的关系中，父类中的方法被子类继承，方法名，返回值类型，参数完全一样，但是方法体不一样，那么说明父类中的该方法被子类重写了。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10019, 'List,Set,Collection,Collections', 10011, 'Java', 1, '', '1、List和Set都是接口，他们都继承于接口Collection,List是一个有序的可重复的集合，而Set的无序的不可重复的集合。Collection是集合的顶层接口，Collections是一个封装了众多关于集合操作的静态方法的工具类,因为构造方法是私有的，所以不能实例化。\n\n2、List接口实现类有ArrayList,LinkedList,Vector。ArrayList和Vector是基于数组实现的,所以查询的时候速度快，而在进行增加和删除的时候速度较慢LinkedList是基于链式存储结构，所以在进行查询的时候速度较慢但在进行增加和删除的时候速度较快。又因为Vector是线程安全的，所以他和ArrayList相比而言，查询效率要低。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10020, '线程和进程的区别', 10011, 'Java', 1, '', '1、进程定义的是应用程序与应用程序之间的边界，通常来说一个进程就代表一个与之对应的应用程序。不同的进程之间不能共享代码和数据空间，而同一进程的不同线程可以共享代码和数据空间。\n\n2、一个进程可以包括若干个线程，同时创建多个线程来完成某项任务，便是多线程。实现线程的两种方式：继承Thread类，实现Runable接口。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 9, 0, NULL);
INSERT INTO `question_info` VALUES (10021, 'Jvm内存结构', 10011, 'Java', 1, '', 'Java虚拟机的内存结构分为堆(heap)和栈(stack)，堆里面存放是对象实例也就是new出来的对象。栈里面存放的是基本数据类型以及引用数据类型的地址。对于所谓的常量是存储在方法区的常量池里面。\n堆是先进先出\n栈是先进后出', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10022, '内存泄露和内存溢出', 10011, 'Java', 1, '', '内存泄露 (memory leak)，是指应用程序在申请内存后，无法释放已经申请的内存空间。一次内存泄露危害可以忽略，但如果任其发展最终会导致内存溢出（out of memory）。如读取文件后流要进行及时的关闭以及对数据库连接的释放。\n\n内存溢出（out of memory）是指应用程序在申请内存时，没有足够的内存空间供其使用。如我们在项目中对于大批量数据的导入，采用分段批量提交的方式。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10023, '解析xml文件的几种技术', 10011, 'Java', 1, '', '解析xml的几种技术\n1.dom4j 、2.sax、3.jaxb、4.jdom、5.dom\n\n1dom4j\ndom4j是一个Java的XML API，类似于jdom，用来读写XML文件的。dom4j是一个非常优秀的Java XML API，具有性能优异、功能强大和极端易用使用的特点，同时它也是一个开放源代码的软件。\n\n2、sax\nSAX（simple API for XML）是一种XML解析的替代方法。相比于DOM，SAX是一种速度更快，更有效的方法。它逐行扫描文档，一边扫描一边解析。而且相比于DOM，SAX可以在解析文档的任意时刻停止解析，但任何事物都有其相反的一面，对于SAX来说就是操作复杂。\n\n3、Jaxb\nJAXB（Java Architecture for XML Binding) 是一个业界的标准，是一项可以根据XML Schema产生Java类的技术。该过程中，JAXB也提供了将XML实例文档反向生成Java对象树的方法，并能将Java对象树的内容重新写到XML实例文档。从另一方面来讲，JAXB提供了快速而简便的方法将XML模式绑定到Java表示，从而使得Java开发者在Java应用程序中能方便地结合XML数据和处理函数。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10024, 'Dom4j与sax之间的对比', 10011, 'Java', 1, '', 'dom4j不适合大文件的解析，因为它是一下子将文件加载到内存中，所以有可能出现内存溢出，sax是基于事件来对xml进行解析的，所以他可以解析大文件的xml，也正是因为如此，所以dom4j可以对xml进行灵活的增删改查和导航，而sax没有这么强的灵活性，所以sax经常是用来解析大型xml文件，而要对xml文件进行一些灵活（crud）操作就用dom4j。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10025, 'java Exception体系结构', 10011, 'Java', 1, '', 'java 异常是程序运行过程中出现的错误。Java把异常当作对象来处理，并定义一个基类java.lang.Throwable作为所有异常的超类。在Java API中定义了许多异常类,分为两大类，错误Error和异常Exception。其中异常类Exception又分为运行时异常(RuntimeException)和非运行时异常(非runtimeException)，也称之为不检查异常（Unchecked Exception）和检查异常（Checked Exception）。\n\n1、	Error与Exception \nError是程序无法处理的错误，比如OutOfMemoryError、ThreadDeath等。这些异常发生时，Java虚拟机（JVM）一般会选择线程终止。\n\nException是程序本身可以处理的异常，这种异常分两大类运行时异常和非运行时异常。程序中应当尽可能去处理这些异常。 \n\n2、	运行时异常和非运行时异常\n	运行时异常: 都是RuntimeException类及其子类异常：\n       	IndexOutOfBoundsException 索引越界异常\n       	ArithmeticException：数学计算异常\n       	NullPointerException：空指针异常\n       	ArrayOutOfBoundsException：数组索引越界异常\n       	ClassNotFoundException：类文件未找到异常\n       	ClassCastException：造型异常（类型转换异常）\n			\n	这些异常是不检查异常（Unchecked Exception），程序中可以选择捕获处理，也可以不处理。这些异常一般是由程序逻辑错误引起的。\n\n非运行时异常:是RuntimeException以外的异常，类型上都属于Exception类及其子类。从程序语法角度讲是必须进行处理的异常，如果不处理，程序就不能编译通过。如：\nIOException、文件读写异常\nFileNotFoundException：文件未找到异常\nEOFException：读写文件尾异常\nMalformedURLException：URL格式错误异常\nSocketException：Socket异常\nSQLException：SQL数据库异常', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10026, '抽象类和接口的区别', 10011, 'Java', 1, '', '1.抽象类由public abstract修饰，接口由public interface修饰。\n2.类（抽象类也是类）只支持单继承，但接口可以实现多个接口。接口不是类，接口和类同属于Java中的一个类型。\n3.抽象类里由构造器、常量、变量、抽象方法、普通方法构成，接口里只包括常量和抽象方法，没有构造器和普通方法。\n4.是否是使用抽象类还是接口，主要看想要实现什么样的事情，如果侧重于描述事务，应该选择抽象类，如果侧重于定义功能，建议选择使用接口。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10027, '修饰符的作用', 10011, 'Java', 1, '', '修饰符	    同一个类中	同一个包中	子类中	全局\nprivate	Yes			\nDefault	Yes    	Yes		\nprotected	Yes    	Yes    	Yes	\npublic 	Yes    	Yes    	Yes    	Yes', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10028, 'HashMap和Hashtable的区别', 10011, 'Java', 1, '', '1、HashMap和Hashtable是Map接口下的两个实现类，因为Map对象是键值对的，所以此两类也是键值对的。\n2、HashMap是线程非安全的，Hashtable是线程安全的，所以HashMap的效率高于Hashtable。\n3、HashMap允许键或值为null，键最多只可以有一个为null，值不受限制。而Hashtable键或值都不许为null。\n\n注意：Hashtable中的“t”是小写的。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10029, '字节流和字符流的区别', 10011, 'Java', 1, '', '以stream结尾都是字节流，以reader和writer结尾都是字符流，两者的区别就是读写的时候一个是按字节读写，一个是按字符。在实际使用时差不多。\n\n在读写文件需要对内容按行处理，比如比较特定字符，处理某一行数据的时候一般会选择字符流。只是读写文件，和文件内容无关的，一般选择字节流。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10030, '运行异常和检查异常有何不同', 10011, 'Java', 1, '', '异常表示程序运行过程中可能出现的非正常状态，运行时异常表示虚拟机的通常操作中可能遇到的异常，是一种常见运行错误。java编译器要求方法必须声明抛出可能发生的非运行时异常，但是并不要求必须声明抛出未被捕获的运行时异常。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10031, 'error和exception的区别', 10011, 'Java', 1, '', 'error 表示恢复不是不可能但很困难的情况下的一种严重问题。比如说内存溢出，不可能指望程序能处理这样的情况。exception表示一种设计或实现问题，也就是说，它表示如果程序运行正常，从不会发生的情况。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10032, '举例最常用的五个运行时异常', 10011, 'Java', 1, '', 'NullPointerException空指针、ArrayIndexOutOfBoundsException数组越界、ClassCastException 类转换异常、IllegelArgumentException输入输出异常、SecurityException 权限不够。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10033, 'Sleep和wait的区别', 10011, 'Java', 1, '', '<p>（网上的答案：sleep是线程类（Thread）的方法，导致此线程暂停执行指定时间，给执行机会给其他线程，但是监控状态依然保持，到时后会自动恢复。调用sleep不会释放对象锁。 wait是Object类的方法，对此对象调用wait方法导致本线程放弃对象锁，进入等待此对象的等待锁定池，只有针对此对象发出notify方法（或notifyAll）后本线程才进入对象锁定池准备获得对象锁进入运行状态。）</p><p>sleep就是正在执行的线程主动让出cpu，cpu去执行其他线程，在sleep指定的时间过后，cpu才会回到这个线程上继续往下执行，如果当前线程进入了同步锁，sleep方法并不会释放锁，即使当前线程使用sleep方法让出了cpu，但其他被同步锁挡住了的线程也无法得到执行。wait是指在一个已经进入了同步锁的线程内，让自己暂时让出同步锁，以便其他正在等待此锁的线程可以得到同步锁并运行，只有其他线程调用了notify方法（notify并不释放锁，只是告诉调用过wait方法的线程可以去参与获得锁的竞争了，但不是马上得到锁，因为锁还在别人手里，别人还没释放。如果notify方法后面的代码还有很多，需要这些代码执行完后才会释放锁，可以在notfiy方法后增加一个等待和一些代码，看看效果），调用wait方法的线程就会解除wait状态和程序可以再次得到锁后继续向下运行。对于wait的讲解一定要配合例子代码来说明，才显得自己真明白。</p>', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10034, '多线程有几种实现方式', 10011, 'Java', 1, '', '多线程有两种实现方法，分别是继承Thread类与实现Runnable接口\n同步的实现方面有五种，分别是synchronized、wait与notify、sleep、suspend、join\nsynchronized: 一直持有锁，直至执行结束\nwait():使一个线程处于等待状态，并且释放所持有的对象的lock，需捕获异常。\nsleep():使一个正在运行的线程处于睡眠状态，是一个静态方法，需捕获异常，不释放锁。\nnotify():唤醒一个处于等待状态的线程，注意的是在调用此方法的时候，并不能确切的唤醒某一个等待状态的线程，而是由JVM确定唤醒哪个线程，而且不是按优先级。\nnotityAll():唤醒所有处入等待状态的线程，注意并不是给所有唤醒线程一个对象的锁，而是让它们竞争。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10035, '启动一个线程用run还是start', 10011, 'Java', 1, '', '启动一个线程是调用start()方法，使线程就绪状态，以后可以被调度为运行状态，一个线程必须关联一些具体的执行代码，run()方法是该线程所关联的执行代码。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10036, 'List和Map的区别', 10011, 'Java', 1, '', '一个是存储单列数据的集合，另一个是存储键和值的双列数据的集合，List中存储的数据是有顺序，并且允许重复；Map中存储的数据是\n没有顺序的，其键是不能重复的，它的值是可以有重复的。\n1、List有重复值，Map没有重复key，但可以有重复值\n2、List有序，Map不一定有序\n3、List只能存单列值，Map可以存双列值', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10037, '说出ArrayList,Vector, LinkedList的存储性能和特性', 10011, 'Java', 1, '', '1. ArrayList和Vector使用数组存储元素；LinkedList使用链表存储元素\n2. ArrayList和Vector插入删除数据时，需要搬运数据，效率较差；LinkedList使用链表，不需要搬运数据，效率高\n3. ArrayList和Vectory查询时，按数组下标查询，不需要遍历，效率高；LinkedList需要遍历，查询效率底', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10038, 'Java序列化', 10011, 'Java', 1, '', '序列化是把内存Java对象保存到存储介质中，反序列化就是把存储介质中的数据转化为Java对象。Java通过ObjectInputStream和ObjectOutputStream实现序列化和反序列化。需要进行序列化的对象的类必须实现Serializable接口，通常情况下需要满足以下条件：\n1. 强烈建议手动生成serialVersionUID常量\n2. 如果需要加解密的话，需要实现两个方法readObject和writeObject方法\n3. 如果使用Hibernate二级缓存或其它缓存服务器的话，对象必须是可序列化的\n4. 如果需要远程调用对象或传值的话，则对像需要序列化\n5. 序列化类的可序列化成员必须也是可序列化的，不需要序列化的属性用transient修饰', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10039, '堆和栈的区别', 10011, 'Java', 1, '', 'Java的内存分为两类，一类是栈内存，一类是堆内存。\n栈中存储的是当前线程的方法调用、基本数据类型和对象的引用，栈是有序的。\n堆中存储的是对象的值，堆是无序的。\n方法中的局部变量使用final修饰后，放在堆中，而不是栈中。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10040, '什么时候用断言', 10011, 'Java', 1, '', 'assertion(断言)在软件开发中是一种常用的调试方式，很多开发语言中都支持这种机制。在实现中，assertion就是在程序中的一条语句，它对一个boolean表达式进行检查，一个正确程序必须保证这个boolean表达式的值为true；如果该值为false，说明程序已经处于不正确的状态下，assert将给出警告或退出。一般来说，assertion用于保证程序最基本、关键的正确性。assertion检查通常在开发和测试时开启。为了提高性能，在软件发布后，assertion检查通常是关闭的。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10041, 'Java中会有内存泄露吗', 10011, 'Java', 1, '', '会，原因：\n如果对象被集合类引用时，如果只是添加，而不删除，会引起内存泄漏，严重时会发出内存溢出。\nJava中的内存泄露的情况：长生命周期的对象持有短生命周期对象的引用就很可能发生内存泄露。\n内存泄露的另外一种情况：当一个对象被存储进HashSet或HashMap中以后，就不能修改这个对象中的那些参与计算哈希值的字段了，否则，对象修改后的哈希值与最初存储进HashSet集合中时的哈希值就不同了，在这种情况下，即使在contains方法使用该对象的当前引用作为的参数去HashSet集合中检索对象，也将返回找不到对象的结果，这也会导致无法从HashSet集合中单独删除当前对象，造成内存泄露。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10042, '简述反射的作用', 10011, 'Java', 1, '', '假如我们有两个程序员，一个程序员在写程序的时候，需要使用第二个程序员所写的类，但第二个程序员并没完成他所写的类。那么第一个程序员的代码能否通过编译呢？这是不能通过编译的。利用Java反射的机制，就可以让第一个程序员在没有得到第二个程序员所写的类的时候，来完成自身代码的编译。\nJava的反射机制它知道类的基本结构，这种对Java类结构探知的能力，我们称为Java类的“自审”。大家都用过Jcreator和eclipse。当我们构建出一个对象的时候，去调用该对象的方法和属性的时候。一按点，编译工具就会自动的把该对象能够使用的所有的方法和属性全部都列出来，供用户进行选择。这就是利用了Java反射的原理，是对我们创建对象的探知、自审。', '2023-07-25 22:15:34', 1, '1000003', 'Eternal', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10043, 'static都有哪些用法', 10011, 'Java', 1, '<p>static都有哪些用法<br></p>', '<p>关键字 \"static\" 在 Java 中有多种用法，主要包括以下几个方面：<br><br>1. 静态变量（Static Variables）：当用 \"static\" 修饰一个变量时，该变量属于类级别，而不是实例级别。静态变量在类加载时初始化，所有该类的对象共享相同的静态变量。静态变量可以通过类名直接访问，无需创建类的实例。<br>    <br>2. 静态方法（Static Methods）：当用 \"static\" 修饰一个方法时，该方法属于类级别，而不是实例级别。静态方法可以直接通过类名调用，无需创建类的实例。静态方法只能访问静态变量和调用其他静态方法，不能直接访问实例变量或调用实例方法。<br>    <br>3. 静态代码块（Static Initialization Blocks）：静态代码块用于在类加载时进行初始化操作。静态代码块在类第一次被加载时执行，并且只执行一次。它常用于初始化静态变量或执行一些静态的初始化操作。<br>    <br>4. ==静态内部类==（Static Inner Classes）：静态内部类是在类内部被声明为静态的内部类。静态内部类不依赖于外部类的实例，可以直接通过外部类名访问。静态内部类的实例可以独立于外部类的实例存在。<br>    <br>5. ==静态导入==（Static Import）：静态导入允许在使用静态成员时省略类名，直接使用静态成员的名称。通过静态导入，可以更简洁地使用静态成员，但需要注意避免命名冲突。<br>    <br>6. 静态常量（Static Constants）：静态常量是指使用 \"static final\" 修饰的变量，表示它是一个类级别的常量，无法被修改。静态常量在类加载时被初始化，并且可以通过类名直接访问。<br>    <br><br>这些是静态关键字 \"static\" 的常见用法。它们可以用于实现共享数据、工具类方法、静态初始化等功能。需要注意的是，静态成员在内存中存在一份，并且可以通过类名直接访问，因此需要谨慎使用，避免滥用静态成员。<br></p>', '2023-07-25 22:17:21', 1, '1000008', '顾挽', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10044, '深拷贝和浅拷贝的区别是什么', 10011, 'Java', 1, '<p>深拷贝和浅拷贝的区别是什么<br></p>', '<p>深拷贝（Deep Copy）和浅拷贝（Shallow Copy）是两种常见的对象拷贝方式，它们之间的区别在于复制过程中是否复制了对象内部的内容。<br><br>浅拷贝是创建一个新对象，新对象的内容与原始对象的内容相同。然而，如果原始对象包含引用类型的成员变量（如列表、字典、对象等），浅拷贝只会复制引用而不会复制引用对象本身。这意味着原始对象和浅拷贝对象将引用相同的引用对象，修改其中一个对象的引用对象会影响到另一个对象。<br><br>深拷贝是创建一个新对象，并且递归地复制原始对象及其所有的引用对象。深拷贝会复制对象及其引用对象的内容，而不是仅仅复制引用。这样，原始对象和深拷贝对象将完全独立，修改其中一个对象的引用对象不会影响另一个对象。<br><br>简而言之，浅拷贝只复制了对象本身，而没有复制对象内部的引用对象，而深拷贝则递归地复制了对象及其所有引用对象的内容。<br><br>需要注意的是，深拷贝可能会涉及到更多的资源和时间开销，因为需要递归地复制对象及其引用对象的内容。在某些情况下，可能需要选择适合的拷贝方式来满足特定的需求。<br><br></p>', '2023-07-25 22:18:56', 1, '1000008', '顾挽', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10045, '说一说JVM的内存区域', 10011, 'Java', 1, '', '<p><br></p><p>Java 虚拟机在执行 Java 程序的过程中会把他所管理的内存划分为若干个不同的数据区域：</p><ul><li>程序计数器：可以看作是当前线程所执行的字节码文件（class）的行号指示器，它会记录执行痕迹，是每个线程私有的</li><li>方法区：主要存储已被虚拟机加载的类的信息、常量、静态变量和即时编译器编译后的代码等数据，该区域是被线程共享的，很少发生垃圾回收</li><li>栈：栈是运行时创建的，是线程私有的，生命周期与线程相同，存储声明的变量</li><li>本地方法栈：为 native 方法服务，native 方法是一种由非 java 语言实现的 java 方法，与 java 环境外交互，如可以用本地方法与操作系统交互</li><li>堆：堆是所有线程共享的一块内存，是在 java 虚拟机启动时创建的，几乎所有对象实例都在此创建，所以经常发生垃圾回收操作</li></ul><p>JDK8 之前，Hotspot 中方法区的实现是永久代（Perm）</p><p>JDK8 开始使用元空间（Metaspace），以前永久代所有内容的字符串常量移至堆内存，其他内容移至元空间，元空间直接在本地内存分配。</p>', '2023-07-25 22:22:40', 1, '1000006', '十七', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10046, 'JDK8为什么要使用元空间取代永久代？', 10011, 'Java', 1, NULL, '<p><br></p><p>永久代是 HotSpot VM 对方法区的实现，JDK 8 将其移除的部分原因如下：</p><ul><li>类及方法的信息等比较难确定其大小，因此对于永久代的大小指定比较困难，太小容易出现永久代溢出，太大则容易导致老年代溢出</li><li>永久代会为 GC 带来不必要的复杂度，并且回收效率偏低</li><li>将 HotSpot 与 JRockit 进行整合，JRockit 是没有永久代的</li></ul>', '2023-07-25 22:23:37', 1, '1000006', '十七', 9, 0, NULL);
INSERT INTO `question_info` VALUES (10047, '对象在哪块内存分配？', 10011, 'Java', 1, NULL, '<p><br></p><p>对象(数组可以理解为对象的一种)在堆内存分配</p><p>某些对象没有逃逸出方法，可能被优化为在栈上分配</p>', '2023-07-25 22:24:12', 1, '1000006', '十七', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10048, '介绍下Java中垃圾回收机制', 10011, 'Java', 2, NULL, '<p><br></p><p><span style=\"color: rgb(0, 0, 0)\"><strong>什么样的对象会被当做垃圾回收？</strong></span><br>当一个对象的地址没有变量去引用时，该对象就会成为垃圾对象，垃圾回收器在空闲的时候会对其进行内存清理回收</p><p><span style=\"color: rgb(0, 0, 0)\"><strong>如何检验对象是否被回收？</strong></span><br>可以重写 Object 类中的 finalize 方法，这个方法在垃圾收集器执行的时候，被收集器自动调用执行的</p><p><span style=\"color: rgb(0, 0, 0)\"><strong>怎样通知垃圾收集器回收对象？</strong></span><br>可以调用 System 类的静态方法 gc()，通知垃圾收集器去清理垃圾，但不能保证收集动作立即执行，具体的执行时间取决于垃圾收集的算法</p>', '2023-07-25 22:24:53', 1, '1000006', '十七', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10049, '消息队列有什么优缺点', 10011, 'Java', 3, '<p>消息队列有什么优缺点<br></p>', '<div>优点：</div><div><br></div><div>解耦：</div><div>A 系统产生一条数据，发送到 MQ 里面去，哪个系统需要数据自己去 MQ 里面消</div><div>费。如果新系统需要数据，直接从 MQ 里消费即可；如果某个系统不需要这条数据了，就取消</div><div>对 MQ 消息的消费即可。这样下来，A 系统压根儿不需要去考虑要给谁发送数据，不需要维护</div><div>这个代码，也不需要考虑人家是否调用成功、失败超时等情况。</div><div><br></div><div>异步：</div><div>A 系统接收信息需要3ms，连续发送 3 条消息到 MQ 队列中，假如耗时 5ms，A 系统从接受一</div><div>个请求到返回响应给用户，总时长是 3 + 5 = 8ms，对于用户而言，其实感觉上就是点个按钮，8ms 以后就直接返回了，爽！网站做得真好，真快！</div><div><br></div><div>削峰：每秒 5k 个请求写入 MQ，A 系统每秒钟最多处理 2k 个请求，因为 MySQL 每秒钟</div><div>最多处理 2k 个。A 系统从 MQ 中慢慢拉取请求，每秒钟就拉取 2k 个请求，不要超过自己每秒</div><div>能处理的最大请求数量就 ok，这样下来，哪怕是高峰期的时候，A 系统也绝对不会挂掉。而</div><div>MQ 每秒钟 5k 个请求进来，就 2k 个请求出去，结果就导致在中午高峰期（1 个小时），可能有几十万甚至几百万的请求积压在 MQ 中</div><div><br></div><div><br></div><div>缺点：</div><div>系统可用性降低：</div><div>系统引入的外部依赖越多，越容易挂掉。本来你就是 A 系统调用 BCD 三个系统的接口就好了，ABCD 四个系统还好好的，没啥问题，你偏加个 MQ 进来，万一 MQ 挂了咋整？MQ 一挂，整套系统崩溃，你不就完了？</div><div><br></div><div>系统复杂度提高：</div><div>硬生生加个 MQ 进来，你怎么保证消息没有重复消费？怎么处理消息丢失的情况？怎么保证</div><div>消息传递的顺序性？头大头大，问题一大堆，痛苦不已。</div><div><br></div><div>一致性问题：</div><div>A 系统处理完了直接返回成功了，人都以为你这个请求就成功了；但是问题是，要是 BCD 三个</div><div>系统那里，BD 两个系统写库成功了，结果 C 系统写库失败了，咋整？你这数据就不一致了。</div><div>所以消息队列实际是一种非常复杂的架构，你引入它有很多好处，但是也得针对它带来的坏处</div><div>做各种额外的技术方案和架构来规避掉，做好之后，你会发现，妈呀，系统复杂度提升了一个</div><div>数量级，也许是复杂了 10 倍。但是关键时刻，用，还是得用的。</div>', '2023-07-25 22:27:16', 1, '1000002', 'MIAO?', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10050, 'Java中类加载过程是什么样的？', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"137688499\" _msthash=\"627\">类加载的步骤为，加载 -&gt; 验证 -&gt; 准备 -&gt; 解析 -&gt; 初始化。</p><p _msttexthash=\"17871347\" _msthash=\"626\">1、加载：</p><ul><li _msttexthash=\"41738554\" _msthash=\"623\">获取类的二进制字节流</li><li _msttexthash=\"183498250\" _msthash=\"624\">将字节流代表的静态存储结构转化为方法区运行时数据结构</li><li _msttexthash=\"48036742\" _msthash=\"625\">在堆中生成类字节码对象</li></ul><p _msttexthash=\"465495004\" _msthash=\"622\">2、验证：连接过程的第一步，确保 class 文件的字节流中的信息符合当前 JVM 的要求，不会危害 JVM 的安全</p><p _msttexthash=\"174086887\" _msthash=\"621\">3、准备：为类的静态变量分配内存并将其初始化为默认值</p><p _msttexthash=\"184508636\" _msthash=\"620\">4、解析：JVM 将常量池内符号引用替换成直接引用的过程</p><p _msttexthash=\"111651306\" _msthash=\"619\">5、初始化：执行类构造器的初始化的过程</p>', '2023-07-25 22:31:05', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10051, '对象创建过程是什么样的？', 10011, 'Java', 2, NULL, '<p style=\"text-align: center;\"><font _mstmutation=\"1\" _msttexthash=\"70712616\" _msthash=\"661\">对象在 JVM 中的创建过程如下：</font><br></p><div><ul><li _msttexthash=\"465120565\" _msthash=\"650\">JVM 会先去方法区找有没有所创建对象的类存在，有就可以创建对象了，没有则把该类加载到方法区</li><li _msttexthash=\"140730811\" _msthash=\"651\">在创建类的对象时，首先会先去堆内存中分配空间</li><li _msttexthash=\"220528204\" _msthash=\"652\">当空间分配完后，加载对象中所有的非静态成员变量到该空间下</li><li _msttexthash=\"291034809\" _msthash=\"653\">所有的非静态成员变量加载完成之后，对所有的非静态成员进行默认初始化</li><li _msttexthash=\"238794088\" _msthash=\"654\">所有的非静态成员默认初始化完成之后，调用相应的构造方法到栈中</li><li _msttexthash=\"243947015\" _msthash=\"655\">在栈中执行构造函数时，先执行隐式，再执行构造方法中书写的代码</li><li _msttexthash=\"156012129\" _msthash=\"656\">执行顺序：静态代码库，构造代码块，构造方法</li><li _msttexthash=\"381606732\" _msthash=\"657\">当整个构造方法全部执行完，此对象创建完成，并把堆内存中分配的空间地址赋给对象名</li></ul></div>', '2023-07-25 22:31:56', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10052, '有哪些集合是线程不安全的？怎么解决呢？', 10011, 'Java', 3, '<p><br></p><div>有哪些集合是线程不安全的？怎么解决呢？</div>', '<p>我们常⽤的 Arraylist, LinkedList , Hashmap , HashSet , TreeSet , TreeMap ， PriorityQueue 都不是线程安全的。解决办法很简单，可以使⽤线程安全的集合来代替。</p><p><br></p><div>如果你要使⽤线程安全的集合的话， java.util.concurrent 包中提供了很多并发容器供你使⽤：</div><div>1. ConcurrentHashMap : 可以看作是线程安全的 HashMap。</div><div>2. CopyOnWriteArrayList :可以看作是线程安全的 ArrayList ，在读多写少的场合性能⾮常</div><div>好，远远好于 Vector .</div><div>3. ConcurrentLinkedQueue :⾼效的并发队列，使⽤链表实现。可以看做⼀个线程安全的</div><div>LinkedList ，这是⼀个⾮阻塞队列。</div><div>4. BlockingQueue : 这是⼀个接⼝，JDK 内部通过链表、数组等⽅式实现了这个接⼝。表示阻塞</div><div>队列，⾮常适合⽤于作为数据共享的通道。</div><div>5. ConcurrentSkipListMap :跳表的实现。这是⼀个 Map ，使⽤跳表的数据结构进⾏快速查</div><div>找。</div>', '2023-07-25 22:32:18', 1, '1000002', 'MIAO?', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10053, 'JDK 和 JRE 的区别是什么？', 10011, 'Java', 2, '<p>什么是JDK,JRE和JVM</p>', '<ul><li><strong>JDK</strong>：英文全称 Java Development Kit，是Java的开发工具包 JDK是提供给Java开发人员使用的，其中包含了<code>Java的开发工具</code>和<code>JRE</code>。其中的开发工具包括：编译工具（javac.exe）打包工具（jar.exe）等。通俗的说就是<strong>开发用的</strong>。</li><li><strong>JRE</strong>：英文全称 Java Runtime Environment，是Java运行环境 JRE包括<code>Java虚拟机 (JVM Java Virtual Machine)</code>和Java程序所需的<code>核心类库</code>等，如果想要运行一个开发好的Java程序，计算机中只需要安装JRE即可。通俗的说就是<strong>运行用的</strong>。</li><li><strong>JVM</strong>：英文全称 （Java Virtual Machine），是java虚拟机。 它只认识<code>.class</code>为后缀的文件，它能将class文件中的字节码指令进行识别并调用操作系统向上的API完成动作。JVM是java能够跨平台的核心机制。通俗的说就是<strong>跨平台用的</strong>，就是把我们写的代码，转换成class文件用的。</li></ul>', '2023-07-25 23:54:07', 1, '1000002', 'MIAO?', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10054, 'for循环与forEach循环', 10011, 'Java', 1, '<p>for循环与forEach循环,那种能中断循环<br></p>', '<p>​<span style=\"color: rgb(77, 77, 77);font-size: 16px\">or循环是可以中断循环（利用</span><span style=\"color: rgb(77, 77, 77);\">break语句</span><span style=\"color: rgb(77, 77, 77);font-size: 16px\">或return语句），但forEach不可以中断循环。</span>​<br></p>', '2023-07-26 11:40:46', 1, '1000007', '迟來', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10055, 'List,Set,Map 三者的区别？', 10011, 'Java', 1, '<p>List,Set,Map 三者的区别？<br></p><p></p>', '<div>List (对付顺序的好帮⼿)： 存储的元素是有序的、可重复的。</div><div>Set (注重独⼀⽆⼆的性质): 存储的元素是⽆序的、不可重复的。</div><div>Map (⽤ Key 来搜索的专家): 使⽤键值对（kye-value）存储，类似于数学上y=f(x)，“x”代表 key，\"y\"代表 value，Key 是⽆序的、不可重复的，value 是⽆序的、可重复的，每个键最多映射到⼀个值。</div>', '2023-07-26 21:22:53', 1, '1000002', 'MIAO?', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10056, '方法区内存溢出怎么处理？', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"204039173\" _msthash=\"1291\">在 Java 虚拟机中，方法区是可供各线程共享的运行时内存区域。</p><p _msttexthash=\"176802054\" _msthash=\"1290\">在不同的 JDK 版本中，方法区中存储的数据是不一样的：</p><ul><li _msttexthash=\"850840016\" _msthash=\"1288\">JDK 1.7 之前的版本，运行时常量池是方法区的一个部分，同时方法区里面存储了类的元数据信息、静态变量、即时编译器编译后的代码等。</li><li _msttexthash=\"448660238\" _msthash=\"1289\">JDK 1.7 开始，JVM 已经将运行时常量池从方法区中移了出来，在堆中开辟了一块区域存放常量池。</li></ul><p _msttexthash=\"552953102\" _msthash=\"1287\">永久代就是 HotSpot VM 对虚拟机规范中方法区的一种实现方式，永久代和方法区的关系就像 Java 中类和接口的关系。</p><p _msttexthash=\"1825446116\" _msthash=\"1286\">HotSpot VM 机在 JDK 1.8 取消了永久代，改为元空间，类的元信息被存储在元空间中。元空间没有使用堆内存，而是与堆不相连的本地内存区域。所以，理论上系统可以使用的内存有多大，元空间就有多大。</p><p _msttexthash=\"1172278926\" _msthash=\"1285\">JDK 1.7 及之前的版本，启动时需要加载的类过多、运行时动态生成的类过多会造成方法区 OOM;JDK 1.7 之前常量池里的常量过多也会造成方法区 OOM。HotSpot VM 可以调大 -XX：MaxPermSize 参数值。</p><p _msttexthash=\"196625637\" _msthash=\"1284\">JDK 1.8，-XX：MaxMetaspaceSize 可以调整元空间最大的内存。</p>', '2023-07-26 21:47:33', 1, '1000006', '十七', 9, 0, NULL);
INSERT INTO `question_info` VALUES (10057, '谈谈 JVM 中的常量池', 10011, 'Java', 2, NULL, '<p><br></p><p><strong _msttexthash=\"8337979\" _msthash=\"635\">JDK 1.8 开始</strong></p><ul><li _msttexthash=\"497618069\" _msthash=\"632\">字符串常量池：存放在堆中，包括 String 对象执行 intern（） 方法后存的地方、双引号直接引用的字符串</li><li _msttexthash=\"443577069\" _msthash=\"633\">运行时常量池：存放在方法区，属于元空间，是类加载后的一些存储区域，大多数是类中 constant_pool 的内容</li><li _msttexthash=\"109098977\" _msthash=\"634\">类文件常量池：constant_pool，JVM 定义的概念</li></ul>', '2023-07-26 21:48:33', 1, '1000006', '十七', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10058, '谈谈永久代', 10011, 'Java', 1, NULL, '<p><font _mstmutation=\"1\" _msttexthash=\"2387474076\" _msthash=\"635\"><span style=\"color: rgb(17, 34, 51);font-size: 17px\" _mstmutation=\"1\" _istranslated=\"1\">JDK 8 之前，Hotspot 中方法区的实现是永久代（Perm）</span><br _mstmutation=\"1\" _istranslated=\"1\"><br _mstmutation=\"1\" _istranslated=\"1\">JDK <span style=\"color: rgb(17, 34, 51);font-size: 17px\" _mstmutation=\"1\" _istranslated=\"1\">7 开始把原本放在永久代的字符串常量池、静态变量等移出到堆，JDK 8 开始去除永久代，使用元空间（Metaspace），永久代剩余内容移至元空间，元空间直接在本地内存分配。</span></font><br></p>', '2023-07-26 21:49:35', 1, '1000006', '十七', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10059, '运行时栈帧包含哪些结构？', 10011, 'Java', 1, NULL, '<p><br></p><ul><li><p _msttexthash=\"18364398\" _msthash=\"640\">局部变量表</p></li><li><p _msttexthash=\"10961535\" _msthash=\"641\">操作数栈</p></li><li><p _msttexthash=\"12106848\" _msthash=\"642\">动态连接</p></li><li><p _msttexthash=\"11178492\" _msthash=\"643\">返回地址</p></li><li><p _msttexthash=\"11302239\" _msthash=\"644\">附加信息</p></li></ul>', '2023-07-26 21:50:12', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10060, 'JVM 的内存模型是什么？', 10011, 'Java', 2, NULL, '<p><font _mstmutation=\"1\" _msttexthash=\"3358366609\" _msthash=\"652\"><span style=\"color: rgb(17, 34, 51);font-size: 17px\" _mstmutation=\"1\" _istranslated=\"1\">JVM 试图定义一种统一的内存模型，能将各种底层硬件以及操作系统的内存访问差异进行封装，使 Java 程序在不同硬件以及操作系统上都能达到相同的并发效果。它分为工作内存和主内存，线程无法对主存储器直接进行操作，如果一个线程要和另外一个线程通信，那么只能通过主存进行交换。</span></font><br></p>', '2023-07-26 21:50:48', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10061, 'a=a+b和a+=b有什么区别', 10011, 'Java', 2, NULL, '<p><font _mstmutation=\"1\" _msttexthash=\"17671261426\" _msthash=\"656\">一、性能方面<br _mstmutation=\"1\" _istranslated=\"1\">a=a+b是加法运算 需要两次寻找地址而a+=b是增量运算有寄存器优先时 只有一次地址查找。效率方面后者略高于前者，基于现在计算机的发展可忽略不计。<br _mstmutation=\"1\" _istranslated=\"1\"><br _mstmutation=\"1\" _istranslated=\"1\">二、可读性方面<br _mstmutation=\"1\" _istranslated=\"1\">两者都是赋值运算，一般情况下可以认为两者没有什么区别，但前者与数学算法描述更接近相对来说更严谨而后者书写更快捷但可读性下降。<br _mstmutation=\"1\" _istranslated=\"1\"><br _mstmutation=\"1\" _istranslated=\"1\">三、数据类型方面<br _mstmutation=\"1\" _istranslated=\"1\">两者写法上主要在于是否能进行数据类型自动转换，事实上就是类型与精度上的差异。eg:当两个操作数的数据类型一致时两种形式的运算结果没有差别，但数据类型不同且a值的数据类型精度低时，此时两种形式就有区别了。<br _mstmutation=\"1\" _istranslated=\"1\"></font><br></p>', '2023-07-26 21:52:31', 1, '1000006', '十七', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10062, 'JVM 如何确定垃圾对象？', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"1209934765\" _msthash=\"636\">JVM 采用的是可达性分析算法，通过 GC Roots 来判定对象是否存活，从 GC Roots 向下追溯、搜索，会产生 Reference Chain。当一个对象不能和任何一个 GC Root 产生关系时，就判定为垃圾。</p><p _msttexthash=\"414523642\" _msthash=\"635\">软引用和弱引用，也会影响对象的回收。内存不足时会回收软引用对象；GC 时会回收弱引用对象。</p>', '2023-07-26 21:53:14', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10063, '哪些是 GC Roots？', 10011, 'Java', 3, NULL, '<p><br></p><ul><li><p _msttexthash=\"686564281\" _msthash=\"643\">在虚拟机栈（栈帧中的本地变量表）中引用的对象，譬如各个线程被调用的方法堆栈中使用到的参数、局部变量、临时变量等。</p></li><li><p _msttexthash=\"245640135\" _msthash=\"644\">在方法区中类静态属性引用的对象，譬如Java类的引用类型静态变量。</p></li><li><p _msttexthash=\"270738923\" _msthash=\"645\">在方法区中常量引用的对象，譬如字符串常量池（String Table）里的引用。</p></li><li><p _msttexthash=\"203970988\" _msthash=\"646\">在本地方法栈中JNI（即通常所说的Native方法）引用的对象。</p></li><li><p _msttexthash=\"899770456\" _msthash=\"647\">Java虚拟机内部的引用，如基本数据类型对应的Class对象，一些常驻的异常对象（比如 NullPointExcepiton、OutOfMemoryError）等，还有系统类加载器。</p></li><li><p _msttexthash=\"123800820\" _msthash=\"648\">所有被同步锁（syncd关键字）持有的对象。</p></li><li><p _msttexthash=\"253048393\" _msthash=\"649\">反映 Java 虚拟机内部情况的 JMXBean、JVMTI中注册的回调、本地代码缓存等。</p></li></ul>', '2023-07-26 21:53:47', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10064, '被引用的对象就一定能存活吗？', 10011, 'Java', 1, NULL, '<p><font _mstmutation=\"1\" _msttexthash=\"948147707\" _msthash=\"659\"><span style=\"color: rgb(17, 34, 51);font-size: 17px\" _mstmutation=\"1\" _istranslated=\"1\">不一定，看 Reference 类型，弱引用在 GC 时会被回收，软引用在内存不足的时候，即 OOM 前会被回收，但如果没有在 Reference Chain 中的对象就一定会被回收。</span></font><br></p>', '2023-07-26 21:54:55', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10065, '强引用、软引用、弱引用、虚引用是什么，有什么区别？', 10011, 'Java', 2, NULL, '<p><br></p><ul><li><p>强引用，就是普通的对象引用关系，如 String s = new String（“ConstXiong”）</p></li><li><p>软引用，用于维护一些可有可无的对象。只有在内存不足时，系统则会回收软引用对象，如果回收了软引用对象之后仍然没有足够的内存，才会抛出内存溢出异常。SoftReference 实现</p></li><li><p>弱引用，相比软引用来说，要更加无用一些，它拥有更短的生命周期，当 JVM 进行垃圾回收时，无论内存是否充足，都会回收被弱引用关联的对象。<span style=\"color: rgb(17, 34, 51);font-size: 17px\">WeakReference</span>实现</p></li><li><p>虚引用是一种形同虚设的引用，在现实场景中用的不是很多，它主要用来跟踪对象被垃圾回收的活动。<span style=\"color: rgb(17, 34, 51);font-size: 17px\">PhantomReference</span> 实现</p></li></ul>', '2023-07-26 21:56:20', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10066, '说说如何查看 JVM 参数默认值', 10011, 'Java', 2, NULL, '<p><br></p><ul><li><p _msttexthash=\"92039337\" _msthash=\"637\">jps -v 可以查看 jvm 进程显示指定的参数</p></li><li><p _msttexthash=\"117486499\" _msthash=\"638\">使用 -XX:+PrintFlagsFinal 可以看到 JVM 所有参数的值</p></li><li><p _msttexthash=\"109412407\" _msthash=\"639\">jinfo 可以实时查看和调整虚拟机各项参数</p></li></ul>', '2023-07-26 21:57:00', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10067, '工作中常用的 JVM 配置参数有哪些', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"16148444\" _msthash=\"684\">Java 8 为例<br><br>日志</p><ul><li _msttexthash=\"118218828\" _msthash=\"678\">-XX：+PrintFlagsFinal，打印JVM所有参数的值</li><li _msttexthash=\"51593841\" _msthash=\"679\">-XX：+PrintGC，打印GC信息</li><li _msttexthash=\"95202042\" _msthash=\"680\">-XX：+PrintGCDetails，打印GC详细信息</li><li _msttexthash=\"107406780\" _msthash=\"681\">-XX：+PrintGCTimeStamps，打印GC的时间戳</li><li _msttexthash=\"106036606\" _msthash=\"682\">-Xloggc：文件名，设置GC log文件的位置</li><li _msttexthash=\"338329732\" _msthash=\"683\">-XX：+PrintTenuringDistribution，查看熬过收集后剩余对象的年龄分布信息</li></ul><p><br><font _mstmutation=\"1\" _msttexthash=\"12757433\" _msthash=\"677\">内存设置</font></p><ul><li _msttexthash=\"69124055\" _msthash=\"666\">-Xms，设置堆的初始化内存大小</li><li _msttexthash=\"51677327\" _msthash=\"667\">-Xmx，设置堆的最大内存</li><li _msttexthash=\"57104593\" _msthash=\"668\">-Xmn，设置新生代内存大小</li><li _msttexthash=\"48568026\" _msthash=\"669\">-Xss，设置线程栈大小</li><li _msttexthash=\"93572583\" _msthash=\"670\">-XX：NewRatio，新生代与老年代比值</li><li _msttexthash=\"575056508\" _msthash=\"671\">-XX：SurvivorRatio，新生代中Eden区与两个Survivor区的比值，默认为8，即Eden：Survivor：Survivor=8：1：1</li><li _msttexthash=\"479585340\" _msthash=\"672\">-XX：MaxTenuringThreshold，从年轻代到老年代，最大晋升年龄。CMS 下默认为 6，G1 下默认为 15</li><li _msttexthash=\"257143276\" _msthash=\"673\">-XX：MetaspaceSize，设置元空间的大小，第一次超过将触发 GC</li><li _msttexthash=\"95119986\" _msthash=\"674\">-XX：MaxMetaspaceSize，元空间最大值</li><li _msttexthash=\"421217719\" _msthash=\"675\">-XX：MaxDirectMemorySize，用于设置直接内存的最大值，限制通过 DirectByteBuffer 申请的内存</li><li _msttexthash=\"912042677\" _msthash=\"676\">-XX：ReservedCodeCacheSize，用于设置 JIT 编译后的代码存放区大小，如果观察到这个值有限制，可以适当调大，一般够用即可</li></ul><p><br><font _mstmutation=\"1\" _msttexthash=\"30841057\" _msthash=\"665\">设置垃圾收集相关</font></p><ul><li _msttexthash=\"101656698\" _msthash=\"659\">-XX：+UseSerialGC，设置串行收集器</li><li _msttexthash=\"110389747\" _msthash=\"660\">-XX：+UseParallelGC，设置并行收集器</li><li _msttexthash=\"96840809\" _msthash=\"661\">-XX：+UseConcMarkSweepGC，使用CMS收集器</li><li _msttexthash=\"125545160\" _msthash=\"662\">-XX：ParallelGCThreads，设置Parallel GC的线程数</li><li _msttexthash=\"100197682\" _msthash=\"663\">-XX：MaxGCPauseMillis，GC最大暂停时间 ms</li><li _msttexthash=\"82872556\" _msthash=\"664\">-XX：+UseG1GC，使用G1垃圾收集器</li></ul><p><br><font _mstmutation=\"1\" _msttexthash=\"28279654\" _msthash=\"658\">CMS 垃圾回收器相关</font></p><ul><li _msttexthash=\"33013019\" _msthash=\"653\">-XX：+仅使用CMS占用</li><li _msttexthash=\"332083193\" _msthash=\"654\">-XX：CMSInitiatingOccupancyFraction，与前者配合使用，指定MajorGC的发生时机</li><li _msttexthash=\"516388743\" _msthash=\"655\">-XX：+ExplicitGCInvokesConcurrent，代码调用 System.gc（） 开始并行 FullGC，建议加上这个参数</li><li _msttexthash=\"929290700\" _msthash=\"656\">-XX：+CMSScavengeBeforeRemark，表示开启或关闭在 CMS 重新标记阶段之前的清除（YGC）尝试，它可以降低 remark 时间，建议加上</li><li _msttexthash=\"469594788\" _msthash=\"657\">-XX：+ParallelRefProcEnabled，可以用来并行处理 Reference，以加快处理速度，缩短耗时</li></ul><p><br><font _mstmutation=\"1\" _msttexthash=\"26105339\" _msthash=\"652\">G1 垃圾回收器相关</font></p><ul><li _msttexthash=\"262593773\" _msthash=\"648\">-XX：MaxGCPauseMillis，用于设置目标停顿时间，G1 会尽力达成</li><li _msttexthash=\"255579948\" _msthash=\"649\">-XX：G1HeapRegionSize，用于设置小堆区大小，建议保持默认</li><li _msttexthash=\"818587367\" _msthash=\"650\">-XX：InitiatingHeapOccupancyPercent，表示当整个堆内存使用达到一定比例（默认是 45%），并发标记阶段就会被启动</li><li _msttexthash=\"666943810\" _msthash=\"651\">-XX：ConcGCThreads，表示并发垃圾收集器使用的线程数量，默认值随 JVM 运行的平台不同而变动，不建议修改</li></ul><p><br><font _mstmutation=\"1\" _msttexthash=\"45658509\" _msthash=\"647\">参数查询官网地址：<br _mstmutation=\"1\"><a href=\"https://docs.oracle.com/javase/8/docs/technotes/tools/unix/java.html\" target=\"_blank\" _mstmutation=\"1\">https://docs.oracle.com/javase/8/docs/technotes/tools/unix/java.html</a></font></p><p _msttexthash=\"304114941\" _msthash=\"646\">建议面试时最好能记住 CMS 和 G1的参数，特点突出使用较多，被问的概率大</p>', '2023-07-26 21:57:42', 1, '1000006', '十七', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10068, '谈谈对 OOM 的认识', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"127024534\" _msthash=\"732\">除了程序计数器，其他内存区域都有 OOM 的风险。</p><ul><li><p _msttexthash=\"716880021\" _msthash=\"727\">栈一般经常会发生 StackOverflowError。栈发生 OOM 的场景如 32 位的 Windows 系统单进程限制 2G 内存，无限创建线程就会发生栈的 OOM</p></li><li><p _msttexthash=\"500956235\" _msthash=\"728\">Java 8 常量池移到堆中，溢出会出 java.lang.OutOfMemoryError： Java heap space，设置最大元空间大小参数无效</p></li><li><p _msttexthash=\"373516247\" _msthash=\"729\">堆内存溢出，报错同上，这种比较好理解，GC 之后无法在堆中申请内存创建对象就会报错</p></li><li><p _msttexthash=\"151225880\" _msthash=\"730\">方法区 OOM，经常会遇到的是动态生成大量的类、jsp 等</p></li><li><p _msttexthash=\"250079856\" _msthash=\"731\">直接内存 OOM，涉及到 -XX：MaxDirectMemorySize 参数和 Unsafe 对象对内存的申请</p></li></ul><p></p>', '2023-07-26 21:58:08', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10069, '什么情况发生栈溢出', 10011, 'Java', 1, NULL, '<p><font _mstmutation=\"1\" _msttexthash=\"597991420\" _msthash=\"741\"><span style=\"color: rgb(17, 34, 51);font-size: 17px\" _mstmutation=\"1\" _istranslated=\"1\">-Xss可以设置线程栈的大小，当线程方法递归调用层次太深或者栈帧中的局部变量过多时，会出现栈溢出错误 java.lang.StackOverflowError</span></font><br></p>', '2023-07-26 21:58:34', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10070, '你有哪些手段来排查 OOM 的问题', 10011, 'Java', 2, NULL, '<ul><li><p _msttexthash=\"620889438\" _msthash=\"745\">增加两个参数 -XX：+HeapDumpOnOutOfMemoryError -XX：HeapDumpPath=/tmp/heapdump.hprof，当 OOM 发生时自动 dump 堆内存信息到指定目录</p></li><li><p _msttexthash=\"250788993\" _msthash=\"746\">同时 jstat 查看监控 JVM 的内存和 GC 情况，先观察问题大概出在什么区域</p></li><li><p _msttexthash=\"749495071\" _msthash=\"747\">使用 MAT 工具载入到 dump 文件，分析大对象的占用情况，比如 HashMap 做缓存未清理，时间长了就会内存溢出，可以把改为弱引用</p></li></ul>', '2023-07-26 21:59:02', 1, '1000006', '十七', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10071, '为什么要使⽤集合？', 10011, 'Java', 1, '<p>为什么要使⽤集合？<br></p><p></p>', '<p>当我们需要保存⼀组类型相同的数据的时候，我们应该是⽤⼀个容器来保存，这个容器就是数组，但是，使⽤数组存储对象具有⼀定的弊端， 因为我们在实际开发中，存储的数据的类型是多种多样的，于是，就出现了“集合”，集合同样也是⽤来存储多个数据的。</p><div>数组的缺点是⼀旦声明之后，⻓度就不可变了；同时，声明数组时的数据类型也决定了该数组存储的数据的类型；⽽且，数组存储的数据是有序的、可重复的，特点单⼀。 但是集合提⾼了数据存储的灵活性，Java 集合不仅可以⽤来存储不同类型不同数量的对象，还可以保存具有映射关系的数据</div>', '2023-07-26 21:59:16', 1, '1000002', 'MIAO?', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10072, '遇到过元空间溢出吗', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"744673579\" _msthash=\"755\">元空间在本地内存上，默认是没有上限的，不加限制出了问题会影响整个服务器的，所以也是比较危险的。-XX：MaxMetaspaceSize 可以指定最大值。</p><p><br><font _mstmutation=\"1\" _msttexthash=\"515281286\" _msthash=\"754\">一般使用动态代理的框架会生成很多 Java 类，如果占用空间超出了我们的设定最大值，会发生元空间溢出。</font></p>', '2023-07-26 21:59:28', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10073, '遇到过堆外内存溢出吗', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"1905423858\" _msthash=\"762\">Unsafe 类申请内存、JNI 对内存进行操作、Netty 调用操作系统的 malloc 函数的直接内存，这些内存是不受 JVM 控制的，不加限制的使用，很容易发生溢出。这种情况有个显著特点，dump 的堆文件信息正常甚至很小。</p><p _msttexthash=\"362125647\" _msthash=\"761\">-XX：MaxDirectMemorySize 可以指定最大直接内存，但限制不住所有堆外内存的使用</p>', '2023-07-26 22:00:00', 1, '1000006', '十七', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10074, '谈谈你知道的垃圾回收算法', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"90607998\" _msthash=\"782\">判断对象是否可回收的算法有两种：</p><ul><li><p _msttexthash=\"61684740\" _msthash=\"780\">引用计数GC，引用计数算法</p></li><li><p _msttexthash=\"53615341\" _msthash=\"781\">跟踪GC，可达性分析算法</p></li></ul><p _msttexthash=\"1351929813\" _msthash=\"779\">JVM 各厂商基本都是用的 Tracing GC 实现<br _istranslated=\"1\"><br _istranslated=\"1\">大部分垃圾收集器遵从了分代收集（Generational Collection）理论。<br _istranslated=\"1\">针对新生代与老年代回收垃圾内存的特点，提出了 3 种不同的算法：</p><p _msttexthash=\"67910843\" _msthash=\"778\">1、标记-清除算法（Mark-Sweep）</p><p _msttexthash=\"305676839\" _msthash=\"777\">标记需回收对象，统一回收；或标记存活对象，回收未标记对象。<br>缺点：</p><ul><li><p _msttexthash=\"108294082\" _msthash=\"775\">大量对象需要标记与清除时，效率不高</p></li><li><p _msttexthash=\"208531843\" _msthash=\"776\">标记、清除产生的大量不连续内存碎片，导致无法分配大对象</p></li></ul><p _msttexthash=\"63240151\" _msthash=\"774\">2、标记-复制算法（Mark-Copy）</p><p _msttexthash=\"797476069\" _msthash=\"773\">可用内存等分两块，使用其中一块 A，用完将存活的对象复制到另外一块 B，一次性清空 A，然后改分配新对象到 B，如此循环。<br>缺点：</p><ul><li><p _msttexthash=\"435481436\" _msthash=\"771\">不适合大量对象不可回收的情况，换句话说就是仅适合大量对象可回收，少量对象需复制的区域</p></li><li><p _msttexthash=\"128695671\" _msthash=\"772\">只能使用内存容量的一半，浪费较多内存空间</p></li></ul><p _msttexthash=\"64634414\" _msthash=\"770\">3、标记整理算法（Mark-Compact）</p><p _msttexthash=\"354476486\" _msthash=\"769\">标记存活的对象，统一移到内存区域的一边，清空占用内存边界以外的内存。<br>缺点：</p><ul><li><p _msttexthash=\"143336544\" _msthash=\"768\">移动大量存活对象并更新引用，需暂停程序运行</p></li></ul>', '2023-07-26 22:00:25', 1, '1000006', '十七', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10075, '谈谈你知道的垃圾收集器', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"21969259\" _msthash=\"701\"><strong _istranslated=\"1\">串行</strong><br _istranslated=\"1\">特点：</p><ul><li><p _msttexthash=\"17558671\" _msthash=\"696\">JDK 1.3 开始提供</p></li><li><p _msttexthash=\"20188493\" _msthash=\"697\">新生代收集器</p></li><li><p _msttexthash=\"104639184\" _msthash=\"698\">无线程交互开销，单线程收集效率最高</p></li><li><p _msttexthash=\"80740595\" _msthash=\"699\">进行垃圾收集时需要暂停用户线程</p></li><li><p _msttexthash=\"68947138\" _msthash=\"700\">适用于客户端，小内存堆的回收</p></li></ul><p _msttexthash=\"23013042\" _msthash=\"695\"><strong>ParNew</strong><br>特点：</p><ul><li><p _msttexthash=\"72815938\" _msthash=\"691\">是 Serial 收集器的多线程并行版</p></li><li><p _msttexthash=\"64695111\" _msthash=\"692\">JDK 7 之前首选的新生代收集器</p></li><li><p _msttexthash=\"284508679\" _msthash=\"693\">第一款支持并发的收集器，首次实现垃圾收集线程与用户线程基本上同时工作</p></li><li><p _msttexthash=\"68262792\" _msthash=\"694\">除 Serial 外，只有它能与 CMS 配合</p></li></ul><p _msttexthash=\"38525838\" _msthash=\"690\"><strong _istranslated=\"1\">平行清道夫</strong><br _istranslated=\"1\">特点：</p><ul><li><p _msttexthash=\"20188493\" _msthash=\"684\">新生代收集器</p></li><li><p _msttexthash=\"21765107\" _msthash=\"685\">标记-复制算法</p></li><li><p _msttexthash=\"31829707\" _msthash=\"686\">多线程并行收集器</p></li><li><p _msttexthash=\"101221367\" _msthash=\"687\">追求高吞吐量，即最小的垃圾收集时间</p></li><li><p _msttexthash=\"108958421\" _msthash=\"688\">可以配置最大停顿时间、垃圾收集时间占比</p></li><li><p _msttexthash=\"281907301\" _msthash=\"689\">支持开启垃圾收集自适应调节策略，追求适合的停顿时间或最大的吞吐量</p></li></ul><p _msttexthash=\"27882712\" _msthash=\"683\"><strong>Serial Old</strong><br>特点：</p><ul><li><p _msttexthash=\"121633343\" _msthash=\"681\">与 Serial 类似，是 Serial 收集器的老年代版本</p></li><li><p _msttexthash=\"33004634\" _msthash=\"682\">使用标记-整理算法</p></li></ul><p _msttexthash=\"27005446\" _msthash=\"680\"><strong _istranslated=\"1\">并行旧</strong><br _istranslated=\"1\">特点：</p><ul><li><p _msttexthash=\"15120599\" _msthash=\"675\">JDK 6 开始提供</p></li><li><p _msttexthash=\"44557565\" _msthash=\"676\">Parallel Scavenge 的老年代版</p></li><li><p _msttexthash=\"35988537\" _msthash=\"677\">支持多线程并发收集</p></li><li><p _msttexthash=\"23415665\" _msthash=\"678\">标记-整理算法</p></li><li><p _msttexthash=\"177778692\" _msthash=\"679\">Parallel Scavenge + Parallel Old 是一个追求高吞吐量的组合</p></li></ul><p _msttexthash=\"18147753\" _msthash=\"674\"><strong>CMS</strong><br>特点：</p><ul><li><p _msttexthash=\"24958869\" _msthash=\"667\">标记-清除算法</p></li><li><p _msttexthash=\"44191147\" _msthash=\"668\">追求最短回收停顿时间</p></li><li><p _msttexthash=\"95593472\" _msthash=\"669\">多应用于关注响应时间的 B/S 架构的服务端</p></li><li><p _msttexthash=\"27987505\" _msthash=\"670\">并发收集、低停顿</p></li><li><p _msttexthash=\"157485757\" _msthash=\"671\">占用一部分线程资源，应用程序变慢，吞吐量下降</p></li><li><p _msttexthash=\"65339690\" _msthash=\"672\">无法处理浮动垃圾，可能导致 Full GC</p></li><li><p _msttexthash=\"27376037\" _msthash=\"673\">内存碎片化问题</p></li></ul><p _msttexthash=\"16530410\" _msthash=\"666\"><strong>G1</strong><br>特点：</p><ul><li><p _msttexthash=\"44914818\" _msthash=\"652\">JDK 6 开始实验，JDK 7 商用</p></li><li><p _msttexthash=\"36976043\" _msthash=\"653\">面向服务端，JDK 9 取代 Parallel Scavenge + Parallel Old</p></li><li><p _msttexthash=\"63276798\" _msthash=\"654\">结合标记-整理、标记-复制算法</p></li><li><p _msttexthash=\"56806464\" _msthash=\"655\">首创局部内存回收设计思路</p></li><li><p _msttexthash=\"123375330\" _msthash=\"656\">基于 Region 内存布局，采用不同策略实现分代</p></li><li><p _msttexthash=\"123540781\" _msthash=\"657\">不再使用固定大小、固定数量的堆内存分代区域划分</p></li><li><p _msttexthash=\"37765182\" _msthash=\"658\">优先回收价收益最大的 Region</p></li><li><p _msttexthash=\"68307759\" _msthash=\"659\">单个或多个 Humongous 区域存放大对象</p></li><li><p _msttexthash=\"72542197\" _msthash=\"660\">使用记忆集解决跨 Region 引用问题</p></li><li><p _msttexthash=\"161226754\" _msthash=\"661\">复杂的卡表实现，导致更高的内存占用，堆的 10%～20%</p></li><li><p _msttexthash=\"28656615\" _msthash=\"662\">全功能垃圾收集器</p></li><li><p _msttexthash=\"206618373\" _msthash=\"663\">追求有限的时间内最高收集效率、延迟可控的情况下最高吞吐量</p></li><li><p _msttexthash=\"159821675\" _msthash=\"664\">追求应付内存分配速率，而非一次性清掉所有垃圾内存</p></li><li><p _msttexthash=\"22234251\" _msthash=\"665\">适用于大内存堆</p></li></ul><p _msttexthash=\"29512691\" _msthash=\"651\"><strong>Shenandoah</strong><br>特点：</p><ul><li><p _msttexthash=\"61643621\" _msthash=\"648\">追求低延迟，停顿 10 毫秒以内</p></li><li><p _msttexthash=\"49832172\" _msthash=\"649\">OpenJDK 12 新特性，RedHat 提供</p></li><li><p _msttexthash=\"188053294\" _msthash=\"650\">连接矩阵代替记忆集，降低内存使用与伪共享问题出现概率</p></li></ul><p _msttexthash=\"18147350\" _msthash=\"647\"><strong>ZGC</strong><br>特点：</p><ul><li><p _msttexthash=\"70986253\" _msthash=\"640\">JDK 11 新加的实验性质的收集器</p></li><li><p _msttexthash=\"61643621\" _msthash=\"641\">追求低延迟，停顿 10 毫秒以内</p></li><li><p _msttexthash=\"24011832\" _msthash=\"642\">基于 Region 内存布局</p></li><li><p _msttexthash=\"11205922\" _msthash=\"643\">未设分代</p></li><li><p _msttexthash=\"191663316\" _msthash=\"644\">读屏障、染色指针、内存多重映射实现可并发的标记-整理算法</p></li><li><p _msttexthash=\"687046945\" _msthash=\"645\">染色指针和内存多重映射设计精巧，解决部分性能问题，但降低了可用最大内存、操作系统受限、只支持 32 位、不支持压缩指针等</p></li><li><p _msttexthash=\"32431217\" _msthash=\"646\">成绩亮眼、性能彪悍</p></li></ul>', '2023-07-26 22:01:38', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10076, '生产环境用的什么JDK？如何配置的垃圾收集器？', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"147433\" _msthash=\"787\">Oracle JDK 1.8</p><p><br><font _mstmutation=\"1\" _msttexthash=\"265934097\" _msthash=\"786\">JDK 1.8 中有 Serial、ParNew、Parallel Scavenge、Serial Old、Parallel Old、CMS、G1，默认使用 Parallel Scavenge + Parallel Old。</font></p><ul><li><p _msttexthash=\"535286830\" _msthash=\"782\">Serial 系列是单线程垃圾收集器，处理效率很高，适合小内存、客户端场景使用，使用参数 -XX:+UseSerialGC 显式启用。</p></li><li><p _msttexthash=\"4154141316\" _msthash=\"783\">Parallel 系列相当于并发版的 Serial，追求高吞吐量，适用于较大内存并且有多核CPU的环境，默认或显式使用参数 -XX:+UseParallelGC 启用。可以使用 -XX:MaxGCPauseMillis 参数指定最大垃圾收集暂停毫秒数，收集器会尽量达到目标；使用 -XX:GCTimeRatio 指定期望吞吐量大小，默认 99，用户代码运行时间:垃圾收集时间=99:1。</p></li><li><p _msttexthash=\"1459472443\" _msthash=\"784\">CMS，追求垃圾收集暂停时间尽可能短，适用于服务端较大内存且多 CPU 的应用，使用参数 -XX:+UseConcMarkSweepGC 显式开启，会同时作用年轻代与老年代，但有浮动垃圾和内存碎片化的问题。</p></li><li><p _msttexthash=\"3462979078\" _msthash=\"785\">G1，主要面向服务端应用的垃圾收集器，适用于具有大内存的多核 CPU 的服务器，追求较小的垃圾收集暂停时间和较高的吞吐量。首创局部内存回收设计思路，采用不同策略实现分代，不再使用固定大小、固定数量的堆内存分代区域划分，而是基于 Region 内存布局，优先回收价收益最大的 Region。使用参数 -XX:+UseG1GC 开启。</p></li></ul><p _msttexthash=\"122207033\" _msthash=\"781\">我们生产环境使用了 G1 收集器，相关配置如下</p><ul><li _msttexthash=\"73814\" _msthash=\"773\">-Xmx12g</li><li _msttexthash=\"73164\" _msthash=\"774\">-Xms12g</li><li _msttexthash=\"143715\" _msthash=\"775\">-XX:+UseG1GC</li><li _msttexthash=\"1147588\" _msthash=\"776\">-XX:InitiatingHeapOccupancyPercent=45</li><li _msttexthash=\"490074\" _msthash=\"777\">-XX:MaxGCPauseMillis=200</li><li _msttexthash=\"437541\" _msthash=\"778\">-XX:MetaspaceSize=256m</li><li _msttexthash=\"548431\" _msthash=\"779\">-XX:MaxMetaspaceSize=256m</li><li><font _mstmutation=\"1\" _msttexthash=\"677612\" _msthash=\"780\">-XX:MaxDirectMemorySize=512m</font><br></li></ul><p _msttexthash=\"27747590\" _msthash=\"772\">-XX:G1HeapRegionSize 未指定</p><p _msttexthash=\"21918533\" _msthash=\"771\">核心思路：</p><ul><li _msttexthash=\"81831815\" _msthash=\"767\">每个内存区域设置上限，避免溢出</li><li _msttexthash=\"136410053\" _msthash=\"768\">堆设置为操作系统的 70%左右，超过 8 G，首选 G1</li><li _msttexthash=\"203854560\" _msthash=\"769\">根据老年代对象提升速度，调整新生代与老年代之间的内存比例</li><li _msttexthash=\"230253777\" _msthash=\"770\">等过 GC 信息，针对项目敏感指标优化，比如访问延迟、吞吐量等</li></ul><p></p>', '2023-07-26 22:02:18', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10077, '如何查看 JVM 当前使用的是什么垃圾收集器？', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"363862031\" _msthash=\"813\">-XX：+PrintCommandLineFlags 参数可以打印出所选垃圾收集器和堆空间大小等设置</p><p _msttexthash=\"263982160\" _msthash=\"812\">如果开启了 GC 日志详细信息，里面也会包含各代使用的垃圾收集器的简称</p>', '2023-07-26 22:02:41', 1, '1000006', '十七', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10078, '如何开启和查看 GC 日志？', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"64682085\" _msthash=\"836\">常见的 GC 日志开启参数包括：</p><ul><li _msttexthash=\"101928515\" _msthash=\"824\">-Xloggc：文件名，指定日志文件路径</li><li _msttexthash=\"68378141\" _msthash=\"825\">-XX：+PrintGC，打印 GC 基本信息</li><li _msttexthash=\"95202042\" _msthash=\"826\">-XX：+PrintGCDetails，打印 GC 详细信息</li><li _msttexthash=\"92831323\" _msthash=\"827\">-XX：+PrintGCTimeStamps，打印 GC 时间戳</li><li _msttexthash=\"116469951\" _msthash=\"828\">-XX：+PrintGCDateStamps，打印 GC 日期与时间</li><li _msttexthash=\"268801533\" _msthash=\"829\">-XX：+PrintHeapAtGC，打印 GC 前后的堆、方法区、元空间可用容量变化</li><li _msttexthash=\"618157215\" _msthash=\"830\">-XX：+PrintTenuringDistribution，打印熬过收集后剩余对象的年龄分布信息，有助于 MaxTenuringThreshold 参数调优设置</li><li _msttexthash=\"664698684\" _msthash=\"831\">-XX：+PrintAdaptiveSizePolicy，打印收集器自动设置堆空间各分代区域大小、收集目标等自动调节的相关信息</li><li _msttexthash=\"296995491\" _msthash=\"832\">-XX：+PrintGCApplicationConcurrentTime，打印 GC 过程中用户线程并发时间</li><li _msttexthash=\"272510030\" _msthash=\"833\">-XX：+PrintGCApplicationStopTime，打印 GC 过程中用户线程停顿时间</li><li _msttexthash=\"99487245\" _msthash=\"834\">-XX：+HeapDumpOnOutOfMemoryError，堆 oom 时自动 dump</li><li><font _mstmutation=\"1\" _msttexthash=\"93170870\" _msthash=\"835\">-XX：HeapDumpPath，堆 oom 时 dump 文件路径</font><br></li></ul><p><font _mstmutation=\"1\" _msttexthash=\"284093537\" _msthash=\"823\">Java 9 JVM 日志模块进行了重构，参数格式发生变化，这个需要知道。</font><br></p><p><font _mstmutation=\"1\" _msttexthash=\"1137785428\" _msthash=\"822\">GC 日志输出的格式，会随着上面的参数不同而发生变化。关注各个分代的内存使用情况、垃圾回收次数、垃圾回收的原因、垃圾回收占用的时间、吞吐量、用户线程停顿时间。</font><br></p><p><font _mstmutation=\"1\" _msttexthash=\"236015091\" _msthash=\"821\">借助工具可视化工具可以更方便的分析，在线工具 GCeasy;离线版可以使用 GCViewer。</font><br></p><p _msttexthash=\"200358054\" _msthash=\"820\">如果现场环境不允许，可以使用 JDK 自带的 jstat 工具监控观察 GC 情况。</p>', '2023-07-26 22:03:13', 1, '1000006', '十七', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10079, 'JVM 监控与分析工具你用过哪些？介绍一下', 10011, 'Java', 2, NULL, '<p><br></p><ul><li _msttexthash=\"142382188\" _msthash=\"857\">jps，显示系统所有虚拟机进程信息的命令行工具</li><li _msttexthash=\"138495240\" _msthash=\"858\">jstat，监视分析虚拟机运行状态的命令行工具</li><li _msttexthash=\"122361798\" _msthash=\"859\">jinfo，查看和调整虚拟机参数的命令行工具</li><li _msttexthash=\"133701451\" _msthash=\"860\">jmap，生成虚拟机堆内存转储快照的命令行工具</li><li _msttexthash=\"165913800\" _msthash=\"861\">jhat，显示和分析虚拟机的转储快照文件的命令行工具</li><li _msttexthash=\"132739724\" _msthash=\"862\">jstack，生成虚拟机的线程快照的命令行工具</li><li _msttexthash=\"77217777\" _msthash=\"863\">jcmd，虚拟机诊断工具，JDK 7 提供</li><li _msttexthash=\"220102428\" _msthash=\"864\">jhsdb，基于服务性代理实现的进程外可视化调试工具，JDK 9 提供</li><li _msttexthash=\"123542211\" _msthash=\"865\">JConsole，基于JMX的可视化监视和管理工具</li><li _msttexthash=\"129652341\" _msthash=\"866\">jvisualvm，图形化虚拟机使用情况的分析工具</li><li _msttexthash=\"163430657\" _msthash=\"867\">Java Mission Control，监控和管理 Java 应用程序的工具</li></ul>', '2023-07-26 22:03:57', 1, '1000006', '十七', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10080, 'JIT 是什么', 10011, 'Java', 2, NULL, '<p><font _mstmutation=\"1\" _msttexthash=\"1899946516\" _msthash=\"881\">​<span style=\"color: rgb(17, 34, 51);font-size: 17px\" _mstmutation=\"1\">Just In Time Compiler 的简称，即时编译器。为了提高热点代码的执行效率，在运行时，虚拟机将会把这些代码编译成与本地平台相关的机器码，并进行各种层次的优化，完成这个任务的编译器就是 JIT。</span>​</font><br></p>', '2023-07-26 22:07:34', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10081, '谈谈双亲委派模型', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"611674037\" _msthash=\"904\">家长委托模式，这里的 Parents 翻译成双亲有点不妥，类加载向上传递的过程中只有单亲;parents 更多的是多级向上的意思。</p><p _msttexthash=\"1217227297\" _msthash=\"903\">除了顶层的启动类加载器，其他的类加载器在加载之前，都会委派给它的父加载器进行加载，一层层向上传递，直到所有父类加载器都无法加载，自己才会加载该类。</p><p _msttexthash=\"669660693\" _msthash=\"902\">双亲委派模型，更好地解决了各个类加载器协作时基础类的一致性问题，避免类的重复加载；防止核心API库被随意篡改。</p><p><br><font _mstmutation=\"1\" _msttexthash=\"6182904\" _msthash=\"901\">JDK 9 之前</font></p><ul><li><p _msttexthash=\"123986889\" _msthash=\"897\">启动类加载器（Bootstrp ClassLoader），加载&nbsp;/lib/rt.jar、-Xbootclasspath</p></li><li><p _msttexthash=\"185614650\" _msthash=\"898\">扩展类加载器（Extension ClassLoader）sun.misc.Launcher$ExtClassLoader，加载 /lib/ext、java.ext.dirs</p></li><li><p _msttexthash=\"302104803\" _msthash=\"899\">应用程序类加载器（Application ClassLoader，sun.misc.Launcher$AppClassLoader），加载 CLASSPTH、-classpath、-cp、Manifest</p></li><li><p _msttexthash=\"24446149\" _msthash=\"900\">自定义类加载器</p></li></ul><p _msttexthash=\"730138409\" _msthash=\"896\">JDK 9 开始 Extension ClassLoader 被 Platform ClassLoader 取代，启动类加载器、平台类加载器、应用程序类加载器全都继承于 jdk.internal.loader.BuiltinClassLoader</p>', '2023-07-26 22:08:24', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10082, '列举一些你知道的打破双亲委派机制的例子。为什么要打破', 10011, 'Java', 3, NULL, '<p><br></p><ul><li><p _msttexthash=\"5618966054\" _msthash=\"917\">JNDI 通过引入线程上下文类加载器，可以在 Thread.setContextClassLoader 方法设置，默认是应用程序类加载器，来加载 SPI 的代码。有了线程上下文类加载器，就可以完成父类加载器请求子类加载器完成类加载的行为。打破的原因，是为了 JNDI 服务的类加载器是启动器类加载，为了完成高级类加载器请求子类加载器（即上文中的线程上下文加载器）加载类。</p></li><li><p _msttexthash=\"1118362284\" _msthash=\"918\">Tomcat，应用的类加载器优先自行加载应用目录下的 class，并不是先委派给父加载器，加载不了才委派给父加载器。打破的目的是为了完成应用间的类隔离。</p></li><li><p _msttexthash=\"1551201977\" _msthash=\"919\">OSGi，实现模块化热部署，为每个模块都自定义了类加载器，需要更换模块时，模块与类加载器一起更换。其类加载的过程中，有平级的类加载器加载行为。打破的原因是为了实现模块热替换。</p></li><li><p _msttexthash=\"4322487117\" _msthash=\"920\">JDK 9，Extension ClassLoader 被 Platform ClassLoader 取代，当平台及应用程序类加载器收到类加载请求，在委派给父加载器加载前，要先判断该类是否能够归属到某一个系统模块中，如果可以找到这样的归属关系，就要优先委派给负责那个模块的加载器完成加载。打破的原因，是为了添加模块化的特性。</p></li></ul>', '2023-07-26 22:08:48', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10083, '说一下垃圾分代收集的过程', 10011, 'Java', 3, '', '<p>分为新生代和老年代，新生代默认占总空间的 1/3，老年代默认占 2/3。<br></p><p>新生代使用复制算法，有 3 个分区：Eden、To Survivor、From Survivor，它们的默认占比是 8:1:1。<br>当新生代中的 Eden 区内存不足时，就会触发 Minor GC，过程如下：</p><ul><li><p>在 Eden 区执行了第一次 GC 之后，存活的对象会被移动到其中一个 Survivor 分区；</p></li><li><p>Eden 区再次 GC，这时会采用复制算法，将 Eden 和 from 区一起清理，存活的对象会被复制到 to 区；</p></li><li><p>移动一次，对象年龄加 1，对象年龄大于一定阀值会直接移动到老年代</p></li><li><p>Survivor 区相同年龄所有对象大小的总和 &gt; (Survivor 区内存大小 * 这个目标使用率)时，大于或等于该年龄的对象直接进入老年代。其中这个使用率通过 -XX:TargetSurvivorRatio 指定，默认为 50%</p></li><li><p>Survivor 区内存不足会发生担保分配</p></li><li><p>超过指定大小的对象可以直接进入老年代</p></li><li><p>Major GC，指的是老年代的垃圾清理，但并未找到明确说明何时在进行Major GC</p></li><li><p>FullGC，整个堆的垃圾收集，触发条件：<br>1.每次晋升到老年代的对象平均大小&gt;老年代剩余空间<br>2.MinorGC后存活的对象超过了老年代剩余空间<br>3.元空间不足<br>4.System.gc() 可能会引起<br>5.CMS GC异常，promotion failed:MinorGC时，survivor空间放不下，对象只能放入老年代，而老年代也放不下造成；concurrent mode failure:GC时，同时有对象要放入老年代，而老年代空间不足造成<br>6.堆内存分配很大的对象</p></li></ul><p></p>', '2023-07-26 22:09:17', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10084, '如何找到死锁的线程', 10011, 'Java', 2, '', '<p>死锁的线程可以使用 jstack 指令 dump 出 JVM 的线程信息。<br></p><p>jstack -l &lt;pid&gt; &gt; threads.txt<br>有时候需要dump出现异常，可以加上 -F 指令，强制导出<br>jstack -F -l &lt;pid&gt; &gt; threads.txt</p><p>如果存在死锁，一般在文件最后会提示找到 deadlock 的数量与线程信息</p>', '2023-07-26 22:09:41', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10085, 'invokedynamic 指令是干什么的', 10011, 'Java', 2, NULL, '<p><span style=\"color: rgb(17, 34, 51);font-size: 17px\" _msttexthash=\"841822384\" _msthash=\"957\">Java 7 开始，新引入的字节码指令，可以实现一些动态类型语言的功能。Java 8 的 Lambda 表达式就是通过 invokedynamic 指令实现，使用方法句柄实现。</span><br></p>', '2023-07-26 22:10:06', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10086, '什么是方法内联', 10011, 'Java', 1, '', '<p>为了减少方法调用的开销，可以把一些短小的方法，纳入到目标方法的调用范围之内，这样就少了一次方法调用，提升速度<br></p>', '2023-07-26 22:10:26', 1, '1000006', '十七', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10087, '什么是逃逸分析', 10011, 'Java', 3, '', '<p>分析对象动态作用域<br></p><ul><li><p>当一个对象在方法里面被定义后，它可能被外部方法所引用，例如作为调用参数传递到其他方法中，这种称为方法逃逸；</p></li><li><p>被外部线程访问到，譬如赋值给可以在其他线程中访问的实例变量，这种称为线程逃逸；</p></li><li><p>从不逃逸</p></li></ul><p>如果能证明一个对象不会逃逸到方法或线程之外，或者逃逸程度比较低（只逃逸出方法而不会逃逸出线程），则可能为这个对象实例采取不同程度的优化，如栈上分配、标量替换、同步消除。</p>', '2023-07-26 22:10:48', 1, '1000006', '十七', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10088, '描述一下什么情况下，对象会从年轻代进入老年代', 10011, 'Java', 3, '', '<ul><li><p>对象的年龄超过一定阀值，-XX：MaxTenuringThreshold 可以指定该阀值</p></li><li><p>动态对象年龄判定，有的垃圾回收算法，比如 G1，并不要求 age 必须达到 15 才能晋升到老年代，它会使用一些动态的计算方法</p></li><li><p>大小超出某个阀值的对象将直接在老年代上分配，值默认为 0，意思是全部首选 Eden 区进行分配，-XX：PretenureSizeThreshold 可以指定该阀值，部分收集器不支持</p></li><li><p>分配担保，当 Survivor 空间不够的时候，则需要依赖其他内存（指老年代）进行分配担保，这个时候，对象也会直接在老年代上分配</p></li></ul>', '2023-07-26 22:11:13', 1, '1000006', '十七', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10089, 'safepoint 是什么', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"464322404\" _msthash=\"993\">为了减少对象引用的扫描，使用 OopMap 的数据结构在特定的位置记录下栈里和寄存器里哪些位置是引用;</p><p _msttexthash=\"406801421\" _msthash=\"992\">但为了避免给每条指令都生成 OopMap 记录占用大量内存的问题，只在特定位置记录这些信息。</p><p _msttexthash=\"2528038253\" _msthash=\"991\">安全点的选定既不能太少以至于让收集器等待时间过长，也不能太过频繁以至于过分增大运行时的内存负荷。安全点位置的选取基本上是以\"是否具有让程序长时间执行的特征\"为标准进行选定的，如方法调用、循环跳转、异常跳转等都属于指令序列复用。</p>', '2023-07-26 22:11:37', 1, '1000006', '十七', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10090, 'MinorGC、MajorGC、FullGC 什么时候发生', 10011, 'Java', 2, NULL, '<ul><li><p _msttexthash=\"92866839\" _msthash=\"1002\">MinorGC 在年轻代空间不足的时候发生</p></li><li><p _msttexthash=\"150299357\" _msthash=\"1003\">MajorGC 指的是老年代的 GC，出现 MajorGC 一般经常伴有 MinorGC</p></li><li><p _msttexthash=\"542654918\" _msthash=\"1004\">FullGC 老年代无法再分配内存;元空间不足;显示调用 System.gc;像 CMS 一类的垃圾回收器，在 MinorGC 出现 promotionfailure 时也会发生 FullGC</p></li></ul>', '2023-07-26 22:12:00', 1, '1000006', '十七', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10091, '可以描述一下 class 文件的结构吗', 10011, 'Java', 2, NULL, '<p><br></p><p _msttexthash=\"769471495\" _msthash=\"1015\">Class 文件包含了 Java 虚拟机的指令集、符号表、辅助信息的字节码（Byte Code），是实现跨操作系统和语言无关性的基石之一。</p><p><br><font _mstmutation=\"1\" _msttexthash=\"607930505\" _msthash=\"1014\">一个 Class 文件定义了一个类或接口的信息，是以 8 个字节为单位，没有分隔符，按顺序紧凑排在一起的二进制流。</font></p><p><br><font _mstmutation=\"1\" _msttexthash=\"118504841\" _msthash=\"1013\">用 \"无符号数\" 和 \"表\" 组成的伪结构来存储数据。</font></p><ul><li><p _msttexthash=\"482915732\" _msthash=\"1011\">无符号数：基本数据类型，用来描述数字、索引引用、数量值、字符串值，如u1、u2 分别表示 1 个字节、2 个字节</p></li><li><p _msttexthash=\"135355402\" _msthash=\"1012\">表：无符号数和其他表组成，命名一般以 “_info” 结尾</p></li></ul>', '2023-07-26 22:12:25', 1, '1000006', '十七', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10092, '说说 JVM 如何执行 class 中的字节码', 10011, 'Java', 3, NULL, '<p><br></p><p _msttexthash=\"997785321\" _msthash=\"1028\">JVM 先加载包含字节码的 class 文件，存放在方法区，实际运行时，虚拟机会执行方法区内的代码。Java 虚拟机在内存中划分出栈和堆来存储运行时的数据。</p><p _msttexthash=\"1371446388\" _msthash=\"1027\">运行过程中，每当调用进入 Java 方法，都会在 Java 方法栈中生成一个栈帧，用来支持虚拟机进行方法的调用与执行，包含了局部变量表、操作数栈、动态链接、方法返回地址等信息。</p><p _msttexthash=\"569303930\" _msthash=\"1026\">当退出当前执行的方法时，不管正常返回还是异常返回，Java 虚拟机均会弹出当前线程的当前栈帧，并将之舍弃。</p><p _msttexthash=\"416916682\" _msthash=\"1025\">方法的调用，需要通过解析完成符号引用到直接引用；通过分派完成动态找到被调用的方法。</p><p _msttexthash=\"9379675162\" _msthash=\"1024\">从硬件角度来看，Java 字节码无法直接执行。因此，Java 虚拟机需要将字节码翻译成机器码。翻译过程由两种形式：第一种是解释执行，即将遇到的字节一边码翻译成机器码一边执行；第二种是即时编译(Just-In-Time compilation,JIT)，即将一个方法中包含的所有字节码编译成机器码后再执行。在 HotSpot 里两者都有，解释执行在启动时节约编译时间执行速度较快；随着时间的推移，编译器逐渐会返回作用，把越来越多的代码编译成本地代码后，可以获取更高的执行效率。</p>', '2023-07-26 22:13:09', 1, '1000006', '十七', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10093, '生产环境 CPU 占用过高，你如何解决？', 10011, 'Java', 3, NULL, '<p><br></p><ol><li><p _msttexthash=\"86846825\" _msthash=\"1039\">top + H 指令找出占用 CPU 最高的进程的 pid</p></li><li><p _msttexthash=\"7448246\" _msthash=\"1040\">顶部 -H -p</p><font _mstmutation=\"1\" _msttexthash=\"195638950\" _msthash=\"1041\">在该进程中找到，哪些线程占用的 CPU 最高的线程，记录下 tid</font></li><li><p _msttexthash=\"442027391\" _msthash=\"1042\">jstack -l &gt; threads.txt，导出进程的线程栈信息到文本，导出出现异常的话，加上 -F 参数</p></li><li><p _msttexthash=\"1015516047\" _msthash=\"1043\">将 tid 转换为十六进制，在 threads.txt 中搜索，查到对应的线程代码执行栈，在代码中查找占 CPU 比较高的原因。其中 tid 转十六进制，可以借助 Linux 的 printf “%x” tid 指令</p></li></ol><p _msttexthash=\"457445599\" _msthash=\"1038\">我用上述方法查到过，jvm 多条线程疯狂 full gc 导致的CPU 100% 的问题和 JDK1.6 HashMap 并发 put 导致线程 CPU 100% 的问题</p>', '2023-07-26 22:13:32', 1, '1000006', '十七', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10094, '生产环境服务器变慢，如何诊断处理？', 10011, 'Java', 4, NULL, '<p><br></p><p _msttexthash=\"1021141602\" _msthash=\"1057\">使用 top 指令，服务器中 CPU 和 内存的使用情况，-H 可以按 CPU 使用率降序，-M 内存使用率降序。排除其他进程占用过高的硬件资源，对 Java 服务造成影响。</p><p><br><font _mstmutation=\"1\" _msttexthash=\"789633091\" _msthash=\"1056\">如果发现 CPU 使用过高，可以使用 top 指令查出 JVM 中占用 CPU 过高的线程，通过 jstack 找到对应的线程代码调用，排查出问题代码。</font></p><p><br><font _mstmutation=\"1\" _msttexthash=\"4109518153\" _msthash=\"1055\">如果发现内存使用率比较高，可以 dump 出 JVM 堆内存，然后借助 MAT 进行分析，查出大对象或者占用最多的对象来自哪里，为什么会长时间占用这么多;如果 dump 出的堆内存文件正常，此时可以考虑堆外内存被大量使用导致出现问题，需要借助操作系统指令 pmap 查出进程的内存分配情况、gdb dump 出具体内存信息、perf 查看本地函数调用等。</font></p><p><br><font _mstmutation=\"1\" _msttexthash=\"6110446420\" _msthash=\"1054\">如果 CPU 和 内存使用率都很正常，那就需要进一步开启 GC 日志，分析用户线程暂停的时间、各部分内存区域 GC 次数和时间等指标，可以借助 jstat 或可视化工具 GCeasy 等，如果问题出在 GC 上面的话，考虑是否是内存不够、根据垃圾对象的特点进行参数调优、使用更适合的垃圾收集器;分析 jstack 出来的各个线程状态。如果问题实在比较隐蔽，考虑是否可以开启 jmx，使用 visualmv 等可视化工具远程监控与分析。</font></p>', '2023-07-26 22:14:00', 1, '1000006', '十七', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10095, 'for in 和 for of有什么区别', 10009, 'JavaScript', 1, '', '<p>适用不同的数据类型：可枚举vs可迭代</p><p>for in用于可枚举的数据：如对象、数组、字符串，得到key。</p><p>for of用于可迭代的数据：如数组、字符串、Map、Set、generator，得到value。</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10096, '行内元素 块级元素 空(void)元素有哪些', 10013, 'CSS+HTML', 1, '', '<p>每一个元素都有默认的 display 属性值， 比如 div 元素, 它的默认 display 属性值为 \"block\", 称为“块级”元素(block-level); 而 span 元素的默认 display 属性值为 \"inline\", 称为 \"行内\" 元素 。</p><p>1. 行内元素(11): a、b、span、img、input、strong、select、label、em、button、textarea&nbsp;</p><p>2. 块级元素(9): div、ul、li、dl、dt、dd、p、h1-h6、blockquote&nbsp;</p><p>3. 空元素(6): 即系没有内容的HTML元素, 例如: br、meta、hr、link、input、img&nbsp;</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 0, 0, NULL);
INSERT INTO `question_info` VALUES (10097, '页面导入样式时，使用link和@import的区别', 10013, 'CSS+HTML', 1, '', '<p>1. link是HTML方式，&nbsp;@import是CSS方式</p><p>2. link最大限度支持并行下载，@import过多嵌套导致串行下载，出现FOUC(文档样式短暂失效)</p><p>3. link可以通过rel=\"alternate stylesheet\"指定候选样式</p><p>4. 浏览器对link支持早于@import，可以使用@import对老浏览器隐藏样式</p><p>5. @import必须在样式规则之前，可以在css文件中引用其他文件</p><p><strong>6. 总体来说：link优于@import</strong></p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10098, 'title与h1、b与string、i与em的区别', 10013, 'CSS+HTML', 1, '', '<p><strong>1. title</strong> 是 HTML 中的一个元素，用于定义网页的标题。它通常在  标签内使用，并显示在浏览器的标题栏或选项卡中。一个网页只能有一个 title 标签。</p><p><strong>2. h1</strong> 是 HTML 中的一个元素，用于定义标题。它是标题的最高级别，表示最重要的标题。一个网页通常只有一个 h1 标签，用于描述整个页面的主题或内容。h1 标签可以用于改善页面的可读性和搜索引擎优化（SEO）。</p><p><strong>3. b </strong>是 HTML 中的一个元素，用于加粗文本。它是一个旧的标签，不再推荐使用，因为它只提供了呈现效果，而没有语义上的含义。<strong>4. 4. strong </strong>是 HTML 中的一个元素，用于强调文本。它具有更强的语义含义，表示重要或紧急的文本。与 b 标签不同，strong 标签不仅改变了文本的外观（通常是加粗），还向屏幕阅读器和搜索引擎等提供了更多信息。</p><p><strong>5. i </strong>是 HTML 中的一个元素，用于斜体显示文本。类似于 b 标签，i 标签也是一个旧的标签，不再推荐使用，因为它只提供了呈现效果，而没有语义上的含义。</p><p><strong>6. em </strong>是 HTML 中的一个元素，用于强调文本。它具有更强的语义含义，表示强调的文本。与 i 标签不同，em 标签不仅改变了文本的外观（通常是斜体），还向屏幕阅读器和搜索引擎等提供了更多信息。</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10099, 'img标签的title和alt有什么区别', 10013, 'CSS+HTML', 1, '', '<p>title 属性用于提供鼠标悬停提示文本，而 alt 属性是图像的替代文本，并在图像无法显示时显示。title 属性是可选的，但是建议使用具有描述性的 alt 属性来提供图像的文本替代内容。</p><div class=\"se-component se-image-container __se__float-none\"><figure><img src=\"image.jpg\" alt=\"图像描述\" data-proportion=\"true\" data-align=\"none\" data-index=\"0\" data-file-name=\"image.jpg\" data-file-size=\"0\" data-origin=\",\" data-size=\",\" data-rotate=\"\" data-rotatex=\"\" data-rotatey=\"\" data-percentage=\"auto,auto\" style=\"\"></figure></div><p>在实际开发中，无法显示的图片会用默认图片替代，不会出现alt的文本。</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10100, '解释png、jpg、gif这些图片格式，用于什么地方', 10013, 'CSS+HTML', 1, '', '<p><strong>PNG</strong>（Portable Network Graphics）是一种无损压缩的位图图像格式。它支持多种颜色模式，包括索引色、灰度和真彩色，并可以保存图像的透明度信息。PNG图像格式在保留图像质量的同时，能够提供较小的文件大小。因此，PNG通常用于需要高质量和透明背景的图像，如图标、LOGO、线条图等。</p><p><strong>JPG</strong>（也称为JPEG，Joint Photographic Experts Group）是一种有损压缩的位图图像格式。它可以在保持高质量的同时实现更小的文件大小。JPG通常适用于保存照片和其他复杂的图像，因为它可以在保持视觉感知质量的同时降低文件大小。</p><p><strong>GIF&nbsp;</strong>（Graphics Interchange Format）是一种无损压缩的位图图像格式。GIF图像可以支持256种颜色，还可以使用透明色来创建透明效果。它还支持图像的动画和简单的编码。GIF图像格式通常用于简单的动画、图标、表情包等。这些图片格式各有特点和适用场景。PNG适用于需要保留透明背景和保持高质量的图像；JPG适用于照片和复杂图像，可以在保持高质量的同时实现较小的文件大小；GIF适用于简单的动画和需要透明效果的图像。根据具体的需求，选择合适的图片格式可以更好地满足图像的展现需求和文件大小的控制。</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10101, '介绍一下CSS的盒子模型', 10013, 'CSS+HTML', 1, '', '<p>CSS盒子模型是用于布局和定位元素的基本模型。它定义了每个元素在页面上占据的区域，包括<u>内容区域、内边距、边框和外边距</u>。</p><p>盒子模型由以下几个部分组成：内容区域（Content）：这是元素实际显示内容的区域，例如文本、图像或其他嵌套的元素。内边距（Padding）：内容区域与边框之间的空白区域。内边距可以设置上、下、左、右四个方向的值，用于控制内容与边框之间的距离。边框（Border）：位于内边距外部的边框线。边框可以设置宽度、样式和颜色。外边距（Margin）：边框与相邻元素之间的空白区域。外边距可以设置上、下、左、右四个方向的值，用于控制元素与其它元素之间的距离。</p><p>CSS盒子模型中的尺寸计算方式可以分为<strong>两种</strong>：</p><p><strong>标准模型（content-box）</strong>：元素的宽度和高度只包括内容区域的尺<strong>寸。</strong></p><p><strong>IE模型（border-box）</strong>：元素的宽度和高度包括内容区域、内边距和边框的尺寸，但不包含外边距。</p><p>另外，在页面渲染时，dom&nbsp;元素所采用的布局模型。可通过box-sizing属性进行设置，box-sizing: content-box为W3C标准模型box-sizing: border-box为IE模型。</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10102, 'line-height和height的区别', 10013, 'CSS+HTML', 1, '', '<p>line-height和height是CSS中用于控制行高和元素高度的两个属性，它们有一些区别和作用：</p><p><u>line-height（行高）：</u>用于设置行内元素（如文字）的行内框的高度。它不影响块级元素的高度。line-height定义了行框的高度，即文字在行内的垂直对齐方式和行间距的大小。它可以设置为百分比或具体数值。</p><p><u>height（高度）：</u>用于设置块级元素（如div、p等）的高度。它是元素自身内容的高度，包括内边距和边框。height定义了元素框的高度，即元素自身在垂直方向上的高度。它可以设置为百分比、具体数值、auto或inherit。</p><p><strong>区别：</strong>line-height影响行内元素的行高和行间距，不会改变元素的实际高度，只是改变了行内内容的垂直对齐方式。height设置了元素自身的高度，包括内容、内边距和边框。</p><p><strong>需要注意的是</strong>，当使用line-height时，如果具体数值过大或过小，可能会导致行内元素超过其容器的高度，从而导致溢出或布局混乱。在使用时，应根据实际需要和设计的效果综合考虑line-height和height的使用。</p>', '2023-07-27 10:09:22', 1, '1000009', 'mrmayor', 67, 0, NULL);
INSERT INTO `question_info` VALUES (10103, '什么是字符串常量池？', 10011, 'Java', 1, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">什么是字符串常量池？</span></p>', '<p>​<span style=\"color: rgb(77, 77, 77);font-size: 16px\">字符串常量池（String Pool）保存着所有字符串字面量，这些字面量在编译时期就确定。字符串常量池位于堆内存中，专门用来存储字符串常量。在创建字符串时，JVM首先会检查字符串常量池，如果该字符串已经存在池中，则返回其引用，如果不存在，则创建此字符串并放入池中，并返回其引用。</span>​<br></p>', '2023-07-27 10:10:28', 1, '1000007', '迟來', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10104, 'equals和==有什么区别？', 10011, 'Java', 1, '<p><span style=\"font-size: 24px\">equals和==有什么区别？</span><br></p>', '<ul><li><span style=\"text-align: -webkit-match-parent;\">对于基本数据类型，==比较的是他们的值。基本数据类型没有equal方法；</span><br></li></ul><ul><li><p>对于复合数据类型，==比较的是它们的存放地址(是否是同一个对象)。<code>equals()</code>默认比较地址值，重写的话按照重写逻辑去比较。</p></li></ul>', '2023-07-27 10:12:18', 1, '1000007', '迟來', 10, 0, NULL);
INSERT INTO `question_info` VALUES (10105, 'final, finally, finalize 的区别', 10011, 'Java', 2, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">final, finally, finalize 的区别</span><br></p>', '<p>final 用于修饰属性、方法和类, 分别表示属性不能被重新赋值，方法不可被覆盖，类不可被继承。<br>finally 是异常处理语句结构的一部分，一般以try-catch-finally出现，finally代码块表示总是被执行。<br>finalize 是Object类的一个方法，该方法一般由垃圾回收器来调用，当我们调用System.gc()方法的时候，由垃圾回收器调用finalize()方法，回收垃圾，JVM并不保证此方法总被调用。<br></p><p><br></p>', '2023-07-27 10:12:59', 1, '1000007', '迟來', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10106, 'final关键字的作用？', 10011, 'Java', 1, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">final关键字的作用？</span><br></p>', '<ul><li>final 修饰的类不能被继承。<br></li><li>final 修饰的方法不能被重写。</li><li>final 修饰的变量叫常量，常量必须初始化，初始化之后值就不能被修改。</li></ul>', '2023-07-27 10:14:09', 1, '1000007', '迟來', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10107, 'Error和Exception的区别？', 10011, 'Java', 2, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">Error和Exception的区别？</span><br></p>', '<p><strong>Error</strong>：JVM 无法解决的严重问题，如栈溢出<code>StackOverflowError</code>、内存溢出<code>OOM</code>等。程序无法处理的错误。<br></p><p><strong>Exception</strong>：其它因编程错误或偶然的外在因素导致的一般性问题。可以在代码中进行处理。如：空指针异常、数组下标越界等。</p>', '2023-07-27 10:14:48', 1, '1000007', '迟來', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10108, 'throw和throws的区别？', 10011, 'Java', 1, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">throw和throws的区别？</span><br></p>', '<p><br></p><ul><li><p><strong>throw</strong>：用于抛出一个具体的异常对象。</p></li><li><p><strong>throws</strong>：用在方法签名中，用于声明该方法可能抛出的异常。子类方法抛出的异常范围更加小，或者根本不抛异常。</p></li></ul>', '2023-07-27 10:15:22', 1, '1000007', '迟來', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10109, 'BIO/NIO/AIO区别的区别？', 10011, 'Java', 3, '<p><span style=\"font-size: 24px\">BIO/NIO/AIO区别的区别？</span><br></p>', '<p>同步阻塞IO : 用户进程发起一个IO操作以后，必须等待IO操作的真正完成后，才能继续运行。<br><br>同步非阻塞IO: 客户端与服务器通过Channel连接，采用多路复用器轮询注册的Channel。提高吞吐量和可靠性。用户进程发起一个IO操作以后，可做其它事情，但用户进程需要轮询IO操作是否完成，这样造成不必要的CPU资源浪费。<br><br>异步非阻塞IO: 非阻塞异步通信模式，NIO的升级版，采用异步通道实现异步通信，其read和write方法均是异步方法。用户进程发起一个IO操作，然后立即返回，等IO操作真正的完成以后，应用程序会得到IO操作完成的通知。类似Future模式。<br></p>', '2023-07-27 10:17:34', 1, '1000007', '迟來', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10110, '同步和异步的区别？', 10011, 'Java', 1, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">同步和异步的区别？</span><br></p>', '<p>同步：发出一个调用时，在没有得到结果之前，该调用就不返回。<br></p><p>异步：在调用发出后，被调用者返回结果之后会通知调用者，或通过回调函数处理这个调用。</p>', '2023-07-27 10:18:10', 1, '1000007', '迟來', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10111, 'java语言有哪些特点', 10011, 'Java', 1, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">java语言有哪些特点</span><br></p>', '<p>（1）简单易学；<br>（2）面向对象（封装，继承，多态）；<br>（3）平台无关性（ Java 虚拟机实现平台无关性）；<br>（4）可靠性；<br>（5）安全性；<br>（6）支持多线程（ C++ 语言没有内置的多线程机制，因此必须调用操作系统的多线程功能来进行多线程程序设计，而 Java 语言却提供了多线程支持）；<br>（7）支持网络编程并且很方便（ Java 语言诞生本身就是为简化网络编程设计的，因此 Java 语言不仅支持网络编程而且很方便）。<br></p>', '2023-07-27 10:24:32', 1, '1000007', '迟來', 12, 0, NULL);
INSERT INTO `question_info` VALUES (10112, 'css选择符有哪些，哪些属性可以继承', 10013, 'CSS+HTML', 1, '<p><br></p>', '<p>CSS选择符包括：<br></p><ol><li>元素选择符：选择指定元素类型的元素。例如，<code>div</code>选择所有<code>&lt;div&gt;</code>元素。</li><li>ID选择符：以<code>#</code>符号后跟元素的ID属性值来选择唯一的元素。例如，<code>#myElement</code>选择具有<code>id</code>属性为\"myElement\"的元素。</li><li>类选择符：以<code>.</code>符号后跟元素的类名来选择具有相同类的元素。例如，&nbsp;<code>.myClass</code>选择具有<code>class</code>属性为\"myClass\"的元素。</li><li>属性选择符：根据元素的属性值选择元素。例如，<code>[type=\"text\"]</code>选择具有<code>type</code>属性值为\"text\"的元素。</li><li>通配符选择符：以<code>*</code>选择所有元素。</li></ol><p>还有许多其他选择符，如后代选择符、子选择符、相邻元素选择符、伪类选择符和伪元素选择符等。</p><p>关于继承属性，大部分文档中的CSS属性都是可以继承的，而一些特定的CSS属性则不会被子元素继承。一些常见的可以继承的属性包括：</p><ol><li>字体相关属性：如<code>font-family</code>、<code>font-size</code>、<code>font-weight</code>等。</li><li>文本相关属性：如<code>color</code>、<code>line-height</code>、<code>text-align</code>等。</li><li>盒模型相关属性：如<code>padding</code>、<code>margin</code>、<code>border</code>等。</li></ol><p>需要注意的是，并非所有属性都可以继承，例如<code>width</code>、<code>height</code>、<code>background</code>等属性就无法被子元素继承。此外，通过使用<code>inherit</code>关键字，可以强制使子元素继承特定的属性值，即使该属性不是继承属性。</p>', '2023-07-27 10:24:44', 1, '1000009', 'mrmayor', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10113, 'vue指令v-html和v-text的异同', 10010, 'Vue.js', 1, '<p><span style=\"font-size: 2em; font-weight: 700;\">vue指令v-html和v-text的异同</span><br></p>', '<p>​<span style=\"color: rgb(77, 77, 77);font-size: 16px\">①相同之处：v-html 和 v-text 都会覆盖元素原来的内容</span><br>​<span style=\"color: rgb(77, 77, 77);font-size: 16px\">②不同之处：v-html 可以解析富文本，但 v-text 不行</span>​<br></p>', '2023-07-27 10:26:03', 1, '1000007', '迟來', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10114, 'v-if 和 v-show 的区别', 10010, 'Vue.js', 1, '<p><span style=\"font-size: 2em; font-weight: 700;\">v-if 和 v-show 的区别</span><br></p>', '<p>​<span style=\"color: rgb(77, 77, 77);font-size: 16px\">v-if 是删除和添加dom元素，v-show 是设置元素的display属性来完成显示与隐藏效果</span>​<br></p>', '2023-07-27 10:27:14', 1, '1000007', '迟來', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10115, 'CSS优先级算法如何计算', 10013, 'CSS+HTML', 1, NULL, '<p>CSS的优先级算法是用来确定在多个CSS规则应用于同一个元素时，哪个规则具有更高的优先级。以下是CSS优先级算法的计算规则：</p><ol><li><p>内联样式（Inline Styles）：优先级最高。通过在HTML元素的style属性中直接定义样式。</p></li><li><p>ID选择器（ID Selectors）：每个ID选择器给予一个权值为100。</p></li><li><p>类选择器、属性选择器和伪类选择器（Class, Attribute, and Pseudo-Class Selectors）：每个类选择器、属性选择器或伪类选择器添加一个权值为10。</p></li><li><p>元素选择器和伪元素选择器（Element and Pseudo-Element Selectors）：每个元素选择器或伪元素选择器添加一个权值为1。</p></li></ol><p>优先级算法通过计算每个选择器的权值并将它们相加来确定最终的优先级。当两个选择器具有<strong>相同的权值时</strong>，<strong>后面出现的选择器</strong>将具有<strong>更高的优先级</strong>。</p><p>当同一个属性在多个规则中出现时，具有最高优先级的规则将被应用于元素。如果多个规则具有相同的优先级，该属性的值将根据\"层叠顺序\"（Cascading Order）来决定，后面出现的规则将覆盖前面的规则。</p><p>需要注意的是，使用<strong>!important</strong>可以将样式属性的权值提升到最高，以覆盖其他规则。但是，在编写CSS时应慎用!important，尽量避免使用它，以免导致样式难以管理和维护。</p>', '2023-07-27 10:27:29', 1, '1000009', 'mrmayor', 9, 0, NULL);
INSERT INTO `question_info` VALUES (10116, 'vue生命周期钩子函数有哪些？', 10010, 'Vue.js', 2, '<p><span style=\"font-size: 2em; font-weight: 700;\">vue生命周期钩子函数有哪些？</span><br></p>', '<p>1. beforeCreate()\r\n<br>2. created()\r\n<br>3. beforeMount()\r\n<br>4. mounted()\r\n<br>5. beforeUpdate()\r\n<br>6. updated()\r\n<br>7. beforeDestroy()\r\n<br>8. destroyed()\r\n<br><br></p>', '2023-07-27 10:27:57', 1, '1000007', '迟來', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10117, 'vue中如何使用插槽，两种插槽的区别', 10010, 'Vue.js', 1, '<p><span style=\"font-size: 32px\">vue中如何使用插槽，两种插槽的区别</span><br></p>', '<p>使用： 在组件中声明&lt;slot&gt;&lt;/slot&gt;标签,填充插槽时直接在组件标签里写填充内容<br><br>区别： 默认插槽声明时直接写&lt;slot&gt;&lt;/slot&gt;，使用时可以直接在组件标签里写填充内容；<br><br>具名插槽在声明时要加一个name属性，&lt;slot name=\"\"&gt;&lt;/slot&gt;<br>填充时要写template标签：&lt;template v-slot:插槽名&gt;填充内容&lt;/template&gt;<br></p>', '2023-07-27 10:30:31', 1, '1000007', '迟來', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10118, '一个盒子不给宽度和高度，如何水平垂直居中', 10013, 'CSS+HTML', 1, NULL, '<p>​使用 flexbox 布局：将父容器设置为 flex 容器，并使用 flex 属性来将子元素水平、垂直居中。</p><pre><code>display: flex;<br>justify-content: center; /*水平居中*/<br>align-items: center; /*垂直居中*/</code></pre>', '2023-07-27 10:31:21', 1, '1000009', 'mrmayor', 13, 0, NULL);
INSERT INTO `question_info` VALUES (10119, 'Vuex的核心模块？', 10010, 'Vue.js', 1, '<p><span style=\"font-size: 2em; font-weight: 700;\">Vuex的核心模块？</span><br></p>', '<ol><li>State（状态）</li><li>Mutation （改变State，必须是同步函数）</li><li>Action （提交Mutation来改变State，可包含异步操作）</li><li>Module （模块化管理）</li><li>Getter （加工Store库中的数据，不改变元数据，产生新数据）</li></ol>', '2023-07-27 10:32:25', 1, '1000007', '迟來', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10120, 'display有哪些值？说明他们的作用', 10013, 'CSS+HTML', 1, '<p><br></p>', '<p>display 属性用于指定元素的显示方式，常用的 display 值有以下几种：<br></p><ol><li><p>block：元素会生成一个块级元素框，相邻的元素会被放置在新行中。 作用：元素独占一行，可以设置宽度、高度和边距等。</p></li><li><p>inline：元素会生成一个或多个行内元素框，元素排列在行中。 作用：元素在一行内显示，不独占一行，不可以设置宽度、高度和边距等。</p></li><li><p>inline-block：元素会生成一个块级元素框，但其行为类似于行内元素。 作用：元素在一行内显示，但可以设置宽度、高度和边距等。</p></li><li><p>none：元素会被完全从页面中删除，即不显示，也不占据空间。 作用：隐藏元素，不占用页面空间。</p></li><li><p>flex：元素变为一个弹性盒子。 作用：使用 flex 布局，可以方便地实现弹性盒子的布局。</p></li><li><p>grid：元素变为一个网格容器。 作用：使用 grid 布局，可以方便地实现网格布局。</p></li><li><p>table：元素会被显示为一个表格。 作用：使用表格布局，可以方便地实现表格结构。</p></li><li><p>table-cell：元素会被显示为一个表格单元格。 作用：在表格布局中，指定单元格的样式。</p></li></ol><p>以上是 display 属性的常用值及其作用，<u>通过指定不同的 display 值，可以改变元素的显示方式和布局结构</u>。</p>', '2023-07-27 10:33:07', 1, '1000009', 'mrmayor', 58, 0, NULL);
INSERT INTO `question_info` VALUES (10121, '对BFC规范的理解', 10013, 'CSS+HTML', 1, NULL, '<p>让处于&nbsp;BFC（Block Formatting Context）是一个页面中的一块独立的渲染区域，<span style=\"color:#EB5757;font-size:0.85px\">BFC</span>内部的元素与外部的元素相互隔离，使内外元素的定位不会相互影响。</p><p><strong>有以下规则：</strong></p><p></p><ol><li>同一个BFC内部的Box会在<u>垂直方向</u>一个接一个地放置；块级元素垂直排列；</li><li>每个元素的左外边距与包含块的左边界相接触（从左到右）；右外边距与下一个兄弟元素的左边界相触（从左到右）；</li><li>BFC区域不会与浮动元素重叠；</li><li>BFC区域里的元素的外边距会传递至包含块的外边距；</li><li>BFC区域可以包含浮动元素（清除浮动）；</li><li>BFC区域可以阻止元素被浮动元素覆盖。</li></ol><p><strong>触发BFC的方式有以下几种：</strong></p><ol><li>根元素</li><li>浮动元素（float 不为 none）</li><li>绝对定位元素（position 为 absolute 或 fixed）</li><li>行内块元素（display 为 inline-block）</li><li>overflow 不为 visible 的块级元素</li></ol><p><strong>通过创建BFC，可以解决一些常见的布局问题：</strong></p><ol><li>清除浮动（clearfix）</li><li>防止外部的浮动元素覆盖</li><li>自适应两栏布局（左侧固定宽度，右侧自适应宽度）</li><li>防止上下外边距折叠</li></ol><p>总之，BFC规范提供了一种元素布局的规则，使得页面中的元素可以更加可控和稳定地进行布局。</p>', '2023-07-27 10:38:04', 1, '1000009', 'mrmayor', 10, 0, NULL);
INSERT INTO `question_info` VALUES (10122, '在网页中的应用使用奇数还是偶数大小的字体，为什么呢', 10013, 'CSS+HTML', 1, NULL, '<p><strong>偶数</strong></p><p><strong></strong>偶数字号相对更容易和 web 设计的其他部分构成比例关系。Windows 自带的点阵宋体（中易宋体）从 Vista 开始只提供 12、14、16 px 这三个大小的点阵，而 13、15、17 px时用的是小一号的点。（即每个字占的空间大了 1 px，但点阵没变），于是略显稀疏。\r\n<br></p>', '2023-07-27 10:46:09', 1, '1000009', 'mrmayor', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10123, '进程和线程的区别', 10003, 'Linux', 1, '<p>进程和线程的区别<br></p>', '<p><span style=\"font-size: 12px;\"><span style=\"font-family: Arial;\">进程：</span><span style=\"font-family: Arial; color: rgb(77, 77, 77);\">一个在内存中运行的应用程序。每个进程都有自己独立的一块内存空间，一个进程可以有多个线程，比如在Windows系统中，一个运行的xx.exe就是一个进程。</span></span></p><p><span style=\"font-family: Arial; color: rgb(77, 77, 77); font-size: 12px;\"></span><span style=\"font-family: Arial; font-size: 12px;\">线程：进程中的一个执行任务（控制单元），负责当前进程中程序的执行。一个进程至少有一个线程，一个进程可以运行多个线程，多个线程可共享数据。</span></p>', '2023-07-27 12:20:09', 1, '1000002', 'MIAO?', 22, 0, NULL);
INSERT INTO `question_info` VALUES (10124, '什么是IOC', 10011, 'Java', 1, '<p>什么是IOC</p>', '<p>控制反转也叫依赖注入。利用了工厂模式。将对象交给容器管理，你只需要在spring配置文件总配置相应的bean，以及设置相关的属性，让spring容器来生成类的实例对象以及管理对象。在spring容器启动的时候，spring会把你在配置文件中配置的bean都初始化好，然后在你需要调用的时候，就把它已经初始化好的那些bean分配给你需要调用这些bean的类（假设这个类名是A），分配的方法就是调用A的setter方法来注入，而不需要你在A里面new这些bean了。</p>', '2023-07-27 17:09:27', 1, '1000002', 'MIAO?', 11, 0, NULL);
INSERT INTO `question_info` VALUES (10125, '什么是事务？', 10011, 'Java', 1, '<p><br></p><h2>什么是事务？</h2>', '<p>​<strong>事务是逻辑上的一组操作，要么都执行，要么都不执行。</strong>​<br></p><p><br></p><p>事务最经典也经常被拿出来说例子就是转账了。假如小明要给小红转账 1000 元，这个转账会涉及到两个关键操作就是：</p><blockquote><ol><li>将小明的余额减少 1000 元。</li><li>将小红的余额增加 1000 元。</li></ol></blockquote><p>万一在这两个操作之间突然出现错误比如银行系统崩溃或者网络故障，导致小明余额减少而小红的余额没有增加，这样就不对了。事务就是保证这两个关键操作要么都成功，要么都要失败。</p><div><br></div>', '2023-07-27 21:05:09', 1, '1000002', 'MIAO?', 11, 0, NULL);
INSERT INTO `question_info` VALUES (10126, '如何理解MVVM的？', 10010, 'Vue.js', 1, '<p><br></p>', '<p>是Model-View-ViewModel的缩写。前端开发的架构模式<br> M：模型，对应的就是data的数据<br> V：视图，用户界面，DOM<br> VM：视图模型：Vue的实例对象，连接View和Model的桥梁<br> 核心是提供对View和ViewModel的双向数据绑定，当数据改变的时候，ViewModel能监听到数据的变化，自动更新视图，当用户操作视图的时候，ViewModel也可以监听到视图的变化，然后通知数据进行改动，这就实现了双向数据绑定。<br> ViewModel通过双向绑定把View和Model连接起来，他们之间的同步是自动的，不需要人为干涉，所以我们只需要关注业务逻辑即可，不需要操作DOM，同时也不需要关注数据的状态问题，因为她是由MVVM统一管理。<br></p>', '2023-07-28 09:41:07', 1, '1000005', '一个好名字', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10127, 'vue如何进行组件通信', 10010, 'Vue.js', 2, '<p><br></p>', '<p><span style=\"font-size: 14px\">（1）⽗⼦组件间通信</span><br></p><p>• ⼦组件通过 props 属性来接受⽗组件的数据，然后⽗组件在⼦组件上注册监听事件，⼦组件通过emit 触发事件来向⽗组件发送数据</p><p>• 通过 ref 属性给⼦组件设置⼀个名字。⽗组件通过 $refs 组件名来获得⼦组件，⼦组件通过$parent 获得⽗组件，这样也可以实现通信</p><p>• 使⽤ provide/inject，在⽗组件中通过 provide提供变量，在⼦组件中通过 inject 来将变量注⼊到组件中。不论⼦组件有多深，只要调⽤了 inject 那么就可以注⼊ provide中的数据</p><p><span style=\"font-size: 14px\">（2）兄弟组件间通信</span></p><p>• 使⽤ eventBus 的⽅法，它的本质是通过创建⼀个空的 Vue 实例来作为消息传递的对象，通信的组件引⼊这个实例，通信的组件通过在这个实例上监听和触发事件，来实现消息的传递</p><p>• 通过 $parent/$refs 来获取到兄弟组件，也可以进⾏通信</p><p><span style=\"font-size: 14px\">（3）任意组件之间</span></p><div>• 使⽤ eventBus ，其实就是创建⼀个事件中⼼，相当于中转站，可以⽤它来传递事件和接收事件。如果业务逻辑复杂，很多组件之间需要同时处理⼀些公共的数据，这个时候采⽤上⾯这⼀些⽅法可能不利于项⽬的维护。这个时候可以使⽤ vuex ，vuex 的思想就是将这⼀些公共的数据抽离出来，将它作为⼀个全局的变量来管理，然后其他组件就可以对这个公共数据进⾏读写操作，这样达到了解耦的⽬的。</div>', '2023-07-28 09:44:08', 1, '1000005', '一个好名字', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10128, 'vue路由的hash模式和history模式有什么区别？', 10010, 'Vue.js', 1, NULL, '<p> 1.hash的路由地址上有#号，history模式没有</p><p> 2.在做回车刷新的时候，hash模式会加载对应页面，history会报错404</p><p>3.hash模式支持低版本浏览器，history不支持，因为是H5新增的API </p><p>4.hash不会重新加载页面，单页面应用必备</p><p> 5.history有历史记录，H5新增了pushState和replaceState()去修改历史记录，并不会立刻发送请求</p><p> 6.history需要后台配置<br></p>', '2023-07-28 09:45:54', 1, '1000005', '一个好名字', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10129, '有几种定位，分别根据什么定位', 10013, 'CSS+HTML', 1, '<p><br></p>', '<p>下面是一些HTML和CSS中常见的定位方法：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;1. 静态定位（static）：元素根据正常文档流进行布局，默认的定位方式。使用静态定位时，top、right、bottom和left属性将不起作用。</p><pre><code><span style=\"color: rgb(204, 153, 205)\">.example</span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;position</span><span style=\"color: rgb(204, 204, 204)\">:</span> static<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}</span></code></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;2. 相对定位（relative）：元素以其自身在正常文档流中原本的位置为基准，通过top、right、bottom和left属性相对移动。相对定位不会影响周围元素的位置。</p><pre><code><span style=\"color: rgb(204, 153, 205)\">.example</span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;position</span><span style=\"color: rgb(204, 204, 204)\">:</span> relative<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;top</span><span style=\"color: rgb(204, 204, 204)\">:</span> 10px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;left</span><span style=\"color: rgb(204, 204, 204)\">:</span> 20px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}</span></code></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;3. 绝对定位（absolute）：元素根据最近的带有定位（非static）的祖先元素或整个页面进行位置定位。通过top、right、bottom和left属性精确控制元素的位置。绝对定位会脱离正常文档流，其他元素会忽略该元素的存在。</p><pre><code><span style=\"color: rgb(204, 153, 205)\">.example</span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;position</span><span style=\"color: rgb(204, 204, 204)\">:</span> absolute<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;top</span><span style=\"color: rgb(204, 204, 204)\">:</span> 50px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;left</span><span style=\"color: rgb(204, 204, 204)\">:</span> 100px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}</span></code></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;4. 固定定位（fixed）：元素根据浏览器窗口进行定位，在滚动页面时保持固定位置。通过top、right、bottom和left属性控制位置。</p><pre><code><span style=\"color: rgb(204, 153, 205)\">.example</span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;position</span><span style=\"color: rgb(204, 204, 204)\">:</span> fixed<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;top</span><span style=\"color: rgb(204, 204, 204)\">:</span> 10px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;right</span><span style=\"color: rgb(204, 204, 204)\">:</span> 10px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}</span></code></pre><p>这些是HTML和CSS中常见的定位方式。使用这些定位方法，可以根据需求精确控制元素在网页中的位置和布局。</p>', '2023-07-28 09:46:36', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10130, '如何封装一个组件？', 10010, 'Vue.js', 1, NULL, '<p>1.使用Vue.extend()创建一个组件</p><p>2.使用Vue.components()方法注册组件</p><p>3.如果子组件需要数据，可以在props中接收定义</p><p>4.子组件修改好数据，要把数据传递给父组件，可以用emit()方法</p><p>原则：<br>把功能拆开<br>尽量让组件原子化，一个组件做一件事情<br>容器组件管数据，展示组件管视图<br></p>', '2023-07-28 09:49:26', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10131, '写一个左中右局部沾满屏幕，其中左右固定宽200，中间自适应宽。', 10013, 'CSS+HTML', 1, '<p><br></p>', '<p>HTML结构：</p><pre style=\"text-align: left\"><code><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;</span>div </span><span style=\"color: rgb(226, 119, 122)\">class</span><span style=\"color: rgb(126, 198, 153)\"><span style=\"color: rgb(204, 204, 204)\">=</span><span style=\"color: rgb(204, 204, 204)\">\"</span>container<span style=\"color: rgb(204, 204, 204)\">\"</span></span><span style=\"color: rgb(204, 204, 204)\">&gt;<br></span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&nbsp;&nbsp;&nbsp;&nbsp;&lt;</span>div </span><span style=\"color: rgb(226, 119, 122)\">class</span><span style=\"color: rgb(126, 198, 153)\"><span style=\"color: rgb(204, 204, 204)\">=</span><span style=\"color: rgb(204, 204, 204)\">\"</span>left<span style=\"color: rgb(204, 204, 204)\">\"</span></span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>div</span><span style=\"color: rgb(204, 204, 204)\">&gt;<br></span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&nbsp;&nbsp;&nbsp;&nbsp;&lt;</span>div </span><span style=\"color: rgb(226, 119, 122)\">class</span><span style=\"color: rgb(126, 198, 153)\"><span style=\"color: rgb(204, 204, 204)\">=</span><span style=\"color: rgb(204, 204, 204)\">\"</span>middle<span style=\"color: rgb(204, 204, 204)\">\"</span></span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>div</span><span style=\"color: rgb(204, 204, 204)\">&gt;<br></span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&nbsp;&nbsp;&nbsp;&nbsp;&lt;</span>div </span><span style=\"color: rgb(226, 119, 122)\">class</span><span style=\"color: rgb(126, 198, 153)\"><span style=\"color: rgb(204, 204, 204)\">=</span><span style=\"color: rgb(204, 204, 204)\">\"</span>right<span style=\"color: rgb(204, 204, 204)\">\"</span></span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>div</span><span style=\"color: rgb(204, 204, 204)\">&gt;<br></span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>di</span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span></code></pre><p>CSS结构：</p><pre style=\"text-align: left\"><code><span style=\"color: rgb(204, 153, 205)\">.container </span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;&nbsp;&nbsp;display</span><span style=\"color: rgb(204, 204, 204)\">:</span> flex<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;&nbsp;&nbsp;height</span><span style=\"color: rgb(204, 204, 204)\">:</span> 100vh<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}<br></span><span style=\"color: rgb(204, 153, 205)\">.left, .right </span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;&nbsp;&nbsp;width</span><span style=\"color: rgb(204, 204, 204)\">:</span> 200px<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;&nbsp;&nbsp;background-color</span><span style=\"color: rgb(204, 204, 204)\">:</span> #f1f1f1<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}<br></span><span style=\"color: rgb(204, 153, 205)\">.middle </span><span style=\"color: rgb(204, 204, 204)\">{<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;&nbsp;&nbsp;flex</span><span style=\"color: rgb(204, 204, 204)\">:</span> 1<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(248, 197, 85)\">&nbsp;&nbsp;&nbsp;&nbsp;background-color</span><span style=\"color: rgb(204, 204, 204)\">:</span> #e1e1e1<span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(204, 204, 204)\">}</span></code></pre><p><br></p><p><br></p>', '2023-07-28 09:50:41', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10132, 'vue3和vue2有哪些区别？', 10010, 'Vue.js', 1, NULL, '<p>1.双向数据绑定的原理不同</p><p>2.是否支持碎片</p><p>3.API不同</p><p>4.定义数据变量方法不同</p><p>5.生命周期的不同</p><p>6.传值不同</p><p>7.指令和插槽不同</p><p>8.main.js不同</p>', '2023-07-28 09:51:07', 1, '1000005', '一个好名字', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10133, 'CSS选择器的优先级？', 10013, 'CSS+HTML', 1, NULL, '<p>CSS的特性：继承性、层叠性、优先级</p><p> 优先级：写CSS样式的时候，会给同一个元素添加多个样式，此时谁的权重高就显示谁的样式</p><p> 标签、类/伪类/属性、全局选择器、行内样式、id、!important</p><p> !important &gt; 行内样式 &gt; id &gt; 类/伪类/属性 &gt; 标签 &gt; 全局选择器<br></p>', '2023-07-28 09:52:43', 1, '1000005', '一个好名字', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10134, '什么是CSS reset？', 10013, 'CSS+HTML', 1, NULL, '<p><strong>CSS reset</strong>，又叫做<strong> CSS 重写</strong>或者 <strong>CSS 重置</strong>，用于改写HTML标签的默认样式。<br><strong>有些HTML标签在浏览器里有默认的样式，</strong>例如 p 标签有上下边距，li 标签有列表标识符号等。这些默认样式在不同浏览器之间也会有差别，例如ul默认带有缩进的样式，在IE下，它的缩进是通过margin实现的，而Firefox下，它的缩进是由padding实现的。这必然会带来浏览器兼容问题。</p><p><br>因此，在 CSS 代码中，可以使用 CSS 代码<strong>去掉这些默认样式</strong>，即重新定义标签样式，从而覆盖浏览器的CSS默认属性，<span style=\"color: rgb(36, 41, 47);font-size: 14px\">CSS Reset的目的是为了解决这些浏览器之间的差异，通过将所有元素的默认样式设置为相同的基准值，实现在各个浏览器上的一致性。</span></p><p><p>（网上可以找到很多reset.css的代码可作为参考）</p></p><p><br>需要注意的是，在进行样式重写时，不建议使用 * 选择器进行重写，这样会降低效率，影响性能。<br></p>', '2023-07-28 09:54:09', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10135, '操作数组的方法有哪些？', 10009, 'JavaScript', 2, NULL, '<p>push()&nbsp; pop()&nbsp; sort()&nbsp; splice()&nbsp; unshift()&nbsp; shift() </p><p>reverse()&nbsp; concat()&nbsp; join()&nbsp; map()&nbsp; ﬁlter()&nbsp; ervery() </p><p>some()&nbsp; reduce()&nbsp; isArray()&nbsp; ﬁndIndex()<br> 其中以下方法会改变原数组：<br> push() pop() unshift() shift() sort() reverse() splice()<br></p>', '2023-07-28 09:54:23', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10136, '说一下闭包，闭包有什么特点？', 10009, 'JavaScript', 2, NULL, '<p>函数嵌套函数，内部函数被外部函数返回并保存下来时，就会产生闭包。<br> 特点：可以重复利用变量，并且这个变量不会污染全局的一种机制；这个变量是一直保存在内存中，不会被垃圾回收机制回收。<br> 缺点：闭包较多的时候，会消耗内存，导致页面的性能下降，在IE浏览器中会导致内存泄漏。<br> 使用场景：防抖，节流，函数嵌套函数避免全局污染的时候。<br></p>', '2023-07-28 09:56:26', 1, '1000005', '一个好名字', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10137, '说一下原型链', 10009, 'JavaScript', 2, NULL, '<p>原型就是一个普通对象，它是为构造函数的实例共享属性和方法；所有实例中引用的原型都是同一个对象<br> 使用prototype可以把方法挂在原型上，内存值保存一份<br> proto可以理解为指针，实例对象中的属性，指向了构造函数的原型（prototype）<br></p>', '2023-07-28 09:57:41', 1, '1000005', '一个好名字', 5, 0, NULL);
INSERT INTO `question_info` VALUES (10138, 'new操作符具体做了什么？', 10009, 'JavaScript', 1, NULL, '<p>1.先创建一个空对象</p><p> 2.把空对象和构造函数通过原型链进行链接</p><p> 3.把构造函数的this绑定到新的空对象身上</p><p> 4.根据构建函数返回的类型判断，如果是值类型，则返回对象，如果是引用类型，就要返回这个引用类型<br></p>', '2023-07-28 09:58:35', 1, '1000005', '一个好名字', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10139, 'Js中关于this指向的问题', 10009, 'JavaScript', 2, '<p><br></p>', '<p>1. 全局对象中的this指向<br> 指向的是window</p><p> 2. 全局作用域或者普通函数中的this<br> 指向全局window</p><p> 3. this永远指向最后调用它的那个对象<br> 在不是箭头函数的情况下</p><p> 4. new 关键词改变了this的指向</p><p> 5. apply,call,bind<br> 可以改变this指向</p><p> 6. 箭头函数中的this<br> 它的指向在定义的时候就已经确定了<br> 箭头函数它没有this,看外层是否有函数，有就是外层函数的this，没有就是window</p><p> 7. 匿名函数中的this<br> 永远指向了window,匿名函数的执行环境具有全局性，因此this指向window<br></p>', '2023-07-28 10:00:05', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10140, 'script标签里的async和defer有什么区别？', 10009, 'JavaScript', 2, NULL, '<p>当没有async和defer这两个属性的时候，浏览器会立刻加载并执行指定的脚本</p><p> 有async<br> 加载和渲染后面元素的过程将和script的加载和执行并行进行（异步）</p><p> 有defer<br> 加载和渲染后面元素的过程将和script的加载并行进行（异步），但是它的执行事件要等所有元素解析完成之后才会执行<br></p><p><br></p>', '2023-07-28 10:01:01', 1, '1000005', '一个好名字', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10141, 'display:none与visibility:hidden的区别', 10013, 'CSS+HTML', 1, NULL, '<p>共同点：<span style=\"color: rgb(36, 41, 47);font-size: 14px\">都可以用来隐藏HTML元素；</span></p><p>区别：</p><p>1. <span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">display: none;</span>会导致元素在文档流中完全消失，不占据任何空间。相反，<code><span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">visibility: hidden;</span></code>会将元素隐藏，但元素仍然占据其在文档中的原始空间。</p><div>2. <code><span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">display: none;</span></code>没有继承性，<span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">visibility: hidden;</span>有继承性。给父元素设置<span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">visibility: hidden;</span>，其子元素会继承该属性，如果给子元素设置<span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">visibility: visible;</span>，则子元素会显示出来。<br></div><div><br></div><div>3. 在使用JavaScript动态控制元素的显示和隐藏时，<code><span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">display: none;</span></code>的改变会触发文档的重新布局（reflow），而<code><span style=\"color: rgb(71, 101, 130);font-size: 11.9px;background-color: rgba(27, 31, 35, 0.05)\">visibility: hidden;</span></code>的改变不会触发文档的重新布局。但都会repaint重绘。</div>', '2023-07-28 10:01:20', 1, '1000009', 'mrmayor', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10142, 'position有哪些值，有什么作用', 10013, 'CSS+HTML', 1, NULL, '<p>position就是用来给元素定位的。<br>1. static(静态）：HTML元素的默认值，不受top、bottom、left、right属性影响，元素出现在正常的文档流中<br>2. Relative(相对）:相对定位。<br>特点：不脱离文档流的布局，受top、bottom、left、right属性影响,只改变自身的位置，在文档流原先的位置遗留空白区域。定位的起始位置为此元素原先在文档流的位置。<br><br>3. Absolute(绝对)：绝对定位<br>特点:脱离文档流的布局，遗留下来的空间由后面的元素填充。定位的起始位置为最近的父元素(position不为static)，否则为html文档本身。<br><br>4. fixed(固定)：固定定位。<br>特点：类似于absolute，但不随着滚动条的移动而改变位置。元素的位置相对于浏览器窗口是固定位置。\r\n<br><br></p>', '2023-07-28 10:02:48', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10143, 'ES6的新特性有哪些？', 10009, 'JavaScript', 3, NULL, '<p>1.新增块级作用域（let,const）<br> 不存在变量提升<br> 存在暂时性死区的问题<br> 块级作用域的内容<br> 不能在同一个作用域内重复声明</p><p> 2.新增了定义类的语法糖（class）</p><p> 3.新增了一种基本数据类型（symbol）</p><p> 4.新增了解构赋值<br> 从数组或者对象中取值，然后给变量赋值</p><p> 5.新增了函数参数的默认值</p><p> 6.给数组新增了API</p><p> 7.对象和数组新增了扩展运算符</p><p> 8.Promise<br> 解决回调地狱的问题<br> 自身有all,reject,resolve,race方法<br> 原型上有then,catch<br> 把异步操作队列化<br> 三种状态：pending初始状态,fulﬁlled操作成功,rejected操作失败<br> 状态：pending -&gt; fulﬁlled;pending -&gt; rejected 一旦发生，状态就会凝固，不会再变 </p><p>async await<br> 同步代码做异步的操作，两者必须搭配使用<br> async表明函数内有异步操作，调用函数会返回promise<br> await是组成async的表达式，结果是取决于它等待的内容，如果是promise那就是promise的结果，如果是普通函数就进行链式调用<br> await后的promise如果是reject状态，那么整个async函数都会中断，后面的代码不执行</p><p>9.新增了模块化（import,export）<br>10.新增了set和map数据结构<br>set就是不重复<br>map的key的类型不受限制</p><p>11.新增了generator</p><p>12.新增了箭头函数<br>不能作为构造函数使用，不能用new<br>箭头函数就没有原型<br>箭头函数没有arguments<br>箭头函数不能用call,apply,bind去改变this的执行<br>this指向外层第一个函数的this<br></p>', '2023-07-28 10:04:14', 1, '1000005', '一个好名字', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10144, 'opacity和rgba区别', 10013, 'CSS+HTML', 1, NULL, '<p>​<span style=\"color:#EB5757;font-size:0.85px\">rgba()</span>和<span style=\"color:#EB5757;font-size:0.85px\">opacity</span>都能实现透明效果，但最大的不同是<span style=\"color:#EB5757;font-size:0.85px\">opacity</span>作用于元素，以及元素内的<strong>所有内容</strong>的透明度。</p><p>而<span style=\"color:#EB5757;font-size:0.85px\">rgba()</span>只作用于元素的颜色或其背景色。（设置<span style=\"color:#EB5757;font-size:0.85px\">rgba</span>透明的元素的子元素不会继承透明效果！）<br></p><p>我们使用rgba 一般是在background 或者 background-color里面设置一个rgba(0,0,0,0.5)<br></p><p>而opacity 是单独作为一个类的属性来设置；opacity：0.8</p><p></p>', '2023-07-28 10:05:12', 1, '1000009', 'mrmayor', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10145, 'get和post有什么区别？', 10009, 'JavaScript', 2, NULL, '<p>1.get一般是获取数据，post一般是提交数据</p><p>2.get参数会放在url上，所以安全性比较差，post是放在body中</p><p>3.get请求刷新服务器或退回是没有影响的，post请求退回时会重新提交数据</p><p>4.get请求时会被缓存,post请求不会被缓存</p><p>5.get请求会被保存在浏览器历史记录中,post不会</p><p>6.get请求只能进行url编码，post请求支持很多种</p>', '2023-07-28 10:08:59', 1, '1000005', '一个好名字', 9, 0, NULL);
INSERT INTO `question_info` VALUES (10146, 'promise的内部原理是什么？它的优缺点是什么？', 10009, 'JavaScript', 3, NULL, '<p>Promise对象，封装了一个异步操作并且还可以获取成功或失败的结</p><p>Promise主要就是解决回调地狱的问题，之前如果异步任务比较多，同时他们之间有相互依赖的关系，就只能使用回调函数处理，这样就容易形成回调地狱，代码的可读性差，可维护性也很差</p><p>有三种状态：pending初始状态 fulfilled成功状态 rejected失败状态</p><p>状态改变只会有两种情况<br>pending -&gt; fulfilled; pending -&gt; rejected 一旦发生，状态就会凝固，不会再变</p><p>原理：<br>构造一个Promise实例，实例需要传递函数的参数，这个函数有两个形参，分别都是函数类型，一个是resolve一个是reject<br>promise上还有then方法，这个方法就是来指定状态改变时的确定操作，resolve是执行第一个函数，reject是执行第二个函数<br></p><p><br></p>', '2023-07-28 10:11:19', 1, '1000005', '一个好名字', 12, 0, NULL);
INSERT INTO `question_info` VALUES (10147, '延迟加载JS有哪些方式', 10009, 'JavaScript', 2, '', '<p>​<span style=\"color: rgb(36, 41, 47);font-size: 14px\">延迟加载JavaScript可以提高网页的加载性能和用户体验。以下是常用的几种延迟加载JS的方式：</span></p><p>1.&nbsp;<span style=\"color: rgb(36, 41, 47);font-size: 14px\">异步加载：通过在script标签中添加<strong>async</strong>属性，将JavaScript文件异步加载，不会阻塞页面的加载。例如：</span></p><pre style=\"text-align: left\"><code><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;</span>script </span><span style=\"color: rgb(226, 119, 122)\">src</span><span style=\"color: rgb(126, 198, 153)\"><span style=\"color: rgb(204, 204, 204)\">=</span><span style=\"color: rgb(204, 204, 204)\">\"</span>script.js<span style=\"color: rgb(204, 204, 204)\">\" </span></span><span style=\"color: rgb(226, 119, 122)\">async</span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>script</span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span></code></pre><p>2.&nbsp;<span style=\"color: rgb(36, 41, 47);font-size: 14px\">延迟加载：通过在script标签中添加<strong>defer</strong>属性，将JavaScript文件延迟加载，等到页面完成解析后再执行。例如：</span></p><pre style=\"text-align: left\"><code><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;</span>script </span><span style=\"color: rgb(226, 119, 122)\">src</span><span style=\"color: rgb(126, 198, 153)\"><span style=\"color: rgb(204, 204, 204)\">=</span><span style=\"color: rgb(204, 204, 204)\">\"</span>script.js<span style=\"color: rgb(204, 204, 204)\">\" </span></span><span style=\"color: rgb(226, 119, 122)\">defer</span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>script</span><span style=\"color: rgb(204, 204, 204)\">&gt;<br></span></span></code></pre><p style=\"text-align: left\">async和defer一样，不会阻塞其他资源下载，所以不会影响页面的加载。缺电：不能控制加载的顺序<br></p><p style=\"text-align: left\">3.&nbsp;<span style=\"color: rgb(36, 41, 47);font-size: 14px\">动态加载：使用JavaScript动态创建script标签，并设置其src属性来加载JavaScript文件。例如：</span></p><pre style=\"text-align: left\"><code><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;</span>script</span><span style=\"color: rgb(204, 204, 204)\">&gt;<br></span></span><span style=\"color: rgb(204, 153, 205)\">&nbsp;&nbsp;var</span> script <span style=\"color: rgb(103, 205, 204)\">=</span> document<span style=\"color: rgb(204, 204, 204)\">.</span><span style=\"color: rgb(240, 141, 73)\">createElement</span><span style=\"color: rgb(204, 204, 204)\">(</span><span style=\"color: rgb(126, 198, 153)\">\'script\'</span><span style=\"color: rgb(204, 204, 204)\">)</span><span style=\"color: rgb(204, 204, 204)\">;</span><br> &nbsp; script<span style=\"color: rgb(204, 204, 204)\">.</span>src <span style=\"color: rgb(103, 205, 204)\">=</span><span style=\"color: rgb(126, 198, 153)\">\'script.js\'</span><span style=\"color: rgb(204, 204, 204)\">;</span><br>&nbsp;&nbsp;document<span style=\"color: rgb(204, 204, 204)\">.</span>body<span style=\"color: rgb(204, 204, 204)\">.</span><span style=\"color: rgb(240, 141, 73)\">appendChild</span><span style=\"color: rgb(204, 204, 204)\">(</span>script<span style=\"color: rgb(204, 204, 204)\">)</span><span style=\"color: rgb(204, 204, 204)\">;<br></span><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(226, 119, 122)\"><span style=\"color: rgb(204, 204, 204)\">&lt;/</span>script</span><span style=\"color: rgb(204, 204, 204)\">&gt;</span></span></code></pre><p style=\"text-align: left\">4.&nbsp;<span style=\"color: rgb(36, 41, 47);font-size: 14px\">懒加载：在需要加载的JavaScript代码前添加条件判断，当某些条件满足时再加载JavaScript文件。</span></p>', '2023-07-28 10:11:32', 1, '1000009', 'mrmayor', 10, 0, NULL);
INSERT INTO `question_info` VALUES (10148, 'promise和async await的区别是什么？', 10009, 'JavaScript', 3, NULL, '<p>1.都是处理异步请求的方式</p><p>2.promise是ES6，async await 是ES7的语法</p><p>3.async await是基于promise实现的，他和promise都是非阻塞性的</p><p>优缺点：<br>1.promise是返回对象我们要用then，catch方法去处理和捕获异常，并且书写方式是链式，容易造成代码重叠，不好维护；async await 是通过try catch进行捕获异常<br>2.async await最大的优点就是能让代码看起来像同步一样，只要遇到await就会立刻返回结果，然后再执行后面的操作<br>promise.then()的方式返回，会出现请求还没返回，就执行了后面的操作<br></p>', '2023-07-28 10:13:37', 1, '1000005', '一个好名字', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10149, '浏览器的存储方式有哪些？', 10009, 'JavaScript', 1, NULL, '<p>1.cookies<br>H5标准前的本地存储方式<br>兼容性好，请求头自带cookie<br>存储量小，资源浪费，使用麻烦（封装）</p><div>2.localstorage<br>H5加入的以键值对为标准的方式</div><div>操作方便，永久存储，兼容性较好</div><p>保存值的类型被限定，浏览器在隐私模式下不可读取，不能被爬虫</p><div>3.sessionstorage<br></div><p>当前页面关闭后就会立刻清理，会话级别的存储方式</p><p>4.indexedDB<br>H5标准的存储方式，，他是以键值对进行存储，可以快速读取，适合WEB场景<br></p>', '2023-07-28 10:18:21', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10150, 'JS的数据类型有哪些', 10009, 'JavaScript', 1, NULL, '<div class=\"se-component se-image-container __se__float-none\"><figure><img src=\"/api/file/getImage/202307/BTwza5qNRL1NBUDHW5MPjcOsTSW4Fv.png\" alt=\"\" data-rotate=\"\" data-proportion=\"true\" data-size=\",\" data-align=\"none\" data-percentage=\"auto,auto\" data-file-name=\"微信图片_20230728101555.png\" data-file-size=\"213824\" data-origin=\",\" origin-size=\"2000,1073\" style=\"\" data-index=\"0\" data-rotatex=\"\" data-rotatey=\"\"></figure></div><p>注：前 7 种类型为<strong>基础类型</strong>，最后&nbsp;<span style=\"color:#EB5757;font-size:0.85px\">1 种（Object）为引用类型</span>，也是你需要重点关注的，因为它在日常工作中是使用得最频繁，也是需要关注最多技术细节的数据类型。</p><p>JavaScript不支持任何创建自定义类型的机制，而所有值最终都将是上述 8 种数据类型之一。原始数据类型和引用数据类型<br></p><ul><li>原始数据类型：基本类型存储在 <strong>栈内存</strong>，被引用或拷贝时，会创建一个完全相等的变量，占据空间小、大小固定，属于被频繁使用数据，所以放入栈中存储。</li><li>引用数据类型：引用类型存储在 <strong>堆内存</strong>，多个引用指向同一个地址，这里会涉及一个“共享”的概念；占据空间大、大小不固定。引用数据类型在栈中存储了指针，该指针指向堆中该实体的起始地址。当解释器寻找引用值时，会首先检索其在栈中的地址，取得地址后从堆中获得实体。</li></ul>', '2023-07-28 10:18:41', 1, '1000009', 'mrmayor', 10, 0, NULL);
INSERT INTO `question_info` VALUES (10151, 'token存在sessionstorage还是loaclstorage？', 10009, 'JavaScript', 2, NULL, '<p>token：验证身份的令牌，一般就是用户通过账号密码登录后，服务端把这些凭证通过加密等一系列操作后得到的字符串</p><p>1.存loaclstorage里，后期每次请求接口都需要把它当作一个字段传给后台</p><p>2.存cookie中，会自动发送，缺点就是不能跨域</p><p>如果存在localstorage中，容易被XSS攻击，但是如果做好了对应的措施，那么是利大于弊；如果存在cookie中会有CSRF攻击<br></p>', '2023-07-28 10:19:21', 1, '1000005', '一个好名字', 12, 0, NULL);
INSERT INTO `question_info` VALUES (10152, 'rem是如何做适配的？', 10013, 'CSS+HTML', 2, NULL, '<p>rem是相对长度，相对于根元素（html）的font-size属性来计算大小，通常来做移动端的适配<br> rem是根据根元素font-size计算值的倍数<br> 比如html上的font-size:16px，给div设置宽为1.5rem,1.2rem = 16px*1.2 = 19.2px.<br></p>', '2023-07-28 10:20:41', 1, '1000005', '一个好名字', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10153, '如何选⽤集合?', 10011, 'Java', 1, '<p><br></p>', '<p>主要根据集合的特点来选⽤，⽐如我们需要根据键值获取到元素值时就选⽤ Map 接⼝下的集合，需要排序时选择 TreeMap ,不需要排序时就选择 HashMap ,需要保证线程安全就选⽤</p><div>ConcurrentHashMap 。</div><div>当我们只需要存放元素值时，就选择实现 Collection 接⼝的集合，需要保证元素唯⼀时选择实现</div><div>Set 接⼝的集合⽐如 TreeSet 或 HashSet ，不需要就选择实现 List 接⼝的⽐如 ArrayList</div><div>或 LinkedList ，然后再根据实现这些接⼝的集合的特点来选⽤</div>', '2023-07-28 10:46:21', 1, '1000002', 'MIAO?', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10154, '迭代器 Iterator 是什么', 10011, 'Java', 1, NULL, '<p><span style=\"background-color: rgba(27, 31, 35, 0.05);color: rgb(102, 102, 102)\">&nbsp;public interface Iterator&lt;E&gt; {</span></p><div><code class=\"__se__t-code\">//集合中是否还有元素</code></div><div><code class=\"__se__t-code\">boolean hasNext();</code></div><div><code class=\"__se__t-code\">//获得集合中的下⼀个元素</code></div><div><code class=\"__se__t-code\">E next();</code></div><div><code class=\"__se__t-code\"> ......</code></div><div><code class=\"__se__t-code\">}</code></div><div>Iterator 对象称为迭代器（设计模式的⼀种），迭代器可以对集合进⾏遍历，但每⼀个集合内部的数据结构可能是不尽相同的，所以每⼀个集合存和取都很可能是不⼀样的，虽然我们可以⼈为地在每⼀个类中定义 hasNext() 和 next() ⽅法，但这样做会让整个集合体系过于臃肿。于是就有了迭代器。</div><div>迭代器是将这样的⽅法抽取出接⼝，然后在每个类的内部，定义⾃⼰迭代⽅式，这样做就规定了整个集合体系的遍历⽅式都是 hasNext() 和 next() ⽅法，使⽤者不⽤管怎么实现的，会⽤即可。迭代器的定义为：提供⼀种⽅法访问⼀个容器对象中各个元素，⽽⼜不需要暴露该对象的内部细节。</div>', '2023-07-28 10:48:34', 1, '1000002', 'MIAO?', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10155, '迭代器 Iterator 有啥⽤？', 10011, 'Java', 1, NULL, '<p><br></p><div>Iterator 主要是⽤来遍历集合⽤的，它的特点是更加安全，因为它可以确保，在当前遍历的集合元素被更改的时候，就会抛出 ConcurrentModificationException 异常。</div><p></p>', '2023-07-28 10:49:21', 1, '1000002', 'MIAO?', 14, 0, NULL);
INSERT INTO `question_info` VALUES (10156, '如何使⽤迭代器 Iterator？', 10011, 'Java', 1, NULL, '<div><br></div><div>我们通过使⽤迭代器来遍历 HashMap ，演示⼀下 迭代器 Iterator 的使⽤。</div><div>​<span style=\"background-color: rgba(27, 31, 35, 0.05);color: rgb(102, 102, 102)\">Map&lt;Integer, String&gt; map = new HashMap();</span></div><div><code class=\"__se__t-code\">map.put(1, \"Java\");</code></div><div><code class=\"__se__t-code\">map.put(2, \"C++\");</code></div><div><code class=\"__se__t-code\">map.put(3, \"PHP\");</code></div><div><code class=\"__se__t-code\">Iterator&lt;Map.Entry&lt;Integer, Stringef iterator =&nbsp;</code><span style=\"background-color: rgba(27, 31, 35, 0.05);color: rgb(102, 102, 102)\">map.entrySet().iterator();</span></div><div><code class=\"__se__t-code\">while (iterator.hasNext()) {</code></div><div><code class=\"__se__t-code\">&nbsp;&nbsp;&nbsp;&nbsp;Map.Entry&lt;Integer, String&gt; entry = iterator.next();</code></div><div><code class=\"__se__t-code\">&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(entry.getKey() + entry.getValue());</code></div><div><code class=\"__se__t-code\">}</code></div>', '2023-07-28 10:51:40', 1, '1000002', 'MIAO?', 18, 0, NULL);
INSERT INTO `question_info` VALUES (10157, 'Arraylist 和 Vector 的区别?', 10011, 'Java', 1, NULL, '<p>1. ArrayList 是 List 的主要实现类，底层使⽤ Object[ ]存储，适⽤于频繁的查找⼯作，线程不安全 ；</p><div>2. Vector 是 List 的古⽼实现类，底层使⽤ Object[ ]存储，线程安全的。</div><p></p>', '2023-07-28 10:52:53', 1, '1000002', 'MIAO?', 10, 0, NULL);
INSERT INTO `question_info` VALUES (10158, 'Arraylist 与 LinkedList 区别?', 10011, 'Java', 1, NULL, '<p>1. 是否保证线程安全： ArrayList 和 LinkedList 都是不同步的，也就是不保证线程安全；<br></p><div>2. 底层数据结构： Arraylist 底层使⽤的是 Object 数组； LinkedList 底层使⽤的是 双\r\n</div><div>向链表 数据结构（JDK1.6 之前为循环链表，JDK1.7 取消了循环。注意双向链表和双向循环链\r\n</div><div>表的区别！）\r\n</div><div>3. 插⼊和删除是否受元素位置的影响： ① ArrayList 采⽤数组存储，所以插⼊和删除元素的\r\n</div><div>时间复杂度受元素位置的影响。 ⽐如：执⾏ add(E e) ⽅法的时候， ArrayList 会默认在\r\n</div><div>将指定的元素追加到此列表的末尾，这种情况时间复杂度就是 O(1)。但是如果要在指定位置 i\r\n</div><div>插⼊和删除元素的话（ add(int index, E element) ）时间复杂度就为 O(n-i)。因为在进\r\n</div><div>⾏上述操作的时候集合中第 i 和第 i 个元素之后的(n-i)个元素都要执⾏向后位/向前移⼀位的\r\n</div><div>操作。 ② LinkedList 采⽤链表存储，所以对于 add(E e) ⽅法的插⼊，删除元素时间复杂\r\n</div><div>度不受元素位置的影响，近似 O(1)，如果是要在指定位置 i 插⼊和删除元素的话（ (add(int\r\n</div><div>index, E element) ） 时间复杂度近似为 o(n)) 因为需要先移动到指定位置再插⼊。\r\n</div><div>4. 是否⽀持快速随机访问： LinkedList 不⽀持⾼效的随机元素访问，⽽ ArrayList ⽀持。\r\n</div><div>快速随机访问就是通过元素的序号快速获取元素对象(对应于 get(int index) ⽅法)。\r\n</div><div>5. 内存空间占⽤： ArrayList 的空 间浪费主要体现在在 list 列表的结尾会预留⼀定的容量空\r\n</div><div>间，⽽ LinkedList 的空间花费则体现在它的每⼀个元素都需要消耗⽐ ArrayList 更多的空间\r\n</div><div>（因为要存放直接后继和直接前驱以及数据）。</div><p></p>', '2023-07-28 10:54:16', 1, '1000002', 'MIAO?', 26, 0, NULL);
INSERT INTO `question_info` VALUES (10159, 'Linux 下命令有哪几种可使用的通配符？分别代表什么含义?', 10003, 'Linux', 1, NULL, '<p><br></p><div>“？”可替代单个字符。\r\n</div><div>“*”可替代任意多个字符。\r\n</div><div>方括号“[charset]”可替代 charset 集中的任何单个字符，如[a-z]，[abABC]\r\n</div><p></p>', '2023-07-28 11:01:43', 1, '1000002', 'MIAO?', 15, 0, NULL);
INSERT INTO `question_info` VALUES (10160, 'RequestMapping注解中的value是否加斜杠', 10011, 'Java', 1, NULL, '<p>可加可不加，因为在springmvc底层会对其进行处理，如果没有斜杠会自动加上<br><br></p><pre><span style=\"color:#cc7832\">private static </span>Set&lt;String&gt; <span style=\"color:#ffc66d\">initPatterns</span>(String[] patterns) {<br>    <span style=\"color:#cc7832\">if </span>(!hasPattern(patterns)) {<br>        <span style=\"color:#cc7832\">return </span><span style=\"color:#9876aa\">EMPTY_PATH_PATTERN</span><span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">    </span>} <span style=\"color:#cc7832\">else </span>{<br>        Set&lt;String&gt; result = <span style=\"color:#cc7832\">new </span>LinkedHashSet(patterns.<span style=\"color:#9876aa\">length</span>)<span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">        </span>String[] var2 = patterns<span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">        int </span>var3 = patterns.<span style=\"color:#9876aa\">length</span><span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\"><br></span><span style=\"color:#cc7832\">        for</span>(<span style=\"color:#cc7832\">int </span>var4 = <span style=\"color:#6897bb\">0</span><span style=\"color:#cc7832\">; </span>var4 &lt; var3<span style=\"color:#cc7832\">; </span>++var4) {<br>            String pattern = var2[var4]<span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">            if </span>(StringUtils.hasLength(pattern) &amp;&amp; !pattern.startsWith(<span style=\"color:#6a8759\">\"/\"</span>)) {<br>                pattern = <span style=\"color:#6a8759\">\"/\" </span>+ pattern<span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">            </span>}<br><br>            result.add(pattern)<span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">        </span>}<br><br>        <span style=\"color:#cc7832\">return </span>result<span style=\"color:#cc7832\">;<br></span><span style=\"color:#cc7832\">    </span>}<br>}</pre>', '2023-07-28 16:43:20', 1, '1000002', 'MIAO?', 35, 0, NULL);
INSERT INTO `question_info` VALUES (10161, 'GET和POST的请求的区别', 10002, '前端工程化', 3, NULL, '<p>Post 和 Get 是 HTTP 请求的两种⽅法，其区别如下：<br></p><p>• 应⽤场景：GET 请求是⼀个幂等的请求，⼀般 Get 请求⽤于对服务器资源不会产⽣影响的场景，⽐如说请求⼀个⽹⻚的资源。⽽ Post 不是⼀个幂等的请求，⼀般⽤于对服务器资源会产⽣影响的情景，⽐如注册⽤⼾这⼀类的操作。</p><p>• 是否缓存：因为两者应⽤场景不同，浏览器⼀般会对 Get 请求缓存，但很少对 Post 请求缓存。</p><p>• 发送的报⽂格式：Get 请求的报⽂中实体部分为空，Post 请求的报⽂中实体部分⼀般为向服务器发送的数据。</p><p>• 安全性：Get 请求可以将请求的参数放⼊ url 中向服务器发送，这样的做法相对于 Post 请求来说是不太安全的，因为请求的 url 会被保留在历史记录中。</p><p>• 请求⻓度：浏览器由于对 url ⻓度的限制，所以会影响 get 请求发送数据时的⻓度。这个限制是浏览器规定的，并不是 RFC 规定的。</p><p>• 参数类型：post 的参数传递⽀持更多的数据类型。</p>', '2023-07-28 17:20:00', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10162, 'HTTP协议规定的协议头和请求头有什么', 10002, '前端工程化', 3, NULL, '<p>1.请求头信息：</p><p>Accept:浏览器告诉服务器所支持的数据类型</p><p>Host:浏览器告诉服务器我想访问服务器的哪台主机Referer:浏览器告诉服务器我是从哪里来的（防盗链）</p><p>User-Agent:浏览器类型、版本信息</p><p>Date:浏览器告诉服务器我是什么时候访问的</p><p>Connection:连接方式Cookie</p><p>X-Request-With:请求方式</p><p>2.响应头信息：</p><p>Location:这个就是告诉浏览器你要去找谁</p><p>Server:告诉浏览器服务器的类型</p><p>Content-Type:告诉浏览器返回的数据类型</p><p>Refresh:控制了的定时刷新</p>', '2023-07-29 12:46:03', 1, '1000005', '一个好名字', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10163, 'HTTP和HTTPS协议的区别', 10002, '前端工程化', 2, NULL, '<p>HTTP和HTTPS协议的主要区别如下：<br></p><div>• HTTPS协议需要CA证书，费⽤较⾼；⽽HTTP协议不需要；</div><div>• HTTP协议是超⽂本传输协议，信息是明⽂传输的，HTTPS则是具有安全性的SSL加密传输协议；</div><div>• 使⽤不同的连接⽅式，端⼝也不同，HTTP协议端⼝是80，HTTPS协议端⼝是443；</div><div>• HTTP协议连接很简单，是⽆状态的；HTTPS协议是有SSL和HTTP协议构建的可进⾏加密传输、⾝</div><div>份认证的⽹络协议，⽐HTTP更加安全。</div>', '2023-07-29 15:23:31', 1, '1000005', '一个好名字', 3, 0, NULL);
INSERT INTO `question_info` VALUES (10164, '当在浏览器中输⼊ Google.com 并且按下回⻋之后发⽣了什么？', 10002, '前端工程化', 4, '<p><br></p>', '<div>（1）解析URL：⾸先会对 URL 进⾏解析，分析所需要使⽤的传输协议和请求的资源的路径。如果输<br></div><div>⼊的 URL 中的协议或者主机名不合法，将会把地址栏中输⼊的内容传递给搜索引擎。如果没有问题，</div><div>浏览器会检查 URL 中是否出现了⾮法字符，如果存在⾮法字符，则对⾮法字符进⾏转义后再进⾏下⼀</div><p>过程。</p><div>（2）缓存判断：浏览器会判断所请求的资源是否在缓存⾥，如果请求的资源在缓存⾥并且没有失效，</div><p>那么就直接使⽤，否则向服务器发起新的请求。</p><div>（3）DNS解析：下⼀步⾸先需要获取的是输⼊的 URL 中的域名的 IP 地址，⾸先会判断本地是否有该</div><div>域名的 IP 地址的缓存，如果有则使⽤，如果没有则向本地 DNS 服务器发起请求。本地 DNS 服务器也</div><div>会先检查是否存在缓存，如果没有就会先向根域名服务器发起请求，获得负责的顶级域名服务器的地</div><div>址后，再向顶级域名服务器请求，然后获得负责的权威域名服务器的地址后，再向权威域名服务器发</div><div>起请求，最终获得域名的 IP 地址后，本地 DNS 服务器再将这个 IP 地址返回给请求的⽤⼾。⽤⼾向本</div><p>地 DNS 服务器发起请求属于递归请求，本地 DNS 服务器向各级域名服务器发起请求属于迭代请求。</p><div>（4）获取MAC地址：当浏览器得到 IP 地址后，数据传输还需要知道⽬的主机 MAC 地址，因为应⽤层</div><div>下发数据给传输层，TCP 协议会指定源端⼝号和⽬的端⼝号，然后下发给⽹络层。⽹络层会将本机地</div><div>址作为源地址，获取的 IP 地址作为⽬的地址。然后将下发给数据链路层，数据链路层的发送需要加⼊</div><div>通信双⽅的 MAC 地址，本机的 MAC 地址作为源 MAC 地址，⽬的 MAC 地址需要分情况处理。通过将</div><div>IP 地址与本机的⼦⽹掩码相与，可以判断是否与请求主机在同⼀个⼦⽹⾥，如果在同⼀个⼦⽹⾥，可</div><div>以使⽤ APR 协议获取到⽬的主机的 MAC 地址，如果不在⼀个⼦⽹⾥，那么请求应该转发给⽹关，由它</div><div>代为转发，此时同样可以通过 ARP 协议来获取⽹关的 MAC 地址，此时⽬的主机的 MAC 地址应该为⽹</div><p>关的地址。</p><div>（5）TCP三次握⼿：下⾯是 TCP 建⽴连接的三次握⼿的过程，⾸先客⼾端向服务器发送⼀个 SYN 连</div><div>接请求报⽂段和⼀个随机序号，服务端接收到请求后向客⼾端发送⼀个 SYN ACK报⽂段，确认连接请</div><div>求，并且也向客⼾端发送⼀个随机序号。客⼾端接收服务器的确认应答后，进⼊连接建⽴的状态，同</div><div>时向服务器也发送⼀个ACK 确认报⽂段，服务器端接收到确认后，也进⼊连接建⽴状态，此时双⽅的</div><p>连接就建⽴起来了。</p><div>（6）HTTPS握⼿：如果使⽤的是 HTTPS 协议，在通信前还存在 TLS 的⼀个四次握⼿的过程。⾸先由</div><div>客⼾端向服务器端发送使⽤的协议的版本号、⼀个随机数和可以使⽤的加密⽅法。服务器端收到后，</div><div>确认加密的⽅法，也向客⼾端发送⼀个随机数和⾃⼰的数字证书。客⼾端收到后，⾸先检查数字证书</div><div>是否有效，如果有效，则再⽣成⼀个随机数，并使⽤证书中的公钥对随机数加密，然后发送给服务器</div><div>端，并且还会提供⼀个前⾯所有内容的 hash 值供服务器端检验。服务器端接收后，使⽤⾃⼰的私钥对</div><div>数据解密，同时向客⼾端发送⼀个前⾯所有内容的 hash 值供客⼾端检验。这个时候双⽅都有了三个随</div><div>机数，按照之前所约定的加密⽅法，使⽤这三个随机数⽣成⼀把秘钥，以后双⽅通信前，就使⽤这个</div><p>秘钥对数据进⾏加密后再传输。</p><div>（7）返回数据：当⻚⾯请求发送到服务器端后，服务器端会返回⼀个 html ⽂件作为响应，浏览器接</div><p>收到响应后，开始对 html ⽂件进⾏解析，开始⻚⾯的渲染过程。</p><div>（8）⻚⾯渲染：浏览器⾸先会根据 html ⽂件构建 DOM 树，根据解析到的 css ⽂件构建 CSSOM 树，</div><div>如果遇到 script 标签，则判端是否含有 defer 或者 async 属性，要不然 script 的加载和执⾏会造成⻚</div><div>⾯的渲染的阻塞。当 DOM 树和 CSSOM 树建⽴好后，根据它们来构建渲染树。渲染树构建好后，会根</div><div>据渲染树来进⾏布局。布局完成后，最后使⽤浏览器的 UI 接⼝对⻚⾯进⾏绘制。这个时候整个⻚⾯就</div><p>显⽰出来了。</p><div>（9）TCP四次挥⼿：最后⼀步是 TCP 断开连接的四次挥⼿过程。若客⼾端认为数据发送完成，则它需</div><div>要向服务端发送连接释放请求。服务端收到连接释放请求后，会告诉应⽤层要释放 TCP 链接。然后会</div><div>发送 ACK 包，并进⼊ CLOSE_WAIT 状态，此时表明客⼾端到服务端的连接已经释放，不再接收客⼾端</div><div>发的数据了。但是因为 TCP 连接是双向的，所以服务端仍旧可以发送数据给客⼾端。服务端如果此时</div><div>还有没发完的数据会继续发送，完毕后会向客⼾端发送连接释放请求，然后服务端便进⼊ LAST-ACK</div><div>状态。客⼾端收到释放请求后，向服务端发送确认应答，此时客⼾端进⼊ TIME-WAIT 状态。该状态会</div><div>持续 2MSL（最⼤段⽣存期，指报⽂段在⽹络中⽣存的时间，超时会被抛弃） 时间，若该时间段内没</div><div>有服务端的重发请求的话，就进⼊ CLOSED 状态。当服务端收到确认应答后，也便进⼊ CLOSED 状</div><div>态。</div>', '2023-07-29 15:34:55', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10165, 'HTTP协议的优点和缺点', 10002, '前端工程化', 3, NULL, '<div>HTTP 是超⽂本传输协议，它定义了客⼾端和服务器之间交换报⽂的格式和⽅式，默认使⽤ 80 端⼝。<br></div><p>它使⽤ TCP 作为传输层协议，保证了数据传输的可靠性。</p><div>HTTP协议具有以下优点：</div><div>• ⽀持客⼾端/服务器模式</div><div>• 简单快速：客⼾向服务器请求服务时，只需传送请求⽅法和路径。由于 HTTP 协议简单，使得</div><div>HTTP 服务器的程序规模⼩，因⽽通信速度很快。</div><div>• ⽆连接：⽆连接就是限制每次连接只处理⼀个请求。服务器处理完客⼾的请求，并收到客⼾的应答</div><div>后，即断开连接，采⽤这种⽅式可以节省传输时间。</div><div>• ⽆状态：HTTP 协议是⽆状态协议，这⾥的状态是指通信过程的上下⽂信息。缺少状态意味着如果</div><div>后续处理需要前⾯的信息，则它必须重传，这样可能会导致每次连接传送的数据量增⼤。另⼀⽅</div><div>⾯，在服务器不需要先前信息时它的应答就⽐较快。</div><p>• 灵活：HTTP 允许传输任意类型的数据对象。正在传输的类型由 Content-Type 加以标记。</p><div>HTTP协议具有以下缺点：</div><div>• ⽆状态：HTTP 是⼀个⽆状态的协议，HTTP 服务器不会保存关于客⼾的任何信息。</div><div>• 明⽂传输：协议中的报⽂使⽤的是⽂本形式，这就直接暴露给外界，不安全。</div><div>• 不安全</div><div>（1）通信使⽤明⽂（不加密），内容可能会被窃听；</div><div>（2）不验证通信⽅的⾝份，因此有可能遭遇伪装；</div><div>（3）⽆法证明报⽂的完整性，所以有可能已遭篡改；</div>', '2023-07-29 15:37:02', 1, '1000005', '一个好名字', 1, 0, NULL);
INSERT INTO `question_info` VALUES (10166, 'TLS/SSL的⼯作原理', 10002, '前端工程化', 4, '<p><br></p>', '<p>TLS/SSL全称安全传输层协议（Transport Layer Security）, 是介于TCP和HTTP之间的⼀层安全协议，不影响原有的TCP协议和HTTP协议，所以使⽤HTTPS基本上不需要对HTTP⻚⾯进⾏太多的改造。</p><div>TLS/SSL的功能实现主要依赖三类基本算法：散列函数hash、对称加密、⾮对称加密。这三类算法的</div><div>作⽤如下：</div><div>• 基于散列函数验证信息的完整性</div><div>• 对称加密算法采⽤协商的秘钥对数据加密</div><p>• ⾮对称加密实现⾝份认证和秘钥协商</p><div>（1）散列函数hash</div><div>常⻅的散列函数有MD5、SHA1、SHA256。该函数的特点是单向不可逆，对输⼊数据⾮常敏感，输出</div><p>的⻓度固定，任何数据的修改都会改变散列函数的结果，可以⽤于防⽌信息篡改并验证数据的完整性。</p><div>特点：在信息传输过程中，散列函数不能三都实现信息防篡改，由于传输是明⽂传输，中间⼈可以修</div><p>改信息后重新计算信息的摘要，所以需要对传输的信息和信息摘要进⾏加密。</p><div>（2）对称加密</div><div>对称加密的⽅法是，双⽅使⽤同⼀个秘钥对数据进⾏加密和解密。但是对称加密的存在⼀个问题，就</div><div>是如何保证秘钥传输的安全性，因为秘钥还是会通过⽹络传输的，⼀旦秘钥被其他⼈获取到，那么整</div><p>个加密过程就毫⽆作⽤了。 这就要⽤到⾮对称加密的⽅法。</p><div>常⻅的对称加密算法有AES-CBC、DES、3DES、AES-GCM等。相同的秘钥可以⽤于信息的加密和解</div><p>密。掌握秘钥才能获取信息，防⽌信息窃听，其通讯⽅式是⼀对⼀。</p><div>特点：对称加密的优势就是信息传输使⽤⼀对⼀，需要共享相同的密码，密码的安全是保证信息安全</div><p>的基础，服务器和N个客⼾端通信，需要维持N个密码记录且不能修改密码。</p><div>（3）⾮对称加密</div><div>⾮对称加密的⽅法是，我们拥有两个秘钥，⼀个是公钥，⼀个是私钥。公钥是公开的，私钥是保密</div><div>的。⽤私钥加密的数据，只有对应的公钥才能解密，⽤公钥加密的数据，只有对应的私钥才能解密。</div><div>我们可以将公钥公布出去，任何想和我们通信的客⼾， 都可以使⽤我们提供的公钥对数据进⾏加密，</div><div>这样我们就可以使⽤私钥进⾏解密，这样就能保证数据的安全了。但是⾮对称加密有⼀个缺点就是加</div><div>密的过程很慢，因此如果每次通信都使⽤⾮对称加密的⽅式的话，反⽽会造成等待时间过⻓的问题。</div><div>常⻅的⾮对称加密算法有RSA、ECC、DH等。秘钥成对出现，⼀般称为公钥（公开）和私钥（保</div><div>密）。公钥加密的信息只有私钥可以解开，私钥加密的信息只能公钥解开，因此掌握公钥的不同客⼾</div><div>端之间不能相互解密信息，只能和服务器进⾏加密通信，服务器可以实现⼀对多的的通信，客⼾端也</div><p>可以⽤来验证掌握私钥的服务器的⾝份。</p><div>特点：⾮对称加密的特点就是信息⼀对多，服务器只需要维持⼀个私钥就可以和多个客⼾端进⾏通</div><div>信，但服务器发出的信息能够被所有的客⼾端解密，且该算法的计算复杂，加密的速度慢。综合上述算法特点，TLS/SSL的⼯作⽅式就是客⼾端使⽤⾮对称加密与服务器进⾏通信，实现⾝份的验</div><div>证并协商对称加密使⽤的秘钥。对称加密算法采⽤协商秘钥对信息以及信息摘要进⾏加密通信，不同</div><div>节点之间采⽤的对称秘钥不同，从⽽保证信息只能通信双⽅获取。这样就解决了两个⽅法各⾃存在的</div><div>问题。</div>', '2023-07-29 15:40:29', 1, '1000005', '一个好名字', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10167, 'HTTP状态码', 10002, '前端工程化', 4, NULL, '<p><span class=\"__se__t-shadow\">状态码的类别：</span><br></p><div>类别 | 原因 | 描述 |</div><div>-------- | ------------------------------- | -------------------------- |</div><div>1xx | Informational(信息性状态码) | 接受的请求正在处理 |</div><div>2xx | Success(成功状态码) | 请求正常处理完毕 |</div><div>3xx | Redirection(重定向状态码) | 需要进⾏附加操作⼀完成请求 |</div><div>4xx | Client Error (客⼾端错误状态码) | 服务器⽆法处理请求 |</div><p>5xx | Server Error(服务器错误状态码) | 服务器处理请求出错 |</p><div><span class=\"__se__t-shadow\">1. 2XX (Success 成功状态码)</span></div><p>状态码2XX表⽰请求被正常处理了。</p><div>（1）200 OK</div><p>200 OK表⽰客⼾端发来的请求被服务器端正常处理了。</p><div>（2）204 No Content</div><p>该状态码表⽰客⼾端发送的请求已经在服务器端正常处理了，但是没有返回的内容，响应报⽂中不包含实体的主体部分。⼀般在只需要从客⼾端往服务器端发送信息，⽽服务器端不需要往客⼾端发送内容时使⽤。</p><div>（3）206 Partial Content</div><p>该状态码表⽰客⼾端进⾏了范围请求，⽽服务器端执⾏了这部分的 GET 请求。响应报⽂中包含由Content-Range 指定范围的实体内容。</p><div><span class=\"__se__t-shadow\">2. 3XX (Redirection 重定向状态码)</span></div><p>3XX 响应结果表明浏览器需要执⾏某些特殊的处理以正确处理请求。</p><div>（1）301 Moved Permanently</div><p>永久重定向。</p><p>该状态码表⽰请求的资源已经被分配了新的 URI，以后应使⽤资源指定的 URI。新的 URI 会在 HTTP 响应头中的 Location ⾸部字段指定。若⽤⼾已经把原来的URI保存为书签，此时会按照 Location 中新的URI重新保存该书签。同时，搜索引擎在抓取新内容的同时也将旧的⽹址替换为重定向之后的⽹址。</p><div>使⽤场景：</div><p>• 当我们想换个域名，旧的域名不再使⽤时，⽤⼾访问旧域名时⽤301就重定向到新的域名。其实也是告诉搜索引擎收录的域名需要对新的域名进⾏收录。• 在搜索引擎的搜索结果中出现了不带www的域名，⽽带www的域名却没有收录，这个时候可以⽤301重定向来告诉搜索引擎我们⽬标的域名是哪⼀个。</p><div>（2）302 Found</div><p>临时重定向。</p><p>该状态码表⽰请求的资源被分配到了新的 URI，希望⽤⼾（本次）能使⽤新的 URI 访问资源。和 301 Moved Permanently 状态码相似，但是 302 代表的资源不是被永久重定向，只是临时性质的。也就是说已移动的资源对应的 URI 将来还有可能发⽣改变。若⽤⼾把 URI 保存成书签，但不会像 301 状态码出现时那样去更新书签，⽽是仍旧保留返回 302 状态码的⻚⾯对应的 URI。同时，搜索引擎会抓取新的内容⽽保留旧的⽹址。因为服务器返回302代码，搜索引擎认为新的⽹址只是暂时的。</p><div>使⽤场景：</div><div>• 当我们在做活动时，登录到⾸⻚⾃动重定向，进⼊活动⻚⾯。</div><div>• 未登陆的⽤⼾访问⽤⼾中⼼重定向到登录⻚⾯。</div><p>• 访问404⻚⾯重新定向到⾸⻚。</p><div>（3）303 See Other</div><p>该状态码表⽰由于请求对应的资源存在着另⼀个 URI，应使⽤ GET ⽅法定向获取请求的资源。303 状态码和 302 Found 状态码有着相似的功能，但是 303 状态码明确表⽰客⼾端应当采⽤ GET ⽅法获取资源。303 状态码通常作为 PUT 或 POST 操作的返回结果，它表⽰重定向链接指向的不是新上传的资源，⽽是另外⼀个⻚⾯，⽐如消息确认⻚⾯或上传进度⻚⾯。⽽请求重定向⻚⾯的⽅法要总是使⽤ GET。</p><div>注意：</div><div>• 当 301、302、303 响应状态码返回时，⼏乎所有的浏览器都会把 POST 改成GET，并删除请求报⽂内的主体，之后请求会再次⾃动发送。</div><p>• 301、302 标准是禁⽌将 POST ⽅法变成 GET⽅法的，但实际⼤家都会这么做。</p><div>（4）304 Not Modified</div><p>浏览器缓存相关。</p><p>该状态码表⽰客⼾端发送附带条件的请求时，服务器端允许请求访问资源，但未满⾜条件的情况。304 状态码返回时，不包含任何响应的主体部分。304 虽然被划分在 3XX 类别中，但是和重定向没有关系。带条件的请求（Http 条件请求）：使⽤ Get⽅法 请求，请求报⽂中包含（ if-match 、 if-nonematch 、 if-modified-since 、 if-unmodified-since 、 if-range ）中任意⾸部。状态码304并不是⼀种错误，⽽是告诉客⼾端有缓存，直接使⽤缓存中的数据。返回⻚⾯的只有头部信息，是没有内容部分的，这样在⼀定程度上提⾼了⽹⻚的性能。</p><div>（5）307 Temporary Redirect</div><p>307表⽰临时重定向。</p><div>该状态码与 302 Found 有着相同含义，尽管 302 标准禁⽌ POST 变成 GET，但是实际使⽤时还是这样做了。</div><p>307 会遵守浏览器标准，不会从 POST 变成 GET。但是对于处理请求的⾏为时，不同浏览器还是会出现不同的情况。规范要求浏览器继续向 Location 的地址 POST 内容。规范要求浏览器继续向Location 的地址 POST 内容。</p><div><span class=\"__se__t-shadow\">3. 4XX (Client Error 客⼾端错误状态码)</span></div><p>4XX 的响应结果表明客⼾端是发⽣错误的原因所在。</p><div>（1）400 Bad Request</div><p>该状态码表⽰请求报⽂中存在语法错误。当错误发⽣时，需修改请求的内容后再次发送请求。另外，浏览器会像 200 OK ⼀样对待该状态码。</p><div>（2）401 Unauthorized</div><p>该状态码表⽰发送的请求需要有通过 HTTP 认证(BASIC 认证、DIGEST 认证)的认证信息。若之前已进⾏过⼀次请求，则表⽰⽤⼾认证失败返回含有 401 的响应必须包含⼀个适⽤于被请求资源的 WWW-Authenticate ⾸部⽤以质询(challenge)⽤⼾信息。当浏览器初次接收到 401 响应，会弹出认证⽤的对话窗⼝。</p><div>以下情况会出现401：</div><div>• 401.1 - 登录失败。</div><div>• 401.2 - 服务器配置导致登录失败。</div><div>• 401.3 - 由于 ACL 对资源的限制⽽未获得授权。</div><div>• 401.4 - 筛选器授权失败。</div><div>• 401.5 - ISAPI/CGI 应⽤程序授权失败。</div><p>• 401.7 - 访问被 Web 服务器上的 URL 授权策略拒绝。这个错误代码为 IIS 6.0 所专⽤。</p><div>（3）403 Forbidden</div><p>该状态码表明请求资源的访问被服务器拒绝了，服务器端没有必要给出详细理由，但是可以在响应报⽂实体的主体中进⾏说明。进⼊该状态后，不能再继续进⾏验证。该访问是永久禁⽌的，并且与应⽤逻辑密切相关。</p><div>IIS 定义了许多不同的 403 错误，它们指明更为具体的错误原因：</div><div>• 403.1 - 执⾏访问被禁⽌。</div><div>• 403.2 - 读访问被禁⽌。</div><div>• 403.3 - 写访问被禁⽌。• 403.4 - 要求 SSL。</div><div>• 403.5 - 要求 SSL 128。</div><div>• 403.6 - IP 地址被拒绝。</div><div>• 403.7 - 要求客⼾端证书。</div><div>• 403.8 - 站点访问被拒绝。</div><div>• 403.9 - ⽤⼾数过多。</div><div>• 403.10 - 配置⽆效。</div><div>• 403.11 - 密码更改。</div><div>• 403.12 - 拒绝访问映射表。</div><div>• 403.13 - 客⼾端证书被吊销。</div><div>• 403.14 - 拒绝⽬录列表。</div><div>• 403.15 - 超出客⼾端访问许可。</div><div>• 403.16 - 客⼾端证书不受信任或⽆效。</div><div>• 403.17 - 客⼾端证书已过期或尚未⽣效</div><div>• 403.18 - 在当前的应⽤程序池中不能执⾏所请求的 URL。这个错误代码为 IIS 6.0 所专⽤。</div><div>• 403.19 - 不能为这个应⽤程序池中的客⼾端执⾏ CGI。这个错误代码为 IIS 6.0 所专⽤。</div><p>• 403.20 - Passport 登录失败。这个错误代码为 IIS 6.0 所专⽤。</p><div>（4）404 Not Found</div><div>该状态码表明服务器上⽆法找到请求的资源。除此之外，也可以在服务器端拒绝请求且不想说明理由</div><p>时使⽤。</p><div>以下情况会出现404：</div><div>• 404.0 -（⽆） ‒ 没有找到⽂件或⽬录。</div><div>• 404.1 - ⽆法在所请求的端⼝上访问 Web 站点。</div><div>• 404.2 - Web 服务扩展锁定策略阻⽌本请求。</div><p>• 404.3 - MIME 映射策略阻⽌本请求。</p><div>（5）405 Method Not Allowed</div><div>该状态码表⽰客⼾端请求的⽅法虽然能被服务器识别，但是服务器禁⽌使⽤该⽅法。GET 和 HEAD ⽅法，服务器应该总是允许客⼾端进⾏访问。客⼾端可以通过 OPTIONS ⽅法（预检）来查看服务器允许的访问⽅法, 如下</div><p>1 Access-Control-Allow-Methods: GET,HEAD,PUT,PATCH,POST,DELETE</p><div><span class=\"__se__t-shadow\">4. 5XX (Server Error 服务器错误状态码)</span></div><p>5XX 的响应结果表明服务器本⾝发⽣错误.</p><div>（1）500 Internal Server Error</div><p>该状态码表明服务器端在执⾏请求时发⽣了错误。也有可能是 Web 应⽤存在的 bug 或某些临时的故障。</p><div>（2）502 Bad Gateway</div><div>该状态码表明扮演⽹关或代理⻆⾊的服务器，从上游服务器中接收到的响应是⽆效的。注意，502 错误通常不是客⼾端能够修复的，⽽是需要由途经的 Web 服务器或者代理服务器对其进⾏修复。以下情况会出现502：</div><div>• 502.1 - CGI （通⽤⽹关接⼝）应⽤程序超时。</div><p>• 502.2 - CGI （通⽤⽹关接⼝）应⽤程序出错。</p><div>（3）503 Service Unavailable</div><p>该状态码表明服务器暂时处于超负载或正在进⾏停机维护，现在⽆法处理请求。如果事先得知解除以上状况需要的时间，最好写⼊ RetryAfter ⾸部字段再返回给客⼾端。</p><div>使⽤场景：</div><div>• 服务器停机维护时，主动⽤503响应请求；</div><p>• nginx 设置限速，超过限速，会返回503。</p><div>（4）504 Gateway Timeout</div><p>该状态码表⽰⽹关或者代理的服务器⽆法在规定的时间内获得想要的响应。他是HTTP 1.1中新加⼊的。</p><p>使⽤场景：代码执⾏时间超时，或者发⽣了死循环。</p><div><span class=\"__se__t-shadow\">5. 总结</span></div><div>（1）2XX 成功</div><div>• 200 OK，表⽰从客⼾端发来的请求在服务器端被正确处理</div><div>• 204 No content，表⽰请求成功，但响应报⽂不含实体的主体部分</div><div>• 205 Reset Content，表⽰请求成功，但响应报⽂不含实体的主体部分，但是与 204 响应不同在于要求请求⽅重置内容</div><p>• 206 Partial Content，进⾏范围请求</p><div>（2）3XX 重定向</div><div>• 301 moved permanently，永久性重定向，表⽰资源已被分配了新的 URL</div><div>• 302 found，临时性重定向，表⽰资源临时被分配了新的 URL</div><div>• 303 see other，表⽰资源存在着另⼀个 URL，应使⽤ GET ⽅法获取资源</div><div>• 304 not modified，表⽰服务器允许访问资源，但因发⽣请求未满⾜条件的情况</div><p>• 307 temporary redirect，临时重定向，和302含义类似，但是期望客⼾端保持请求⽅法不变向新的地址发出请求</p><div>（3）4XX 客⼾端错误</div><div>• 400 bad request，请求报⽂存在语法错误</div><div>• 401 unauthorized，表⽰发送的请求需要有通过 HTTP 认证的认证信息</div><div>• 403 forbidden，表⽰对请求资源的访问被服务器拒绝</div><p>• 404 not found，表⽰在服务器上没有找到请求的资源</p><div>（4）5XX 服务器错误</div><div>• 500 internal sever error，表⽰服务器端在执⾏请求时发⽣了错误</div><div>• 501 Not Implemented，表⽰服务器不⽀持当前请求所需要的某个功能</div><div>• 503 service unavailable，表明服务器暂时处于超负载或正在停机维护，⽆法处理请求</div>', '2023-07-29 15:51:07', 1, '1000005', '一个好名字', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10168, 'OSI七层模型', 10002, '前端工程化', 3, NULL, '<p>ISO 为了更好的使⽹络应⽤更为普及，推出了 OSI 参考模型。<br></p><div>（1）应⽤层</div><div>OSI 参考模型中最靠近⽤⼾的⼀层，是为计算机⽤⼾提供应⽤接⼝，也为⽤⼾直接提供各种⽹络服务。我们常⻅应⽤层的⽹络服务协议有： HTTP ， HTTPS ， FTP ， POP3 、 SMTP 等。</div><div>• 在客⼾端与服务器中经常会有数据的请求，这个时候就是会⽤到 http(hyper text transfer protocol)(超⽂本传输协议) 或者 https .在后端设计数据接⼝时，我们常常使⽤到这个协议。</div><p>•FTP 是⽂件传输协议，在开发过程中，个⼈并没有涉及到，但是我想，在⼀些资源⽹站，⽐如百度⽹盘迅雷 应该是基于此协议的。• SMTP 是 simple mail transfer protocol（简单邮件传输协议） 。在⼀个项⽬中，在⽤⼾邮箱验证码登录的功能时，使⽤到了这个协议。</p><div>（2）表⽰层</div><p>表⽰层提供各种⽤于应⽤层数据的编码和转换功能,确保⼀个系统的应⽤层发送的数据能被另⼀个系统的应⽤层识别。如果必要，该层可提供⼀种标准表⽰形式，⽤于将计算机内部的多种数据格式转换成通信中采⽤的标准表⽰形式。数据压缩和加密也是表⽰层可提供的转换功能之⼀。在项⽬开发中，为了⽅便数据传输，可以使⽤ base64 对数据进⾏编解码。如果按功能来划分，base64 应该是⼯作在表⽰层。</p><div>（3）会话层</div><p>会话层就是负责建⽴、管理和终⽌表⽰层实体之间的通信会话。该层的通信由不同设备中的应⽤程序之间的服务请求和响应组成。</p><div>（4）传输层</div><p>传输层建⽴了主机端到端的链接，传输层的作⽤是为上层协议提供端到端的可靠和透明的数据传输服务，包括处理差错控制和流量控制等问题。该层向⾼层屏蔽了下层数据通信的细节，使⾼层⽤⼾看到的只是在两个传输实体间的⼀条主机到主机的、可由⽤⼾控制和设定的、可靠的数据通路。我们通常说的， TCP UDP 就是在这⼀层。端⼝号既是这⾥的“端”。</p><div>（5）⽹络层</div><p>本层通过 IP 寻址来建⽴两个节点之间的连接，为源端的运输层送来的分组，选择合适的路由和交换节点，正确⽆误地按照地址传送给⽬的端的运输层。就是通常说的 IP 层。这⼀层就是我们经常说的IP 协议层。 IP 协议是 Internet 的基础。我们可以这样理解，⽹络层规定了数据包的传输路线，⽽传输层则规定了数据包的传输⽅式。</p><div>（6）数据链路层</div><p>将⽐特组合成字节,再将字节组合成帧,使⽤链路层地址 (以太⽹使⽤MAC地址)来访问介质,并进⾏差错检测。⽹络层与数据链路层的对⽐，通过上⾯的描述，我们或许可以这样理解，⽹络层是规划了数据包的传输路线，⽽数据链路层就是传输路线。不过，在数据链路层上还增加了差错控制的功能。</p><div>（7）物理层</div><div>实际最终信号的传输是通过物理层实现的。通过物理介质传输⽐特流。规定了电平、速度和电缆针脚。常⽤设备有（各种物理设备）集线器、中继器、调制解调器、⽹线、双绞线、同轴电缆。这些都是物理层的传输介质。</div><div><br></div><div>OSI七层模型通信特点：对等通信</div><div><br></div><div>对等通信，为了使数据分组从源传送到⽬的地，源端OSI模型的每⼀层都必须与⽬的端的对等层进⾏通</div><div>信，这种通信⽅式称为对等层通信。在每⼀层通信过程中，使⽤本层⾃⼰协议进⾏通信。</div>', '2023-07-29 15:55:16', 1, '1000005', '一个好名字', 2, 0, NULL);
INSERT INTO `question_info` VALUES (10169, '如何⽤webpack来优化前端性能？', 10002, '前端工程化', 2, NULL, '<p>⽤webpack优化前端性能是指优化webpack的输出结果，让打包的最终结果在浏览器运⾏快速⾼效。<br></p><p>• 压缩代码：删除多余的代码、注释、简化代码的写法等等⽅式。可以利⽤webpack的UglifyJsPlugin 和 ParallelUglifyPlugin 来压缩JS⽂件， 利⽤ cssnano （css-loader?minimize）来压缩css</p><p>• 利⽤*CDN*加速: 在构建过程中，将引⽤的静态资源路径修改为CDN上对应的路径。可以利⽤webpack对于 output 参数和各loader的 publicPath 参数来修改资源路径</p><p>• Tree Shaking: 将代码中永远不会⾛到的⽚段删除掉。可以通过在启动webpack时追加参数-optimize-minimize 来实现</p><p>• Code Splitting: 将代码按路由维度或者组件分块(chunk),这样做到按需加载,同时可以充分利⽤浏览器缓存</p><div>• 提取公共第三⽅库: SplitChunksPlugin插件来进⾏公共模块抽取,利⽤浏览器缓存可以⻓期缓存这些⽆需频繁变动的公共代码</div>', '2023-07-29 16:20:18', 1, '1000005', '一个好名字', 4, 0, NULL);
INSERT INTO `question_info` VALUES (10170, '如何提⾼webpack的打包速度?', 10002, '前端工程化', 2, NULL, '<p>• happypack: 利⽤进程并⾏编译loader,利⽤缓存来使得 rebuild 更快,遗憾的是作者表⽰已经不会继续开发此项⽬,类似的替代者是thread-loader• 外部扩展(externals): 将不怎么需要更新的第三⽅库脱离webpack打包，不被打⼊bundle中，从⽽减少打包时间，⽐如jQuery⽤script标签引⼊</p><p>• dll: 采⽤webpack的 DllPlugin 和 DllReferencePlugin 引⼊dll，让⼀些基本不会改动的代码先打包成静态资源，避免反复编译浪费时间</p><div>• 利⽤缓存: webpack.cache 、babel-loader.cacheDirectory、 HappyPack.cache 都可以利⽤缓存提⾼rebuild效率缩⼩⽂件搜索范围: ⽐如babel-loader插件,如果你的⽂件仅存在于src中,那么可以include: path.resolve(__dirname,\'src\') ,当然绝⼤多数情况下这种操作的提升有限，除⾮不⼩⼼build了node_modules⽂件</div>', '2023-07-29 16:21:20', 1, '1000005', '一个好名字', 6, 0, NULL);
INSERT INTO `question_info` VALUES (10171, '懒加载与预加载的区别', 10002, '前端工程化', 2, NULL, '<p>这两种⽅式都是提⾼⽹⻚性能的⽅式，两者主要区别是⼀个是提前加载，⼀个是迟缓甚⾄不加载。<br></p><p>懒加载对服务器前端有⼀定的缓解压⼒作⽤，预加载则会增加服务器前端压⼒。</p><p>• 懒加载也叫延迟加载，指的是在⻓⽹⻚中延迟加载图⽚的时机，当⽤⼾需要访问时，再去加载，这样可以提⾼⽹站的⾸屏加载速度，提升⽤⼾的体验，并且可以减少服务器的压⼒。它适⽤于图⽚很多，⻚⾯很⻓的电商⽹站的场景。懒加载的实现原理是，将⻚⾯上的图⽚的 src 属性设置为空字符串，将图⽚的真实路径保存在⼀个⾃定义属性中，当⻚⾯滚动的时候，进⾏判断，如果图⽚进⼊⻚⾯可视区域内，则从⾃定义属性中取出真实路径赋值给图⽚的 src 属性，以此来实现图⽚的延迟加载。</p><div>• 预加载指的是将所需的资源提前请求加载到本地，这样后⾯在需要⽤到时就直接从缓存取资源。通过预加载能够减少⽤⼾的等待时间，提⾼⽤⼾的体验。我了解的预加载的最常⽤的⽅式是使⽤ js 中的 image 对象，通过为 image 对象来设置 scr 属性，来实现图⽚的预加载</div>', '2023-07-29 16:23:40', 1, '1000005', '一个好名字', 10, 0, NULL);
INSERT INTO `question_info` VALUES (10172, 'let、const、var的区别', 10009, 'JavaScript', 2, NULL, '<p>（1）块级作⽤域：块作⽤域由 { } 包括，let和const具有块级作⽤域，var不存在块级作⽤域。</p><div>块级作⽤域解决了ES5中的两个问题：</div><div>• 内层变量可能覆盖外层变量</div><p>• ⽤来计数的循环变量泄露为全局变量</p><p>（2）变量提升：var存在变量提升，let和const不存在变量提升，即在变量只能在声明之后使⽤，否在会报错。</p><p>（3）给全局添加属性：浏览器的全局对象是window，Node的全局对象是global。var声明的变量为全局变量，并且会将该变量添加为全局对象的属性，但是let和const不会。</p><p>（4）重复声明：var声明变量时，可以重复声明变量，后声明的同名变量会覆盖之前声明的遍历。const和let不允许重复声明变量。</p><p>（5）暂时性死区：在使⽤let、const命令声明变量之前，该变量都是不可⽤的。这在语法上，称为暂时性死区。使⽤var声明的变量不存在暂时性死区。</p><p>（6）初始值设置：在变量声明时，var 和 let 可以不⽤设置初始值。⽽const声明变量必须设置初始值。</p><p>（7）指针指向：let和const都是ES6新增的⽤于创建变量的语法。 let创建的变量是可以更改指针指向（可以重新赋值）。但const声明的变量是不允许改变指针的指向。</p><div>区别 | var | let | const |</div><div>------------------ | ------- | ------- | --------- |</div><div>是否有块级作⽤域 | × | ✔️ | ✔️ |</div><div>是否存在变量提升 | ✔️ | × | × |</div><div>是否添加全局属性 | ✔️ | × | × |</div><div>能否重复声明变量 | ✔️ | × | × |</div><div>是否存在暂时性死区 | × | ✔️ | ✔️ |</div><div>是否必须设置初始值 | × | × | ✔️ |</div><div>能否改变指针指向 | ✔️ | ✔️ | × |</div>', '2023-08-01 09:33:01', 1, '1000005', '一个好名字', 32, 0, NULL);
INSERT INTO `question_info` VALUES (10173, '对作⽤域、作⽤域链的理解', 10009, 'JavaScript', 3, NULL, '<p><span style=\"font-size: 14px\">一、全局作⽤域和函数作⽤域</span><br></p><div>（1）全局作⽤域</div><div>• 最外层函数和最外层函数外⾯定义的变量拥有全局作⽤域</div><div>• 所有未定义直接赋值的变量⾃动声明为全局作⽤域</div><div>• 所有window对象的属性拥有全局作⽤域</div><p>• 全局作⽤域有很⼤的弊端，过多的全局作⽤域变量会污染全局命名空间，容易引起命名冲突。</p><div>（2）函数作⽤域</div><div>• 函数作⽤域声明在函数内部的变零，⼀般只有固定的代码⽚段可以访问到</div><p>• 作⽤域是分层的，内层作⽤域可以访问外层作⽤域，反之不⾏</p><p><span style=\"font-size: 14px\">二、块级作⽤域</span></p><div>• 使⽤ES6中新增的let和const指令可以声明块级作⽤域，块级作⽤域可以在函数中创建也可以在⼀个代码块中的创建（由 { } 包裹的代码⽚段）</div><div>• let和const声明的变量不会有变量提升，也不可以重复声明</div><p>• 在循环中⽐较适合绑定块级作⽤域，这样就可以把声明的计数器变量限制在循环内部。</p><div><strong>作⽤域链：</strong></div><p>在当前作⽤域中查找所需变量，但是该作⽤域没有这个变量，那这个变量就是⾃由变量。如果在⾃⼰作⽤域找不到该变量就去⽗级作⽤域查找，依次向上级作⽤域查找，直到访问到window对象就被终⽌，这⼀层层的关系就是作⽤域链。</p><p>作⽤域链的作⽤是<strong>保证对执⾏环境有权访问的所有变量和函数的有序访问，通过作⽤域链，可以访问</strong><strong>到外层环境的变量和函数</strong>。</p><p>作⽤域链的本质上是⼀个指向变量对象的指针列表。变量对象是⼀个包含了执⾏环境中所有变量和函数的对象。作⽤域链的前端始终都是当前执⾏上下⽂的变量对象。全局执⾏上下⽂的变量对象（也就是全局对象）始终是作⽤域链的最后⼀个对象。</p><div>当查找⼀个变量时，如果当前执⾏环境中没有找到，可以沿着作⽤域链向</div><div>后查找。\r\n</div><p></p><div>后查找</div>', '2023-08-01 09:38:10', 1, '1000005', '一个好名字', 12, 0, NULL);
INSERT INTO `question_info` VALUES (10174, '对浏览器内核的理解', 10002, '前端工程化', 3, NULL, '<p>浏览器内核主要分成两部分：<br></p><p>• 渲染引擎 的职责就是渲染，即在浏览器窗⼝中显⽰所请求的内容。默认情况下，渲染引擎可以显⽰html、xml ⽂档及图⽚，它也可以借助插件显⽰其他类型数据，例如使⽤ PDF 阅读器插件，可以显⽰ PDF 格式。</p><p>• JS 引擎：解析和执⾏ javascript 来实现⽹⻚的动态效果。</p><div>最开始渲染引擎和 JS 引擎并没有区分的很明确，后来 JS 引擎越来越独⽴，内核就倾向于只指渲染引擎。</div>', '2023-08-01 09:46:24', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10175, 'null和undefined的区别', 10009, 'JavaScript', 1, '<p><br></p>', '<p>总的来说 null和undefined都表示空，主要区别在于 undefined表示<strong>尚未初始化</strong>的变量的值，而null代表该变量有意缺少对象指向。</p><ul><li><code>undefined</code></li><ul><li>这个变量从根本上就没有定义</li><li>隐藏式 空值</li></ul><li><code>null</code></li><ul><li>这个值虽然定义了，但它并未指向任何内存中的对象</li><li>声明式 空值</li></ul></ul><pre><code>typeof null  // \'object\'<br>typeof undefined  // \'undefined\'</code></pre>', '2023-08-01 10:38:12', 1, '1000009', 'mrmayor', 13, 0, NULL);
INSERT INTO `question_info` VALUES (10176, '==与===区别', 10009, 'JavaScript', 1, '<p><br></p>', '<p>双等号 (==) 操作符：<br></p><p><p>三等号 (===) 操作符：</p></p><ol><li><ul><li>它进行的是相等比较，用于比较<strong>两个值是否相等</strong>。</li><li>在进行比较之前，会进行一些<strong>隐式类型转换</strong>。</li><li>如果操作数的类型不同，会进行自动类型转换，尝试使两个操作数类型相同。</li><li>例如，可以将字符串转换为数字，或者将布尔值转换为数字进行比较。</li><li>隐式类型转换可能导致一些意外的结果，因此需要小心使用。</li><li>例如，以下表达式的结果为 true: 1 == ‘1’，因为字符 ‘1’ 隐式转换为数字 1。</li></ul></li><li><ul><li>它进行的是严格的相等比较，除了比较值是否相等，还会比较类型是否相同。</li><li>在进行比较时，不会进行隐式类型转换。</li><li>只有当两个操作数的类型和值都相等时，结果才为 true。</li><li>例如，以下表达式的结果为 false: 1 === ‘1’，因为类型不同。</li></ul></li></ol><p>总的来说，推荐在JavaScript中使用三等号操作符 (===)，因为它更加严格和准确，避免了隐式类型转换可能引起的问题。只有在确实需要进行类型转换时，才使用双等号操作符 (==)。</p>', '2023-08-01 10:39:41', 1, '1000009', 'mrmayor', 30, 0, NULL);
INSERT INTO `question_info` VALUES (10177, 'HTML5 有哪些更新', 10013, 'CSS+HTML', 2, NULL, '<p><span style=\"font-size: 16px\">1. 语义化标签</span><br></p><p>• header：定义⽂档的⻚眉（头部）；</p><p>• nav：定义导航链接的部分；</p><p>• footer：定义⽂档或节的⻚脚（底部）；</p><p>• article：定义⽂章内容；</p><p>• section：定义⽂档中的节（section、区段）；</p><p>• aside：定义其所处内容之外的内容（侧边）；</p><p><span style=\"font-size: 16px\">2. 媒体标签</span></p><p><span style=\"font-size: 14px\">（1） audio：⾳频</span></p><div><code class=\"__se__t-code\">&lt;audio src=\'\' controls autoplay loop=\'true\'&gt;&lt;/audio&gt;</code></div><div>属性：</div><div>• controls 控制⾯板</div><div>• autoplay ⾃动播放</div><p>• loop=‘true’ 循环播放</p><p><span style=\"font-size: 14px\">（2）video 视频</span></p><div><code class=\"__se__t-code\">&lt;video src=\'\' poster=\'imgs/aa.jpg\' controls&gt;&lt;/video&gt;</code></div><div>属性：</div><div>• poster：指定视频还没有完全下载完毕，或者⽤⼾还没有点击播放前显⽰的封⾯。默认显⽰当前视频⽂件的第⼀帧画⾯，当然通过 poster 也可以⾃⼰指定。</div><div>• controls 控制⾯板</div><div>• width</div><p>• height</p><p><span style=\"font-size: 14px\">（3）source 标签</span></p><div>因为浏览器对视频格式⽀持程度不⼀样，为了能够兼容不同的浏览器，可以通过 source 来指定视频</div><div>源。</div><div><code class=\"__se__t-code\">&lt;video&gt;</code></div><div><code class=\"__se__t-code\">&lt;source src=\'aa.flv\' type=\'video/flv\'&gt;&lt;/source&gt;</code></div><div><code class=\"__se__t-code\">&lt;source src=\'aa.mp4\' type=\'video/mp4\'&gt;&lt;/source&gt;</code></div><p><code class=\"__se__t-code\">&lt;/video&gt;</code></p><p><span style=\"font-size: 16px\">3. 表单</span></p><p><span style=\"font-size: 14px\">表单类型：</span></p><p>• email ：能够验证当前输⼊的邮箱地址是否合法</p><p>• url ： 验证 URL</p><div>• number ： 只能输⼊数字，其他输⼊不了，⽽且⾃带上下增⼤减⼩箭头，max 属性可以设置为最⼤值，min 可以设置为最⼩值，value 为默认值。</div><p>• search ： 输⼊框后⾯会给提供⼀个⼩叉，可以删除输⼊的内容，更加⼈性化。</p><p>• range ： 可以提供给⼀个范围，其中可以设置 max 和 min 以及 value，其中 value 属性可以设置为默认值</p><p>• color ： 提供了⼀个颜⾊拾取器</p><p>• time ： 时分秒</p><p>• date ： ⽇期选择年⽉⽇</p><p>• datetime ： 时间和⽇期(⽬前只有 Safari ⽀持)</p><p>• datetime-local ：⽇期时间控件</p><p>• week ：周控件</p><p>• month：⽉控件</p><p><span style=\"font-size: 14px\">表单属性：</span></p><p>• placeholder ：提⽰信息</p><p>• autofocus ：⾃动获取焦点</p><p>• autocomplete=“on” 或者 autocomplete=“off” 使⽤这个属性需要有两个前提：- 表单必须提交过- 必须有 name 属性。</p><p>• required：要求输⼊框不能为空，必须有值才能够提交。</p><p>• pattern=\" \" ⾥⾯写⼊想要的正则模式，例如⼿机号 patte=\"^(+86)?\\d{10}$\"</p><p>• multiple：可以选择多个⽂件或者多个邮箱</p><p>• form=\" form 表单的 ID\"</p><p><span style=\"font-size: 14px\">表单事件：</span></p><p>• oninput 每当 input ⾥的输⼊框内容发⽣变化都会触发此事件。</p><p>• oninvalid 当验证不通过时触发此事件。</p><p><span style=\"font-size: 14px\">4. 进度条、度量器</span></p><p>• progress 标签：⽤来表⽰任务的进度（IE、Safari 不⽀持），max ⽤来表⽰任务的进度，value 表⽰已完成多少</p><p>• meter 属性：⽤来显⽰剩余容量或剩余库存（IE、Safari 不⽀持）</p><div>• - high/low：规定被视作⾼/低的范围</div><div>- max/min：规定最⼤/⼩值</div><div>- value：规定当前度量值</div><p>设置规则：min &lt; low &lt; high &lt; max</p><p><span style=\"font-size: 14px\">5.DOM 查询操作</span></p><div>• <code class=\"__se__t-code\">document.querySelector()</code></div><div>• <code class=\"__se__t-code\">document.querySelectorAll()</code></div><p>它们选择的对象可以是标签，可以是类(需要加点)，可以是 ID(需要加#)</p><p><span style=\"font-size: 14px\">6. Web 存储</span></p><div>HTML5 提供了两种在客⼾端存储数据的新⽅法</div><div>• localStorage - 没有时间限制的数据存储</div><p>• sessionStorage - 针对⼀个 session 的数据存储</p><p><span style=\"font-size: 16px\">7. 其他</span></p><div>• 拖放：拖放是⼀种常⻅的特性，即抓取对象以后拖到另⼀个位置。设置元素可拖放：</div><p><code class=\"__se__t-code\">&lt;img draggable=\"true\" /&gt;</code></p><div>• 画布（canvas ）： canvas 元素使⽤ JavaScript 在⽹⻚上绘制图像。画布是⼀个矩形区域，可以控制其每⼀像素。canvas 拥有多种绘制路径、矩形、圆形、字符以及添加图像的⽅法。</div><p><code class=\"__se__t-code\">&lt;canvas id=\"myCanvas\" width=\"200\" height=\"100\"&gt;&lt;/canvas&gt;</code></p><p>• SVG：SVG 指可伸缩⽮量图形，⽤于定义⽤于⽹络的基于⽮量的图形，使⽤ XML 格式定义图形，图像在放⼤或改变尺⼨的情况下其图形质量不会有损失，它是万维⽹联盟的标准</p><p>• 地理定位：Geolocation（地理定位）⽤于定位⽤⼾的位置。</p><p><span style=\"font-size: 14px\">总结：</span></p><p>（1）新增语义化标签：nav、header、footer、aside、section、article</p><p>（2）⾳频、视频标签：audio、video</p><p>（3）数据存储：localStorage、sessionStorage</p><p>（4）canvas（画布）、Geolocation（地理定位）、websocket（通信协议）</p><p>（5）input 标签新增属性：placeholder、autocomplete、autofocus、required</p><p>（6）history API：go、forward、back、pushstate</p><div>移除的元素有：</div><div>• 纯表现的元素：basefont，big，center，font, s，strike，tt，u;</div><div>• 对可⽤性产⽣负⾯影响的元素：frame，frameset，noframes；</div>', '2023-08-03 11:06:59', 1, '1000005', '一个好名字', 15, 0, NULL);
INSERT INTO `question_info` VALUES (10178, 'Sass、Less 是什么？为什么要使⽤他们？', 10002, '前端工程化', 2, '', '<p>他们都是 CSS 预处理器，是 CSS 上的⼀种抽象层。他们是⼀种特殊的语法/语⾔编译成 CSS。 </p><p><span style=\"font-size: 16px\">例如</span>Less 是⼀种动态样式语⾔，将 CSS 赋予了动态语⾔的特性，如变量，继承，运算， 函数，LESS 既可以在客⼾端上运⾏ (⽀持 IE 6+, Webkit, Firefox)，也可以在服务端运⾏ (借助 Node.js)。</p><p><span style=\"font-size: 16px\">为什么要使⽤它们？</span></p><p>• 结构清晰，便于扩展。 可以⽅便地屏蔽浏览器私有语法差异。封装对浏览器语法差异的重复处理， 减少⽆意义的机械劳动。</p><p>• 可以轻松实现多重继承。 完全兼容 CSS 代码，可以⽅便地应⽤到⽼项⽬中。LESS 只是在 CSS 语法上做了扩展，所以⽼的 CSS 代码也可以与 LESS 代码⼀同编译。</p><p><span style=\"font-size: 16px;\">它的出现是为了解决什么问题？</span></p><p>1. 宏观设计上：我们希望能优化 CSS ⽂件的⽬录结构，对现有的 CSS ⽂件实现复⽤；\r\n</p><p>2. 编码优化上：我们希望能写出结构清晰、简明易懂的 CSS，需要它具有⼀⽬了然的嵌套层级关系，⽽不是⽆差别的⼀铺到底写法；我们希望它具有变量特征、计算能⼒、循环能⼒等等更强的可编程性，这样我们可以少写⼀些⽆⽤的代码；</p><p>3. 可维护性上：更强的可编程性意味着更优质的代码结构，实现复⽤意味着更简单的⽬录结构和更强的拓展能⼒，这两点如果能做到，⾃然会带来更强的可维护性。</p><p>这三点是传统 CSS 所做不到的，也正是预处理器所解决掉的问题。</p><p><span style=\"font-size: 14px;\">预处理器普遍会具备这样的特性</span>：\r\n</p><div>• 嵌套代码的能⼒，通过嵌套来反映不同 css 属性之间的层级关系 ；\r\n</div><div>• ⽀持定义 css 变量；\r\n</div><div>• 提供计算函数；\r\n</div><div>• 允许对代码⽚段进⾏ extend 和 mixin；\r\n</div><div>• ⽀持循环语句的使⽤；\r\n</div><div>• ⽀持将 CSS ⽂件模块化，实现复⽤。</div><p></p>', '2023-08-03 12:08:55', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10179, 'px、em、rem 的区别及使⽤场景', 10013, 'CSS+HTML', 2, NULL, '<p><span style=\"font-size: 14px;\">三者的区别：</span><br></p><p>• px 是固定的像素，⼀旦设置了就⽆法因为适应⻚⾯⼤⼩⽽改变。</p><p>• em 和 rem 相对于 px 更具有灵活性，他们是相对⻓度单位，其⻓度不是固定的，更适⽤于响应式布局。</p><p>• em 是相对于其⽗元素来设置字体⼤⼩，这样就会存在⼀个问题，进⾏任何元素设置，都有可能需要知道他⽗元素的⼤⼩。⽽ rem 是相对于根元素，这样就意味着，只需要在根元素确定⼀个参考值。</p><div><span style=\"font-size: 14px;\">使⽤场景</span>：</div><p>• 对于只需要适配少部分移动设备，且分辨率对⻚⾯影响不⼤的，使⽤ px 即可 。</p><div>• 对于需要适配各种移动设备，使⽤ rem，例如需要适配 iPhone 和 iPad 等分辨率差别⽐较挺⼤的设备。</div>', '2023-08-03 12:10:31', 1, '1000005', '一个好名字', 12, 0, NULL);
INSERT INTO `question_info` VALUES (10180, 'CSS3 中有哪些新特性', 10013, 'CSS+HTML', 2, NULL, '<p><span style=\"font-size: 16px\">• 新增各种 CSS 选择器 （ : not(.input) ：所有 class 不是“input”的节点）</span></p><p><span style=\"font-size: 16px\">• 圆⻆ （border-radius:8px）</span></p><p><span style=\"font-size: 16px\">• 多列布局 （multi-column layout）</span></p><p><span style=\"font-size: 16px\">• 阴影和反射 （Shadoweflect）</span></p><p><span style=\"font-size: 16px\">• ⽂字特效 （text-shadow）</span></p><p><span style=\"font-size: 16px\">• ⽂字渲染 （Text-decoration）</span></p><p><span style=\"font-size: 16px\">• 线性渐变 （gradient）</span></p><p><span style=\"font-size: 16px\">• 旋转 （transform）</span></p><p><span style=\"font-size: 16px\">• 增加了旋转,缩放,定位,倾斜,动画,多背景</span></p>', '2023-08-03 12:13:08', 1, '1000005', '一个好名字', 14, 0, NULL);
INSERT INTO `question_info` VALUES (10181, 'display、float、position 的关系', 10013, 'CSS+HTML', 2, NULL, '<p>（1）⾸先判断 display 属性是否为 none，如果为 none，则 position 和 float 属性的值不影响元素最后的表现。</p><p>（2）然后判断 position 的值是否为 absolute 或者 fixed，如果是，则 float 属性失效，并且 display的值应该被设置为 table 或者 block，具体转换需要看初始转换值。</p><p>（3）如果 position 的值不为 absolute 或者 fixed，则判断 float 属性的值是否为 none，如果不是，则 display 的值则按上⾯的规则转换。注意，如果 position 的值为 relative 并且 float 属性的值存在，则 relative 相对于浮动后的最终位置定位。</p><p>（4）如果 float 的值为 none，则判断元素是否为根元素，如果是根元素则 display 属性按照上⾯的规则转换，如果不是，则保持指定的 display 属性值不变。</p><p><span style=\"font-size: 14px;\">总的来说，</span></p><div>可以把它看作是⼀个类似优先级的机制，\"position:absolute\"和\"position:fixed\"优先级最⾼，有它存在的时候，浮动不起作⽤，\'display\'的值也需要调整；其次，元素的\'float\'特性的值不是\"none\"的时候或者它是根元素的时候，调整\'display\'的值；最后，⾮根元素，并且⾮浮动元素，并且⾮绝对定位的元素，\'display\'特性值同设置值。</div>', '2023-08-03 12:18:43', 1, '1000005', '一个好名字', 43, 0, NULL);
INSERT INTO `question_info` VALUES (10182, 'Webpack 能处理 CSS 吗？如何实现？', 10002, '前端工程化', 2, NULL, '<p><span style=\"font-size: 16px\">Webpack 能处理 CSS 吗：</span><br></p><p>• Webpack 在裸奔的状态下，是不能处理 CSS 的，Webpack 本⾝是⼀个⾯向 JavaScript 且只能处理 JavaScript 代码的模块化打包⼯具；</p><p>• Webpack 在 loader 的辅助下，是可以处理 CSS 的。</p><p><span style=\"font-size: 16px\">如何⽤ Webpack 实现对 CSS 的处理：</span></p><p>• Webpack 中操作 CSS 需要使⽤的两个关键的 loader：css-loader 和 style-loader</p><div>• 注意，答出“⽤什么”有时候可能还不够，⾯试官会怀疑你是不是在背答案，所以你还需要了解每个 loader 都做了什么事情：</div><div>- css-loader：导⼊ CSS 模块，对 CSS 代码进⾏编译处理；</div><p>- style-loader：创建 style 标签，把 CSS 内容写⼊标签。</p><div><span style=\"font-size: 16px;\">在实际使⽤中</span></div><div>ss-loader 的执⾏顺序⼀定要安排在 style-loader 的前⾯。因为只有完成了编译过程，才可以对 css 代码进⾏插⼊；若提前插⼊了未编译的代码，那么 webpack 是⽆法理解这坨东西的，它会⽆情报错。</div>', '2023-08-03 12:21:39', 1, '1000005', '一个好名字', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10183, '如何⽤webpack来优化前端性能？', 10002, '前端工程化', 3, NULL, '<p>⽤webpack优化前端性能是指优化webpack的输出结果，让打包的最终结果在浏览器运⾏快速⾼效。<br></p><p>• 压缩代码：删除多余的代码、注释、简化代码的写法等等⽅式。可以利⽤webpack的UglifyJsPlugin 和 ParallelUglifyPlugin 来压缩JS⽂件， 利⽤ cssnano （css-loader?minimize）来压缩css</p><p>• 利⽤*CDN*加速: 在构建过程中，将引⽤的静态资源路径修改为CDN上对应的路径。可以利⽤webpack对于 output 参数和各loader的 publicPath 参数来修改资源路径</p><p>• Tree Shaking: 将代码中永远不会⾛到的⽚段删除掉。可以通过在启动webpack时追加参数 --optimize-minimize 来实现</p><p>• Code Splitting: 将代码按路由维度或者组件分块(chunk),这样做到按需加载,同时可以充分利⽤浏览器缓存</p><p>• 提取公共第三⽅库: SplitChunksPlugin插件来进⾏公共模块抽取,利⽤浏览器缓存可以⻓期缓存这些⽆需频繁变动的公共代码</p>', '2023-08-03 12:23:37', 1, '1000005', '一个好名字', 7, 0, NULL);
INSERT INTO `question_info` VALUES (10184, '如何提⾼webpack的打包速度?', 10002, '前端工程化', 3, NULL, '<p>• happypack: 利⽤进程并⾏编译loader,利⽤缓存来使得 rebuild 更快,遗憾的是作者表⽰已经不会继续开发此项⽬,类似的替代者是thread-loader</p><p>• 外部扩展(externals): 将不怎么需要更新的第三⽅库脱离webpack打包，不被打⼊bundle中，从⽽减少打包时间，⽐如jQuery⽤script标签引⼊</p><p>• dll: 采⽤webpack的 DllPlugin 和 DllReferencePlugin 引⼊dll，让⼀些基本不会改动的代码先打包成静态资源，避免反复编译浪费时间</p><p>• 利⽤缓存: webpack.cache 、babel-loader.cacheDirectory、 HappyPack.cache 都可以利⽤缓存提⾼rebuild效率缩⼩⽂件搜索范围: ⽐如babel-loader插件,如果你的⽂件仅存在于src中,那么可以include: path.resolve(__dirname,\'src\') ,当然绝⼤多数情况下这种操作的提升有限，除⾮不⼩⼼build了node_modules⽂件</p>', '2023-08-03 12:25:09', 1, '1000005', '一个好名字', 8, 0, NULL);
INSERT INTO `question_info` VALUES (10185, '如何提⾼webpack的构建速度？', 10002, '前端工程化', 3, NULL, '<p>1. 多⼊⼝情况下，使⽤ CommonsChunkPlugin 来提取公共代码<br></p><p>2. 通过 externals 配置来提取常⽤库</p><p>3. 利⽤ DllPlugin 和 DllReferencePlugin 预编译资源模块 通过 DllPlugin 来对那些我们引⽤但是绝对不会修改的npm包来进⾏预编译，再通过 DllReferencePlugin 将预编译的模块加载进来。</p><p>4. 使⽤ Happypack 实现多线程加速编译</p><p>5. 使⽤ webpack-uglify-parallel 来提升 uglifyPlugin 的压缩速度。 原理上 webpack-uglify-parallel采⽤了多核并⾏压缩来提升压缩速度</p><div>6. 使⽤ Tree-shaking 和 Scope Hoisting 来剔除多余代码</div>', '2023-08-03 12:25:39', 1, '1000005', '一个好名字', 12, 0, NULL);
INSERT INTO `question_info` VALUES (10186, '如何减少 Webpack 打包体积', 10002, '前端工程化', 3, NULL, '<p><span style=\"font-size: 14px;\">（1）按需加载</span><br></p><p>在开发 SPA 项⽬的时候，项⽬中都会存在很多路由⻚⾯。如果将这些⻚⾯全部打包进⼀个 JS ⽂件的话，虽然将多个请求合并了，但是同样也加载了很多并不需要的代码，耗费了更⻓的时间。那么为了⾸⻚能更快地呈现给⽤⼾，希望⾸⻚能加载的⽂件体积越⼩越好，这时候就可以使⽤按需加载，将每个路由⻚⾯单独打包为⼀个⽂件。当然不仅仅路由可以按需加载，对于 loadash 这种⼤型类库同样可以使⽤这个功能。</p><p>按需加载的代码实现这⾥就不详细展开了，因为鉴于⽤的框架不同，实现起来都是不⼀样的。当然了，虽然他们的⽤法可能不同，但是底层的机制都是⼀样的。都是当使⽤的时候再去下载对应⽂件，返回⼀个 Promise ，当 Promise 成功以后去执⾏回调。</p><p><span style=\"font-size: 14px;\">（2）Scope Hoisting</span></p><p>Scope Hoisting 会分析出模块之间的依赖关系，尽可能的把打包出来的模块合并到⼀个函数中去。</p><div>⽐如希望打包两个⽂件：</div><div><code class=\"__se__t-code\">1 // test.js</code></div><div><code class=\"__se__t-code\">2 export const a = 1</code></div><div><code class=\"__se__t-code\">3 // index.js</code></div><p><code class=\"__se__t-code\">4 import { a } from \'./test.js\'</code></p><div>对于这种情况，打包出来的代码会类似这样：</div><div><code class=\"__se__t-code\">1 [</code></div><div><code class=\"__se__t-code\">2 /* 0 */</code></div><div><code class=\"__se__t-code\">3 function (module, exports, require) {</code></div><div><code class=\"__se__t-code\">4 //...</code></div><div><code class=\"__se__t-code\">5 },</code></div><div><code class=\"__se__t-code\">6 /* 1 */</code></div><div><code class=\"__se__t-code\">7 function (module, exports, require) {</code></div><div><code class=\"__se__t-code\">8 //...</code></div><div><code class=\"__se__t-code\">9 }</code></div><p><code class=\"__se__t-code\">10 ]</code></p><div>但是如果使⽤ Scope Hoisting ，代码就会尽可能的合并到⼀个函数中去，也就变成了这样的类似代</div><div>码：</div><div><code class=\"__se__t-code\">1 [</code></div><div><code class=\"__se__t-code\">2 /* 0 */</code></div><div><code class=\"__se__t-code\">3 function (module, exports, require) {</code></div><div><code class=\"__se__t-code\">4 //...</code></div><div><code class=\"__se__t-code\">5 }</code></div><p><code class=\"__se__t-code\">6 ]</code></p><div>这样的打包⽅式⽣成的代码明显⽐之前的少多了。如果在 Webpack4 中你希望开启这个功能，只需要</div><div>启⽤ optimization.concatenateModules 就可以了：</div><div><code class=\"__se__t-code\">module.exports = {</code></div><div><code class=\"__se__t-code\">optimization: {</code></div><div><code class=\"__se__t-code\">concatenateModules: true</code></div><div><code class=\"__se__t-code\">}</code></div><p><code class=\"__se__t-code\">}</code></p><p><span style=\"font-size: 14px;\">（3）Tree Shaking</span></p><div>Tree Shaking 可以实现删除项⽬中未被引⽤的代码，⽐如：</div><div><code class=\"__se__t-code\">// test.js</code></div><div><code class=\"__se__t-code\">export const a = 1</code></div><div><code class=\"__se__t-code\">export const b = 2</code></div><div><code class=\"__se__t-code\">// index.js</code></div><p><code class=\"__se__t-code\">import { a } from \'./test.js\'</code></p><div>对于以上情况， test ⽂件中的变量 b 如果没有在项⽬中使⽤到的话，就不会被打包到⽂件中。</div><div>如果使⽤ Webpack 4 的话，开启⽣产环境就会⾃动启动这个优化功能。</div>', '2023-08-03 12:29:04', 1, '1000005', '一个好名字', 16, 0, NULL);
INSERT INTO `question_info` VALUES (10187, '如何⽤webpack来优化前端性能？', 10002, '前端工程化', 3, NULL, '<p>⽤webpack优化前端性能是指优化webpack的输出结果，让打包的最终结果在浏览器运⾏快速⾼效。<br></p><p>• 压缩代码：删除多余的代码、注释、简化代码的写法等等⽅式。可以利⽤webpack的UglifyJsPlugin 和 ParallelUglifyPlugin 来压缩JS⽂件， 利⽤ cssnano （css-loader?minimize）来压缩css</p><p>• 利⽤*CDN*加速: 在构建过程中，将引⽤的静态资源路径修改为CDN上对应的路径。可以利⽤webpack对于 output 参数和各loader的 publicPath 参数来修改资源路径</p><p>• Tree Shaking: 将代码中永远不会⾛到的⽚段删除掉。可以通过在启动webpack时追加参数 --optimize-minimize 来实现</p><p>• Code Splitting: 将代码按路由维度或者组件分块(chunk),这样做到按需加载,同时可以充分利⽤览器缓存</p><div>• 提取公共第三⽅库: SplitChunksPlugin插件来进⾏公共模块抽取,利⽤浏览器缓存可以⻓期缓存这些⽆需频繁变动的公共代码</div>', '2023-08-03 12:30:05', 1, '1000005', '一个好名字', 20, 0, NULL);
INSERT INTO `question_info` VALUES (10188, 'slot是什么？有什么作⽤？原理是什么？', 10010, 'Vue.js', 1, NULL, '<p><span style=\"font-size: 14px;\">插槽<strong>slot</strong></span>是⼦组件的⼀个模板标签，这个标签元素是否显⽰，以及显⽰什么内容是由⽗组件决定的。插槽slot⼜<strong>分三类</strong>，默认插槽，具名插槽和作⽤域插槽。</p><p>• 默认插槽：当插槽没有指定name属性的时候，默认显⽰的插槽，⼀个组件内只有⼀个默认插槽。</p><p>• 具名插槽：带有name属性的插槽，⼀个组件可以出现多个具名插槽。</p><p>• 作⽤域插槽：可以是默认插槽，也可以是具名插槽，不同点在⼦组件渲染作⽤域插槽时，是将⼦组件内部的数据传递给⽗组件，让⽗组件根据⼦组件的传递过来的数据决定如何渲染该插槽。</p><p><span style=\"font-size: 14px;\">插槽的<strong>作⽤</strong></span>是为了让我们封装的组件具备更多的扩展性，通过预留插槽，在组件中预留空间，让使⽤者决定要显⽰的内容</p><div><span style=\"font-size: 14px;\">实现<strong>原理</strong></span>：将共同的部分抽取到组件中，不同的部分暴露为插槽，</div>', '2023-08-04 16:38:08', 1, '1000005', '一个好名字', 32, 0, NULL);
INSERT INTO `question_info` VALUES (10189, 'Vue3有什么更新', 10010, 'Vue.js', 2, NULL, '<p><span style=\"font-size: 16px\">（1）监测机制的改变</span><br></p><p>• 3.0 将带来基于代理 Proxy的 observer 实现，提供全语⾔覆盖的反应性跟踪</p><p>• 消除了 Vue 2 当中基于 Object.defineProperty 的实现所存在的很多限制</p><div><span style=\"font-size: 16px\">（2）只能监测属性，不能监测对象</span></div><p>• 检测属性的添加和删除</p><p>• 检测数组索引和⻓度的变更</p><p>• ⽀持 Map、Set、WeakMap 和 WeakSet</p><p><span style=\"font-size: 16px\">（3）模板</span></p><p>• 作⽤域插槽，2.x 的机制导致作⽤域插槽变了，⽗组件会重新渲染，⽽ 3.0 把作⽤域插槽改成了函数的⽅式，这样只会影响⼦组件的重新渲染，提升了渲染的性能</p><p>• 同时，对于 render 函数的⽅⾯，vue3.0 也会进⾏⼀系列更改来⽅便习惯直接使⽤ api 来⽣成vdom&nbsp;</p><p><span style=\"font-size: 16px\">（4）对象式的组件声明⽅式</span></p><p>• vue2.x 中的组件是通过声明的⽅式传⼊⼀系列 option，和 TypeScript 的结合需要通过⼀些装饰器的⽅式来做，虽然能实现功能，但是⽐较⿇烦</p><p>• 3.0 修改了组件的声明⽅式，改成了类式的写法，这样使得和 TypeScript 的结合变得很容易</p><p><span style=\"font-size: 16px;\">（5）其它⽅⾯的更改</span></p><p>• ⽀持⾃定义渲染器，从⽽使得 weex 可以通过⾃定义渲染器的⽅式来扩展，⽽不是直接 fork 源码来改的⽅式</p><p>• ⽀持 Fragment（多个根节点）和 Protal（在 dom 其他部分渲染组建内容）组件，针对⼀些特殊的场景做了处理</p><p>• 基于 tree shaking 优化，提供了更多的内置功能</p>', '2023-08-04 16:42:09', 1, '1000005', '一个好名字', 36, 0, NULL);
INSERT INTO `question_info` VALUES (10190, 'MySQL的索引为什么使用B+树而不使用跳表？', 10000, '数据库', 2, '', '<p><strong>B+树</strong>是多叉树结构，每个结点都是一个16k的数据页，能存放较多索引信息，所以<strong>扇出很高</strong>。<strong>三层</strong>左右就可以存储<code>2kw</code>左右的数据。也就是说查询一次数据，如果这些数据页都在磁盘里，那么最多需要查询<strong>三次磁盘IO</strong>。<br></p><p style=\"text-align: left\"><strong>跳表</strong>是链表结构，一条数据一个结点，如果最底层要存放<code>2kw</code>数据，且每次查询都要能达到<strong>二分查找</strong>的效果，<code>2kw</code>大概在<code>2的24次方</code>左右，所以，跳表大概高度在<strong>24层</strong>左右。最坏情况下，这24层数据会分散在不同的数据页里，也即是查一次数据会经历<strong>24次磁盘IO</strong>。</p><p style=\"text-align: left\">因此存放同样量级的数据，B+树的高度比跳表的要少，如果放在MySQL数据库上来说，就是<strong>磁盘IO次数更少，因此B+树查询更快</strong>。</p><p style=\"text-align: left\">而针对<strong>写操作</strong>，B+树需要拆分合并索引数据页，跳表则独立插入，并根据随机函数确定层数，没有旋转和维持平衡的开销，因此<strong>跳表的写入性能会比B+树要好。</strong></p><p style=\"text-align: left\">其实，MySQL的<strong>存储引擎是可以换的</strong>，以前mysql 5.5是<code>myisam</code>，后来才有的<code>innodb</code>，它们底层索引用的都是<strong>B+树</strong>。也就是说，你完全可以造一个索引为跳表的存储引擎装到MySQL里。事实上，<code>facebook</code>造了个<code>rocksDB</code>的存储引擎，里面就用了<strong>跳表</strong>。直接说结论，它的<strong>写入性能</strong>确实是比innodb要好，但<strong>读性能</strong>确实比innodb要差不少。感兴趣的话，可以在文章最后面的<strong>参考资料</strong>里看到他们的性能对比数据。</p>', '2023-08-06 23:48:13', 1, '1000002', 'MIAO?', 58, 0, NULL);
INSERT INTO `question_info` VALUES (10191, 'Redis为什么使用跳表而不使用B+树或二叉树呢？', 10000, '数据库', 2, NULL, '<p>​<span style=\"color: rgb(0, 0, 0);font-size: 16px\">因为B+树的原理是 叶子节点存储数据，非叶子节点存储索引，B+树的每个节点可以存储多个关键字，它将节点大小设置为磁盘页的大小，充分利用了磁盘预读的功能。每次读取磁盘页时就会读取一整个节点,每个叶子节点还有指向前后节点的指针，为的是最大限度的降低磁盘的IO。因为数据在内存中读取耗费的时间是从磁盘的IO读取的百万分之一，而Redis是 内存中操作数据，不涉及IO，因此使用了跳表；</span>​<br></p>', '2023-08-06 23:48:52', 1, '1000002', 'MIAO?', 83, 0, NULL);
INSERT INTO `question_info` VALUES (10192, '跳表是什么', 10001, '算法题', 1, NULL, '<p>​<span style=\"color: rgb(18, 18, 18);\">跳表全称为跳跃列表，它允许快速查询，插入和删除一个有序连续元素的数据链表。跳跃列表的平均查找和插入时间复杂度都是O(logn)。快速查询是通过维护一个多层次的链表，且每一层链表中的元素是前一层链表元素的子集（见右边的示意图）。一开始时，算法在最稀疏的层次进行搜索，直至需要查找的元素在该层两个相邻的元素中间。这时，算法将跳转到下一个层次，重复刚才的搜索，直到找到需要查找的元素为止。</span>​<br></p>', '2023-08-06 23:52:20', 1, '1000002', 'MIAO?', 57, 0, NULL);
INSERT INTO `question_info` VALUES (10193, 'get和post的请求的区别', 10002, '前端工程化', 2, NULL, '<p><span style=\"font-size: 14px;\">Post 和 Get 是 HTTP 请求的两种⽅法，其区别如下：</span><br></p><p>• 应⽤场景：GET 请求是⼀个幂等的请求，⼀般 Get 请求⽤于对服务器资源不会产⽣影响的场景，⽐如说请求⼀个⽹⻚的资源。⽽ Post 不是⼀个幂等的请求，⼀般⽤于对服务器资源会产⽣影响的情景，⽐如注册⽤⼾这⼀类的操作。</p><p>• 是否缓存：因为两者应⽤场景不同，浏览器⼀般会对 Get 请求缓存，但很少对 Post 请求缓存。</p><p>• 发送的报⽂格式：Get 请求的报⽂中实体部分为空，Post 请求的报⽂中实体部分⼀般为向服务器发送的数据。</p><p>• 安全性：Get 请求可以将请求的参数放⼊ url 中向服务器发送，这样的做法相对于 Post 请求来说是不太安全的，因为请求的 url 会被保留在历史记录中。</p><p>• 请求⻓度：浏览器由于对 url ⻓度的限制，所以会影响 get 请求发送数据时的⻓度。这个限制是浏览器规定的，并不是 RFC 规定的。</p><p>• 参数类型：post 的参数传递⽀持更多的数据类型。</p><p><span style=\"font-size: 14px;\">另外：POST和PUT请求的区别</span></p><p>• PUT请求是向服务器端发送数据，从⽽修改数据的内容，但是不会增加数据的种类等，也就是说⽆论进⾏多少次PUT操作，其结果并没有不同。（可以理解为是更新数据）</p><div>• POST请求是向服务器端发送数据，该请求会改变数据的种类等资源，它会创建新的内容。（可以理解为是创建数据）</div>', '2023-08-07 16:59:02', 1, '1000005', '一个好名字', 53, 0, NULL);
INSERT INTO `question_info` VALUES (10194, 'HTTP和HTTPS协议的区别', 10002, '前端工程化', 2, NULL, '<p>HTTP和HTTPS协议的主要区别如下：<br></p><p>• HTTPS协议需要CA证书，费⽤较⾼；⽽HTTP协议不需要；</p><p>• HTTP协议是超⽂本传输协议，信息是明⽂传输的，HTTPS则是具有安全性的SSL加密传输协议；</p><p>• 使⽤不同的连接⽅式，端⼝也不同，HTTP协议端⼝是80，HTTPS协议端⼝是443；</p><div>• HTTP协议连接很简单，是⽆状态的；HTTPS协议是有SSL和HTTP协议构建的可进⾏加密传输、⾝份认证的⽹络协议，⽐HTTP更加安全</div>', '2023-08-07 17:00:28', 1, '1000005', '一个好名字', 30, 0, NULL);
INSERT INTO `question_info` VALUES (10195, 'TLS/SSL的⼯作原理', 10002, '前端工程化', 4, '', '<p>TLS/SSL全称安全传输层协议（Transport Layer Security）, 是介于TCP和HTTP之间的⼀层安全协议，不影响原有的TCP协议和HTTP协议，所以使⽤HTTPS基本上不需要对HTTP⻚⾯进⾏太多的改造。</p><div>TLS/SSL的功能实现主要依赖三类基本算法：散列函数hash、对称加密、⾮对称加密。这三类算法的作⽤如下：</div><div>• 基于散列函数验证信息的完整性</div><div>• 对称加密算法采⽤协商的秘钥对数据加密</div><p>• ⾮对称加密实现⾝份认证和秘钥协商</p><div>（1）散列函数hash</div><p>常⻅的散列函数有MD5、SHA1、SHA256。该函数的特点是单向不可逆，对输⼊数据⾮常敏感，输出的⻓度固定，任何数据的修改都会改变散列函数的结果，可以⽤于防⽌信息篡改并验证数据的完整性。</p><p>特点：在信息传输过程中，散列函数不能三都实现信息防篡改，由于传输是明⽂传输，中间⼈可以修改信息后重新计算信息的摘要，所以需要对传输的信息和信息摘要进⾏加密。</p><div>（2）对称加密</div><div>对称加密的⽅法是，双⽅使⽤同⼀个秘钥对数据进⾏加密和解密。但是对称加密的存在⼀个问题，就是如何保证秘钥传输的安全性，因为秘钥还是会通过⽹络传输的，⼀旦秘钥被其他⼈获取到，那么整个加密过程就毫⽆作⽤了。 这就要⽤到⾮对称加密的⽅法。</div><p>常⻅的对称加密算法有AES-CBC、DES、3DES、AES-GCM等。相同的秘钥可以⽤于信息的加密和解密。掌握秘钥才能获取信息，防⽌信息窃听，其通讯⽅式是⼀对⼀。</p><div>特点：对称加密的优势就是信息传输使⽤⼀对⼀，需要共享相同的密码，密码的安全是保证信息安全</div><p>的基础，服务器和N个客⼾端通信，需要维持N个密码记录且不能修改密码。</p><div>（3）⾮对称加密</div><p>⾮对称加密的⽅法是，我们拥有两个秘钥，⼀个是公钥，⼀个是私钥。公钥是公开的，私钥是保密的。⽤私钥加密的数据，只有对应的公钥才能解密，⽤公钥加密的数据，只有对应的私钥才能解密。我们可以将公钥公布出去，任何想和我们通信的客⼾， 都可以使⽤我们提供的公钥对数据进⾏加密，这样我们就可以使⽤私钥进⾏解密，这样就能保证数据的安全了。但是⾮对称加密有⼀个缺点就是加密的过程很慢，因此如果每次通信都使⽤⾮对称加密的⽅式的话，反⽽会造成等待时间过⻓的问题。常⻅的⾮对称加密算法有RSA、ECC、DH等。秘钥成对出现，⼀般称为公钥（公开）和私钥（保密）。公钥加密的信息只有私钥可以解开，私钥加密的信息只能公钥解开，因此掌握公钥的不同客⼾端之间不能相互解密信息，只能和服务器进⾏加密通信，服务器可以实现⼀对多的的通信，客⼾端也可以⽤来验证掌握私钥的服务器的⾝份。</p><div>特点：⾮对称加密的特点就是信息⼀对多，服务器只需要维持⼀个私钥就可以和多个客⼾端进⾏通信，但服务器发出的信息能够被所有的客⼾端解密，且该算法的计算复杂，加密的速度慢。综合上述算法特点，TLS/SSL的⼯作⽅式就是客⼾端使⽤⾮对称加密与服务器进⾏通信，实现⾝份的验证并协商对称加密使⽤的秘钥。对称加密算法采⽤协商秘钥对信息以及信息摘要进⾏加密通信，不同节点之间采⽤的对称秘钥不同，从⽽保证信息只能通信双⽅获取。这样就解决了两个⽅法各⾃存在的问题。</div>', '2023-08-07 17:05:02', 1, '1000005', '一个好名字', 30, 0, NULL);
INSERT INTO `question_info` VALUES (10196, 'HTTPS的特点', 10002, '前端工程化', 3, NULL, '<p><span style=\"font-size: 14px;\">HTTPS的优点如下：</span><br></p><p>• 使⽤HTTPS协议可以认证⽤⼾和服务器，确保数据发送到正确的客⼾端和服务器；</p><p>• 使⽤HTTPS协议可以进⾏加密传输、⾝份认证，通信更加安全，防⽌数据在传输过程中被窃取、修改，确保数据安全性；• HTTPS是现⾏架构下最安全的解决⽅案，虽然不是绝对的安全，但是⼤幅增加了中间⼈攻击的成本；</p><p><span style=\"font-size: 14px;\">HTTPS的缺点如下：</span></p><p>• HTTPS需要做服务器和客⼾端双⽅的加密个解密处理，耗费更多服务器资源，过程复杂；</p><p>• HTTPS协议握⼿阶段⽐较费时，增加⻚⾯的加载时间；</p><p>• SSL证书是收费的，功能越强⼤的证书费⽤越⾼；</p><p>• HTTPS连接服务器端资源占⽤⾼很多，⽀持访客稍多的⽹站需要投⼊更⼤的成本；</p><div>• SSL证书需要绑定IP，不能再同⼀个IP上绑定多个域名。</div>', '2023-08-07 17:09:41', 1, '1000005', '一个好名字', 49, 0, NULL);
INSERT INTO `question_info` VALUES (10197, 'HTTP协议的优点和缺点', 10002, '前端工程化', 3, NULL, '<p>HTTP 是超⽂本传输协议，它定义了客⼾端和服务器之间交换报⽂的格式和⽅式，默认使⽤ 80 端⼝。它使⽤ TCP 作为传输层协议，保证了数据传输的可靠性。</p><p><span style=\"font-size: 14px;\">HTTP协议具有以下优点：</span></p><p>• ⽀持客⼾端/服务器模式</p><p>• 简单快速：客⼾向服务器请求服务时，只需传送请求⽅法和路径。由于 HTTP 协议简单，使得HTTP 服务器的程序规模⼩，因⽽通信速度很快。</p><p>• ⽆连接：⽆连接就是限制每次连接只处理⼀个请求。服务器处理完客⼾的请求，并收到客⼾的应答后，即断开连接，采⽤这种⽅式可以节省传输时间。</p><p>• ⽆状态：HTTP 协议是⽆状态协议，这⾥的状态是指通信过程的上下⽂信息。缺少状态意味着如果后续处理需要前⾯的信息，则它必须重传，这样可能会导致每次连接传送的数据量增⼤。另⼀⽅⾯，在服务器不需要先前信息时它的应答就⽐较快。</p><p>• 灵活：HTTP 允许传输任意类型的数据对象。正在传输的类型由 Content-Type 加以标记。</p><p><span style=\"font-size: 14px;\">HTTP协议具有以下缺点：</span></p><p>• ⽆状态：HTTP 是⼀个⽆状态的协议，HTTP 服务器不会保存关于客⼾的任何信息。</p><p>• 明⽂传输：协议中的报⽂使⽤的是⽂本形式，这就直接暴露给外界，不安全。</p><div>• 不安全</div><div>（1）通信使⽤明⽂（不加密），内容可能会被窃听；</div><div>（2）不验证通信⽅的⾝份，因此有可能遭遇伪装；</div><div>（3）⽆法证明报⽂的完整性，所以有可能已遭篡改；</div>', '2023-08-07 17:11:05', 1, '1000005', '一个好名字', 70, 0, NULL);
INSERT INTO `question_info` VALUES (10198, 'TCP/IP五层协议', 10002, '前端工程化', 3, NULL, '<p>TCP/IP 五层协议和 OSI 的七层协议对应关系如下：<br></p><p>• 应⽤层 (application layer)：直接为应⽤进程提供服务。应⽤层协议定义的是应⽤进程间通讯和交互的规则，不同的应⽤有着不同的应⽤层协议，如 HTTP协议（万维⽹服务）、FTP协议（⽂件传输）、SMTP协议（电⼦邮件）、DNS（域名查询）等。</p><div>• 传输层 (transport layer)：有时也译为运输层，它负责为两台主机中的进程提供通信服务。该层主要有以下两种协议：</div><div>- 传输控制协议 (Transmission Control Protocol，TCP)：提供⾯向连接的、可靠的数据传输服务，数据传输的基本单位是报⽂段（segment）；</div><p>- ⽤⼾数据报协议 (User Datagram Protocol，UDP)：提供⽆连接的、尽最⼤努⼒的数据传输服务，但不保证数据传输的可靠性，数据传输的基本单位是⽤⼾数据报。</p><p>• ⽹络层 (internet layer)：有时也译为⽹际层，它负责为两台主机提供通信服务，并通过选择合适的路由将数据传递到⽬标主机。</p><p>• 数据链路层 (data link layer)：负责将⽹络层交下来的 IP 数据报封装成帧，并在链路的两个相邻节点间传送帧，每⼀帧都包含数据和必要的控制信息（如同步信息、地址信息、差错控制等）。</p><div>• 物理层 (physical Layer)：确保数据可以在各种物理媒介上进⾏传输，为数据的传输提供可靠的环境。</div><div><br></div><div><br></div><div>&nbsp;TCP/IP 模型⽐ OSI 模型更加简洁，它把 应⽤层/表⽰层/会话层 全部整合为了 应⽤层 。在每⼀层都⼯作着不同的设备，⽐如我们常⽤的交换机就⼯作在数据链路层的，⼀般的路由器是⼯作在⽹络层的。在每⼀层实现的协议也各不同，即每⼀层的服务也不同。同样， TCP/IP 五层协议的通信⽅式也是对等通信：</div>', '2023-08-07 17:15:36', 1, '1000005', '一个好名字', 94, 0, NULL);
INSERT INTO `question_info` VALUES (10199, '经常使⽤的 git 命令？', 10002, '前端工程化', 1, NULL, '<p>1 git init // 新建 git 代码库<br></p><p>2 git add // 添加指定⽂件到暂存区</p><p>3 git rm // 删除⼯作区⽂件，并且将这次删除放⼊暂存区</p><p>4 git commit -m [message] // 提交暂存区到仓库区</p><p>5 git branch // 列出所有分⽀</p><p>6 git checkout -b [branch] // 新建⼀个分⽀，并切换到该分⽀</p><div>7 git status // 显⽰有变更⽂件的状态</div>', '2023-08-07 17:20:51', 1, '1000005', '一个好名字', 98, 0, NULL);
INSERT INTO `question_info` VALUES (10200, '说说 List,Set,Map 三者的区别？', 10011, 'Java', 1, '', '<p>List (对付顺序的好帮⼿)： 存储的元素是有序的、可重复的。<br></p><div>Set (注重独⼀⽆⼆的性质): 存储的元素是⽆序的、不可重复的。\r\n</div><div>Map (⽤ Key 来搜索的专家): 使⽤键值对（kye-value）存储，类似于数学上的函数 y=f(x)，\r\n</div><div>“x”代表 key，\"y\"代表 value，Key 是⽆序的、不可重复的，value 是⽆序的、可重复的，每个\r\n</div><div>键最多映射到⼀个值。</div>', '2023-08-10 10:50:22', 1, '1000002', 'MIAO?', 120, 0, NULL);
INSERT INTO `question_info` VALUES (10201, 'Vue3有了解过吗？能说说跟Vue2的区别吗？', 10010, 'Vue.js', 2, NULL, '<p>以下是一些主要区别的总结：<br></p><ol><li><p><strong>响应式系统（Reactivity System）</strong>：Vue 3 引入了 Composition API，这是一种新的响应式系统。Composition API 提供了更灵活和强大的组件状态和逻辑管理方式，使代码组织和重用更加方便。Composition API 使用函数而不是对象，可以提高摇树优化（Tree Shaking）并减小打包体积。</p></li><li><p><strong>更小的包体积</strong>：Vue 3 通过更好的 Tree Shaking 和更高效的运行时代码生成，相较于 Vue 2，打包体积更小。Vue 3 的响应式系统也经过优化，性能更好。</p></li><li><p><strong>性能改进</strong>：Vue 3 采用了更快、更高效的渲染机制，得益于新的编译器。虚拟 DOM 的差异化算法经过优化，减少不必要的更新，提升渲染性能。</p></li><li><p><strong>作用域插槽替代为<code>&lt;slot&gt;</code></strong>：在 Vue 3 中，作用域插槽的概念被更直观、更简化的<code>&lt;slot&gt;</code>语法所取代，使得在组件组合中定义和使用插槽更加容易。</p></li><li><p><strong>引入 Teleport 组件</strong>：Vue 3 引入了 Teleport 组件，可以在 DOM 树中的不同位置渲染内容，用于创建模态框、工具提示和其他覆盖层效果。</p></li><li><p><strong>片段（Fragments）</strong>：Vue 3 引入了一个名为片段（Fragment）的内置组件，允许将多个元素进行分组，而无需添加额外的包装元素。</p></li><li><p><strong>更好的 TypeScript 支持</strong>：Vue 3 默认提供了更好的 TypeScript 支持，具有增强的类型推断和与 TypeScript 工具更好的集成。</p></li><li><p><strong>简化的 API</strong>：Vue 3 对许多 API 进行了简化和优化，使得学习和使用框架更加容易。新的 API 提供了更好的一致性，并与 JavaScript 标准更加对齐。</p></li></ol><p>虽然 Vue 3 引入了这些变化，但它保持与 Vue 2 API 的向后兼容性，允许现有的 Vue 2 项目逐步升级。Vue 3 提供了一个迁移构建版本，与大多数 Vue 2 代码兼容，从而使开发者的过渡更加平滑。</p><p>总体而言，Vue 3 在性能、包体积和开发者体验方面带来了显著的改进，同时引入了 Composition API 作为管理组件状态和逻辑的更强大工具。</p>', '2023-08-27 19:13:49', 1, '1000000', '程序员老罗', 36, 0, 0);
INSERT INTO `question_info` VALUES (10202, '自定义指令是什么？有哪些应用场景？', 10010, 'Vue.js', 2, NULL, '<p>在 Vue 中，自定义指令（Custom Directive）是一种用于扩展 Vue 的模板语法的机制。通过自定义指令，你可以在 DOM 元素上添加自定义行为，并在元素插入、更新和移除时进行相应的操作。<br></p><p>自定义指令由 Vue.directive 函数定义，它接收两个参数：指令名称和指令选项对象。指令选项对象包含一系列钩子函数，用于定义指令的行为。</p><p>以下是一些常见的自定义指令应用场景：</p><ol><li><p><strong>操作 DOM</strong>：自定义指令可以用于直接操作 DOM 元素，例如修改元素的样式、属性、事件绑定等。你可以通过在指令的钩子函数中访问和操作 DOM 元素。</p></li><li><p><strong>表单验证</strong>：你可以创建自定义指令来实现表单验证逻辑。通过自定义指令，你可以监听输入框的值变化，并根据自定义的验证规则进行验证，以便提供实时的反馈。</p></li><li><p><strong>权限控制</strong>：自定义指令可以用于权限控制场景，例如根据用户权限来隐藏或禁用某些元素。你可以在自定义指令中根据用户权限进行条件判断，并修改元素的显示或行为。</p></li><li><p><strong>第三方库集成</strong>：当你需要在 Vue 中使用第三方库或插件时，可以使用自定义指令来进行集成。你可以创建一个自定义指令，在其中初始化和配置第三方库，并在适当的时机调用库的方法。</p></li><li><p><strong>动画和过渡效果</strong>：自定义指令可以与 Vue 的过渡系统一起使用，实现自定义的动画和过渡效果。你可以在自定义指令中监听过渡钩子函数，并根据需要操作元素的样式或类名来实现过渡效果。</p></li></ol><p>这只是一些常见的应用场景，实际上自定义指令的应用范围非常广泛，可以根据具体需求进行灵活的使用。通过自定义指令，你可以扩展 Vue 的能力，实现更复杂和灵活的交互行为。</p>', '2023-08-27 19:14:24', 1, '1000000', '程序员老罗', 12, 0, 0);
INSERT INTO `question_info` VALUES (10203, '谈一谈防抖和节流', 10009, 'JavaScript', 2, '<p>防抖和节流是什么？</p><p>应用场景是什么？</p><p><br></p>', '<h3>防抖 Debounce</h3><p>连续触发事件，但是在设定（规定）的一段时间内中 只执行最后一次。例如：设定1000ms执行，当你触发事件，他会在1000ms后执行；但在中间你又触发了事件，那么就会重新开始1000ms之后执行。</p><p>特点：<strong>从新开始</strong></p><p>应用场景：① 搜索框搜索输入 ② 文本编辑器实时保存   就是不会每时每刻发起请求，比如实时保存，5s之内不添加文字，就自动保存一次，如果一直添加文字就一直延期。</p><p>实现思路：利用定时器</p><div class=\"se-component se-image-container __se__float-none\"><figure><img src=\"/api/file/getImage/202308/hAWV0EsciSZOoGlPwoq5kR8Pwd2Tog.jpg\" alt=\"\" data-rotate=\"\" data-proportion=\"true\" data-size=\"374px,166px\" data-align=\"none\" data-file-name=\"WechatIMG277.jpg\" data-file-size=\"50893\" data-origin=\",\" origin-size=\"938,416\" style=\"width: 374px; height: 166px;\" data-index=\"0\"></figure></div><h3>节流 Throttle</h3><p>连续触发事件但在设定的一段时间内只执行一次函数。例如设定1000ms执行，那在1000ms触发多次，也只在1000ms后执行一次。</p><p>特点：<strong>不要打断我</strong></p><p>应用场景：① 高频事件，例如 快速点击、鼠标滑动，resize事件，scroll事件 ② 下拉加载，图片懒加载 ③ 视频播放记录时间等、</p><p>实现思路：利用定时器</p><div class=\"se-component se-image-container __se__float-none\"><figure><img src=\"/api/file/getImage/202308/80ZihpsVd4yZTHvZXe0qntzYeuCMpL.jpg\" alt=\"\" data-rotate=\"\" data-proportion=\"true\" data-size=\"380px,184px\" data-align=\"none\" data-file-name=\"WechatIMG278.jpg\" data-file-size=\"53211\" data-origin=\",\" origin-size=\"910,440\" style=\"width: 380px; height: 184px;\" data-index=\"1\"></figure></div>', '2023-08-29 21:55:28', 1, '1000009', 'mrmayor', 11, 0, 0);
INSERT INTO `question_info` VALUES (10204, 'Java是如何实现跨平台的？', 10011, 'Java', 1, '<h2>Java是如何实现跨平台的？</h2>', '<p>Java是通过JVM（Java虚拟机）实现跨平台的。<br><br>JVM可以理解成一个软件，不同的平台有不同的版本。我们编写的Java代码，编译后会生成.class 文件（字节码文件）。Java虚拟机就是负责将字节码文件翻译成特定平台下的机器码，通过JVM翻译成机器码之后才能运行。不同平台下编译生成的字节码是一样的，但是由JVM翻译成的机器码却不一样。<br><br>只要在不同平台上安装对应的JVM，就可以运行字节码文件，运行我们编写的Java程序。<br><br>因此，运行Java程序必须有JVM的支持，因为编译的结果不是机器码，必须要经过JVM的翻译才能执行。\r\n<br><br></p><p><br></p>', '2023-08-29 23:58:55', 1, '1000010', '小鬼', 17, 0, 0);
INSERT INTO `question_info` VALUES (10205, 'Java 与 C++ 的区别', 10011, 'Java', 1, '<p><span style=\"font-size: 1.5em; font-weight: 700;\">Java 与 C++ 的区别</span><br></p>', '<ul><li>​Java 是纯粹的面向对象语言，所有的对象都继承自 java.lang.Object，C++ 兼容 C ，不但支持面向对象也支持面向过程。<br></li><li>Java 通过虚拟机从而实现跨平台特性， C++ 依赖于特定的平台。<br></li><li>Java 没有指针，它的引用可以理解为安全指针，而 C++ 具有和 C 一样的指针。<br></li><li>Java 支持自动垃圾回收，而 C++ 需要手动回收。<br></li><li>Java 不支持多重继承，只能通过实现多个接口来达到相同目的，而 C++ 支持多重继承。</li></ul>', '2023-08-30 00:02:25', 1, '1000010', '小鬼', 14, 0, 0);
INSERT INTO `question_info` VALUES (10206, '面向对象和面向过程的区别', 10011, 'Java', 2, '<p><br></p>', '<p><p><strong>1.封装、继承、多态性特性：</strong> 这三个特性是面向对象编程的核心，它们强调了数据和行为的组织方式，使得代码更易于维护、复用和扩展。</p></p><p><p><strong>2.性能方面的考虑：</strong> 在面向对象编程中，对象的创建和销毁可能引入轻微的性能开销。然而，现代优化技术和合理的设计可以减少这种开销，使其在大多数情况下不会造成严重性能问题。</p></p><p><p><strong>3.性能与可维护性、复用性的权衡：</strong> 面向对象编程的性能开销通常可以通过可维护性、复用性和扩展性的优势来弥补。在大型项目中，这些优势可能比性能更为重要。</p></p><p><p><strong>4.性能优化的方法：</strong> 如果面向对象编程中出现性能问题，可以使用各种性能优化策略来减少开销，例如对象池、延迟实例化和缓存等。</p></p><p>综合来看，选择面向对象编程还是面向过程编程取决于项目需求、优势权衡和实际情况。通常情况下，现代编程环境和优化技术已经使得性能差距不再是主要问题，而代码的可维护性、复用性和扩展性往往更具影响力。</p>', '2023-08-30 00:19:53', 1, '1000010', '小鬼', 16, 0, 0);
INSERT INTO `question_info` VALUES (10207, '什么是BOS？', 10011, 'Java', 4, '<div><br></div><div><strong>什么是BOS？</strong></div><div><strong>BOS 与 ERP 是什么关系？</strong>​<br></div>', '<p>ERP 系统是企业资源计划(Enterprise Resource Planning )的简称。<br></p><p>BOSS(Business &amp; Operation Support )指的是业务运营支撑系统。</p><div>BOS 是 ERP 的集成与应用平台。 BOS 遵循面向服务的架构体系，是一个面向业务的可视化开发平台；是一个ERP 和第三方应用集成的技术平台。它有效的解决了 ERP 应用的最主要矛盾——用户需求个性化和传统 ERP 软件标准化之间的矛盾。</div><div><br></div><div>BOS 与 ERP 是什么关系？</div><div>&nbsp;&nbsp;&nbsp;&nbsp;ERP 是企业管理信息化的全面解决方案， ERP 是基于 BOS 构建的。 ERP 满足企业全面业务的标准应用；BOS确</div><div>保了企业 ERP 应用中的个性化需求完美实现。基于 BOS 的 ERP，可以为不同行业不同发展阶段的企业构建灵活的、</div><div>可扩展的、全面集成的整体解决方案。</div>', '2023-09-04 20:24:56', 1, '1000010', '小鬼', 6, 0, 0);
INSERT INTO `question_info` VALUES (10208, '什么是（Activity）工作流', 10011, 'Java', 4, '<p>什么是工作流？</p><p><br></p><div><br></div><div><br></div>', '<p>（举个栗子）现在大多数公司的请假流程是这样的：员工打电话（或网聊）向上级提出请假申请——上级口头同意——上级将请假记录下来——月底将请假记录上交公司——公司将请假录入电脑。采用工作流技术的公司的请假流程是这样的：员工使用账户登录系统——点击请假——上级登录系统点击允许。就这样，一个请假流程就结束了。有人会问，那上级不用向公司提交请假记录？公司不用将记录录入电脑？答案是，用的。但是这一切的工作都会在上级点击允许后自动运行！这就是工作流技术。</p><div><br></div><p>Georgakopoulos 给出的工作流定义是： 工作流是将一组任务组织起来以完成某个经营过程：定义了任务的触发顺序和触发条件，每个任务可以由一个或多个软件系统完成，也可以由一个或一组人完成，还可以由一个或多个人与软件系统协作完。</p>', '2023-09-04 20:28:02', 1, '1000010', '小鬼', 3, 0, 0);
INSERT INTO `question_info` VALUES (10209, '工作流技术的优点', 10011, 'Java', 3, '<p>工作流技术的优点<br></p><p></p>', '<div>从请假的例子，很容易看出，工作流系统实现了工作流程的自动化，提高了企业运营效率、改善企业资源利用、提高企业运作的灵活性和适应性、提高量化考核业务处理的效率、减少浪费（时间就是金钱）。而手工处理工作流程，一方面无法对整个流程状况进行有效跟踪、了解，另一方面难免会出现人为的失误和时间上的延时导致效率低下，特别是无法进行量化统计，不利于查询、报表及绩效评估。</div>', '2023-09-04 20:29:29', 1, '1000010', '小鬼', 3, 0, 0);
INSERT INTO `question_info` VALUES (10210, '工作流生命周期', 10011, 'Java', 3, '<p><br></p>', '<p>除了我们自行启动（start）或者结束（finish）一个 Activity，我们并不能直接控制一个 Activity 的生命状态，我们只能通过实现 Activity 生命状态的表现——即回调方法来达到管理 Activity 生命周期的变化。<br></p>', '2023-09-04 20:30:39', 1, '1000010', '小鬼', 9, 0, 0);
INSERT INTO `question_info` VALUES (10211, '企业实战面试题(文思创新)—什么叫脏数据，什么叫脏读（Dirty Read）', 10011, 'Java', 4, '<p>什么叫脏数据，什么叫脏读（Dirty Read）<br></p>', '<p>脏数据在临时更新（脏读）中产生。事务 A 更新了某个数据项 X，但是由于某种原因，事务 A 出现了问题，于是要把 A 回滚。但是在回滚之前，另一个事务 B 读取了数据项 X 的值(A 更新后)，A 回滚了事务，数据项恢复了原值。事务 B 读取的就是数据项X 的就是一个“临时”的值，就是脏数据。</p><p>脏读就是指当一个事务正在访问数据，并且对数据进行了修改，而这种修改还没有提交到数据库中，这时，另外一个事务也访问这个数据，然后使用了这个数据。因为这个数据是还没有提交的数据，那么另外一个事务读到的这个数据是脏数据，依据脏数据所做的操作可能是不正确的。</p>', '2023-09-05 11:07:10', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10212, '企业实战面试题(文思创新)—Jsp 有什么特点？', 10011, 'Java', 3, '<p>Jsp 有什么特点？<br></p><p></p>', '<p>JSP(Java Server Pages)是由 Sun Microsystems 公司倡导、许多公司参与一起建立的一种动态网页技术标准。JSP 技术是用 JAVA 语言作为脚本语言的，JSP 网页为整个服务器端的 JAVA 库单元提供了一个接口来服务于 HTTP 的应用程序。</p><p>在传统的网页 HTML 文件(*.htm,*.html)中加入 Java 程序片段(Scriptlet)和 JSP 标记(tag)，就构成了 JSP 网页(*.jsp)。Web 服务器在遇到访问 JSP 网页的请求时，首先执行其中的程序片段，然后将执行结果以 HTML 格式返回给客户。程序片段可以操作数据库、重新定向网页以及发送 email 等等，这就是建立动态网站所需要的功能。所有程序操作都在服务器端执行，网络上传送给客户端的仅是得到的结果，对客户浏览器的要求最低，可以实现无 Plugin，无ActiveX，无 Java Applet，甚至无 Frame。<br></p><div><br></div><div>JSP 的优点：<br></div><div>1)对于用户界面的更新，其实就是由 Web Server 进行的，所以给人的感觉更新很快。</div><div>2)所有的应用都是基于服务器的，所以它们可以时刻保持最新版本。</div><div>3)客户端的接口不是很繁琐，对于各种应用易于部署、维护和修改。</div>', '2023-09-05 11:23:31', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10213, '企业实战面试题(文思创新)—JavaScript 有哪些优缺点？', 10011, 'Java', 4, '<p>JavaScript 有哪些优缺点？<br></p>', '<p>(1).javascript 的优点：</p><p>javascript 减少网络传输。</p><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在 javascript 这样的用户端脚本语言出现之前，传统的数据提交和验证工作均由用户端浏览器通过网络传输到服务器开发上进行。如果数据量很大，这对于网络和服务器开发的资源来说实在是一种无形的浪费。而使用 javascript 就可以在客户端进行数据验证。</div><div><br></div><div>javascript 方便操纵 html 对象。</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;javascript 可以方便地操纵各种页面中的对象，用户可以使用 javascript 来控制页面中各个元素的外观、状态甚至运行方式，javascript 可以根据用户的需要“定制”浏览器，从而使网页更加友好。</div><div><br></div><div>javascript 支持分布式应用运算。</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;javascript 可以使多种任务仅在用户端就可以完成，而不需要网络和服务器开发的参与，从而支持分布式应用 的运算和处理。</div><div><br></div><div>（2）javascript 的局限性：<br></div><div>各浏览器厂商对 javascript 支持程度不同。</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前在互联网 上有很多浏览器，如 firefox、internet explorer、opera 等，但每种浏览器支持 javascript 的程度是不一样的，不同的浏览器在浏览一个带有 javascript 脚本的主页时，由于对 javascript 的支持稍有不同，其效果会有一定的差距，有时甚至会显示不出来。</div><div>“web 安全性”对javascript 一些功能牺牲。</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当把 javascript 的一个设计目标设定为“web 安全性”时，就需要牺牲 javascript 的一些功能。因此，纯粹的javascript 将不能打开、读写和保存用户计算机上的文件。其有权访问的唯一信息就是该 javascript 所嵌入开发 的那个web 主页中的信息，简言之，javascript 将只存在于它自己的小小世界—web 主页里。</div>', '2023-09-05 11:26:10', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10214, '企业实战面试题(文思创新)—什么叫对象持久化（OBJect  PERSIstence），为什么要进行对象持久化？', 10011, 'Java', 4, '<p>什么叫对象持久化（OBJect&nbsp; PERSIstence），为什么要进行对象持久化？</p>', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;持久化的对象，是已经存储到数据库或保存到本地硬盘中的对象，我们称之为持久化对象。为了保存在内存中的各种对象的状态（也就是实例变量，不是方法），并且可以把保存的对象状态再读出来。虽然你可以用你自己的各种各样的方法来保存 object states，但是 Java 给你提供一种应该比你自己好的保存对象状态的机制，那就是序列化。简单说就是对象序列化是将对象状态转换为可保持或传输的格式的过程。</p><p><br></p><p>什么情况下需要序列化 ：</p><div>a）当你想把的内存中的对象状态保存到一个文件中或者数据库中时候；</div><div>b）当你想用套接字在网络上传送对象的时候；</div><div>c）当你想通过 RMI 传输对象的时候；</div><div><br></div><div><br></div><div>对象要实现序列化，是非常简单的，只需要实现 Serializable 接口就可以了。</div><div>public class Test implements Serializable<br></div><p></p>', '2023-09-05 11:36:31', 1, '1000010', '小鬼', 2, 0, 0);
INSERT INTO `question_info` VALUES (10215, '企业实战面试题(文思创新)—Set，List，Map 有什么区别？', 10011, 'Java', 3, '<p>List 和Map、Set 的区别</p><p></p>', '<p><strong>1.结构特点</strong><br></p><p>List 和 Set 是存储单列数据的集合，Map 是存储键和值这样的双列数据的集合；List 中存储的数据是有顺序，并且允许重复；Map 中存储的数据是没有顺序的，其键是不能重复的，它的值是可以有重复的，Set 中存储的数据是无序的，且不允许有重复，但元素在集合中的位置由元素的 hashcode 决定，位置是固定的（Set 集合根据 hashcode 来进行数据的存储，所以位置是固定的，但是位置不是用户可以控制的，所以对于用户来说 set 中的元素还是无序的）；</p><p><strong>2.实现类</strong></p><p><strong>List 接口有三个实现类</strong>（<strong>LinkedList</strong>：基于链表实现，链表内存是散乱的，每一个元素存储本身内存地址的同时还存储下一个元素的地址。链表增删快，查找慢；<strong>ArrayList</strong>：基于数组实现，非线程安全的，效率高，便于索引，但不便于插入删除<strong>Vector</strong>：基于数组实现，线程安全的，效率低）。</p><p><strong>Map 接口有三个实现类</strong>（<strong>HashMap</strong>：基于 hash 表的 Map 接口实现，非线程安全，高效，支持 null 值和 null键；HashTable：线程安全，低效，不支持 null 值和 null 键；<strong>LinkedHashMap</strong>：是 HashMap 的一个子类，保存了记录的插入顺序；<strong>SortMap</strong> 接口：TreeMap，能够把它保存的记录根据键排序，默认是键值的升序排序）。</p><p><strong>Set 接口有两个实现类</strong>（<strong>HashSet</strong>：底层是由 HashMap 实现，不允许集合中有重复的值，使用该方式时需要重写equals()和 hashCode()方法；<strong>LinkedHashSet</strong>：继承与 HashSet，同时又基于 LinkedHashMap 来进行实现，底层使用的是LinkedHashMp）</p><p><strong>3.区别</strong></p><p>List 集合中对象按照索引位置排序，可以有重复对象，允许按照对象在集合中的索引位置检索对象，例如通过list.get(i)方法来获取集合中的元素；Map 中的每一个元素包含一个键和一个值，成对出现，键对象不可以重复，值对象可以重复；Set 集合中的对象不按照特定的方式排序，并且没有重复对象，但它的实现类能对集合中的对象按照特定的方式排序，例如 TreeSet 类，可以按照默认顺序，也可以通过实现 Java.util.Comparator&lt;Type&gt;接口来自定义排序方式。</p><p><br></p><p><br></p>', '2023-09-05 11:45:45', 1, '1000010', '小鬼', 7, 0, 0);
INSERT INTO `question_info` VALUES (10216, '企业实战面试题(文思创新)—什么是自定义异常？如何自定义异常？', 10011, 'Java', 3, '<p>什么是自定义异常？如何自定义异常？<br></p>', '<p>在Java中，自定义异常是用户根据特定需求创建的异常类，用于捕获和处理应用程序中的特定错误或异常情况。自定义异常类必须继承自 `java.lang.Exception` 或其子类，通常会提供自己的构造函数和方法来更好地描述和处理异常情况。<br></p><p>以下是如何自定义异常类以及如何使用它的一般步骤：</p><div class=\"se-component se-image-container __se__float-none\"><figure><img src=\"/api/file/getImage/202309/xKDhAoR9xSpMjNoQkbpjH1Qnmi1t6E.png\" alt=\"\" data-rotate=\"\" data-proportion=\"true\" data-size=\",\" data-align=\"none\" data-percentage=\"auto,auto\" data-file-name=\"1.png\" data-file-size=\"18192\" data-origin=\",\" origin-size=\"699,295\" style=\"\" data-index=\"0\" data-rotatex=\"\" data-rotatey=\"\"></figure></div><div class=\"se-component se-image-container __se__float-none\"><figure style=\"width: 100%;\"><img src=\"/api/file/getImage/202309/VqiT19Bs3AVi3N9wlxBG1PeO7ET51F.png\" alt=\"\" data-rotate=\"\" data-proportion=\"true\" data-size=\"100%,\" data-align=\"none\" data-file-name=\"2.png\" data-file-size=\"23797\" data-origin=\",\" origin-size=\"701,463\" data-percentage=\"100,\" style=\"width: 100%;\" data-index=\"1\"></figure></div><p><br></p>', '2023-09-05 15:01:00', 1, '1000010', '小鬼', 11, 0, 0);
INSERT INTO `question_info` VALUES (10217, '企业实战面试题(文思创新)—为什么要使用接口和抽象类？', 10011, 'Java', 4, '<div>为什么要使用接口和抽象类？</div>', '<p>Java 接口和 Java 抽象类代表的就是抽象类型，就是我们需要提出的抽象层的具体表现。OOP 面向对象的编程，如果要提高程序的复用率，增加程序的可维护性，可扩展性，就必须是面向接口的编程，面向抽象的编程，正确地使用接口、抽象类这些太有用的抽象类型做为你结构层次上的顶层。</p><div><strong>1、Java 接口和 Java 抽象类最大的一个区别，就在于 Java 抽象类可以提供某些方法的部分实现，而 Java 接口不可以，这大概就是 Java 抽象类唯一的优点吧，但这个优点非常有用。</strong> 如果向一个抽象类里加入一个新的具体方法时，那么它所有的子类都一下子都得到了这个新方法，而 Java 接口做不到这一点，如果向一个 Java 接口里加入一个新方法，所有实现这个接口的类就无法成功通过编译了，因为你必须让每一个类都再实现这个方法才行.</div><div><strong>2、一个抽象类的实现只能由这个抽象类的子类给出，也就是说，这个实现处在抽象类所定义出的继承的等级结构中，而由于 Java 语言的单继承性，所以抽象类作为类型定义工具的效能大打折扣。</strong> 在这一点上，Java 接口的优势就出来了，任何一个实现了一个 Java 接口所规定的方法的类都可以具有这个接口的类型，而一个类可以实现任意多个Java 接口，从而这个类就有了多种类型。</div><div>3、从第 2 点不难看出，Java 接口是定义混合类型的理想工具，混合类表明一个类不仅仅具有某个主类型的行为，而且具有其他的次要行为。</div><div>4、结合 1、2 点中抽象类和 Java 接口的各自优势，具精典的设计模式就出来了：声明类型的工作仍然由 Java 接口承担，但是同时给出一个 Java 抽象类，且实现了这个接口，而其他同属于这个抽象类型的具体类可以选择实现这个Java 接口，也可以选择继承这个抽象类，也就是说在层次结构中，Java 接口在最上面，然后紧跟着抽象类，哈，这下两个的最大优点都能发挥到极至了。<strong>这个模式就是“缺省适配模式”。</strong> 在 Java 语言 API 中用了这种模式，而且全都遵循一定的命名规范：Abstract ＋接口名。</div><div>Java 接口和 Java 抽象类的存在就是为了用于具体类的实现和继承的，如果你准备写一个具体类去继承另一个具体类的话，那你的设计就有很大问题了。Java 抽象类就是为了继承而存在的，它的抽象方法就是为了强制子类必须去实现的。</div><div><br></div><div>使用 Java 接口和抽象 Java 类进行变量的类型声明、参数是类型声明、方法的返还类型说明，以及数据类型的转换等。而不要用具体 Java 类进行变量的类型声明、参数是类型声明、方法的返还类型说明，以及数据类型的转换等。我想，如果你编的代码里面连一个接口和抽象类都没有的话，也许我可以说你根本没有用到任何设计模式，任何一个设计模式都是和抽象分不开的，而抽象与 Java 接口和抽象 Java 类又是分不开的。</div><div><br></div><div>接口的作用，一言以蔽之，就是标志类的类别。把不同类型的类归于不同的接口，可以更好的管理他们。把一组看如不相关的类归为一个接口去调用.可以用一个接口型的变量来引用一个对象,这是接口我认为最大的作用</div>', '2023-09-07 11:41:32', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10218, '企业实战面试题(文思创新)—继承（inheritance）的优缺点是什么？', 10011, 'Java', 3, '<p>继承（inheritance）的优缺点是什么？<br></p><p></p>', '<p>优点：</p><p>新的实现很容易，因为大部分是继承而来的 。很容易修改和扩展已有的实现。</p><div><br></div><div>缺点：</div><div>打破了封装，因为基类向子类暴露了实现细节 ，白盒重用，因为基类的内部细节通常对子类是可见的 ，当父类的实现改变时可能要相应的对子类做出改变 ，不能在运行时改变由父类继承来的实现。由此可见，组合比继承具有更大的灵活性和更稳定的结构，一般情况下应该优先考虑组合。只有当下列条件满足时才考虑使用继承： 子类是一种特殊的类型，而不只是父类的一个角色 ，子类的实例不需要变成另一个类的对象子类扩展，而不是覆盖或者使父类的功能失效。</div>', '2023-09-07 11:43:28', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10219, '企业实战面试题(文思创新)—方法重载（overload）需要满足什么条件，方法覆盖/方法重写（override）需要满足什么条 件？（二选一）', 10011, 'Java', 4, '<p>方法重载（overload）需要满足什么条件，方法覆盖/方法重写（override）需要满足什么条件？（二选一）</p><p></p>', '<div>答案：重载需要满足的条件：在同一类中定义的方法， 方法名必须相同 ，返回类型必须相同，参数一定不同。</div><div><strong>发生覆盖的条件：</strong></div><div>“三同一不低”，子类和父类的方法名称，参数列表，返回类型必须完全相同，而且子类方法的访问修饰符的权限不能比父类低。</div><div><br></div><div>子类方法不能抛出比父类方法更多的异常。即子类方法所抛出的异常必须和父类方法所抛出的异常一致，或者是</div><div>其子类，或者什么也不抛出；</div><div><br></div><div>被覆盖的方法不能是 final 类型的。因为final 修饰的方法是无法覆盖的。</div><div><br></div><div>被覆盖的方法不能为 private。否则在其子类中只是新定义了一个方法，并没有对其进行覆盖。</div><div><br></div><div>被覆盖的方法不能为 static。所以如果父类中的方法为静态的，而子类中的方法不是静态的，但是两个方法除了这一点外其他都满足覆盖条件，那么会发生编译错误。反之亦然。即使父类和子类中的方法都是静态的，并且满足覆盖条件，但是仍然不会发生覆盖，因为静态方法是在编译的时候把静态方法和类的引用类型进行匹配。</div><div><br></div><div>重写规则：重写方法不能比被重写方法限制有更严格的访问级别。（但是可以更广泛，比如父类方法是包访问权限，子类的重写方法是 public 访问权限。）比如：Object 类有个 toString()方法，开始重写这个方法的时候我们总容易忘记 public 修饰符，编译器当然不会放过任何教训我们的机会。出错的原因就是：没有加任何访问修饰符的方法具有包访问权限，包访问权限比 public 当然要严格了，所以编译器会报错的。参数列表必须与被重写方法的相同。重写有个孪生的弟弟叫重载，也就是后面要出场的。<strong>如果子类方法的参数与父类对应的方法不同，那么就是你认错人了，那是重载，不是重写。返回类型必须与被重写方法的返回类型相同。</strong></div><div><br></div><div>父类方法A：void eat(){} 子类方法 B：int eat(){} 两者虽然参数相同，可是返回类型不同，所以不是重写。</div><div>父类方法A：int eat(){}&nbsp; &nbsp; 子类方法 B：long eat(){} 返回类型虽然兼容父类，但是不同就是不同，所以不是重写。</div>', '2023-09-07 11:50:27', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10220, '企业实战面试题(文思创新)—写出 5个常见的运行时异常（RuntimeException）。', 10011, 'Java', 1, '<p><br></p><p></p>', '<p>1）ClassCastException(类转换异常)</p><p>2）IndexOutOfBoundsException(数组越界)</p><p>3）NullPointerException(空指针)</p><p>4）ArrayStoreException(数据存储异常，操作数组时类型不一致)</p><div>5）IO 操作的 BufferOverflowException异常</div><p></p>', '2023-09-07 11:52:28', 1, '1000010', '小鬼', 1, 0, 0);
INSERT INTO `question_info` VALUES (10221, '企业实战面试题(文思创新)—写出 5 个你在 JAVA开发中常用的包含（全名），并简述其作用。', 10011, 'Java', 1, NULL, '<div>常用的五个：</div><div><strong>1）java.lang.*</strong></div><div>提供利用 Java 编程语言进行程序设计的基础类。最重要的类是 Object（它是类层次结构的根）和 Class（它的实例</div><div>表示正在运行的应用程序中的类）。</div><div><strong>2）java.util.*</strong></div><div>包含集合框架、遗留的 collection 类、事件模型、日期和时间设施、国际化和各种实用工具类（字符串标记生成</div><div>器、随机数生成器和位数组、日期Date 类、堆栈Stack 类、向量Vector 类等）。集合类、时间处理模式、日期时间工具</div><div>等各类常用工具包</div><div><strong>3）java.io.*</strong></div><div>Java 的核心库 java.io 提供了全面的 IO 接口。包括：文件读写、标准设备输出等。Java 中 IO 是以流为基础进行输</div><div>入输出的，所有数据被串行化写入输出流，或者从输入流读入。</div><div><strong>4）java.net.*</strong></div><div>并非所有系统都支持 IPv6 协议，而当 Java 网络连接堆栈尝试检测它并在可用时透明地使用它时，还可以利用系</div><div>统属性禁用它。在 IPv6 不可用或被显式禁用的情况下，Inet6Address 对大多数网络连接操作都不再是有效参数。虽然</div><div>可以保证在查找主机名时 java.net.InetAddress.getByName 之类的方法不返回 Inet6Address，但仍然可能通过传递字面值</div><div>来创建此类对象。在此情况下，大多数方法在使用 Inet6Address 调用时都将抛出异常。</div><div><strong>5）java.sql.*</strong><br></div><div>提供使用 JavaTM 编程语言访问并处理存储在数据源（通常是一个关系数据库）中的数据的 API。此 API 包括一<br></div><div>个框架，凭借此框架可以动态地安装不同驱动程序来访问不同数据源。</div>', '2023-09-07 11:53:48', 1, '1000010', '小鬼', 0, 0, 0);
INSERT INTO `question_info` VALUES (10222, '企业实战面试题(文思创新)—Java 环境变量 Unix/Linux下如何配置？', 10011, 'Java', 2, '<p><br></p>', '<p>答案：修改/etc/profile 文件当本机仅仅作为开发使用时推荐使用这种方法，因为此种配置时所有用户的 shell 都有<br></p><div>权使用这些环境变量，可能会给系统带来安全性问题。用文本编辑器打开/etc/profile，在 profile 文件末尾加入：</div><div><br></div><div>JAVA_HOME=/usr/share/jdk1.5.0_05</div><div><br></div><div>PATH=$JAVA_HOME/bin:$PATH</div><div><br></div><div>CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar</div><div><br></div><div>export JAVA_HOME</div><div><br></div><div>export PATH</div><div><br></div><div>export CLASSPATH 重新登录即可</div><p></p>', '2023-09-07 16:35:32', 1, '1000010', '小鬼', 0, 0, 0);

-- ----------------------------
-- Table structure for share_info
-- ----------------------------
DROP TABLE IF EXISTS `share_info`;
CREATE TABLE `share_info`  (
  `share_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `cover_type` tinyint(4) NULL DEFAULT NULL COMMENT '0:无封面 1:横幅  2:小图标',
  `cover_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面路径',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '0:未发布 1:已发布',
  `create_user_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `create_user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `read_count` int(11) NULL DEFAULT 0 COMMENT '阅读数量',
  `collect_count` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  `post_user_type` tinyint(1) NULL DEFAULT 0 COMMENT '0:内部 1:外部投稿',
  PRIMARY KEY (`share_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10003 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_info
-- ----------------------------
INSERT INTO `share_info` VALUES (10000, 'Easy云盘项目总结', 0, '202309/QpPUIKArjeP3fVheY50Rsb9tXzDRyP.jpg', '<p><span style=\"color: rgb(26, 26, 26);font-size: 24px\">Easy云盘</span><br></p><h2 style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:21px;color:#1A1A1A\">前端</span></h2><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目名称：Easy云盘</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目描述:&nbsp;一个仿百度云盘面向C端用户的网盘项目，包括用户注册，QQ快捷登录，文件上传，分片上传，断点续传，秒传，文件在线预览，包括文本，图片，视频，音频，excel，word&nbsp;，pdf&nbsp;等文件在线预览，文件分享等功能。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">技术选型：Vue3&nbsp;+&nbsp;&nbsp;vite3&nbsp;+&nbsp;vuex</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">负责内容：</span></p><p>1.&nbsp;<span style=\"font-size:15px;color:#333333\">用户注册，登录，QQ快捷登录，发送邮箱验证码，找回密码。</span></p><p>2.&nbsp;<span style=\"font-size:15px;color:#333333\">文件分片上传，断点续传，秒传，上传进度展示，文件预览，新建目录，文件重命名，文件移动，文件分享，删除，下载&nbsp;等功能。</span></p><p>3.&nbsp;<span style=\"font-size:15px;color:#333333\">文件分享列表，取消分享。</span></p><p>4.&nbsp;<span style=\"font-size:15px;color:#333333\">回收站功能，还原文件，彻底删除。</span></p><p>5.&nbsp;<span style=\"font-size:15px;color:#333333\">设置模块&nbsp;&nbsp;1、超级管理员可以看到所有用户上传的文件，可以对文件下载，删除。&nbsp;2、超级管理员可以对用户进行管理，给用户分配空间，禁用、启用用户3、超级管理员可以对系统进行设置，设置邮箱模板，设置用户注册初始化空间大小。</span></p><p>6.&nbsp;<span style=\"font-size:15px;color:#333333\">用户通过分享链接和分享码预览下载其他人分享的文件，同时也可以将文件保存到自己的网盘。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目难点：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">为了实现秒传，在文件上传前需要对文件进行MD5，避免文件过大，浏览器内存溢出，采用SparkMD5对文件分片MD5，文件分片上传，使用Promise&nbsp;完成多文件同时上传，文件开始上传，暂停上传。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">多级目录线性展示，结合路由，刷新后任保持目录层级。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">文件预览，根据不同的文件类型，接受不同的数据类型，包括arraybuffer,blob,json类型的数据。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">文件分享，用户打开链接后需要输入分享码才可以读取文件，输入后，在一个会话内状态一直保持，session会话结束后，需要再次输入分享码。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目收获：</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">熟悉了第三方登录接入流程，比如QQ登录。云盘项目不是简单的增删改查，对大文件采用递归调用完成分片MD5处理，大文件分片上传，解决了实际项目开发中对大文件的上传处理。根据不同的文件类型，使用不同的插件完成文件的在线预览。比如视频的分片播放，pdf,excel,word&nbsp;在线预览。通过这个项目让我对vue的相关知识点，比如数据双向绑定，组合式Api,生命周期函数，状态管理，路由，watch，父子组件，组件封装，表单校验，页面布局，css编写等有了更加深刻的认识，此项目将所学的前端知识进行了综合运用。</span></p><h2 style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:21px;color:#1A1A1A\">后端</span></h2><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目名称：Easy云盘</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目描述:&nbsp;一个仿百度云盘面向C端用户的网盘项目，包括用户注册，QQ快捷登录，文件上传，分片上传，断点续传，秒传，文件在线预览，包括文本，图片，视频，音频，excel，word&nbsp;，pdf&nbsp;等文件在线预览，文件分享等功能。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">技术选型：Springboot&nbsp;+&nbsp;mybatis&nbsp;+&nbsp;mysql+redis+ffmpeg</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">负责内容：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">用户注册，登录，QQ快捷登录，发送邮箱验证码，找回密码。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">文件分片上传，秒传，新建目录，预览，文件重命名，文件移动，文件分享，删除，下载&nbsp;等功能。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">文件分享列表，取消分享。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">回收站功能，还原文件，彻底删除。</span></p><p style=\"text-align: left;\">5.&nbsp;<span style=\"font-size:15px;color:#333333\">设置模块&nbsp;&nbsp;（1）超级管理员角色查询所有用户上传的文件，可以对文件下载，删除。&nbsp;（2）超级管理员可以对用户进行管理，给用户分配空间，禁用、启用用户（3）超级管理员可以对系统进行设置，设置邮箱模板，设置用户注册初始化空间大小。</span></p><p style=\"text-align: left;\">6.&nbsp;<span style=\"font-size:15px;color:#333333\">用户通过分享链接和分享码预览下载其他人分享的文件，同时也可以将文件保存到自己的网盘。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目难点：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">文件分片上传，通过文件MD5实现文件秒传，文件分片上传后，异步对文件进行合并处理，视频文件，调用ffmpeg生成视频缩略图，将文件分片成ts文件。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">通过redis缓存实时计算用户上传过程中空间占用情况。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">多级目录线性展示，通过递归查询，查询目录的所有父级目录。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">用户上传文件，同一级目录重名文件自动重命名，文件移动，同名文件重命名。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目收获：</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">熟悉了第三方登录接入流程，比如QQ登录。让我熟练使用Springboot，采用spring的aop&nbsp;的注解方式&nbsp;实现了不同的接口权限不一样，比如普通用户和超级管理员权限的区别，同时使用aop和java反射实现了后端参数校验。使用redis缓存了一些系统设置，用户上传过程中空间使用实时计算，避免反复查询数据库。项目中解决了如何实现异步调用事务的问题，解决循环依赖的问题，如何调用第三方插件比如ffmpeg来实现对文件的分片处理，合并处理。&nbsp;云盘项目让我学习到如何从功能点去设计数据库，在数据库设计的时候考虑到后续的扩展，比如文件数据的分表处理，可以根据用户id&nbsp;hash&nbsp;取模的方式对文件数据进行分表处理，在开发过程中，通过spring的核心&nbsp;aop来实现与业务的解耦。&nbsp;该项目让我对java，数据库&nbsp;所学知识进行了综合运用，让我能够使用java从0开发一个完整的项目。</span></p>', '2023-08-20 19:52:46', 1, '1000000', '程序员老罗', 335, 0, 0);
INSERT INTO `share_info` VALUES (10001, 'Easybbs项目总结', 0, '', '<p><span style=\"color: rgb(26, 26, 26);font-size: 24px\">Easybbs</span><br></p><h2 style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:21px;color:#1A1A1A\">前端</span></h2><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目名称：EasyBbs</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目描述:&nbsp;一个仿掘金，贴吧的论坛项目，支持模块自定义，多人发帖，回帖，整个项目分为管理端和访客端。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">技术选型：Vue3&nbsp;+&nbsp;&nbsp;vite3&nbsp;+&nbsp;vuex&nbsp;+&nbsp;Element&nbsp;plus</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">负责内容：</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">管理端：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">板块管理，板块的新增，修改删除，排序，发帖权限。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">帖子管理&nbsp;帖子审核，删除，置顶，修改板块。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">评论管理&nbsp;评论审核，删除。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">用户管理&nbsp;禁用用户，给用户发送系统消息。</span></p><p style=\"text-align: left;\">5.&nbsp;<span style=\"font-size:15px;color:#333333\">系统设置&nbsp;包括&nbsp;用户注册欢迎语设置，发帖积分设置，审核设置，发帖积分，发帖数量，附件大小，评论开启，评论积分，评论数设置，点赞量设置。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">	访客端：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">用户注册，登录，发送邮箱验证码，找回密码，在任何需要登录的页面，都会随时弹出登录框，以达到登陆后才能操作。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">用户发帖，设置封面，板块，上传附件，设置附件下载积分</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">板块展示，分页展示板块文章。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">文章详情，文章详情目录解析，文章点赞，附件下载。</span></p><p style=\"text-align: left;\">5.&nbsp;<span style=\"font-size:15px;color:#333333\">文章评论，评论点赞，带图评论。</span></p><p style=\"text-align: left;\">6.&nbsp;<span style=\"font-size:15px;color:#333333\">消息中心，评论消息，点赞消息，回复消息，系统消息。</span></p><p style=\"text-align: left;\">7.&nbsp;<span style=\"font-size:15px;color:#333333\">个人中心&nbsp;分tab展示用户发帖，评论的帖子，点赞的帖子，登录用户在个人中心可以修改头像，修改个人信息。&nbsp;</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目难点：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">页面路由，板块选中。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">详情页解析文章目录，滚动页面定位到目录所在位置。&nbsp;</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">文章评论层级展示，发表二级评论。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目收获：</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">		&nbsp;&nbsp;通过论坛项目，让我熟练使用父子组件的相互调用，将相似的功能抽象出来拆分为一个个组件，避免代码的重复开发，维护起来也非常方便。在与后端进行数据交互，我采用了axios发送http请求，根据后端数据结构，对axios进行了封装，通过统一的拦截器进行拦击处理，减少业务开发过程中过多的业务逻辑处理，包括后端的错误提示，登录超时自动跳转，发送请求loading效果避免重复提交。采用vuex对状态进行管理，减少了部分接口请求次数，比如导航栏，通过状态管理对用户登录状态进行管理，在需要登录后才能进行的操作可以即使弹出登录框。对vue的相关知识点，比如数据双向绑定，组合式Api,生命周期函数，状态管理，路由，watch，父子组件，组件封装，表单校验，页面布局，css编写等有了更加深刻的认识，此项目将所学的前端知识进行了综合运用。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">		&nbsp;&nbsp;</span></p><h2 style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:21px;color:#1A1A1A\">后端</span></h2><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目名称：EasyBbs</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目描述:&nbsp;一个仿掘金，贴吧的论坛项目，支持模块自定义，多人发帖，回帖,整个项目分为管理端和访客端。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">技术选型：Springboot&nbsp;+&nbsp;mybatis&nbsp;+&nbsp;mysql</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">负责内容：</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">管理端：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">板块管理，板块的新增，修改删除，排序，发帖权限。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">帖子管理&nbsp;帖子审核，删除，置顶，修改板块。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">评论管理&nbsp;评论审核，删除。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">用户管理&nbsp;禁用用户，发送系统消息。</span></p><p style=\"text-align: left;\">5.&nbsp;<span style=\"font-size:15px;color:#333333\">系统设置&nbsp;包括&nbsp;用户注册欢迎语设置，发帖积分设置，审核设置，发帖积分，发帖数量，附件大小，评论开启，评论积分，评论数设置，点赞量设置。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">访客端：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">用户注册，登录，发送邮箱验证码，找回密码。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">用户发帖，设置封面，板块，上传附件，设置附件下载积分。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">板块获取，文章列表分页获取。</span></p><p style=\"text-align: left;\">4.&nbsp;<span style=\"font-size:15px;color:#333333\">文章详情，附件下载，积分扣除</span></p><p style=\"text-align: left;\">5.&nbsp;<span style=\"font-size:15px;color:#333333\">文章评论，评论点赞，带图评论。</span></p><p style=\"text-align: left;\">6.&nbsp;<span style=\"font-size:15px;color:#333333\">消息中心，评论消息，点赞消息，回复消息，系统消息。</span></p><p style=\"text-align: left;\">7.&nbsp;<span style=\"font-size:15px;color:#333333\">个人中心&nbsp;用户发帖，评论的帖子，点赞的帖子，登录用户在个人中心可以修改头像，修改个人信息。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">			&nbsp;</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目难点：</span></p><p style=\"text-align: left;\">1.&nbsp;<span style=\"font-size:15px;color:#333333\">不同的操作登录状态不同，比如有的操作需要登录浏览帖子，有的需要登录，比如发帖，点赞，评论。</span></p><p style=\"text-align: left;\">2.&nbsp;<span style=\"font-size:15px;color:#333333\">发帖、回帖、点赞频次限制&nbsp;防止恶意灌水。</span></p><p style=\"text-align: left;\">3.&nbsp;<span style=\"font-size:15px;color:#333333\">帖子是否需要审核全局设置。</span></p><p style=\"text-align:left;margin-left:0pt\"><span style=\"font-size:15px;color:#333333\">项目收获：</span></p><p style=\"text-align: left;\"><span style=\"font-size:15px;color:#333333\">通过论坛项目，让我熟练使用Springboot，采用spring的aop&nbsp;的注解方式&nbsp;实现了不同的接口需要的登录状态不一样，同时使用aop和java反射实现了后端参数校验，通过aop注解的方式实现了发帖，回帖，点赞的频次限制，达到了与实际业务解耦的目的。通过反射将一些数据库设置转为对象进行缓存，减少对数据库的查询操作。论坛项目让我学习到如何从功能点去设计数据库，在开发过程中，考虑如何避免用户恶意提交数据，这也是在做面向C端用户需要考虑的重要问题。通过spring的核心&nbsp;aop来实现与业务的解耦。该项目让我对java，数据库&nbsp;所学知识进行了综合运用，让我能够使用java从0开发一个完整的项目。</span></p>', '2023-08-20 19:53:07', 1, '1000000', '程序员老罗', 316, 0, 0);
INSERT INTO `share_info` VALUES (10002, 'Easyblog项目总结', 0, '', '<h1 style=\"margin-left: 0pt\"><span style=\"font-size:24px;color:#1A1A1A\">Easyblog</span></h1><h2 style=\"margin-left: 0pt\"><span style=\"font-size:21px;color:#1A1A1A\">前端</span></h2><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目名称：Easyblog</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目描述：EasyBlog是一个轻量级团队博客，一个可以生成静态页面的轻博客，整个项目分为管理端和访客端。</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">技术选型：Vue3&nbsp;+&nbsp;&nbsp;vite3&nbsp;+&nbsp;Element&nbsp;plus&nbsp;</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">负责内容：</span></p><p>1.&nbsp;<span style=\"font-size:15px;color:#333333\">用户登录、博客成员管理、包括新增、修改、删除成员，修改成员密码，&nbsp;个人信息设置，包括个人头像修改，密码修改，编辑器设置</span></p><p>2.&nbsp;<span style=\"font-size:15px;color:#333333\">博客管理&nbsp;主要包括&nbsp;博客新增，修改，预览，自动保存草稿，支持富文本和markdown编辑器。</span></p><p>3.&nbsp;<span style=\"font-size:15px;color:#333333\">分类管理&nbsp;主要包括分类的新增，修改，删除，排序。</span></p><p>4.&nbsp;<span style=\"font-size:15px;color:#333333\">专题管理&nbsp;主要包括&nbsp;专题新增，修改，删除，已经专题文章的新增，修改，删除，专题文章支持树状层级。</span></p><p>5.&nbsp;<span style=\"font-size:15px;color:#333333\">回收站管理&nbsp;删除的文章和博客会在回收站中，回收站可以还原，和彻底删除。</span></p><p>6.&nbsp;<span style=\"font-size:15px;color:#333333\">不同的用户实现了不同的权限，超级管理员可以进行博客成员管理，分类管理，还可以对成员发布的博客和专题管理，普通成员只能发布博客，专题。</span></p><p>7.&nbsp;<span style=\"font-size:15px;color:#333333\">发布管理，进度条展示发布进度。</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目难点：专题文章树形展示，拖拽排序</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目收获:&nbsp;通过博客项目，让我熟练使用父子组件的相互调用，将相似的功能抽象出来拆分为一个个组件，避免代码的重复开发，维护起来也非常方便。在与后端进行数据交互，我采用了axios发送http请求，根据后端数据结构，对axios进行了封装，通过统一的拦截器进行拦击处理，减少业务开发过程中过多的业务逻辑处理，包括后端的错误提示，登录超时自动跳转，发送请求loading效果避免重复提交。此项目让我对单页应用有了更加深刻的理解，单页应用大大减少了网络请求，提高了页面渲染速度，大大提升了用户体验。此项目让我对所学知识点有了一个很强的综合运用，对所学的知识点有了更加深刻的理解。</span></p><h2 style=\"margin-left: 0pt\"><span style=\"font-size:21px;color:#1A1A1A\">后端</span></h2><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目名称：Easyblog</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目描述：EasyBlog是一个轻量级团队博客，一个可以生成静态页面的轻博客，整个项目分为管理端和访客端，管理端采用前后端分离的架构，访客端使用nginx代理，访问博客的静态页面。</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">技术选型：Springboot&nbsp;+&nbsp;mybatis&nbsp;+&nbsp;mysql&nbsp;+&nbsp;freemarker</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">负责内容：</span></p><p>1.&nbsp;<span style=\"font-size:15px;color:#333333\">用户登录、博客成员管理、包括新增、修改、删除成员，修改成员密码，&nbsp;个人信息设置，包括个人头像修改，密码修改，编辑器设置。</span></p><p>2.&nbsp;<span style=\"font-size:15px;color:#333333\">博客管理&nbsp;主要包括&nbsp;博客新增，修改，预览，自动保存草稿。</span></p><p>3.&nbsp;<span style=\"font-size:15px;color:#333333\">分类管理&nbsp;主要包括分类的新增，修改，删除，排序。</span></p><p>4.&nbsp;<span style=\"font-size:15px;color:#333333\">专题管理&nbsp;主要包括&nbsp;专题新增，修改，删除，已经专题文章的新增，修改，删除，专题文章支持树状层级。</span></p><p>5.&nbsp;<span style=\"font-size:15px;color:#333333\">回收站管理&nbsp;删除的文章和博客会在回收站中，回收站可以还原，和彻底删除。</span></p><p>6.&nbsp;<span style=\"font-size:15px;color:#333333\">不同的用户实现了不同的权限，超级管理员可以进行博客成员管理，分类管理，还可以对成员发布的博客和专题管理，普通成员只能发布博客，专题。</span></p><p>7.&nbsp;<span style=\"font-size:15px;color:#333333\">根据发布的文章和博客，生成全静态页面。</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目难点：根据发布的博客和专题，分类，生成全静态页面。</span></p><p style=\"margin-left: 0pt\"><span style=\"font-size:15px;color:#333333\">项目收获:&nbsp;通过博客项目，让我熟练使用Springboot，采用spring的aop&nbsp;的注解方式&nbsp;实现了超级管理员和普通成员的不同权限，同时使用aop和java反射实现了后端参数校验。博客项目让我了解如何将一个想法转为一个项目，如何从功能点去设计数据库。博客项目让我对java所学知识点有了综合的应用。将数据库中的数据，根据模板转换为一个全静态的网站，满足静态数据的分页，和模块之间的跳转，也让我深刻理解了前后端分离项目和后端渲染的项目不同之处。前后端分离的项目，后端只需要注重数据的处理后端渲染的项目，需要注重数据的处理，还要处理页面的渲染。</span></p>', '2023-08-20 19:53:31', 1, '1000000', '程序员老罗', 307, 0, 0);

-- ----------------------------
-- Table structure for sys_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `position` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态 0:禁用 1:启用',
  `roles` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户拥有的角色多个用逗号隔开',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `idx_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000003 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '账号信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_account
-- ----------------------------
INSERT INTO `sys_account` VALUES (1000000, '18688886666', '程序员老罗', '47ec2dd791e31e2ef2076caf64ed9b3d', '程序员', 1, '1000', '2023-07-02 15:43:37');
INSERT INTO `sys_account` VALUES (1000001, '18666666666', '老罗铁粉', '47ec2dd791e31e2ef2076caf64ed9b3d', '程序员', 1, '1001', '2023-07-25 08:56:41');
INSERT INTO `sys_account` VALUES (1000002, '19999999999', '超级管理员', '47ec2dd791e31e2ef2076caf64ed9b3d', NULL, 1, '1000', '2024-01-11 22:14:27');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'menu_id，自增主键',
  `menu_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名',
  `menu_type` int(11) NOT NULL DEFAULT 0 COMMENT '菜单类型 0：菜单 1：按钮',
  `menu_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单跳转到的地址',
  `p_id` int(11) NOT NULL COMMENT '上级菜单ID',
  `sort` tinyint(4) NULL DEFAULT 0 COMMENT '菜单排序',
  `permission_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码',
  `show_type` int(11) NULL DEFAULT 0 COMMENT '0:可分配菜单 1:基础菜单',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1055 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1000, '首页', 0, '/', 0, 1, 'home', 0, 'home');
INSERT INTO `sys_menu` VALUES (1001, '内容管理', 0, '/content', 0, 2, 'content', 0, 'content');
INSERT INTO `sys_menu` VALUES (1002, '分类管理', 0, '/content/category', 1001, 1, 'category_list', 0, '');
INSERT INTO `sys_menu` VALUES (1004, '八股文管理', 0, '/content/question', 1001, 2, 'question_list', 0, '');
INSERT INTO `sys_menu` VALUES (1006, '新增/修改分类', 1, '', 1002, 2, 'category_edit', 0, '');
INSERT INTO `sys_menu` VALUES (1007, '新增/修改八股文', 1, '', 1004, 2, 'question_edit', 0, '');
INSERT INTO `sys_menu` VALUES (1008, '题库管理', 0, '/content/exam', 1001, 3, 'exam_question_list', 0, '');
INSERT INTO `sys_menu` VALUES (1009, '经验分享', 0, '/content/share', 1001, 4, 'share_list', 0, '');
INSERT INTO `sys_menu` VALUES (1011, '用户管理', 0, '/app/user', 1012, 1, 'app_user_list', 0, '');
INSERT INTO `sys_menu` VALUES (1012, 'App', 0, '/app', 0, 3, 'app', 0, 'app');
INSERT INTO `sys_menu` VALUES (1013, 'App发布', 0, '/app/updateList', 1012, 3, 'app_update_list', 0, '');
INSERT INTO `sys_menu` VALUES (1014, '设置', 0, '/setting', 0, 3, 'setting', 0, 'settings');
INSERT INTO `sys_menu` VALUES (1015, '菜单管理', 0, '/setting/menu', 1014, 1, 'settings_menu_list', 0, NULL);
INSERT INTO `sys_menu` VALUES (1016, '角色管理', 0, '/setting/role', 1014, 2, 'settings_role_list', 0, NULL);
INSERT INTO `sys_menu` VALUES (1017, '系统用户', 0, '/setting/user', 1014, 3, 'settings_account_list', 0, 'settings');
INSERT INTO `sys_menu` VALUES (1018, '新增/修改/删除', 1, '/setting', 1015, 1, 'settings_menu_edit', 0, NULL);
INSERT INTO `sys_menu` VALUES (1020, '新增/修改角色', 1, '', 1016, 2, 'settings_role_edit', 0, '');
INSERT INTO `sys_menu` VALUES (1022, '新增/修改用户', 1, '', 1017, 2, 'settings_account_edit', 0, '');
INSERT INTO `sys_menu` VALUES (1023, '首页', 0, '/home', 1000, 1, 'home', 0, NULL);
INSERT INTO `sys_menu` VALUES (1024, '删除分类', 1, '', 1002, 3, 'category_del', 0, '');
INSERT INTO `sys_menu` VALUES (1025, '导入八股文', 1, '', 1004, 4, 'question_import', 0, '');
INSERT INTO `sys_menu` VALUES (1026, '发布八股文', 1, '', 1004, 5, 'question_post', 0, '');
INSERT INTO `sys_menu` VALUES (1027, '删除八股文', 1, '', 1004, 3, 'question_del', 0, '');
INSERT INTO `sys_menu` VALUES (1029, '新增/修改题目', 1, NULL, 1008, 2, 'exam_question_edit', 0, NULL);
INSERT INTO `sys_menu` VALUES (1030, '导入题目', 1, '', 1008, 4, 'exam_question_import', 0, '');
INSERT INTO `sys_menu` VALUES (1031, '发布题目', 1, '', 1008, 5, 'exam_question_post', 0, '');
INSERT INTO `sys_menu` VALUES (1032, '删除题目', 1, '', 1008, 3, 'exam_question_del', 0, '');
INSERT INTO `sys_menu` VALUES (1034, '新增/修改文章', 1, '', 1009, 2, 'share_edit', 0, '');
INSERT INTO `sys_menu` VALUES (1035, '发布文章', 1, '', 1009, 4, 'share_post', 0, '');
INSERT INTO `sys_menu` VALUES (1036, '删除文章', 1, '', 1009, 3, 'share_del', 0, '');
INSERT INTO `sys_menu` VALUES (1037, '删除角色', 1, NULL, 1016, 3, 'settings_role_del', 0, NULL);
INSERT INTO `sys_menu` VALUES (1038, '删除用户', 1, '', 1017, 3, 'settings_account_del', 0, '');
INSERT INTO `sys_menu` VALUES (1039, '修改密码', 1, NULL, 1017, 4, 'settings_account_update_password', 0, NULL);
INSERT INTO `sys_menu` VALUES (1040, '启用/禁用', 1, NULL, 1017, 5, 'settings_account_op_status', 0, NULL);
INSERT INTO `sys_menu` VALUES (1041, '批量删除八股文', 1, '', 1004, 6, 'question_del_batch', 0, '');
INSERT INTO `sys_menu` VALUES (1042, '批量删除题目', 1, NULL, 1008, 6, 'exam_question_del_batch', 0, NULL);
INSERT INTO `sys_menu` VALUES (1043, '批量删除文章', 1, NULL, 1009, 5, 'question_del_batch', 0, NULL);
INSERT INTO `sys_menu` VALUES (1045, '新增/修改/删除', 1, NULL, 1013, 2, 'app_update_edit', 0, NULL);
INSERT INTO `sys_menu` VALUES (1046, '应用发布', 1, NULL, 1013, 3, 'app_update_post', 0, NULL);
INSERT INTO `sys_menu` VALUES (1048, '启用/禁用', 1, NULL, 1011, 2, 'app_user_edit', 0, NULL);
INSERT INTO `sys_menu` VALUES (1049, '轮播图', 0, '/app/carouselList', 1012, 2, 'app_carousel_list', 0, '');
INSERT INTO `sys_menu` VALUES (1050, '新增/修改/删除', 1, NULL, 1049, 1, 'app_carousel_edit', 0, NULL);
INSERT INTO `sys_menu` VALUES (1051, '问题反馈', 0, '/app/feedbackList', 1012, 3, 'app_feedback_list', 0, '');
INSERT INTO `sys_menu` VALUES (1052, '回复', 1, '', 1051, 1, 'app_feedback_reply', 0, '');
INSERT INTO `sys_menu` VALUES (1053, '设备管理', 0, '/app/userDevice', 1012, 1, 'app_device_list', 0, NULL);
INSERT INTO `sys_menu` VALUES (1054, '查看分类', 1, '', 1002, 1, 'category_list', 0, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_desc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1000, '超级管理员', '超级管理员', '2023-07-02 15:33:06', '2023-07-02 15:33:06');
INSERT INTO `sys_role` VALUES (1001, '录入信息角色', '录入问题，考题，经验信息', '2023-07-25 08:57:21', '2023-07-25 21:25:04');

-- ----------------------------
-- Table structure for sys_role_2_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_2_menu`;
CREATE TABLE `sys_role_2_menu`  (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  `check_type` tinyint(1) NULL DEFAULT NULL COMMENT '0:半选 1:全选',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色对应的菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_2_menu
-- ----------------------------
INSERT INTO `sys_role_2_menu` VALUES (1000, 0, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1000, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1001, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1002, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1004, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1006, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1007, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1008, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1009, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1011, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1012, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1013, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1014, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1015, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1016, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1017, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1018, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1020, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1022, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1023, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1024, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1025, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1026, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1027, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1029, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1030, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1031, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1032, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1034, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1035, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1036, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1037, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1038, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1039, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1040, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1041, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1042, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1043, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1045, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1046, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1048, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1049, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1050, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1051, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1052, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1053, 1);
INSERT INTO `sys_role_2_menu` VALUES (1000, 1054, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 0, 0);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1001, 0);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1002, 0);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1004, 0);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1007, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1008, 0);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1009, 0);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1025, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1027, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1029, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1030, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1032, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1034, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1036, 1);
INSERT INTO `sys_role_2_menu` VALUES (1001, 1054, 1);

SET FOREIGN_KEY_CHECKS = 1;
