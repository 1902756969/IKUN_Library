/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50517
 Source Host           : localhost:3306
 Source Schema         : IKUN_library

 Target Server Type    : MySQL
 Target Server Version : 50517
 File Encoding         : 65001

 Date: 17/09/2022 13:35:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_book
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publication_date` date NULL DEFAULT NULL,
  `last` int(11) NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isbn`(`isbn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------
INSERT INTO `tbl_book` VALUES (1, '9787229042066', '三体全集', '刘慈欣', '地球往事三部曲', '重庆出版社0', '2012-01-01', 2, '鸡你太美');
INSERT INTO `tbl_book` VALUES (2, '9787108009821', '万历十五年', '黄仁宇', '见微知著，历史观的颠覆', '生活·读书·新知三联书店', '1997-05-01', 3, '见微知著，历史观的颠覆');
INSERT INTO `tbl_book` VALUES (3, '9787200065039', '诗经', '佚名', '思无邪', '北京出版社', '2006-07-02', 5, '');
INSERT INTO `tbl_book` VALUES (4, '9787506365437', '活着', '余华', '生的苦难与伟大', '作家出版社', '2012-08-01', 6, NULL);
INSERT INTO `tbl_book` VALUES (5, '9787544253994', '百年孤独', '加西亚·马尔克斯', '魔幻现实主义代表作', '南海出版公司', '2011-06-01', 2, NULL);
INSERT INTO `tbl_book` VALUES (6, '9787020008728', '三国演义', '罗贯中', '是非成败转头空', '人民文学出版社', '1998-05-01', 3, NULL);
INSERT INTO `tbl_book` VALUES (7, '9787020042494', '小王子', '圣埃克苏佩里', '献给长成大人的孩子们', '人民文学出版社', '2003-08-01', 8, NULL);
INSERT INTO `tbl_book` VALUES (8, '9787537823425', '边城', '沈从文', '一切都充满了善，然而到处是不凑巧', '北岳文艺出版社', '2012-01-01', 5, '边城==编程');
INSERT INTO `tbl_book` VALUES (10, '9787229042066', '三体全集', '刘慈欣', '地球往事三部曲', '重庆出版社', '2012-01-01', 2, '');
INSERT INTO `tbl_book` VALUES (12, '9787200065039', '诗经', '佚名', '思无邪', '北京出版社', '2006-07-02', 5, '');
INSERT INTO `tbl_book` VALUES (16, '9787020008728', '三国演义', '罗贯中', '是非成败转头空', '人民文学出版社', '1998-05-01', 3, NULL);
INSERT INTO `tbl_book` VALUES (17, '9787020042498', '小王子', '圣埃克苏佩里', '献给长成大人的孩子们', '人民文学出版社', '2003-08-01', 8, NULL);
INSERT INTO `tbl_book` VALUES (18, '9787537823425', '边城', '沈从文', '一切都充满了善，然而到处是不凑巧', '北岳文艺出版社', '2012-01-01', 5, '边城==编程');
INSERT INTO `tbl_book` VALUES (21, '9787108009821', '万历十五年', '黄仁宇', '见微知著，历史观的颠覆', '生活·读书·新知三联书店', '1997-05-01', 3, NULL);
INSERT INTO `tbl_book` VALUES (41, '9787506365437', '活着', '余华', '生的苦难与伟大', '作家出版社', '2012-08-01', 6, NULL);
INSERT INTO `tbl_book` VALUES (43, '9787506365430', '活着', '余华', '生的苦难与伟大', '作家出版社', '2012-08-01', 6, NULL);
INSERT INTO `tbl_book` VALUES (45, '9787544253994', '百年孤独', '加西亚·马尔克斯', '魔幻现实主义代表作', '南海出版公司', '2011-06-01', 2, NULL);
INSERT INTO `tbl_book` VALUES (46, '9787020008728', '三国演义', '罗贯中', '是非成败转头空', '人民文学出版社', '1998-05-01', 3, NULL);
INSERT INTO `tbl_book` VALUES (47, '9787020042494', '小王子', '圣埃克苏佩里', '献给长成大人的孩子们', '人民文学出版社', '2003-08-01', 8, NULL);
INSERT INTO `tbl_book` VALUES (48, '9787537823425', '边城', '沈从文', '一切都充满了善，然而到处是不凑巧', '北岳文艺出版社', '2012-01-01', 5, '边城==编程');
INSERT INTO `tbl_book` VALUES (51, '9787544253994', '百年孤独', '加西亚·马尔克斯', '魔幻现实主义代表作', '南海出版公司', '2011-06-01', 2, NULL);
INSERT INTO `tbl_book` VALUES (61, '9787108009821', '万历十五年', '黄仁宇', '见微知著，历史观的颠覆', '生活·读书·新知三联书店', '1997-05-01', 3, NULL);
INSERT INTO `tbl_book` VALUES (62, '978523333688', 'web程序设计', '你', NULL, '666', '2018-03-06', 6, NULL);
INSERT INTO `tbl_book` VALUES (63, '9000000000000', 'Java开发', '诗经', '诗经', '诗经', '2022-09-01', 1, '诗经');

-- ----------------------------
-- Table structure for tbl_borrow
-- ----------------------------
DROP TABLE IF EXISTS `tbl_borrow`;
CREATE TABLE `tbl_borrow`  (
  `isbn_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookname_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerid_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readername_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardid_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(15) NOT NULL DEFAULT 1,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `isbn_log`(`isbn_log`) USING BTREE,
  INDEX `readerid_log`(`readerid_log`) USING BTREE,
  CONSTRAINT `isbn_log` FOREIGN KEY (`isbn_log`) REFERENCES `tbl_book` (`isbn`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tbl_borrow_ibfk_1` FOREIGN KEY (`readerid_log`) REFERENCES `tbl_reader` (`reader_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_borrow
-- ----------------------------
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005008', '曹操', '201001', 4, 2);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005008', '曹操', '201001', 1, 3);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005008', '曹操', '201001', 1, 4);
INSERT INTO `tbl_borrow` VALUES ('9000000000000', 'Java开发', '202005008', '曹操', '201001', 8, 5);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005002', '甄姬', '202032', 1, 18);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005003', '诸葛亮', '301002', 1, 19);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005008', '曹操', '201001', 1, 20);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005001', '周瑜', '1010026', 1, 21);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '2036526', '赵云', '260355551', 1, 22);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005002', '甄姬', '202032', 1, 23);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005003', '诸葛亮', '301002', 1, 24);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005008', '曹操', '201001', 1, 25);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005001', '周瑜', '1010026', 1, 26);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '2036526', '赵云', '260355551', 1, 27);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005002', '甄姬', '202032', 1, 28);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005003', '诸葛亮', '301002', 1, 29);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005008', '曹操', '201001', 1, 30);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005001', '周瑜', '1010026', 1, 31);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '2036526', '赵云', '260355551', 1, 32);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005002', '甄姬', '202032', 1, 33);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005003', '诸葛亮', '301002', 1, 34);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005008', '曹操', '201001', 1, 35);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005001', '周瑜', '1010026', 1, 36);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '2036526', '赵云', '260355551', 1, 37);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005002', '甄姬', '202032', 1, 38);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005003', '诸葛亮', '301002', 1, 39);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005008', '曹操', '201001', 1, 40);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005001', '周瑜', '1010026', 1, 41);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '2036526', '赵云', '260355551', 1, 42);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005002', '甄姬', '202032', 1, 43);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005003', '诸葛亮', '301002', 1, 44);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005008', '曹操', '201001', 1, 45);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005001', '周瑜', '1010026', 1, 46);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '2036526', '赵云', '260355551', 1, 47);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005002', '甄姬', '202032', 1, 48);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005003', '诸葛亮', '301002', 1, 49);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005008', '曹操', '201001', 1, 50);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005001', '周瑜', '1010026', 1, 51);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '2036526', '赵云', '260355551', 1, 52);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005002', '甄姬', '202032', 1, 53);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005003', '诸葛亮', '301002', 1, 54);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005008', '曹操', '201001', 1, 55);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005001', '周瑜', '1010026', 1, 56);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '2036526', '赵云', '260355551', 1, 57);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005002', '甄姬', '202032', 1, 58);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005003', '诸葛亮', '301002', 1, 59);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005008', '曹操', '201001', 1, 60);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '202005001', '周瑜', '1010026', 1, 61);
INSERT INTO `tbl_borrow` VALUES ('9787229042066', '三体全集', '2036526', '赵云', '260355551', 1, 62);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005002', '甄姬', '202032', 1, 63);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005003', '诸葛亮', '301002', 1, 64);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005008', '曹操', '201001', 1, 65);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '202005001', '周瑜', '1010026', 1, 66);
INSERT INTO `tbl_borrow` VALUES ('9787200065039', '诗经', '2036526', '赵云', '260355551', 1, 67);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005002', '甄姬', '202032', 1, 68);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005003', '诸葛亮', '301002', 1, 69);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005008', '曹操', '201001', 1, 70);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005001', '周瑜', '1010026', 1, 71);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '2036526', '赵云', '260355551', 1, 72);
INSERT INTO `tbl_borrow` VALUES ('9787020042498', '小王子', '202005002', '甄姬', '202032', 1, 73);
INSERT INTO `tbl_borrow` VALUES ('9787020042498', '小王子', '202005003', '诸葛亮', '301002', 1, 74);
INSERT INTO `tbl_borrow` VALUES ('9787020042498', '小王子', '202005008', '曹操', '201001', 1, 75);
INSERT INTO `tbl_borrow` VALUES ('9787020042498', '小王子', '202005001', '周瑜', '1010026', 1, 76);
INSERT INTO `tbl_borrow` VALUES ('9787020042498', '小王子', '2036526', '赵云', '260355551', 1, 77);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005002', '甄姬', '202032', 1, 78);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005003', '诸葛亮', '301002', 1, 79);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005008', '曹操', '201001', 1, 80);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005001', '周瑜', '1010026', 1, 81);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '2036526', '赵云', '260355551', 1, 82);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005002', '甄姬', '202032', 1, 83);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005003', '诸葛亮', '301002', 1, 84);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005008', '曹操', '201001', 1, 85);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005001', '周瑜', '1010026', 1, 86);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '2036526', '赵云', '260355551', 1, 87);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005002', '甄姬', '202032', 1, 88);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005003', '诸葛亮', '301002', 1, 89);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005008', '曹操', '201001', 1, 90);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '202005001', '周瑜', '1010026', 1, 91);
INSERT INTO `tbl_borrow` VALUES ('9787506365437', '活着', '2036526', '赵云', '260355551', 1, 92);
INSERT INTO `tbl_borrow` VALUES ('9787506365430', '活着', '202005002', '甄姬', '202032', 1, 93);
INSERT INTO `tbl_borrow` VALUES ('9787506365430', '活着', '202005003', '诸葛亮', '301002', 1, 94);
INSERT INTO `tbl_borrow` VALUES ('9787506365430', '活着', '202005008', '曹操', '201001', 1, 95);
INSERT INTO `tbl_borrow` VALUES ('9787506365430', '活着', '202005001', '周瑜', '1010026', 1, 96);
INSERT INTO `tbl_borrow` VALUES ('9787506365430', '活着', '2036526', '赵云', '260355551', 1, 97);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005002', '甄姬', '202032', 1, 98);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005003', '诸葛亮', '301002', 1, 99);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005008', '曹操', '201001', 1, 100);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005001', '周瑜', '1010026', 1, 101);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '2036526', '赵云', '260355551', 1, 102);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005002', '甄姬', '202032', 1, 103);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005003', '诸葛亮', '301002', 1, 104);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005008', '曹操', '201001', 1, 105);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '202005001', '周瑜', '1010026', 1, 106);
INSERT INTO `tbl_borrow` VALUES ('9787020008728', '三国演义', '2036526', '赵云', '260355551', 1, 107);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005002', '甄姬', '202032', 1, 108);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005003', '诸葛亮', '301002', 1, 109);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005008', '曹操', '201001', 1, 110);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '202005001', '周瑜', '1010026', 1, 111);
INSERT INTO `tbl_borrow` VALUES ('9787020042494', '小王子', '2036526', '赵云', '260355551', 1, 112);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005002', '甄姬', '202032', 1, 113);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005003', '诸葛亮', '301002', 1, 114);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005008', '曹操', '201001', 1, 115);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '202005001', '周瑜', '1010026', 1, 116);
INSERT INTO `tbl_borrow` VALUES ('9787537823425', '边城', '2036526', '赵云', '260355551', 1, 117);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005002', '甄姬', '202032', 1, 118);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005003', '诸葛亮', '301002', 1, 119);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005008', '曹操', '201001', 1, 120);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '202005001', '周瑜', '1010026', 1, 121);
INSERT INTO `tbl_borrow` VALUES ('9787544253994', '百年孤独', '2036526', '赵云', '260355551', 1, 122);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005002', '甄姬', '202032', 1, 123);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005003', '诸葛亮', '301002', 1, 124);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005008', '曹操', '201001', 1, 125);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '202005001', '周瑜', '1010026', 1, 126);
INSERT INTO `tbl_borrow` VALUES ('9787108009821', '万历十五年', '2036526', '赵云', '260355551', 1, 127);
INSERT INTO `tbl_borrow` VALUES ('978523333688', 'web程序设计', '202005002', '甄姬', '202032', 1, 128);
INSERT INTO `tbl_borrow` VALUES ('978523333688', 'web程序设计', '202005003', '诸葛亮', '301002', 1, 129);
INSERT INTO `tbl_borrow` VALUES ('978523333688', 'web程序设计', '202005008', '曹操', '201001', 1, 130);
INSERT INTO `tbl_borrow` VALUES ('978523333688', 'web程序设计', '202005001', '周瑜', '1010026', 1, 131);
INSERT INTO `tbl_borrow` VALUES ('978523333688', 'web程序设计', '2036526', '赵云', '260355551', 1, 132);
INSERT INTO `tbl_borrow` VALUES ('9000000000000', 'Java开发', '202005002', '甄姬', '202032', 1, 133);
INSERT INTO `tbl_borrow` VALUES ('9000000000000', 'Java开发', '202005003', '诸葛亮', '301002', 1, 134);
INSERT INTO `tbl_borrow` VALUES ('9000000000000', 'Java开发', '202005008', '曹操', '201001', 1, 135);
INSERT INTO `tbl_borrow` VALUES ('9000000000000', 'Java开发', '202005001', '周瑜', '1010026', 1, 136);
INSERT INTO `tbl_borrow` VALUES ('9000000000000', 'Java开发', '2036526', '赵云', '260355551', 1, 137);

