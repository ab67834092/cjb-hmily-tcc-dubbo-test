/*
 Navicat Premium Data Transfer

 Source Server         : 我本地的
 Source Server Type    : MySQL
 Source Server Version : 50629
 Source Host           : localhost:3306
 Source Schema         : cjb

 Target Server Type    : MySQL
 Target Server Version : 50629
 File Encoding         : 65001

 Date: 03/01/2020 18:01:42
*/

drop database if exists `hmily-test`;
CREATE DATABASE `hmily-test` DEFAULT CHARACTER SET utf8mb4;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

use `hmily-test`;
-- ----------------------------
-- Table structure for hmily_business_t
-- ----------------------------
DROP TABLE IF EXISTS `hmily_business_t`;
CREATE TABLE `hmily_business_t`  (
  `id` int(11) NOT NULL,
  `business_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hmily_order_t
-- ----------------------------
DROP TABLE IF EXISTS `hmily_order_t`;
CREATE TABLE `hmily_order_t`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hmily_warehouse_t
-- ----------------------------
DROP TABLE IF EXISTS `hmily_warehouse_t`;
CREATE TABLE `hmily_warehouse_t`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

INSERT INTO `hmily_warehouse_t` VALUES ('1', 10000);
