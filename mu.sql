/*
 Navicat Premium Data Transfer

 Source Server         : my
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : mu

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/04/2021 16:34:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `paperId` int NOT NULL AUTO_INCREMENT,
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paperAuthorID` int NULL DEFAULT NULL,
  `paperDate` datetime NULL DEFAULT NULL,
  `paperKeyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int NULL DEFAULT NULL,
  `isPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`paperId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, 'first', 2, '2020-04-08 00:00:00', 'AI', 0, 'no', NULL, NULL);
INSERT INTO `paper` VALUES (2, 'second', 5, '2021-01-11 00:00:00', 'AI', 0, 'no', NULL, NULL);
INSERT INTO `paper` VALUES (3, 'third', 10, '2020-09-16 00:00:00', 'big data', 0, 'no', NULL, NULL);
INSERT INTO `paper` VALUES (4, 're', 1, '2021-04-15 16:00:00', 'AI', 0, 'no', NULL, NULL);
INSERT INTO `paper` VALUES (5, 'fifth', 10, '2021-04-08 16:00:00', 'HCI', NULL, NULL, 'noo', NULL);

-- ----------------------------
-- Table structure for reviewer
-- ----------------------------
DROP TABLE IF EXISTS `reviewer`;
CREATE TABLE `reviewer`  (
  `reviewerId` int NOT NULL AUTO_INCREMENT,
  `reviewerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reviewerPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reviewerField` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`reviewerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviewer
-- ----------------------------
INSERT INTO `reviewer` VALUES (1, 'tommy', '321', 'AI');
INSERT INTO `reviewer` VALUES (2, 'lily', '21', 'big data');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userTab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'tom', '123', '1');
INSERT INTO `user` VALUES (2, 'mary', '12345', '0');

SET FOREIGN_KEY_CHECKS = 1;
