/*
 Navicat Premium Data Transfer

 Source Server         : localhost_33061
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 06/03/2021 22:48:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pages` int NULL DEFAULT NULL,
  `price` float(6, 2) NULL DEFAULT NULL,
  `bookcaseid` int NULL DEFAULT NULL,
  `abled` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_ieh6qsxp6q7oydadktc9oc8t2`(`bookcaseid`) USING BTREE,
  CONSTRAINT `FK_ieh6qsxp6q7oydadktc9oc8t2` FOREIGN KEY (`bookcaseid`) REFERENCES `bookcase` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '解忧杂货店', '东野圭吾', '南海出版公司', 102, 27.30, 9, 0);
INSERT INTO `book` VALUES (2, '追风筝的人', '卡勒德·胡赛尼', '上海人民出版社', 230, 33.50, 3, 0);
INSERT INTO `book` VALUES (3, '这就是二十四节气', '高春香', '电子工业出版社', 220, 59.00, 3, 1);
INSERT INTO `book` VALUES (4, '白夜行', '东野圭吾', '南海出版公司', 300, 27.30, 4, 1);
INSERT INTO `book` VALUES (5, '摆渡人', '克莱儿·麦克福尔', '百花洲文艺出版社', 225, 22.80, 1, 1);
INSERT INTO `book` VALUES (6, '暖暖心绘本', '米拦弗特毕', '湖南少儿出版社', 168, 131.60, 5, 1);
INSERT INTO `book` VALUES (7, '天才在左疯子在右', '高铭', '北京联合出版公司', 330, 27.50, 6, 1);
INSERT INTO `book` VALUES (8, '我们仨', '杨绛', '生活.读书.新知三联书店', 89, 17.20, 7, 1);
INSERT INTO `book` VALUES (9, '活着', '余华', '作家出版社', 100, 100.00, 6, 1);
INSERT INTO `book` VALUES (10, '水浒传', '施耐庵', '三联出版社', 300, 50.00, 1, 1);
INSERT INTO `book` VALUES (11, '三国演义', '罗贯中', '三联出版社', 300, 50.00, 2, 1);
INSERT INTO `book` VALUES (12, '红楼梦', '曹雪芹', '三联出版社', 300, 50.00, 5, 1);
INSERT INTO `book` VALUES (13, '西游记', '吴承恩', '三联出版社', 300, 60.00, 3, 1);
INSERT INTO `book` VALUES (14, '软件工程案例', '李军国', '清华大学出版社', 432, 79.00, 9, 1);
INSERT INTO `book` VALUES (15, '嵌入式原理', '张荣高', '北京航空航天大学出版社', 418, 59.00, 9, 1);
INSERT INTO `book` VALUES (16, '算法与数据结构', '冯广慧', '中国工信出版集团', 300, 56.00, 9, 1);
INSERT INTO `book` VALUES (17, '计算机网络（第七版）', '谢希仁', '电子工业出版社', 300, 49.00, 9, 1);
INSERT INTO `book` VALUES (18, '人工智能', '朱福喜', '清华大学出版社', 300, 49.00, 9, 1);
INSERT INTO `book` VALUES (19, '平凡的世界', '路遥', '人民文学出版社', 87, 30.00, 1, 1);
INSERT INTO `book` VALUES (20, '百年孤独', '加西亚．马尔克斯', '南海出版公司', 124, 43.50, 2, 1);
INSERT INTO `book` VALUES (21, '追风筝的人', ' [美] 卡勒德·胡赛尼', '上海人民出版社', 362, 29.00, 2, 1);
INSERT INTO `book` VALUES (22, '灿烂千阳', '卡勒德 胡塞尼', '上海人民出版社 / 2007-09', 231, 31.00, 1, 1);
INSERT INTO `book` VALUES (23, '无声的告别', '[美] 伍绮诗', '江苏凤凰文艺出版社', 178, 29.90, 2, 1);
INSERT INTO `book` VALUES (24, '许三观卖血记', '余华', '南海出版公司', 269, 16.80, 1, 1);
INSERT INTO `book` VALUES (25, '围城', '钱钟书', '人民文学出版社', 359, 19.00, 1, 1);
INSERT INTO `book` VALUES (26, '红楼梦', '[清] 曹雪芹 著 / 高鹗 续', '人民文学出版社', 1606, 59.70, 7, 1);
INSERT INTO `book` VALUES (27, '傲慢与偏见', '[英] 简·奥斯汀', '人民文学出版社', 310, 13.00, 2, 1);
INSERT INTO `book` VALUES (28, '只愿你曾被这世界温柔相待', '水木丁', '广西师大出版社 / 2012-09', 291, 39.00, 2, 1);
INSERT INTO `book` VALUES (29, '唯食物可慰藉', '肖于 郭婧 许志华', '北京联合出版公司 / 2018-10', 227, 32.80, 1, 1);
INSERT INTO `book` VALUES (30, '生活残忍，但愿望永在', '水木丁', '广西师范大学出版社 / 2016-08', 154, 26.80, 2, 1);
INSERT INTO `book` VALUES (31, ' 芮雪', '阿三', '人民文学出版社', 87, 38.60, 10, 1);
INSERT INTO `book` VALUES (32, '所有消失不见的云', 'Day.dream', '人民文学出版社', 94, 21.48, 10, 1);
INSERT INTO `book` VALUES (33, '经济学原理', '[美]曼昆', '机械工业出版社', 410, 44.00, 1, 1);

-- ----------------------------
-- Table structure for bookadmin
-- ----------------------------
DROP TABLE IF EXISTS `bookadmin`;
CREATE TABLE `bookadmin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookadmin
-- ----------------------------
INSERT INTO `bookadmin` VALUES (1, 'admin1', '13955235245b2497');
INSERT INTO `bookadmin` VALUES (2, 'admin2', '1a0a1fdaad01296d');

-- ----------------------------
-- Table structure for bookcase
-- ----------------------------
DROP TABLE IF EXISTS `bookcase`;
CREATE TABLE `bookcase`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookcase
-- ----------------------------
INSERT INTO `bookcase` VALUES (1, '社会');
INSERT INTO `bookcase` VALUES (2, '情感');
INSERT INTO `bookcase` VALUES (3, '国学');
INSERT INTO `bookcase` VALUES (4, '推理');
INSERT INTO `bookcase` VALUES (5, '绘画');
INSERT INTO `bookcase` VALUES (6, '心理学');
INSERT INTO `bookcase` VALUES (7, '传记');
INSERT INTO `bookcase` VALUES (8, '科技');
INSERT INTO `bookcase` VALUES (9, '计算机');
INSERT INTO `bookcase` VALUES (10, '小说');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookid` int NULL DEFAULT NULL,
  `readerid` int NULL DEFAULT NULL,
  `borrowtime` date NULL DEFAULT NULL,
  `returntime` date NULL DEFAULT NULL,
  `adminid` int NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (69, 5, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (70, 10, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (71, 19, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (72, 22, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (73, 24, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (74, 29, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (75, 33, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (76, 11, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (77, 20, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (78, 21, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (79, 23, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (80, 27, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (81, 28, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (82, 30, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (83, 3, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (84, 3, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (85, 13, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (86, 4, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (87, 6, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (88, 18, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (89, 31, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (90, 32, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (91, 5, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (92, 10, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (93, 19, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (94, 22, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (95, 24, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (96, 25, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (97, 29, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (98, 33, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (99, 11, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (100, 20, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (101, 22, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (102, 5, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (103, 24, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (104, 29, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (105, 19, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (106, 10, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (107, 33, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (108, 11, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (109, 5, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (110, 10, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (111, 11, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (112, 25, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (113, 24, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (114, 22, 2, '2020-12-26', '2021-01-09', 1, 2);
INSERT INTO `borrow` VALUES (115, 33, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (116, 11, 2, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (117, 20, 2, '2020-12-26', '2021-01-09', 1, 2);
INSERT INTO `borrow` VALUES (118, 5, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (119, 10, 3, '2020-12-26', '2021-01-09', 1, 2);
INSERT INTO `borrow` VALUES (120, 19, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (121, 22, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (122, 24, 3, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (123, 25, 3, '2020-12-26', '2021-01-09', 1, 3);
INSERT INTO `borrow` VALUES (124, 29, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (125, 11, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (126, 20, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (127, 11, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (128, 33, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (129, 11, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (130, 18, 3, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (131, 10, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (132, 25, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (133, 22, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (134, 29, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (135, 11, 3, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (136, 5, 5, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (137, 10, 5, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (138, 19, 5, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (139, 22, 5, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (140, 24, 5, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (141, 25, 5, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (142, 29, 5, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (143, 33, 5, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (144, 11, 5, '2020-12-26', '2021-01-09', 1, 1);
INSERT INTO `borrow` VALUES (145, 20, 5, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (146, 5, 5, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (147, 10, 5, '2020-12-26', '2021-01-09', NULL, 0);
INSERT INTO `borrow` VALUES (148, 5, 2, '2020-12-30', '2021-01-13', 1, 3);
INSERT INTO `borrow` VALUES (149, 5, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (150, 10, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (151, 19, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (152, 22, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (153, 24, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (154, 25, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (155, 29, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (156, 33, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (157, 11, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (158, 20, 3, '2020-12-30', '2021-01-13', NULL, 0);
INSERT INTO `borrow` VALUES (159, 5, 2, '2020-12-30', '2021-01-13', 1, 3);
INSERT INTO `borrow` VALUES (160, 5, 2, '2020-12-30', '2021-01-13', 1, 3);
INSERT INTO `borrow` VALUES (161, 17, 2, '2020-12-30', '2021-01-13', 1, 3);
INSERT INTO `borrow` VALUES (162, 5, 6, '2021-03-06', '2021-03-20', 1, 3);
INSERT INTO `borrow` VALUES (163, 22, 6, '2021-03-06', '2021-03-20', 1, 3);
INSERT INTO `borrow` VALUES (164, 20, 6, '2021-03-06', '2021-03-20', 1, 3);
INSERT INTO `borrow` VALUES (165, 3, 6, '2021-03-06', '2021-03-20', 1, 3);
INSERT INTO `borrow` VALUES (166, 19, 6, '2021-03-06', '2021-03-20', 1, 3);
INSERT INTO `borrow` VALUES (167, 11, 6, '2021-03-06', '2021-03-20', 1, 3);
INSERT INTO `borrow` VALUES (168, 22, 6, '2021-03-06', '2021-03-20', 1, 3);

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES (2, '04180614', '0b914804d78c1656', '陈梓宇', '123456', '006', '男');
INSERT INTO `reader` VALUES (6, '04182308', '13b6b7f2c0dcd0a2', '方静静', '123456', '008', '女');

-- ----------------------------
-- Table structure for returnbook
-- ----------------------------
DROP TABLE IF EXISTS `returnbook`;
CREATE TABLE `returnbook`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerid` int NULL DEFAULT NULL,
  `returntime` date NULL DEFAULT NULL,
  `borrowid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of returnbook
-- ----------------------------
INSERT INTO `returnbook` VALUES (63, '摆渡人', 6, '2020-12-26', 69);
INSERT INTO `returnbook` VALUES (64, '水浒传', 6, '2020-12-26', 70);
INSERT INTO `returnbook` VALUES (65, '平凡的世界', 6, '2020-12-26', 71);
INSERT INTO `returnbook` VALUES (66, '灿烂千阳', 6, '2020-12-26', 72);
INSERT INTO `returnbook` VALUES (67, '许三观卖血记', 6, '2020-12-26', 73);
INSERT INTO `returnbook` VALUES (68, '唯食物可慰藉', 6, '2020-12-26', 74);
INSERT INTO `returnbook` VALUES (69, '经济学原理', 6, '2020-12-26', 75);
INSERT INTO `returnbook` VALUES (70, '三国演义', 6, '2020-12-26', 76);
INSERT INTO `returnbook` VALUES (71, '百年孤独', 6, '2020-12-26', 77);
INSERT INTO `returnbook` VALUES (72, '追风筝的人', 6, '2020-12-26', 78);
INSERT INTO `returnbook` VALUES (73, '无声的告别', 6, '2020-12-26', 79);
INSERT INTO `returnbook` VALUES (74, '傲慢与偏见', 6, '2020-12-26', 80);
INSERT INTO `returnbook` VALUES (75, '只愿你曾被这世界温柔相待', 6, '2020-12-26', 81);
INSERT INTO `returnbook` VALUES (76, '生活残忍，但愿望永在', 6, '2020-12-26', 82);
INSERT INTO `returnbook` VALUES (77, '这就是二十四节气', 6, '2020-12-26', 83);
INSERT INTO `returnbook` VALUES (78, '这就是二十四节气', 6, '2020-12-26', 84);
INSERT INTO `returnbook` VALUES (79, '西游记', 6, '2020-12-26', 85);
INSERT INTO `returnbook` VALUES (80, '白夜行', 6, '2020-12-26', 86);
INSERT INTO `returnbook` VALUES (81, '暖暖心绘本', 6, '2020-12-26', 87);
INSERT INTO `returnbook` VALUES (82, '人工智能', 6, '2020-12-26', 88);
INSERT INTO `returnbook` VALUES (83, '许三观卖血记', 7, '2020-12-26', 122);
INSERT INTO `returnbook` VALUES (84, '围城', 7, '2020-12-26', 123);
INSERT INTO `returnbook` VALUES (85, ' 芮雪', 6, '2020-12-26', 89);
INSERT INTO `returnbook` VALUES (86, '所有消失不见的云', 6, '2020-12-26', 90);
INSERT INTO `returnbook` VALUES (87, '摆渡人', 6, '2020-12-30', 91);
INSERT INTO `returnbook` VALUES (88, '水浒传', 6, '2020-12-30', 92);
INSERT INTO `returnbook` VALUES (89, '平凡的世界', 6, '2020-12-30', 93);
INSERT INTO `returnbook` VALUES (90, '灿烂千阳', 6, '2020-12-30', 94);
INSERT INTO `returnbook` VALUES (91, '许三观卖血记', 6, '2020-12-30', 95);
INSERT INTO `returnbook` VALUES (92, '围城', 6, '2020-12-30', 96);
INSERT INTO `returnbook` VALUES (93, '唯食物可慰藉', 6, '2020-12-30', 97);
INSERT INTO `returnbook` VALUES (94, '灿烂千阳', 8, '2021-03-06', 168);
INSERT INTO `returnbook` VALUES (95, '经济学原理', 6, '2021-03-06', 98);
INSERT INTO `returnbook` VALUES (96, '三国演义', 6, '2021-03-06', 99);
INSERT INTO `returnbook` VALUES (97, '百年孤独', 6, '2021-03-06', 100);
INSERT INTO `returnbook` VALUES (98, '经济学原理', 6, '2021-03-06', 107);
INSERT INTO `returnbook` VALUES (99, '水浒传', 6, '2021-03-06', 110);
INSERT INTO `returnbook` VALUES (100, '三国演义', 6, '2021-03-06', 111);
INSERT INTO `returnbook` VALUES (101, '围城', 6, '2021-03-06', 112);
INSERT INTO `returnbook` VALUES (102, '许三观卖血记', 6, '2021-03-06', 113);
INSERT INTO `returnbook` VALUES (103, '经济学原理', 6, '2021-03-06', 115);
INSERT INTO `returnbook` VALUES (104, '三国演义', 6, '2021-03-06', 116);
INSERT INTO `returnbook` VALUES (105, '摆渡人', 6, '2021-03-06', 148);
INSERT INTO `returnbook` VALUES (106, '摆渡人', 6, '2021-03-06', 159);
INSERT INTO `returnbook` VALUES (107, '摆渡人', 6, '2021-03-06', 160);
INSERT INTO `returnbook` VALUES (108, '计算机网络（第七版）', 6, '2021-03-06', 161);
INSERT INTO `returnbook` VALUES (109, '摆渡人', 8, '2021-03-06', 162);
INSERT INTO `returnbook` VALUES (110, '灿烂千阳', 8, '2021-03-06', 163);
INSERT INTO `returnbook` VALUES (111, '百年孤独', 8, '2021-03-06', 164);
INSERT INTO `returnbook` VALUES (112, '这就是二十四节气', 8, '2021-03-06', 165);
INSERT INTO `returnbook` VALUES (113, '平凡的世界', 8, '2021-03-06', 166);
INSERT INTO `returnbook` VALUES (114, '三国演义', 8, '2021-03-06', 167);
INSERT INTO `returnbook` VALUES (115, '摆渡人', 6, '2021-03-06', 109);
INSERT INTO `returnbook` VALUES (116, '三国演义', 6, '2021-03-06', 108);
INSERT INTO `returnbook` VALUES (117, '平凡的世界', 6, '2021-03-06', 105);
INSERT INTO `returnbook` VALUES (118, '水浒传', 6, '2021-03-06', 106);
INSERT INTO `returnbook` VALUES (119, '唯食物可慰藉', 6, '2021-03-06', 104);
INSERT INTO `returnbook` VALUES (120, '许三观卖血记', 6, '2021-03-06', 103);
INSERT INTO `returnbook` VALUES (121, '摆渡人', 6, '2021-03-06', 102);
INSERT INTO `returnbook` VALUES (122, '灿烂千阳', 6, '2021-03-06', 101);

SET FOREIGN_KEY_CHECKS = 1;