-- ----------------------------
-- Table structure for tbl_reader
-- ----------------------------
DROP TABLE IF EXISTS `tbl_reader`;
CREATE TABLE `tbl_reader`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `reader_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reader_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` int(32) NULL DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reader_id`(`reader_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_reader
-- ----------------------------
INSERT INTO `tbl_reader` VALUES (2, '202005002', '甄姬', 202032, '本科', '2020-06-09');
INSERT INTO `tbl_reader` VALUES (3, '202005003', '诸葛亮', 301002, '本科', '2020-06-09');
INSERT INTO `tbl_reader` VALUES (5, '202005008', '曹操', 201001, '硕士', '2020-06-09');
INSERT INTO `tbl_reader` VALUES (6, '202005001', '周瑜', 1010026, '硕士', '2020-06-09');
INSERT INTO `tbl_reader` VALUES (7, '2036526', '赵云', 260355551, '高中', '2022-09-07');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, '0001', 'admin', '超级管理员', '123456', '1', '2020-06-08');
INSERT INTO `tbl_user` VALUES (2, '0002', 'wyj', '超级管理员', '123456', '1', '2020-06-08');
INSERT INTO `tbl_user` VALUES (3, '1003', 'test', '编辑人员', '123456', '3', '2020-06-09');
INSERT INTO `tbl_user` VALUES (4, '12', 'test', '超级管理员', '123456', '1', '2020-06-09');
INSERT INTO `tbl_user` VALUES (5, '1004', 'test', '超级管理员', '123', '2', '2020-06-09');

SET FOREIGN_KEY_CHECKS = 1;
