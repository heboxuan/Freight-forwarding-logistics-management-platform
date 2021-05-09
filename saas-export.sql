/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : saas-export

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 09/05/2021 15:19:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for co_contract
-- ----------------------------
DROP TABLE IF EXISTS `co_contract`;
CREATE TABLE `co_contract`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `offeror` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signing_date` datetime(0) NULL DEFAULT NULL,
  `input_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `check_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inspector` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_amount` double(10, 2) NULL DEFAULT NULL,
  `crequest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ship_time` datetime(0) NOT NULL,
  `import_num` double(11, 0) NULL DEFAULT NULL COMMENT '打印时标识几个星,对应说明中的内容\\r\\n            不能存储特殊字符星星，jstl判断失效',
  `delivery_period` datetime(0) NOT NULL,
  `old_state` int(11) NULL DEFAULT NULL COMMENT '归档前状态, 方便回退',
  `out_state` int(11) NULL DEFAULT NULL COMMENT '0未走货 1部分 2全部\\r\\n            \\r\\n            归档后, 其他选择合同的地方均去除.\\r\\n            表示合同已完成, 不论是否合同的货物是否全部真的走完, 因为有赔付等其他情况',
  `trade_terms` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `print_style` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宽2:一页两个货物  窄1:一页一个货物',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL COMMENT '0草稿 1已上报待报运\\r\\n            \\r\\n            归档后, 其他选择合同的地方均去除.\\r\\n            表示合同已完成, 不论是否合同的货物是否全部真的走完, 因为有赔付等其他情况',
  `pro_num` int(11) NULL DEFAULT 0 COMMENT '货物数量',
  `ext_num` int(11) NULL DEFAULT 0 COMMENT '附件数量',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_contract
-- ----------------------------
INSERT INTO `co_contract` VALUES ('2c90c5004ad63735014ad6d204060005', 'it黑马', '合同号：B', '2018-01-02 00:00:00', 'lw', 'lw', 'lw', 96.00, 'lw', '客户名称B', '2015-01-11 00:00:00', 3, '2015-01-11 00:00:00', NULL, NULL, 'FOB', '2', 'lwlwlw', 2, 4, 3, 'e041f064-b115-4e19-b76e-b515d1fc1fa9', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2015-01-11 10:28:15', '002108e2-9a10-4510-9683-8d8fd1d374ef', '2019-03-23 22:08:58', '1', NULL);
INSERT INTO `co_contract` VALUES ('380ca949-c874-4be1-b1bb-e618d3b37e4b', '1', '1', '2019-04-09 00:00:00', '1', '1', '1', 16.00, '1', '1', '2019-04-29 00:00:00', 3, '2019-04-23 00:00:00', NULL, NULL, '1', '1', '1', 2, 6, 0, '7188e1c7-40e9-45a1-a503-58daa132af4b', '100101', '2019-04-07 17:25:38', NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('4028817a3357462e0133591b86ec0002', '陕西杰信商务发展有限公司', 'C/3817/11', '2011-10-31 00:00:00', '杨丽', NULL, '吕晓波', 5932.80, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'BEAKIE LEE', '2015-01-10 19:55:08', 1, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 2, 0, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3357462e01336cc0877b0010', '陕西杰信商务发展有限公司', '11JK1080', '2011-11-04 00:00:00', '杨丽', NULL, '吕晓波', 2318.40, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-12-10 00:00:00', NULL, NULL, NULL, '1', '待样品确认后方可安排生产', 2, 0, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3357462e01336d3a0be10014', '陕西杰信商务发展有限公司', '11JK1078', '2011-11-04 00:00:00', '杨丽', NULL, '李春光', 54060.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-11-15 00:00:00', NULL, NULL, NULL, '2', NULL, 1, 0, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3357462e01336d523195001a', '陕西杰信商务发展有限公司', 'C/3847/11', '2011-12-02 00:00:00', '杨丽', NULL, '李春光', 39240.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 2, 9, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33812ffd0133813f25940001', '陕西杰信商务发展有限公司', 'C/3861/11', '2011-11-08 00:00:00', '杨丽', NULL, '吕晓波', 176238.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 3, '2012-01-10 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 31, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33812ffd013382048ff80024', '陕西杰信商务发展有限公司', '11JK1082', '2011-11-08 00:00:00', '杨丽', NULL, '李春光', 13656.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'MSA', '2015-01-10 19:55:08', 3, '2011-12-30 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 1, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33812ffd0133821a8eb5002b', '陕西杰信商务发展有限公司', '11JK1084', '2011-11-08 00:00:00', '杨丽', NULL, '李春光', 10936.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'ONE WORLD', '2015-01-10 19:55:08', 3, '2011-12-20 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 4, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33d4f8b40133d9878e88000d', '陕西杰信商务发展有限公司', '11JK1070', '2011-12-20 00:00:00', '杨丽', NULL, NULL, 39248.20, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-11-05 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 10, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33d4f8b40133d991a50d0019', '陕西杰信商务发展有限公司', '11JK1066', '2011-11-25 00:00:00', '杨丽', NULL, '李春光', 146184.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-12-05 00:00:00', NULL, NULL, NULL, '2', '待样品确认后方可安排生产', 0, 13, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33d4f8b40133d9bea39b002f', '陕西杰信商务发展有限公司', '11JK1060', '2011-11-25 00:00:00', '杨丽', NULL, NULL, 165572.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'COACH HOUSE', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 0, 12, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33fc4e280133fd81e7d7001d', '陕西杰信商务发展有限公司', '11JK1068', '2011-10-14 00:00:00', '杨丽', NULL, NULL, 103577.30, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'ELAD', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 0, 11, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33fc4e280133fd9f8b4e002f', '陕西杰信商务发展有限公司', '11JK1072', '2011-12-20 00:00:00', '杨丽', NULL, NULL, 100799.60, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'BRISSI', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 2, 13, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3420e78a013421a693730001', '陕西杰信商务发展有限公司', 'C/4040/11', '2011-12-09 00:00:00', '杨丽', NULL, '李春光', 123400.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 1, '2012-02-15 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 29, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a353b8d8e01353d15008d0046', '陕西杰信商务发展有限公司', 'C/4104/11', '2015-01-10 19:55:08', '杨丽', NULL, NULL, 39753.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 3, '2015-01-10 19:55:08', NULL, NULL, 'T/T', '2', NULL, 2, 22, 1, NULL, NULL, '2015-01-10 19:55:08', NULL, '2015-01-10 19:55:08', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028828660b1cd900160b1cebb440000', 'ZBZ_59', 'ZBZ_59', '2017-11-26 00:00:00', 'ZBZ_59', 'ZBZ_59', 'ZBZ_59', 20.00, 'ZBZ_59', 'ZBZ_59', '2017-09-19 00:00:00', 3, '2017-09-12 00:00:00', NULL, NULL, 'FOB', '2', 'ZBZ_59', 2, 1, 0, NULL, NULL, '2018-01-01 21:00:03', NULL, '2018-01-01 21:00:03', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616082eb0161608728560000', 'xiaoxiao001', 'xiaoxiao001', '2018-02-15 00:00:00', 'xiaoxiao001', 'xiaoxiao001', 'xiaoxiao001', 10.00, 'xiaoxiao001', 'xiaoxiao001', '2018-02-26 00:00:00', 3, '2018-02-21 00:00:00', NULL, NULL, 'FOB', '2', 'xiaoxiao001', 0, 1, 0, NULL, NULL, '2018-02-04 19:15:25', NULL, '2018-02-04 19:15:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616082eb0161608805650001', 'xiaosan002', 'xiaosan002', '2018-02-05 00:00:00', 'xiaosan002', 'xiaosan002', 'xiaosan002', 30.00, 'xiaosan002', 'xiaosan002', '2018-02-06 00:00:00', 3, '2018-02-06 00:00:00', NULL, NULL, 'xiaosan002', '2', 'xiaosan002', 0, 2, 0, NULL, NULL, '2018-02-04 19:16:22', NULL, '2018-02-04 19:16:22', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616a411e01616ab546270006', 'cy001', 'cy001', '2018-02-05 00:00:00', 'cy001', 'cy001', 'cy001', 251.00, 'cy001', 'cy001', '2018-02-19 00:00:00', 3, '2018-02-19 00:00:00', NULL, NULL, 'FOB', '2', 'cy001', 2, 2, 1, '7a02a732-f5b5-4a9e-8e40-2e04d0fc66e5', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2018-02-06 18:42:00', NULL, '2018-02-06 18:42:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616a411e01616ab60a0e0007', 'cy002', 'cy002', '2018-02-05 00:00:00', 'cy002', 'cy002', 'cy002', 20.00, 'cy002', 'cy002', '2018-02-05 00:00:00', 3, '2018-02-12 00:00:00', NULL, NULL, 'FOB', '2', 'cy002', 2, 4, 0, '10d29bc9-78c1-4831-a21a-4fcfea7d87ce', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2018-02-06 18:42:50', NULL, '2018-02-06 18:42:50', '1', NULL);
INSERT INTO `co_contract` VALUES ('402895c2515129200151514376b80002', 'F', 'F', '2015-01-10 19:55:08', 'F', 'F', 'F', 121.00, 'F', 'F', '2015-01-10 19:55:08', 3, '2015-01-10 19:55:08', NULL, NULL, 'F', '2', 'F', 0, 1, 0, NULL, NULL, '2015-01-10 19:55:08', NULL, '2015-01-10 19:55:08', '1', NULL);
INSERT INTO `co_contract` VALUES ('402899d65088203101508831e1e60000', '中华烟草集团', 'xx-01-xxx-02', '2015-01-10 19:55:08', '郭中华', '郭中华', '郭尔获', 0.00, NULL, 'xx', '2015-10-20 00:00:00', 3, '2015-10-20 00:00:00', NULL, NULL, NULL, '2', NULL, NULL, 0, 0, NULL, NULL, '2015-10-21 10:19:41', NULL, '2015-10-21 10:19:41', '1', NULL);
INSERT INTO `co_contract` VALUES ('402899d650885c420150885d95cb0000', 'J2302', 'J2302', '2015-10-21 10:19:41', 'J2302', 'J2302', 'J2302', 1000.00, 'J2302', 'J2302', '2015-10-21 10:19:41', 3, '2015-10-21 10:19:41', NULL, NULL, 'FOB', '2', 'J2302', 0, 1, 0, '71a5a695-0ba5-4f0d-a0b5-0a304efde944', '4028827c4fb6202a014fb6209c730000', '2015-10-21 11:07:25', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('402899d650885c420150885e918e0001', 'J24', 'J24', '2015-10-21 11:07:25', 'J24', 'J24', 'J24', 0.00, 'J24', 'J24', '2015-10-21 11:07:25', 3, '2015-10-21 11:07:25', NULL, NULL, 'T/T', '2', 'J24', 0, 0, 0, '424b2d01-d812-4f30-be40-dcda14110118', '4028827c4fb6202a014fb6209c730000', '2015-10-21 11:07:25', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028a9bd515b2e8201515b3339860000', 'C1', 'C1', '2015-10-21 11:07:25', 'C1', 'C1', 'C1', 100.00, 'C1', 'C1', '2015-10-21 11:07:25', 3, '2015-10-21 11:07:25', NULL, NULL, 'T/T', '2', 'C1', 0, 1, 0, '5758571d-93c6-48f0-9e67-20a442779531', '4028827c4fb645b0014fb64668550000', '2015-12-01 09:41:02', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028a9bd515b3be301515b3d676f0000', 'D1', 'D1', '2015-10-21 11:07:25', 'D1', 'D1', 'D1', 0.00, 'D1', 'D1', '2015-10-21 11:07:25', 3, '2015-10-21 11:07:25', NULL, NULL, 'L/C', '2', 'D1', 1, 0, 0, '6f9f16c8-827b-4cc8-9e20-210aa82d1fcf', '4028827c4fb645b0014fb64668550000', '2015-10-21 11:07:25', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028d3cf567275410156734fb6480000', 'CS', 'CS', '2016-08-01 00:00:00', 'CS', 'CS', 'CS', 0.00, '测试', 'CS', '2016-08-29 00:00:00', 3, '2016-08-22 00:00:00', NULL, NULL, 'FOB', '2', '测试', 0, 0, 0, 'e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028827c4fb6202a014fb6209c730000', '2016-08-10 15:16:59', NULL, '2016-08-10 15:16:59', '1', NULL);
INSERT INTO `co_contract` VALUES ('5c6171a7-7f68-423a-89e1-69d507a56bcb', '1', '2', '2019-04-03 00:00:00', '4', '5', '6', 109.15, '7', '8', '2019-04-03 00:00:00', 3, '2019-04-04 00:00:00', NULL, NULL, '1', '2', '11112345', 2, 3, 0, NULL, NULL, '2019-04-06 12:28:05', NULL, '2019-04-06 12:28:05', '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('8a7e81015acf673a015acf6dc97e0000', 'AOP05', 'AOP05', '2017-03-13 00:00:00', 'AOP05', 'AOP05', 'AOP05', 0.00, 'AOP05', 'AOP05', '2017-02-28 00:00:00', 3, '2017-03-20 00:00:00', NULL, NULL, 'FOB', '2', 'AOP05', 2, 0, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-03-15 08:46:03', NULL, '2017-03-15 08:46:03', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e81ec5ac06f0d015ac06fbb850000', 'sz059', 'sz052', '2017-02-27 00:00:00', 'sz053', 'sz058', 'sz054', 1200.00, 'sz056', 'sz051', '2017-02-28 00:00:00', 3, '2017-03-21 00:00:00', NULL, NULL, 'FOB5', '2', 'sz057', 0, 5, 0, NULL, NULL, '2017-03-12 10:53:52', NULL, '2017-03-12 10:53:52', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e840159aa01770159aa3625310001', 'OOP41', 'OOP41', '2017-01-09 00:00:00', 'OOP41', 'OOP41', 'OOP41', 0.00, 'OOP41', 'OOP41', '2017-01-17 00:00:00', 3, '2017-01-24 00:00:00', NULL, NULL, 'FOB', '2', 'OOP41', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-01-17 10:16:32', NULL, '2017-01-17 10:16:32', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e840159aa01770159aa3a8ff70002', 'OOP4102', 'OOP4102', '2017-01-18 00:00:00', 'OOP4102', 'OOP4102', 'OOP4102', 0.00, 'OOP4102', 'OOP4102', '2017-01-16 00:00:00', 3, '2017-01-23 00:00:00', NULL, NULL, 'FOB', '2', 'OOP4102', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-01-17 10:21:21', NULL, '2017-01-17 10:21:21', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e840159aa01770159aa3b43170003', 'AOP41', 'AOP41', '2017-01-04 00:00:00', 'AOP41', 'AOP41', 'AOP41', 0.00, 'AOP41', 'AOP41', '2017-01-04 00:00:00', 3, '2017-01-24 00:00:00', NULL, NULL, 'FOB', '2', 'AOP41', 0, 0, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-01-17 10:22:07', NULL, '2017-01-17 10:22:07', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84105823102a01582310fcd70000', 'FFFFB', 'FFFFB', '2016-11-01 00:00:00', 'FFFFB', 'FFFFB', 'FFFFB', 85.00, 'FFFFB', 'FFFFB', '2016-11-03 00:00:00', 3, '2016-11-02 00:00:00', NULL, NULL, 'FOB', '2', 'FFFFB', 2, 1, 8, NULL, NULL, '2016-11-02 11:24:25', NULL, '2016-11-02 11:24:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84175884728c0158848d37230000', 'OOP001', 'OOP001', '2016-11-08 00:00:00', 'OOP001', 'OOP001', 'OOP001', 0.00, 'OOP001', 'OOP001', '2016-11-08 00:00:00', 3, '2016-11-28 00:00:00', NULL, NULL, 'FOB', '2', 'OOP001', 0, 0, 0, NULL, NULL, '2016-11-21 09:43:17', NULL, '2016-11-21 09:43:17', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84175884728c0158848fffa50001', 'OOP002', 'OOP002', '2016-11-08 00:00:00', 'OOP002', 'OOP002', 'OOP002', 0.00, 'OOP002', 'OOP002', '2016-11-01 00:00:00', 3, '2016-11-29 00:00:00', NULL, NULL, 'FOB', '2', 'OOP002', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-11-21 09:46:19', NULL, '2016-11-21 09:46:19', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e8419593ddcf901593e0b20ed0000', 'OOP232', 'OOP232', '2016-12-12 00:00:00', 'OOP232', 'OOP232', 'OOP232', 0.00, 'OOP232', 'OOP232', '2016-12-12 00:00:00', 3, '2016-12-27 00:00:00', NULL, NULL, 'FOB', '2', 'OOP232', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-27 10:10:33', NULL, '2016-12-27 10:10:33', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e8419593e0df101593e0f81780000', 'OOP23201', 'OOP23201', '2016-12-13 00:00:00', 'OOP23201', 'OOP23201', 'OOP23201', 0.00, 'OOP23201', 'OOP23201', '2016-12-14 00:00:00', 3, '2016-12-21 00:00:00', NULL, NULL, 'FOB', '2', 'OOP23201', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-27 10:15:20', NULL, '2016-12-27 10:15:20', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e8419593e0df101593e10341b0001', 'AOP232', 'AOP232', '2016-12-13 00:00:00', 'AOP232', 'AOP232', 'AOP232', 0.00, 'AOP232', 'AOP232', '2016-12-06 00:00:00', 3, '2016-12-19 00:00:00', NULL, NULL, 'FOB', '2', 'AOP232', 0, 0, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-27 10:16:06', NULL, '2016-12-27 10:16:06', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84215827fe1b015828058c360001', 'AOP', 'AOP', '2016-11-22 00:00:00', 'AOP', 'AOPAOP', 'AOP', 30.00, 'AOP', 'AOP', '2016-11-08 00:00:00', 3, '2016-11-29 00:00:00', NULL, NULL, 'L/C', '2', 'AOP', 2, 2, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-11-03 10:30:02', NULL, '2016-11-03 10:30:02', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e845158dc48ec0158dc49ce140000', 'WWWW', 'C34543543', '2016-12-20 00:00:00', 'YYYYY02', 'QQQQ', 'ZZZZ03', 900.00, 'SSSS05', 'XXXX01', '2016-12-13 00:00:00', 3, '2016-12-28 00:00:00', NULL, NULL, 'FOB04', '2', 'AAAAA', 2, 1, 0, NULL, NULL, '2016-12-08 10:36:14', NULL, '2016-12-08 10:36:14', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e845a58e13c3a0158e156b9210000', 'OOP003', 'OOP003', '2016-12-05 00:00:00', 'OOP003', 'OOP003', 'OOP003', 0.00, 'OOP003', 'OOP003', '2016-12-05 00:00:00', 3, '2016-12-21 00:00:00', NULL, NULL, 'FOB', '2', 'OOP003', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-09 10:08:26', NULL, '2016-12-09 10:08:26', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84fc587a6c8501587a6d3ed70000', 'JK359', 'JK352', '2016-11-15 00:00:00', 'JK353', 'JK358', 'JK354', 600.00, 'JK356', 'JK351', '2016-11-15 00:00:00', 3, '2016-11-22 00:00:00', NULL, NULL, 'FOB5', '2', 'JK357', 2, 0, 0, NULL, NULL, '2016-11-19 10:32:09', NULL, '2016-11-19 10:32:09', '1', NULL);
INSERT INTO `co_contract` VALUES ('bc433392-2c8a-43b8-a886-b3a35a9bf4c8', '1', '2', '2019-04-02 00:00:00', '3', '1', '4', 17.00, '1', '5', '2019-04-23 00:00:00', 3, '2019-04-23 00:00:00', NULL, NULL, '7', '2', '8', 0, 5, 0, NULL, NULL, '2019-04-07 12:50:16', NULL, NULL, '1', '传智播客');
INSERT INTO `co_contract` VALUES ('d690442f-32ed-4327-b4dd-4f45a68ddb26', '3331', '3331', '2019-04-01 00:00:00', '3331', '31', '3331', 2.00, '31', '3331', '2019-04-03 00:00:00', 2, '2019-04-03 00:00:00', NULL, NULL, '33331', '1', '33331', 0, 1, 0, NULL, NULL, '2019-04-06 18:11:19', NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('D6E89C7A141B44219F16B6CA6791B64E', 'WWWW1', 'C345435431', '2017-11-26 00:00:00', 'xiaosan001', 'xiaosan001', 'xiaosan001', 0.00, 'aaaa', 'xiaosan001', '2017-12-19 00:00:00', 2, '2018-01-22 00:00:00', NULL, NULL, 'FOB', '2', 'aaa', 0, 0, 0, '002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', '2019-03-23 22:04:44', NULL, '2019-03-23 22:04:44', '1', NULL);
INSERT INTO `co_contract` VALUES ('FC8A89AD11CD426BA7045A20F3E2E95A', '12', '2', '2017-12-04 00:00:00', '3', '4', '5', 10.00, 'aaaa6', '7', '2018-01-22 00:00:00', NULL, '2018-01-22 00:00:00', NULL, NULL, 'FOB', '1', '', 0, 2, 0, '002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', '2019-03-23 22:07:56', '002108e2-9a10-4510-9683-8d8fd1d374ef', '2019-03-23 22:08:13', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff8080816077bbb3016077bd30b10000', 'WWWW17', 'C34543543122', '2017-11-26 00:00:00', 'YYYYY02123', 'QQQQ18', 'ZZZZ03124', 65.00, 'asas6', 'XXXX01111', '2017-12-19 00:00:00', 3, '2017-12-27 00:00:00', NULL, NULL, 'FOB0415', '1', 'asas9', 2, 3, 1, NULL, NULL, '2017-12-21 14:22:55', NULL, '2017-12-21 14:22:55', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff80808160bab4fa0160bb1b7a4a0007', 'bj002', 'bj002', '2018-01-01 00:00:00', 'bj002', 'bj002', 'bj002', 0.00, 'bj002', 'bj002', '2018-01-29 00:00:00', 3, '2018-01-30 00:00:00', NULL, NULL, 'FOB', '2', 'bj002', 0, 0, 0, 'faa59d6e-2e04-4972-bd4f-fd946ba38b99', '100101', '2018-01-03 16:20:28', NULL, '2018-01-03 16:20:28', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff80808160bab4fa0160bb1d6e760008', 'bj001', 'bj001', '2018-01-10 00:00:00', 'bj001', 'bj001', 'bj001', 10.00, 'bj001', 'bj001', '2018-01-22 00:00:00', 3, '2018-01-23 00:00:00', NULL, NULL, 'FOB', '2', 'bj001', 0, 1, 0, '6bbf3016-54ab-4ab2-b0d3-2d6622ac17eb', '100101', '2018-01-03 16:22:36', NULL, '2018-01-03 16:22:36', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff80808160bab4fa0160bb1e01c50009', 'sy001', 'sy001', '2018-01-02 00:00:00', 'sy001', 'sy001', 'sy001', 0.00, 'sy001', 'sy001', '2018-01-29 00:00:00', 3, '2018-01-29 00:00:00', NULL, NULL, 'sy001', '2', 'sy001', 0, 0, 0, '84b4a1c0-fb52-4fd5-b410-5db1c933d146', '100101101', '2018-01-03 16:23:14', NULL, '2018-01-03 16:23:14', '1', NULL);

-- ----------------------------
-- Table structure for co_contract_product
-- ----------------------------
DROP TABLE IF EXISTS `co_contract_product`;
CREATE TABLE `co_contract_product`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contract_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余',
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loading_rate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报运：x/y',
  `box_num` double(11, 0) NULL DEFAULT NULL COMMENT '报运',
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `out_number` decimal(11, 0) NULL DEFAULT NULL COMMENT '报运',
  `finished` double(11, 0) NULL DEFAULT NULL COMMENT '报运',
  `product_request` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `amount` double(10, 2) NULL DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `order_no` double(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_contract_product
-- ----------------------------
INSERT INTO `co_contract_product` VALUES ('136b1a13-8fdf-41df-8d02-2eb4c7cf6e71', '380ca949-c874-4be1-b1bb-e618d3b37e4b', '1', '升华', '', 'http://qin84urli.hd-bkt.clouddn.com/Fr3vgpN-eBARHfpxmOjdOPZLVoP1', '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('152ca37f-6551-445e-aa9f-7cc740f6bb68', 'FC8A89AD11CD426BA7045A20F3E2E95A', NULL, '升华', 'xx002', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('1839e100-6628-49ac-aed9-c090b0d062b4', '40288287616a411e01616ab60a0e0007', NULL, '升华', 'xx004', NULL, '很不错', '10.0', 2, 'PCS', 1, NULL, NULL, '真的', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('1eae785a-243f-4e3e-aecf-fc3a9889a3f4', 'bc433392-2c8a-43b8-a886-b3a35a9bf4c8', '16', '康达', '1', 'https://pohq61v14.bkt.clouddn.com/6C2C8C803B5E429CBF5113AD73B67157_logo.jpg', '1', '1', 1, NULL, 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客');
INSERT INTO `co_contract_product` VALUES ('2536ba22-7044-4abf-84ec-bb6b9554f36b', 'bc433392-2c8a-43b8-a886-b3a35a9bf4c8', NULL, '升华', 'xx002', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客');
INSERT INTO `co_contract_product` VALUES ('25639d69-8aa5-4699-a548-bd4b0ccc4369', '40288287616a411e01616ab60a0e0007', NULL, '升华', 'xx001', NULL, '很不错', '10.0', 2, 'PCS', 1, NULL, NULL, '真的', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('297ef1745ac32223015ac322f1f50000', '8a7e81ec5ac06f0d015ac06fbb850000', '10', '晶晨', '1111', '01.png', 'qq', '1/2', 5, 'SETS', 10, NULL, NULL, 'qq', 20.00, 200.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('297ef1745ac32846015ac329327f0000', '8a7e81ec5ac06f0d015ac06fbb850000', '19', '综艺花纸', '111', '03.png', '11', '1', 30, 'SETS', 30, NULL, NULL, '11', 10.00, 300.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('297ef1745ac32ef0015ac331ba510000', '8a7e81ec5ac06f0d015ac06fbb850000', '12', '平遥远江', '111', '05.png', '111', '1', 10, 'SETS', 10, NULL, NULL, '111', 10.00, 100.00, 111, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('352aa8e5-1e8d-4218-86a6-943552e42a87', '40288287616a411e01616ab60a0e0007', NULL, '升华', 'xx002', NULL, '很不错', '10.0', 2, 'PCS', 1, NULL, NULL, '真的', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('3c8fb0ea-93a4-4410-95c7-dc611fe1244a', 'bc433392-2c8a-43b8-a886-b3a35a9bf4c8', NULL, '升华', 'xx001', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客');
INSERT INTO `co_contract_product` VALUES ('3dc7d88c-a219-4541-b5dd-54a7a29ee40c', '2c90c5004ad63735014ad6d204060005', '13', '平遥鸿艺', '1', 'http://${qiniu.rtValue}', '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e0133592355750005', '4028817a3357462e0133591b86ec0002', '2', '光华', '2977', '06.png', 'b5480a29-da8c-41e1-b91c-54a9fdb15834.png', '全明料圆肚糖缸带盖子\\r\\n尺寸：16X36CM高    底径：', 1, 'PCS', 144, 144, 0, NULL, 17.00, 2448.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '2', '光华', '2976', '07.png', 'af417c8a-e44f-406e-b226-194d8a61df75.png', '全明料糖缸带盖子\\r\\n尺寸\n\n：17.5X41CM高   底径：1', 1, 'PCS', 144, 144, 0, NULL, 17.00, 2448.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336cc0879b0011', '4028817a3357462e01336cc0877b0010', '3', '会龙', 'JK1700011', NULL, '05702b8f-6bda-4bca-9c4d-f15c18f279eb.png', '全明料方形黄油缸\\r\\n尺寸：罩子：7.3X8CM高   盘：6', 24, 'PCS', 504, 504, 0, NULL, 4.60, 2318.40, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10015', '4028817a3357462e01336d3a0be10014', '7', '天顺', 'JK1014003', '04.png', '699176d9-c242-42d2-8661-9ce712bba97a.png', '全明料盘子，烤鱼白花纸\\r\\n盘子直径：27CM\\r\\n2只/五层内', 2, 'PCS', 1200, 1200, 0, NULL, 7.50, 9000.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10016', '4028817a3357462e01336d3a0be10014', '1', '宏艺', 'JK1014001', '01.png', 'a2ffd39f-18d5-4a6b-89a2-bc91df4926f5.png', '全明料大碗，烤鱼白花纸\\r\\n尺寸：23X11CM高\\r\\n1只/五', 1, 'PCS', 1000, 1000, 0, NULL, 16.50, 16500.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10018', '4028817a3357462e01336d3a0be10014', '1', '宏艺', 'JK1014005', '09.png', '9ed4ab1e-d425-4b8d-beb3-1fa6dc63d1df.png', '全明料低口杯，烤鱼白花纸\\r\\n尺寸：7.3X10.5CM高\\r\\n', 4, 'PCS', 1800, 1800, 0, NULL, 5.30, 9540.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10019', '4028817a3357462e01336d3a0be10014', '1', '宏艺', 'JK1080766-3', '03.png', '21b5e24a-a58a-4a58-a705-1595faeec581.png', '全明料低口杯，烤3种不同的白花纸\\r\\n尺寸：7.3X10.5C', 3, 'PCS', 1800, 1800, 0, NULL, 5.30, 9540.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d523195001b', '4028817a3357462e01336d523195001a', '7', '天顺', '8708/6203', NULL, '1bab511c-4f4c-4de7-8b65-4ccdcd00a569.png', '怪虫小碗，喷紫色，喷漆，喷珠光\\r\\n直径：18CM\\r\\n4只/内', 4, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001c', '4028817a3357462e01336d523195001a', '7', '天顺', '9749/6525', NULL, '143a4aa8-894d-4226-a461-eac712567360.png', '怪虫碗，喷绿色，喷漆，喷珠光\\r\\n直径：18CM\\r\\n4只/内盒', 4, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001d', '4028817a3357462e01336d523195001a', '7', '天顺', '9226/6116', NULL, 'fcf3f5a9-a405-4f33-abb9-f317c60f1453.png', '海星盘，喷绿色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.00, 4488.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001e', '4028817a3357462e01336d523195001a', '7', '天顺', '9748/6115', NULL, '657ac46a-bd23-4a2d-9abe-c552a8fc3727.png', '海星盘，喷蓝色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.00, 4488.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001f', '4028817a3357462e01336d523195001a', '7', '天顺', '9956/6308', NULL, '1ca7fc1c-aad2-4f1e-8c3b-9a1009e22c04.png', '竹节碗，喷蓝色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.50, 4692.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590020', '4028817a3357462e01336d523195001a', '7', '天顺', '9954/6309', NULL, '1e15e517-af2a-45c9-8c1e-1f1b592f5f79.png', '竹节碗，喷绿色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.50, 4692.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590021', '4028817a3357462e01336d523195001a', '7', '天顺', '8709/6204', NULL, '1a6770a7-033c-4b98-9e2a-60cd2a5081c3.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\\r\\n直径：18CM\\r\\n4只/内', 4, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590022', '4028817a3357462e01336d523195001a', '7', '天顺', '9955/6105', NULL, '15c6d6ad-3608-4d73-83f3-23f605123b90.png', '竹节碗，喷紫色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.50, 4692.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590023', '4028817a3357462e01336d523195001a', '7', '天顺', '9227/6092', NULL, '0ffed7a5-6fd6-4b36-9387-7108bb408fdf.png', '海星盘，喷紫色，喷漆，喷珠光\\r\\n直径：30CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.00, 4488.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133813f25a30002', '4028817a33812ffd0133813f25940001', '4', '精艺', '4993', '22.png', '3feb6071-7835-48b6-beca-e54202221c3b.png', '全明料死模风灯，电镀花银喷绿色 \\r\\n明料挺底\\r\\n尺寸：11.', 1, 'PCS', 300, 300, 0, NULL, 8.50, 2550.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133813f25a30003', '4028817a33812ffd0133813f25940001', '4', '精艺', '4994', '23.png', '56ada31d-acfc-4261-b28d-8be65ba2a21e.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 8.50, 2550.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133813f25a30004', '4028817a33812ffd0133813f25940001', '4', '精艺', '4995', '24.png', '9eb0c66c-d682-4f19-b89a-1a4808da5456.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 8.50, 2550.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40005', '4028817a33812ffd0133813f25940001', '2', '光华', '9868', '01.png', 'ba10c6b0-34b7-4911-a45c-cc282cf8072d.png', '全明料喇叭底糖缸配盖子\\r\\n尺寸：16X40CM高\\r\\n1只/上', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 27, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40006', '4028817a33812ffd0133813f25940001', '7', '天顺', '5099', '14.png', 'd38c8874-e641-4c59-9f6d-eb07df231d44.png', '全明料钻石蛋糕盘粘底座\\r\\n喷蓝色，喷漆\\r\\n尺寸：23X11.', 1, 'PCS', 300, 300, 0, NULL, 11.00, 3300.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40007', '4028817a33812ffd0133813f25940001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5094', '20.png', '662d9320-a8b7-4957-8d73-\n\ne4560e12e0e7.png', '全明料冰花风灯，粘电镀底座  \\r\\n尺寸：15.8X32CM高', 1, 'PCS', 300, 300, 0, NULL, 14.50, 4350.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40008', '4028817a33812ffd0133813f25940001', '2', '光华', '5189', '02.png', 'a2a503a3-f0cd-49b4-b05c-8ea55ecbe2bf.png', '全明料竖棱风灯，粘电镀底座\\r\\n底座由我司提供\\r\\n尺寸：20X', 1, 'PCS', 300, 300, 0, NULL, 14.00, 4200.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40009', '4028817a33812ffd0133813f25940001', '4', '精艺', '5331', '25.png', '1b211d97-1def-49c6-90a8-8097bbd07f68.png', '全明料死模风灯，电镀花银喷绿色\\r\\n\\r\\n尺寸：17X23CM高', 1, 'PCS', 300, 300, 0, NULL, 11.50, 3450.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc4000a', '4028817a33812ffd0133813f25940001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5095', '21.png', '7b5d7395-40b4-45ad-9c42-\n\nc7050e232448.png', '全明料冰花风灯，粘明料底座 \\r\\n尺寸：15.8X32CM高\\r', 1, 'PCS', 300, 300, 0, NULL, 14.00, 4200.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000b', '4028817a33812ffd0133813f25940001', '2', '光华', '843MA', '03.png', 'c0229e90-0a5b-438d-8b07-4acd238b142b.png', '全明料喇叭底糖缸，带盖子\\r\\n盖子：10CMX10.3CM高', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 21, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000c', '4028817a33812ffd0133813f25940001', '4', '精艺', '4997', '27.png', '0fdad1e1-452c-4ae4-a354-49688bd41778.png', '全明料死模风灯，电镀花银喷蓝色  \\r\\n明料挺底  \\r\\n尺寸：11', 1, 'PCS', 300, 300, 0, NULL, 10.50, 3150.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000d', '4028817a33812ffd0133813f25940001', '4', '精艺', '4996', '26.png', '7ae6c20e-0f57-4fab-9e40-22d1a486e943.png', '全明料死模风灯，电镀花银喷绿色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 10.50, 3150.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000e', '4028817a33812ffd0133813f25940001', '2', '光华', '600MA', '05.png', '958fe4fb-db40-4977-bf2e-2c2db29d65f3.png', '全明料蛋糕盘+罩子,磨口抛光\\r\\n蛋糕罩子尺寸：17.5X15', 1, 'PCS', 600, 600, 0, NULL, 18.00, 10800.00, 17, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000f', '4028817a33812ffd0133813f25940001', '2', '光华', '602MA', '06.png', '624ab3d2-12f3-4dd8-b438-c03a3018b170.png', '全明平光蛋糕盘+罩子,磨口抛光\\r\\n蛋糕罩子尺寸：17.5X1', 1, 'PCS', 600, 600, 0, NULL, 19.00, 11400.00, 18, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40010', '4028817a33812ffd0133813f25940001', '2', '光华', '8759', '07.png', 'f92f57f8-65de-42be-9814-bad100059d23.png', '全明料竖棱糖缸配盖子\\r\\n尺寸：16.5X40CM高\\r\\n1只/', 1, 'PCS', 600, 600, 0, NULL, 15.00, 9000.00, 25, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40011', '4028817a33812ffd0133813f25940001', '2', '光华', '6998', '04.png', '3be8121c-867d-4745-bebf-3844e6a05589.png', '全明料蛋糕盘+蛋糕罩 \\r\\n盘子沿电镀，罩子上珠描白金。\\r\\n尺', 1, 'PCS', 300, 300, 0, NULL, 19.00, 5700.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40012', '4028817a33812ffd0133813f25940001', '2', '光华', '5118', '08.png', '635cdf31-8e48-45f3\n\n-886c-5fffd532175b.png', '全明料蛋糕盘+罩子\\r\\n罩子上烤白金字母花纸（SWEETS)\\r', 1, 'PCS', 300, 300, 0, NULL, 16.00, 4800.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40013', '4028817a33812ffd0133813f25940001', '7', '天顺', '8708', '15.png', '39b3ac6f-fb30-4b37-8fff-a07fb88aef15.png', '怪虫小碗，喷紫色，喷漆，喷珠光\\r\\n尺寸：18CX9CM高\\r\\n', 1, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 23, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40014', '4028817a33812ffd0133813f25940001', '4', '精艺', '5336', '29.png', '466ba3d1-94b5-44ca-92c9-98631bf3b92b.png', '全明料死模风灯，电镀花银喷绿色  \\r\\n   \\r\\n尺寸：14.5X', 1, 'PCS', 300, 300, 0, NULL, 8.00, 2400.00, 14, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40015', '4028817a33812ffd0133813f25940001', '4', '精艺', '5337', '28.png', '78ff069b-327e-488e-a629-b76bed0efb98.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n\\r\\n尺寸：14.5X20C', 1, 'PCS', 300, 300, 0, NULL, 8.00, 2400.00, 15, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40016', '4028817a33812ffd0133813f25940001', '2', '光华', '603MA', '09.png', 'ea12f8ba-afc1-4651-bc10-432c85fcb091.png', '全明平光蛋糕盘+罩子,磨口抛光\\r\\n蛋糕罩子尺寸：17.5X1', 1, 'PCS', 600, 600, 0, NULL, 20.00, 12000.00, 19, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40017', '4028817a33812ffd0133813f25940001', '2', '光华', '5117', '10.png', '4f7fdc19-c276-47da-aced-5cec4e02be08.png', '全明料蛋糕盘+罩子\\r\\n罩上烤白金字母花纸（SWEETS)\\r\\n', 1, 'PCS', 300, 300, 0, NULL, 17.00, 5100.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40018', '4028817a33812ffd0133813f25940001', '4', '精艺', '5400', '31.png', '3b810117-19c6-446e-886f-d3b2fd5ba411.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n \\r\\n尺寸：17X23CM', 1, 'PCS', 300, 300, 0, NULL, 11.50, 3450.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40019', '4028817a33812ffd0133813f25940001', '4', '精艺', '4998', '30.png', '0c400655-fb24-4781-aae1-eaa30e31ad4c.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 10.50, 3150.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001a', '4028817a33812ffd0133813f25940001', '2', '光华', '8760', '11.png', '2aaba753-e5d2-4c42-badf-cc16acf81d2b.png', '全明料竖棱糖缸配盖子\\r\\n尺寸：16.5X51CM高\\r\\n\\r\\n1', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 26, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001b', '4028817a33812ffd0133813f25940001', '2', '光华', '844MA', '12.png', '6f6f097f-ae83-4ecb-80c6-ec1e93353985.png', '全明料糖缸带盖子\\r\\n盖子：9.3X13.3CM高 壁厚3MM', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 22, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001c', '4028817a33812ffd0133813f25940001', '2', '光华', '9869', '13.png', 'be81bc6b-610b-45fa-bb8b-5156d8de9d52.png', '全明料喇叭底糖缸配盖子\\r\\n尺寸：19X40CM高\\r\\n1只/上', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 28, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001d', '4028817a33812ffd0133813f25940001', '7', '天顺', '8709', '16.png', 'd33ee976-4d35-4990-ae41-eebee8989f5a.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\\r\\n尺寸：18CMX9CM高\\r', 1, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 24, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd013382048ff80026', '4028817a33812ffd013382048ff80024', '1', '宏艺', '20-37-265/JK1050163', NULL, 'e96667ee-d5e9-43d1-bac0-758593c56629.png', '全明料蛋糕盘+罩子\\r\\n罩子烤蒙砂白花纸，花纸我司供\\r\\n尺寸：', 1, 'PCS', 1200, 1200, 0, NULL, 11.00, 13200.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133821a8eb5002c', '4028817a33812ffd0133821a8eb5002b', '1', '宏艺', 'JK110102', NULL, 'e4df38d5-f0d9-4f91-99c6-240addaa36a3.png', '全明料平光蛋糕罩配钻石盘子\\r\\n罩子上粘小鸟，小鸟和钻石盘我司', 1, 'PCS', 150, 150, 0, NULL, 32.00, 4800.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133821a8eb5002d', '4028817a33812ffd0133821a8eb5002b', '1', '宏艺', 'JK110101', NULL, 'bfd61df4-61b5-492c-b11c-7d19b63f5cf1.png', '全明料平光蛋糕罩配钻石盘子\\r\\n罩子上粘小鸟，小鸟和钻石盘我司', 1, 'PCS', 152, 152, 0, NULL, 22.00, 3344.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e88000e', '4028817a33d4f8b40133d9878e88000d', '13', '平遥鸿艺', 'JK1060019/11990', NULL, NULL, '全明料密直棱低口杯\\r\\n尺寸：9X10.5CM高\\r\\n4只/五层', 4, 'PCS', 696, 696, 0, NULL, 5.00, 3480.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e88000f', '4028817a33d4f8b40133d9878e88000d', '13', '平遥鸿艺', 'JK103134/11989', NULL, NULL, '全明料密直棱香槟杯\\r\\n尺寸：9X21CM高\\r\\n4只/五层内盒', 4, 'PCS', 832, 832, 0, NULL, 6.00, 4992.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880010', '4028817a33d4f8b40133d9878e88000d', '1', '宏艺', 'JK1050152/11306', NULL, NULL, '全明料酒杯，口部描1CM白金边\\r\\n尺寸：7X26CM高\\r\\n4', 4, 'PCS', 608, 608, 0, NULL, 8.50, 5168.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880011', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK103233/11301', NULL, NULL, '全明料糖缸配盖子，糖缸刻钻石描亮油\\r\\n尺寸：11X30.5C', 1, 'PCS', 12, 12, 0, NULL, 18.00, 216.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880012', '4028817a33d4f8b40133d9878e88000d', '1', '宏艺', 'JK1050068/11314', NULL, NULL, '全明料马丁尼，口部描1CM白金边\\r\\n尺寸：12X19CM高\\r', 4, 'PCS', 608, 608, 0, NULL, 11.20, 6809.60, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880013', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK1050317/12006', NULL, NULL, '全明料糖缸配盖子，糖缸刻交叉麦穗花\\r\\n尺寸：10.5X14C', 1, 'PCS', 168, 168, 0, NULL, 9.50, 1596.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880015', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK1050316/12005', NULL, 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\\r\\n尺寸：15X15CM高', 1, 'PCS', 162, 162, 0, NULL, 12.50, 2025.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880016', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK1050201/12078', NULL, 'undefined', '全明料蛋糕罩配盘子，罩子上烤花纸\\r\\n罩子尺寸：15X11.5', 1, 'PCS', 204, 204, 0, NULL, 18.00, 3672.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880017', '4028817a33d4f8b40133d9878e88000d', '1', '宏艺', 'JK1050154/11308', NULL, 'undefined', '全明料香槟杯，口部描1CM白金边\\r\\n尺寸：5X29CM高\\r\\n', 4, 'PCS', 704, 704, 0, NULL, 7.50, 5280.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880018', '4028817a33d4f8b40133d9878e88000d', '13', '平遥鸿艺', 'JK103136/11988', NULL, 'undefined', '全明料密直棱酒杯，底厚要求5MM\\r\\n尺寸：9X17.5CM高', 4, 'PCS', 928, 928, 0, NULL, 6.30, 5846.40, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001a', '4028817a33d4f8b40133d991a50d0019', 'ff808081301885760130189e47ca0013', '文水志远', 'JK1040446/JK446', NULL, 'undefined', '全明料糖缸配盖子，普通底\\r\\n尺寸：16.5X50CM高\\r\\n1', 1, 'PCS', 600, 600, 0, NULL, 25.00, 15000.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001b', '4028817a33d4f8b40133d991a50d0019', '2', '光华', 'JK1040364/JK364', NULL, 'undefined', '全明料糖缸配盖子\\r\\n尺寸：19X39CM高\\r\\n1只/上下保丽', 1, 'PCS', 600, 600, 0, NULL, 25.00, 15000.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001c', '4028817a33d4f8b40133d991a50d0019', '2', '光华', 'JK1050316/JK316', NULL, 'undefined', '全明料糖缸，刻麦穗花不描亮油。\\r\\n盖子电镀，电镀我司安排。\\r', 1, 'PCS', 600, 600, 0, NULL, 12.00, 7200.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001d', '4028817a33d4f8b40133d991a50d0019', '1', '宏艺', 'JK1050166/JK166', NULL, 'undefined', '全明料糖缸，刻花不描亮油。\\r\\n尺寸：12.5X26.5CM高', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001e', '4028817a33d4f8b40133d991a50d0019', '4', '精艺', 'JK103694/JK694', NULL, 'undefined', '套6全明料死模低口杯\\r\\n尺寸：8X12.5CM高\\r\\n1套/白', 1, 'PCS', 480, 480, 0, NULL, 24.00, 11520.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001f', '4028817a33d4f8b40133d991a50d0019', 'ff808081301885760130189e47ca0013', '文水志远', 'JK103956/JK956', NULL, 'undefined', '全明料蛋糕罩配盘子\\r\\n盘子我司安排\\r\\n罩子尺寸：33X14X', 1, 'PCS', 480, 480, 0, NULL, 27.00, 12960.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d0020', '4028817a33d4f8b40133d991a50d0019', '4', '精艺', 'JK103693/JK693', NULL, 'undefined', '套6全明料死模低口杯\\r\\n尺寸：7.3X10.5CM高\\r\\n1套', 1, 'PCS', 184, 184, 0, NULL, 21.00, 3864.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b0029', '4028817a33d4f8b40133d991a50d0019', '9', '华艺', 'J859101549/JK549', NULL, NULL, '全明料蛋糕盘\\r\\n尺寸：直径33.5CM\\r\\n2只/五层内盒  ', 2, 'PCS', 1200, 1200, 0, NULL, 10.00, 12000.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002a', '4028817a33d4f8b40133d991a50d0019', '4028817a33d4f8b40133d9989f5e0024', '民鑫', 'JK1060338/JK338', NULL, NULL, '全明料机压直棱糖缸\\r\\n尺寸：15.5X15.5CM 高\\r\\n1', 1, 'PCS', 2400, 2400, 0, NULL, 7.15, 17160.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002b', '4028817a33d4f8b40133d991a50d0019', '9', '华艺', 'JK103209/JK209', NULL, NULL, '全明料2层钻石蛋糕盘，配喷塑铁架\\r\\n铁架我司供\\r\\n大盘尺寸：', 1, 'PCS', 1200, 1200, 0, NULL, 13.00, 15600.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002c', '4028817a33d4f8b40133d991a50d0019', '9', '华艺', 'JK1031007-LP/JK007/1', NULL, NULL, '全明料钻石蛋糕盘，粘底座\\r\\n尺寸：30X11.5CM高\\r\\n1', 1, 'PCS', 600, 600, 0, NULL, 10.50, 6300.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002d', '4028817a33d4f8b40133d991a50d0019', '1', '宏艺', 'JK1050128/JK0128', NULL, NULL, '全明料三层糖缸，刻麦穗花\\r\\n尺寸：12X22.5CM\\r\\n1套', 1, 'PCS', 600, 600, 0, NULL, 18.50, 11100.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002e', '4028817a33d4f8b40133d991a50d0019', '2', '光华', 'JK103176/JK176', NULL, NULL, '全明料糖缸，刻花，不带盖子\\r\\n尺寸：20X14.5CM高\\r\\n', 1, 'PCS', 480, 480, 0, NULL, 18.50, 8880.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0030', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK1050806/JK032', NULL, 'undefined', '套6全明料香槟杯，电镀渐变色\\r\\n尺寸：5.7X25CM高\\r\\n', 1, 'PCS', 320, 320, 0, NULL, 31.80, 10176.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0031', '4028817a33d4f8b40133d9bea39b002f', '4', '精艺', 'JK045/JK1060426', NULL, 'undefined', '套6紫色碗明挺底香槟杯\\r\\n尺寸：8X17CM高\\r\\n1套/五层', 1, 'PCS', 240, 240, 0, NULL, 33.60, 8064.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0032', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK1050807/JK033', NULL, 'undefined', '套6全明料酒杯，电镀渐变色\\r\\n尺寸：8X24CM高\\r\\n1套/', 1, 'PCS', 300, 300, 0, NULL, 34.80, 10440.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0033', '4028817a33d4f8b40133d9bea39b002f', '4028817a33d4f8b40133d9989f5e0024', '民鑫', 'JK040/JK1060338', NULL, 'undefined', '全明料机压竖棱糖缸\\r\\n尺寸：15.5X15.5CM\\r\\n1只/', 1, 'PCS', 3000, 3000, 0, NULL, 8.04, 24120.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0034', '4028817a33d4f8b40133d9bea39b002f', '4', '精艺', 'JK044/JK1060425', NULL, 'undefined', '套6紫色碗明挺底红酒杯\\r\\n尺寸：8X20CM高\\r\\n1套/五层', 1, 'PCS', 240, 240, 0, NULL, 34.80, 8352.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0035', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK019/J859100824', NULL, 'undefined', '套4全明料酒杯，口部描2.5CM宽白金边\\r\\n尺寸：8.4X2', 1, 'PCS', 320, 320, 0, NULL, 58.00, 18560.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0036', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK018/J859100826', NULL, 'undefined', '套4全明料香槟杯，口部描2.5CM宽白金边\\r\\n尺寸：4.7X', 1, 'PCS', 300, 300, 0, NULL, 40.00, 12000.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0037', '4028817a33d4f8b40133d9bea39b002f', '3', '会龙', 'JK041/JK1060339', NULL, 'undefined', '全明料蒙古包糖缸\\r\\n尺寸：9X11CM高\\r\\n1只/五层内盒 ', 1, 'PCS', 3000, 3000, 0, NULL, 4.00, 12000.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0038', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK020/J859100825', NULL, 'undefined', '套4全明料马丁尼，口部描2.5CM白金边\\r\\n尺寸：11.8X', 1, 'PCS', 300, 300, 0, NULL, 70.00, 21000.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33f7960d0133f8d912ba0005', '4028817a33812ffd0133821a8eb5002b', '9', '华艺', 'JK110102', NULL, NULL, '全明料钻石盘子\\r\\n盘子尺寸：29.5X11.5CM\\r\\n安全包', 1, 'PCS', 150, 150, 0, NULL, 10.00, 1500.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33f7960d0133f8d912ba0006', '4028817a33812ffd0133821a8eb5002b', '9', '华艺', 'JK110101', NULL, NULL, '全明料钻石盘子\\r\\n盘子尺寸：23X11.5CM\\r\\n安全包装送', 1, 'PCS', 152, 152, 0, NULL, 8.50, 1292.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fcdb13f4000e', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK052/JK1070691', NULL, NULL, '套4全明料马丁尼\\r\\n尺寸：12.5X19.5CM高\\r\\n1套/', 1, 'PCS', 300, 300, 0, NULL, 30.00, 9000.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fcdb13f4000f', '4028817a33d4f8b40133d9bea39b002f', '5', '汇越', 'JK050/JK1070690', NULL, NULL, '套4全明料白酒杯，钻石挺\\r\\n尺寸：8.6X23CM高\\r\\n1套', 1, 'PCS', 300, 300, 0, NULL, 23.20, 6960.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fcdb13f40010', '4028817a33d4f8b40133d9bea39b002f', '2', '光华', 'JK046/JK1050201', NULL, NULL, '全明料蛋糕盘+罩子\\r\\n罩子上烤蒙砂白花纸\\r\\n距口部1CM处，', 1, 'PCS', 600, 600, 0, NULL, 19.00, 11400.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d7001e', '4028817a33fc4e280133fd81e7d7001d', '2', '光华', '169280', NULL, NULL, '全明料蛋糕盘+罩子  \\r\\n距离罩子口部3CM烤字母花纸  \\r\\n', 1, 'PCS', 100, 100, 0, NULL, 32.00, 3200.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d7001f', '4028817a33fc4e280133fd81e7d7001d', '1', '宏艺', 'J859102682/113860', NULL, NULL, '全明料糖缸，烤字母白花纸\\r\\nSTORAGE ONLY\\r\\n尺寸', 1, 'PCS', 300, 300, 0, NULL, 16.00, 4800.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70020', '4028817a33fc4e280133fd81e7d7001d', '4', '精艺', 'JK1080435', NULL, NULL, '全明料球形瓶子，刻花，描亮油\\r\\n\\r\\n尺寸:9.5X10.5C', 1, 'PCS', 1008, 1008, 0, NULL, 9.00, 9072.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70021', '4028817a33fc4e280133fd81e7d7001d', '2', '光华', '123540', NULL, NULL, '全明料蛋糕盘子+罩子\\r\\n罩子上烤字母（HIGH TEA）花纸', 1, 'PCS', 100, 100, 0, NULL, 22.00, 2200.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70022', '4028817a33fc4e280133fd81e7d7001d', '3', '会龙', 'JK1052446/158080', NULL, NULL, '全明料酒壶，杯身烤白色字母花纸\\r\\n \\r\\n尺寸：7.8X22.', 1, 'PCS', 702, 702, 0, NULL, 16.50, 11583.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70023', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', '文水志远', '62145', NULL, NULL, '全明料蛋糕罩子\\r\\n\\r\\n尺寸：30.3X11.5X15CM\\r\\n', 1, 'PCS', 504, 504, 0, NULL, 27.00, 13608.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70024', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', '文水志远', '62146/F-57', NULL, NULL, '全明料蛋糕罩子，刻麦穗花\\r\\n\\r\\n尺寸：30.3X11.5X1', 1, 'PCS', 504, 504, 0, NULL, 28.50, 14364.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70025', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', '文水志远', 'JKF081342/62180', NULL, NULL, '全明料蛋糕罩子+盘子\\r\\n盘子我司安排\\r\\n尺寸：30.3X11', 1, 'PCS', 652, 652, 0, NULL, 27.00, 17604.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70026', '4028817a33fc4e280133fd81e7d7001d', '1', '宏艺', 'JK10501218/160380', NULL, NULL, '全明料糖缸带盖子，糖缸身上烤\\r\\n白色字母花纸\\r\\n尺寸：12.', 1, 'PCS', 600, 600, 0, NULL, 15.00, 9000.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70027', '4028817a33fc4e280133fd81e7d7001d', '1', '宏艺', 'JK1040009/141760', NULL, NULL, '全明料三层糖缸，烤字母花纸\\r\\n花纸我司安排\\r\\n尺寸：16.5', 1, 'PCS', 300, 300, 0, NULL, 35.00, 10500.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd89fcc00028', '4028817a33fc4e280133fd81e7d7001d', '7', '天顺', 'JKF081342/62180', NULL, NULL, '全明料蛋糕盘配罩子\\r\\n罩子由文水志远厂提供\\r\\n尺寸：33X1', 1, 'PCS', 652, 652, 0, NULL, 10.40, 6780.80, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0030', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK1040158/12068', NULL, NULL, '明料灯宫细转棱蜡台\\r\\n\\r\\n尺寸：6X26CM高\\r\\n4只/三层', 4, 'PCS', 400, 400, 0, NULL, 9.70, 3880.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0031', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK1050317/12006', NULL, NULL, '明料糖缸配明料盖子\\r\\n缸身刻交叉麦穗花\\r\\n尺寸：10.5X1', 1, 'PCS', 504, 504, 0, NULL, 9.50, 4788.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0032', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK1050316/12005', NULL, NULL, '明料糖缸配明料盖子\\r\\n缸身刻交叉麦穗花\\r\\n尺寸：15X15C', 1, 'PCS', 348, 348, 0, NULL, 12.50, 4350.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0033', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK103233/11301', NULL, NULL, '全明料糖缸刻钻石，描亮油\\r\\n尺寸：11X30.5CM高\\r\\n1', 1, 'PCS', 408, 408, 0, NULL, 18.00, 7344.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fdb370c00034', '4028817a33812ffd0133813f25940001', '7', '天顺', '9749', '17.png', '怪虫小碗喷绿色，喷漆', '怪虫小碗喷绿色，喷漆，喷珠光\\r\\n尺寸：18X9CM高\\r\\n4只', 4, 'PCS', 304, 304, 0, NULL, 6.50, 1976.00, 29, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fdb370cf0035', '4028817a33812ffd0133813f25940001', '7', '天顺', '9749', '18.png', NULL, '怪虫小碗喷绿色，喷漆，喷珠光\\r\\n尺寸：18X9CM高\\r\\n4只', 4, 'PCS', 304, 304, 0, NULL, 6.50, 1976.00, 30, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fdb370df0036', '4028817a33812ffd0133813f25940001', '7', '天顺', '9749', '19.png', NULL, '怪虫小碗喷绿色，喷漆，喷珠光\\r\\n尺寸：18X9CM高\\r\\n4只', 4, 'PCS', 304, 304, 0, NULL, 6.50, 1976.00, 31, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f0037', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK1050201/12078', NULL, NULL, '全明料蛋糕罩配盘子,罩子上烤蒙砂白花纸\\r\\n盘子尺寸：16X1', 1, 'PCS', 402, 402, 0, NULL, 18.00, 7236.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f0038', '4028817a33fc4e280133fd9f8b4e002f', '13', '平遥鸿艺', 'JK1050198/12860', NULL, NULL, '全明料酒杯，\\r\\n距口部1.5CM烤蒙砂白花纸\\r\\n尺寸：11X', 4, 'PCS', 400, 400, 0, NULL, 6.50, 2600.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f0039', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK169340/13076', NULL, NULL, '全明料蛋糕罩配盘子，罩子上烤蒙砂白花纸    \\r\\n尺寸：25X2', 1, 'PCS', 200, 200, 0, NULL, 36.00, 7200.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003a', '4028817a33fc4e280133fd9f8b4e002f', 'ff808081301885760130189e47ca0013', '文水志远', 'JK1400002/13077', NULL, NULL, '全明料竖棱酒壶，磨口抛光\\r\\n不可有碰口，棱要明显\\r\\n尺寸：1', 1, 'PCS', 1200, 1200, 0, NULL, 13.00, 15600.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003b', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5100005-F/13079', NULL, NULL, '全明料竖棱香槟杯\\r\\n尺寸：5.5X24.5CM高\\r\\n4只/三', 4, 'PCS', 1200, 1200, 0, NULL, 10.00, 12000.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003c', '4028817a33fc4e280133fd9f8b4e002f', '13', '平遥鸿艺', 'JK1050195/12859', NULL, NULL, '全明料香槟杯\\r\\n距口部1.5CM烤蒙砂白花纸\\r\\n尺寸：8X2', 4, 'PCS', 400, 400, 0, NULL, 6.00, 2400.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003d', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5100004/13078', NULL, NULL, '全明料直棱酒杯\\r\\n尺寸：9.5X18.5CM高\\r\\n4只/三层', 4, 'PCS', 1200, 1200, 0, NULL, 8.80, 10560.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003e', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5300006/13080', NULL, NULL, '全明料竖棱糖缸，盖子上带圆头\\r\\n尺寸：9X8CM高\\r\\n1只/', 1, 'PCS', 1200, 1200, 0, NULL, 8.50, 10200.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003f', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5300007/13081', NULL, NULL, '全明料竖棱糖缸，盖子上带圆头\\r\\n尺寸：9X12CM高\\r\\n1只', 1, 'PCS', 1200, 1200, 0, NULL, 9.80, 11760.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820002', '4028817a3420e78a013421a693730001', '4', '精艺', '4995', NULL, 'c7801815-993e-43f0-8ac5-d5d788f34e74.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底，电镀喷色我司安排', 1, 'PCS', 300, 300, 1, NULL, 8.50, 2550.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820003', '4028817a3420e78a013421a693730001', '4', '精艺', '4994', NULL, 'ae3e208e-8037-41dc-89d3-6727d1403c4c.png', '全明料死模风灯，电镀花银喷浅海蓝\\r\\n明料挺底,电镀喷色我司安', 1, 'PCS', 300, 300, 1, NULL, 8.50, 2550.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820004', '4028817a3420e78a013421a693730001', '4', '精艺', '4996', NULL, '09b2983e-67b1-4f42-b6ec-0efa99b90cae.png', '全明料死模风灯，电镀花银喷浅绿色\\r\\n明料挺底，电镀喷色我司安', 1, 'PCS', 300, 300, 1, NULL, 10.50, 3150.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820005', '4028817a3420e78a013421a693730001', '2', '光华', '5118', NULL, 'd2f2ab57-ca50-43ff-87fd-9b6b38d14adc.png', '全明料蛋糕盘+罩子  \\r\\n罩子上烤白金字母花纸（SWEETS)', 1, 'PCS', 300, 300, 1, NULL, 16.00, 4800.00, 14, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820006', '4028817a3420e78a013421a693730001', '4', '精艺', '4993', NULL, '49a9221c-aa5d-42a6-997c-9671c69ebb96.png', '全明料死模风灯，电镀花银喷浅绿色   \\r\\n明料挺底，电镀喷色我', 1, 'PCS', 300, 300, 1, NULL, 8.50, 2550.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820007', '4028817a3420e78a013421a693730001', '2', '光华', '5117', NULL, '94744a94-9215-425c-8d7c-e6c27b74d47a.png', '全明料蛋糕盘+罩子  \\r\\n罩上烤白金字母花纸（SWEETS)  ', 1, 'PCS', 300, 300, 1, NULL, 17.00, 5100.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820008', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5086', NULL, 'f9c8b767-01c1-47a1-816c-4203c229f765.png', '全明料冰花风灯，电镀花银喷绿色\\r\\n尺寸：12.5X20CM高', 1, 'PCS', 300, 300, 1, NULL, 13.00, 3900.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820009', '4028817a3420e78a013421a693730001', '1', '宏艺', '5190', NULL, 'b0d362a3-2044-4bb8-ad61-0d6228e94110.png', '全明料平光蛋糕罩配钻石盘子\\r\\n罩子上粘小鸟，小鸟和钻石盘我司', 1, 'PCS', 100, 100, 1, NULL, 22.00, 2200.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000a', '4028817a3420e78a013421a693730001', '9', '华艺', '5190', NULL, 'de8f61ab-0ce5-4e66-862f-acc66140d77f.png', '全明料钻石蛋糕盘粘底座\\r\\n \\r\\n尺寸：23X11.5CM高\\r', 1, 'PCS', 100, 100, 1, NULL, 8.50, 850.00, 17, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000b', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5084', NULL, '4afac9ad-6f75-4186-95e2-0f3c992fd0a8.png', '全明料冰花风灯，电镀花银喷蓝色\\r\\n尺寸：10X17.5CM高', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000c', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5085', NULL, '11799ce4-7d8a-451b-8838-6b01f804b8ff.png', '全明料冰花风灯，电镀花银喷紫色\\r\\n尺寸：10X17.5CM高', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000d', '4028817a3420e78a013421a693730001', '7', '天顺', '5144', NULL, '978f44fd-492c-4209-8b4a-6dd58539a14f.png', '全明料钻石蛋糕盘粘底座\\r\\n喷绿色，喷漆，喷珠光\\r\\n尺寸：23', 1, 'PCS', 100, 100, 1, NULL, 11.00, 1100.00, 15, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000e', '4028817a3420e78a013421a693730001', '4', '精艺', '4998', NULL, '4c8991c6-227e-4c31-bcf7-539fd002cd12.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底,电镀喷色我司安排', 1, 'PCS', 300, 300, 1, NULL, 10.50, 3150.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000f', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5088', NULL, '9926bf89-1345-4082-aeeb-a3f94d0dcc40.png', '全明料冰花风灯，电镀花银喷蓝色\\r\\n尺寸：12.5X20CM高', 1, 'PCS', 300, 300, 1, NULL, 13.00, 3900.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820010', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5089', NULL, '22a26221-2c14-4ea4-b972-ebe9df1a27ab.png', '全明料冰花风灯，电镀花银喷紫色\\r\\n尺寸：12.5X20CM高', 1, 'PCS', 300, 300, 1, NULL, 13.00, 3900.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693920011', '4028817a3420e78a013421a693730001', '4', '精艺', '4997', NULL, 'f62db940-2432-4a7d-946c-22e2ba184d37.png', '全明料死模风灯，电镀花银喷浅海蓝\\r\\n明料挺底，电镀喷色我司安', 1, 'PCS', 300, 300, 1, NULL, 10.50, 3150.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693920012', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5083', NULL, '65fe2446-a833-483a-ad34-dc5da6a7e28a.png', '全明料冰花风灯，电镀花银喷绿色\\r\\n尺寸：10X17.5CM高', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421d2e3fe0013', '4028817a3420e78a013421a693730001', '4', '精艺', '5336', NULL, '422bfb7c-ad4e-4098-8953-beca57d6259c.png', '全明料死模风灯，电镀花银喷绿色  \\r\\n   \\r\\n尺寸：14.5X', 1, 'PCS', 300, 300, 1, NULL, 8.00, 2400.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421d2e3fe0014', '4028817a3420e78a013421a693730001', '4', '精艺', '5331', NULL, 'c09ea297-bb5f-47a0-b8a0-0b4419f6e138.png', '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：17X23CM高\\r\\n', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 19, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421d2e3fe0015', '4028817a3420e78a013421a693730001', '9', '华艺', '5190', NULL, 'aa3e7517-3227-41ff-b239-a5a6d5c00939.png', '机压小鸟,表面要光滑\\r\\n\\r\\n安全包装送祁县宏艺厂\\r\\n请提供一', 1, 'PCS', 100, 100, 1, NULL, 2.40, 240.00, 18, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10016', '4028817a3420e78a013421a693730001', '4', '精艺', '5400', NULL, 'f475d46e-733a-4220-8243-98ba76f09ddc.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n \\r\\n尺寸：17X23CM', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 22, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10017', '4028817a3420e78a013421a693730001', '7', '天顺', '9749', NULL, '3d52357d-71bf-4ac1-b7f0-38b640a2d349.png', '怪虫小碗，喷绿色，喷漆，喷珠光\\r\\n\\r\\n尺寸:18X9CM高\\r', 4, 'PCS', 600, 600, 1, NULL, 6.50, 3900.00, 28, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10018', '4028817a3420e78a013421a693730001', '2', '光华', '8759', NULL, 'c5f0d6c6-275f-4fb4-b468-a9be38f85f02.png', '全明料糖缸带盖子\\r\\n尺寸：16.5X40CM高\\r\\n1只/上下', 1, 'PCS', 600, 600, 1, NULL, 15.00, 9000.00, 27, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10019', '4028817a3420e78a013421a693730001', '7', '天顺', '8709', NULL, '2720f819-b111-4aeb-b5e8-abc262dc5a7b.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\\r\\n \\r\\n尺寸：18X9CM高', 4, 'PCS', 600, 600, 1, NULL, 6.50, 3900.00, 26, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001a', '4028817a3420e78a013421a693730001', '4', '精艺', '5337', NULL, 'c2ff4999-1ea3-479d-8859-3302bb0e9d77.png', '全明料死模风灯，电镀花银喷蓝色  \\r\\n  \\r\\n尺寸：14.5X2', 1, 'PCS', 300, 300, 1, NULL, 8.00, 2400.00, 21, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001b', '4028817a3420e78a013421a693730001', '7', '天顺', '8708', NULL, 'cd89d279-e040-4647-a89f-59bfee1d6db9.png', '怪虫小碗，喷紫色，喷漆，喷珠光\\r\\n \\r\\n尺寸：18X9CM高', 4, 'PCS', 600, 600, 1, NULL, 6.50, 3900.00, 25, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001c', '4028817a3420e78a013421a693730001', '2', '光华', '843MA', NULL, '6b4da997-ad8c-4101-90cb-1c554c356bb1.png', '全明料喇叭底糖缸，带盖子  \\r\\n盖子：10CMX10.3CM高', 1, 'PCS', 600, 600, 1, NULL, 16.00, 9600.00, 23, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001d', '4028817a3420e78a013421a693730001', '2', '光华', '844MA', NULL, '19dd24a2-4eb2-4273-a46a-229d28aeee85.png', '全明料糖缸带盖子\\r\\n盖子：9.3X13.3CM高 壁厚3MM', 1, 'PCS', 600, 600, 1, NULL, 16.00, 9600.00, 24, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e53b8c001e', '4028817a3420e78a013421a693730001', '2', '光华', '9868', NULL, '6bf2fdf5-6d7e-4147-b40c-6eddf95abcd8.png', '全明料喇叭底糖缸配盖子\\r\\n尺寸：5-1/4\\\"X17\\\"H\\r\\n1', 1, 'PCS', 600, 600, 1, NULL, 16.00, 9600.00, 29, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0047', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5089', NULL, '2c991b9e-a14b-4f37-a2ca-5e7d01cba021.jpg', '全明料冰花风灯，电镀花银喷紫色。\\r\\n尺寸:12.5*20 C', 1, 'PCS', 204, 204, 1, NULL, 13.00, 2652.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0048', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5094', NULL, '7ae1ccaa-426b-4476-bc6a-28258d735fbd.jpg', '全明料冰花风灯，粘电镀底座    \\r\\n尺寸：15.8X32CM', 1, 'PCS', 150, 150, 1, NULL, 14.50, 2175.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0049', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5093', NULL, '796ec9af-d6bb-4511-a6c6-6d75bcc1f2e3.jpg', '全明料冰花风灯粘电镀底座，   \\r\\n喷紫色，全喷，内电镀花银  ', 1, 'PCS', 102, 102, 1, NULL, 16.00, 1632.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004a', '4028817a353b8d8e01353d15008d0046', '7', '天顺', '5099', NULL, '9586c248-7796-4f99-b648-f913e65250f3.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n喷蓝色，喷漆,喷珠光    \\r\\n尺寸', 1, 'PCS', 152, 152, 1, NULL, 11.00, 1672.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004b', '4028817a353b8d8e01353d15008d0046', '7', '天顺', '5098', NULL, 'bb0e509f-ccb0-44f4-8320-df18ff6ac880.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n喷紫色，喷漆,喷珠光    \\r\\n尺寸', 1, 'PCS', 152, 152, 1, NULL, 11.00, 1672.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004c', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5090', NULL, '2ec05114-5c74-4211-b254-4d979218c05e.jpg', '全明料冰花风灯粘电镀底座，   \\r\\n喷蓝色，全喷，内电镀花银  ', 1, 'PCS', 102, 102, 1, NULL, 16.00, 1632.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004d', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5088', NULL, '9488192b-fb0f-4aa5-9e29-86de71d05675.jpg', '全明料冰花风灯，电镀花银喷蓝色。\\r\\n尺寸:12.5*20 C', 1, 'PCS', 204, 204, 1, NULL, 13.00, 2652.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004e', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5092', NULL, '289d254d-0f0d-4671-9376-d04cc36540d2.jpg', '全明料冰花风灯粘电镀底座，   \\r\\n喷绿色，全喷，内电镀花银  ', 1, 'PCS', 102, 102, 1, NULL, 16.00, 1632.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004f', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5095', NULL, '01349ede-bef9-4168-a346-e109e3111773.jpg', '全明料冰花风灯，粘明料底座   \\r\\n尺寸：15.8X32CM高', 1, 'PCS', 150, 150, 1, NULL, 14.00, 2100.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0050', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5086', NULL, '3c77a543-f2f2-4cf3-b173-8ef1d1a1f8be.jpg', '全明料冰花风灯，电镀花银喷绿色。\\r\\n尺寸:12.5*20 C', 1, 'PCS', 204, 204, 1, NULL, 13.00, 2652.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0051', '4028817a353b8d8e01353d15008d0046', '2', '光华', '5117', NULL, 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '全明料蛋糕盘+罩子 \\r\\n罩上烤白金字母花纸（SWEETS)', 1, 'PCS', 100, 100, 1, NULL, 17.00, 1700.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0052', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5191', NULL, '5a77aec3-1299-4b75-8ff4-5c7232d0a8c6.jpg', '机压小鸟,表面要光滑    \\r\\n安全包装送祁县宏艺厂    \\r\\n请提', 1, 'PCS', 100, 100, 1, NULL, 2.40, 240.00, 19, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0053', '4028817a353b8d8e01353d15008d0046', '7', '天顺', '5144', NULL, '91d36961-2e9e-44cc-94ed-44ab4d6a24e4.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n喷绿色，喷漆，喷珠光    \\r\\n尺寸', 1, 'PCS', 152, 152, 1, NULL, 11.00, 1672.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0054', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5191', NULL, '06191cc8-a932-4f7a-a951-eabbd4336f13.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n尺寸：29.5X11.5CM高  ', 1, 'PCS', 100, 100, 1, NULL, 10.00, 1000.00, 18, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0055', '4028817a353b8d8e01353d15008d0046', '2', '光华', '5118', NULL, 'b76467e5-21b5-4102-8085-f0d14189e257.jpg', '全明料蛋糕盘+罩子    \\r\\n罩子上烤白金字母花纸（SWEETS', 1, 'PCS', 152, 152, 1, NULL, 16.00, 2432.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0056', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5190', NULL, '9a6203d7-01b0-4ebe-bc08-d390b5ecd46a.jpg', '机压小鸟,表面要光滑    \\r\\n安全包装送祁县宏艺厂    \\r\\n请提', 1, 'PCS', 100, 100, 1, NULL, 2.40, 240.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0057', '4028817a353b8d8e01353d15008d0046', '4', '精艺', '5337', NULL, 'ecc411bc-b3ce-4175-9e96-17014661c601.jpg', '全明料死模风灯，电镀花银喷蓝色  \\r\\n尺寸：14.5X20CM', 1, 'PCS', 156, 156, 1, NULL, 8.00, 1248.00, 22, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0058', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5190', NULL, '9196fdca-db89-42a3-99d8-6a168479344c.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n尺寸：23X11.5CM高  \\r', 1, 'PCS', 100, 100, 1, NULL, 8.50, 850.00, 15, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0059', '4028817a353b8d8e01353d15008d0046', '1', '宏艺', '5190', NULL, 'a3c28393-5d85-4ab5-8f9b-c10d8becf945.jpg', '全明料平光蛋糕罩配钻石盘子  \\r\\n罩子上粘小鸟，小鸟和钻石盘我', 1, 'PCS', 100, 100, 1, NULL, 22.00, 2200.00, 14, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d005a', '4028817a353b8d8e01353d15008d0046', '4', '精艺', '5330', NULL, '75849bf7-f9a2-4f74-853e-baefef078d93.jpg', '全明料死模风灯，电镀花银喷紫色  \\r\\n尺寸：14.5X20CM', 1, 'PCS', 156, 156, 1, NULL, 8.00, 1248.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d005b', '4028817a353b8d8e01353d15008d0046', '4', '精艺', '5336', NULL, '5fe32315-0fb6-4a84-bb82-61b27ef3a8e3.jpg', '全明料死模风灯，电镀花银喷绿色  \\r\\n尺寸：14.5X20CM', 1, 'PCS', 156, 156, 1, NULL, 8.00, 1248.00, 21, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32353c005c', '4028817a353b8d8e01353d15008d0046', '1', '宏艺', '5191', NULL, '135fbc3e-1c1d-4188-91e0-6a54cb0e2901.jpg', '全明料平光蛋糕罩配钻石盘子  \\r\\n罩子上粘小鸟，小鸟和钻石盘我', 1, 'PCS', 100, 100, 1, NULL, 32.00, 3200.00, 17, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288286607ea08c01607ea3d9500001', 'ff8080816077bbb3016077bd30b10000', '1', '升华', '002', '001.jpg', '别睡啦', '12', 11, 'PCS', 10, NULL, NULL, '快醒醒', 5.00, 50.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288286607ea08c01607ea5567b0002', 'ff8080816077bbb3016077bd30b10000', '10', '晶晨', '003', 'adssad', NULL, '1', 1, 'PCS', 1, NULL, NULL, NULL, 1.00, 1.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288286607ea08c01607ea6c1300003', 'ff8080816077bbb3016077bd30b10000', '19', '综艺花纸', '005', '002.jpg', 'hello ', '1', 111, 'PCS', 2, NULL, NULL, 'word', 2.00, 4.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028828660b1cd900160b1cf41190001', '4028828660b1cd900160b1cebb440000', '10', '晶晨', 'fj001', 'fj002,jpg', 'xxxx', '11', 11, 'PCS', 2, NULL, NULL, 'qqqq', 10.00, 20.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288287616082eb01616092a3320002', '40288287616082eb0161608728560000', NULL, '晶晨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028828761609a96016160a204c80000', '40288287616082eb0161608805650001', '10', '晶晨', '1', 'fj002,jpg', '阿斯顿', '11', 1, 'PCS', 1, NULL, NULL, '阿斯顿', 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028828761609a96016160a2da5e0001', '40288287616082eb0161608805650001', '15', '南皮开发', NULL, 'fj002,jpg', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 10.00, 20.00, NULL, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('402882876170403101617079e0540000', '40288287616a411e01616ab546270006', '12', '平遥远江', '001', 'http://pohq61v14.bkt.clouddn.com/51A6374E18C747E5B461F44CED04DAA8_6.jpg/E4CFBA60A8D84E478054855384E52E89_logo.jpg/A2F79990DABC49F1ACAEC82292A002BB_logo.jpg/B3D5C1FE15B84026A6B3DD582A927658_logo.jpg', '', '11', 11, 'PCS', 1, NULL, NULL, '', 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288287617040310161707a154e0001', '40288287616a411e01616ab546270006', '12', '平遥远江', 'fj001', 'fj002,jpg', NULL, '11', 11, 'SETS', 2, NULL, NULL, NULL, 5.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('402895c25152201a015152215a930000', '402895c2515129200151514376b80002', '12', '平遥远江', 'rrttrrttyyrree', '11', '柘城要柘城', '11', 11, NULL, 11, NULL, NULL, '11', 11.00, 121.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('402899d650894b860150894cef8f0000', '402899d650885c420150885d95cb0000', '10', '晶晨', 'rwtewr32432', '02.png', '货描', '1/2', 5, 'PCS', 10, NULL, NULL, '要求', 100.00, 1000.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028a9bd515b54c901515b5be9e40000', '4028a9bd515b2e8201515b3339860000', '1', '升华', 'fdgfdgfd', '01.png', '货物描述', '1/2', 5, 'PCS', 10, NULL, NULL, '要求', 10.00, 100.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '1', '升华', 'xx001', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('4a99e580-cf52-4b57-9b75-c50a491175a9', '2c90c5004ad63735014ad6d204060005', '15', '南皮开发', '货号002', 'http://${qiniu.rtValue}', 'xxx1', '13', 14, 'PCS', 10, NULL, NULL, 'xxx2', 5.00, 50.00, 25, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4b58a8f1-2c86-4b3c-8a49-5b0f95bd8bbe', 'd690442f-32ed-4327-b4dd-4f45a68ddb26', '13', '平遥鸿艺', '1', NULL, '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 2.00, 2.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('4e72ef30-b636-4101-9bda-9a6d52a240c9', '380ca949-c874-4be1-b1bb-e618d3b37e4b', '13', '平遥鸿艺', '1', 'https://ppjc4lp8v.bkt.clouddn.com/29D7399CAE8B4633BF105EB45C630F95_logo.jpg', '1', '1', 1, 'SETS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('6940614d-36e9-4b69-a335-5557be92a6a4', 'bc433392-2c8a-43b8-a886-b3a35a9bf4c8', '15', '南皮开发', '1', NULL, '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客');
INSERT INTO `co_contract_product` VALUES ('7c669fe6-c678-4a1b-8c1e-83a9c71db0fd', '380ca949-c874-4be1-b1bb-e618d3b37e4b', NULL, '升华', 'xx002', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('869091ba-b247-4bc8-b5ea-2216f9b4e6d2', '5c6171a7-7f68-423a-89e1-69d507a56bcb', '18', '翰林', '1', 'http://ppiwj7sd1.bkt.clouddn.com/E3EF4A627DF64B18BEE4D9D51FDB221F_logo.jpg', '6', '3', 8, 'PCS', 2, NULL, NULL, '5', 4.00, 8.00, 7, NULL, NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e81675ac532ff015ac53571c90001', '8a7e81ec5ac06f0d015ac06fbb850000', '3', '会龙', 'CP1009', '06.png', 'www', '1/3', 10, 'SETS', 30, NULL, NULL, 'www', 10.00, 300.00, 345, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e81675ac532ff015ac53d26d60003', '8a7e81ec5ac06f0d015ac06fbb850000', '4', '精艺', 'CP1008', '06.png', 'dsfdsf', '1/3', 10, 'SETS', 30, NULL, NULL, 'dfds', 10.00, 300.00, 345, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e81f06163e3d30161642eb7470001', 'ff80808160bab4fa0160bb1d6e760008', '10', '晶晨', '001', 'adssad', 'xxx', '11', 11, 'PCS', 1, NULL, NULL, 'xxxx', 10.00, 10.00, 111, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e827260b51f700160b520f7bf0000', '8a7e84215827fe1b015828058c360001', '16', '康达', '001', 'fj002,jpg', 'fj002,jpgfj002,jpgfj002,jpg', '11', 11, 'PCS', 2, NULL, NULL, 'fj002,jpgfj002,jpgfj002,jpg', 10.00, 20.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e827260b51f700160b523631e0001', '8a7e84215827fe1b015828058c360001', '10', '晶晨', '002', 'fj002,jpg', 'contractProductAction_tocreate', '1', 11, 'PCS', 1, NULL, NULL, 'contractProductAction_tocreate', 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e845158dc9da90158dc9f46be0000', '8a7e845158dc48ec0158dc49ce140000', '12', '平遥远江', 'CP45454', '01.png', 'erewr', '1/2', 10, 'SETS', 30, NULL, NULL, '  要求 ', 30.00, 900.00, 546, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a962d5a-fdfa-4e44-8874-e9fe6bd1d3f0', 'FC8A89AD11CD426BA7045A20F3E2E95A', NULL, '升华', 'xx001', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('b8319753-abef-4fb9-b72d-ca5b2a913461', '2c90c5004ad63735014ad6d204060005', '1', '升华', 'xx002', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('b8fb51bf-3971-458d-8aa9-b10259c67ff0', '380ca949-c874-4be1-b1bb-e618d3b37e4b', NULL, '升华', 'xx001', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('d2e2969b-faba-45fc-939c-8d528188e1df', '5c6171a7-7f68-423a-89e1-69d507a56bcb', '1', '升华', '1', 'http://', '6', '3', 7, 'PCS', 2, NULL, NULL, '5', 4.00, 8.00, 8, NULL, NULL);
INSERT INTO `co_contract_product` VALUES ('e015ef0b-8c7a-480a-b370-10d389bce360', '380ca949-c874-4be1-b1bb-e618d3b37e4b', '16', '康达', '1', 'http://ppjc4lp8v.bkt.clouddn.com/AC529416E1774799B21AE4E25A3C17E4_logo.jpg', '1', '1', 11, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('e5cbb358-6ec2-4fd1-a599-39e8e77441be', '380ca949-c874-4be1-b1bb-e618d3b37e4b', '10', '晶晨', '2', 'FqeSRYOATSrNlUGr9i0DcAhnLaBF', '2', '2', 2, 'SETS', 2, NULL, NULL, '2', 2.00, 4.00, 2, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('e7600779-fac5-4b60-b37d-8d1e878976b5', '40288287616a411e01616ab60a0e0007', NULL, '升华', 'xx003', NULL, '很不错', '10.0', 2, 'PCS', 1, NULL, NULL, '真的', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('f07a35d5-1a9c-4447-9acd-d13383721599', '5c6171a7-7f68-423a-89e1-69d507a56bcb', '1', '升华', '12', NULL, '76', '34', 87, 'SETS', 23, NULL, NULL, '69', 4.05, 93.15, 58, NULL, NULL);
INSERT INTO `co_contract_product` VALUES ('ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '13', '平遥鸿艺', '001', 'fj002,jpg', 'cproductcproductcproduct', NULL, 11, 'PCS', 1, NULL, NULL, 'cproductcproductcproduct', 10.00, 10.00, 1, '1', NULL);

-- ----------------------------
-- Table structure for co_export
-- ----------------------------
DROP TABLE IF EXISTS `co_export`;
CREATE TABLE `co_export`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_date` datetime(0) NULL DEFAULT NULL,
  `contract_ids` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ID集合串\\n            \\n            x,y,z',
  `customer_contract` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户的合同号,可选择多个合同',
  `lcno` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'L/C T/T',
  `consignee` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shipment_port` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `destination_port` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transport_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEA/AIR',
  `price_condition` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'FBO/CIF',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `box_nums` decimal(11, 0) NULL DEFAULT NULL COMMENT '冗余，为委托服务，一个报运的总箱数',
  `gross_weights` decimal(10, 2) NULL DEFAULT NULL COMMENT '冗余，为委托服务，一个报运的总毛重',
  `measurements` decimal(10, 2) NULL DEFAULT NULL,
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '0-草稿 1-已上报 2-装箱 3-委托 4-发票 5-财务',
  `pro_num` int(11) NULL DEFAULT NULL,
  `ext_num` int(11) NULL DEFAULT NULL,
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_export
-- ----------------------------
INSERT INTO `co_export` VALUES ('5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', NULL, '40288287616a411e01616ab60a0e0007,40288287616a411e01616ab546270006', 'cy002 cy001 ', '11', '11', '11', '11', '11', '11', '11', '11', 11, 11.00, 11.00, 2, 6, 1, NULL, NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_export` VALUES ('b87c3636-990b-4bf6-82b0-6a4059e56903', NULL, '8a7e84fc587a6c8501587a6d3ed70000,8a7e84215827fe1b015828058c360001', 'JK352 AOP ', '11', '11', '11', '11', '11', '11', '111', '11', 11, 11.00, 11.00, 2, 2, 0, NULL, NULL, NULL, '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for co_export_product
-- ----------------------------
DROP TABLE IF EXISTS `co_export_product`;
CREATE TABLE `co_export_product`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `export_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `box_num` decimal(11, 0) NULL DEFAULT NULL,
  `gross_weight` decimal(10, 2) NULL DEFAULT NULL,
  `net_weight` decimal(10, 2) NULL DEFAULT NULL,
  `size_length` decimal(10, 2) NULL DEFAULT NULL,
  `size_width` decimal(10, 2) NULL DEFAULT NULL,
  `size_height` decimal(10, 2) NULL DEFAULT NULL,
  `ex_price` decimal(10, 2) NULL DEFAULT NULL COMMENT 'sales confirmation 中的价格（手填）',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '收购单价=合同单价',
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_export_product
-- ----------------------------
INSERT INTO `co_export_product` VALUES ('21397479-5f64-4bf1-a2a2-704d25cae998', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', NULL, 'xx004', 'PCS', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, 10.80, NULL, '1', '传智播客教育股份有限公司', '升华');
INSERT INTO `co_export_product` VALUES ('3c9ebba3-76c6-45f5-b38d-80013e8f4724', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', '12', 'fj001', 'SETS', 2, 11, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, NULL, 1, '1', NULL, '平遥远江');
INSERT INTO `co_export_product` VALUES ('49db72e2-f6bc-49f2-9b4e-9eedc738cd5b', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', NULL, 'xx002', 'PCS', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, 10.00, NULL, '1', '传智播客教育股份有限公司', '升华');
INSERT INTO `co_export_product` VALUES ('50b65129-b296-415d-b917-a568cb30ef4d', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', '12', '001', 'PCS', 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 11.60, 1, '1', NULL, '平遥远江');
INSERT INTO `co_export_product` VALUES ('644e7445-38b1-4e08-86d3-72ef766a6f66', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', NULL, 'xx003', 'PCS', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, '1', '传智播客教育股份有限公司', '升华');
INSERT INTO `co_export_product` VALUES ('701f972f-146c-42ff-a1b7-d3d9569974ae', 'b87c3636-990b-4bf6-82b0-6a4059e56903', '10', '002', 'PCS', 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, 1, '1', NULL, '晶晨');
INSERT INTO `co_export_product` VALUES ('9dfcfaf7-0f6c-4be9-a045-9bcc288d0fec', 'b87c3636-990b-4bf6-82b0-6a4059e56903', '16', '001', 'PCS', 2, 11, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10.00, 1, '1', NULL, '康达');
INSERT INTO `co_export_product` VALUES ('b06b6810-9f42-4725-8fa0-009898315788', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', NULL, 'xx001', 'PCS', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, '1', '传智播客教育股份有限公司', '升华');

-- ----------------------------
-- Table structure for co_ext_cproduct
-- ----------------------------
DROP TABLE IF EXISTS `co_ext_cproduct`;
CREATE TABLE `co_ext_cproduct`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contract_product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购销合同id',
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `cnumber` double(11, 0) NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `amount` double(10, 2) NULL DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `product_request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order_no` double(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_ext_cproduct
-- ----------------------------
INSERT INTO `co_ext_cproduct` VALUES ('238e78fd-4bdb-4381-bb63-8c1e425c0160', '42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '4028817a33de41d80133e982a18a001c', '太谷PVC', '002', 'http://${qiniu.rtValue}', '2', '2', 2, 12.00, 24.00, '2', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('33b947c7-8652-47c0-a52f-dd78277452a0', '42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '4028817a389cc7b701389d1efd940001', '宇虹包装厂', '001', 'http://${qiniu.rtValue}', '1', '1', 2, 1.00, 2.00, 'xxxxx', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a3357462e013359291f640009', '4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '16', '康达', '2976', 'undefined', '彩盒，新菲林\\r\\n配明料糖缸带盖子\\r\\n彩盒尺寸：25.7X25.7X35.7CM', 'PCS', 144, 3.90, 561.60, '1.彩盒要求350克面纸；\\r\\n2.工厂待用安全包装，待我司运至工厂；\\r\\n3.工厂免费提供1%余量，以防划伤，破损；\\r\\n4.交期:2011年11月05日。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a3357462e013359291f64000a', '4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '16', '康达', '2976', 'undefined', '彩盒，新菲林\\r\\n配全明料糖缸带盖子\\r\\n彩盒尺寸：21.5X21.5X41CM', 'PCS', 144, 3.30, 475.20, '1.彩盒要求350克面纸；\\r\\n2.工厂待用安全包装，待我司运至工厂；\\r\\n3.工厂免费提供1%余量，以防划伤，破损；\\r\\n4.交期:2011年11月05日。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33812ffd0133820c0a460029', '4028817a33812ffd013382048ff80026', '4028817a33812ffd013382048ff80024', '19', '综艺花纸', '20-37-265/JK1050163', '1af851ab-98ff-4227-ba39-1175dca33c6f.png', '蒙砂白花纸\\r\\n配全明料蛋糕罩\\r\\n\\r\\n送祁县宏艺厂', 'PCS', 1200, 0.38, 456.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年12月05日；', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33d4f8b40133d994c45e0022', '4028817a33d4f8b40133d9878e880016', '4028817a33d4f8b40133d9878e88000d', '19', '综艺花纸', 'JK1050201/12078', NULL, '蒙砂白花纸\\r\\n烤在蛋糕罩上\\r\\n送祁县光华厂', 'PCS', 204, 0.80, 163.20, '1.产品的颜色、造型、尺寸、务必同我司提供的样稿一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交\n\n期:2011年11月20日送指定工厂。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84d40001', '4028817a3357462e01336d3a0be10018', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1014005', '94d2d773-24b6-412e-b0e3-0fc9dddf0955.png', '低温鱼花纸\\r\\n明料低口杯\\r\\n祁县宏艺厂', 'PCS', 1800, 1.20, 2160.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84e40002', '4028817a3357462e01336d3a0be10019', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1080766-3', '29bb909d-d527-475d-bfbe-e5e05a02349c.png', '套3白花纸\\r\\n\\r\\n送祁县宏艺厂', 'SETS', 600, 0.60, 360.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84e40004', '4028817a3357462e01336d3a0be10016', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1014001', '7a3d341f-f473-44ce-9bd4-c7f2b87343ca.png', '低温鱼花纸\\r\\n明料大碗\\r\\n送祁县宏艺厂', 'PCS', 1000, 2.40, 2400.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84e40005', '4028817a3357462e01336d3a0be10015', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1014003', '73980c53-44f6-4232-8c04-9d08a66eeccb.png', '低温鱼花纸\\r\\n明料盘子\\r\\n\\r\\n送祁县天顺厂', 'PCS', 1200, 3.80, 4560.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fcdff5490011', '4028817a33fc4e280133fcdb13f40010', '4028817a33d4f8b40133d9bea39b002f', '19', '综艺花纸', 'JK046/JK1050201', 'undefined', '蒙砂白花纸\\r\\n烤在蛋糕罩子上\\r\\n送祁县光华厂', 'PCS', 600, 0.80, 480.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月15日；', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fcdff5490012', '4028817a33d4f8b40133d9bea39b0032', '4028817a33d4f8b40133d9bea39b002f', '20', '喜福来', 'JK1050807/JK033', NULL, '套6全明料酒杯\\r\\n杯碗电镀渐变色，挺底电镀\\r\\n尺寸：8X24CM高', 'SETS', 300, 21.00, 6300.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故\n\n延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fcdff5490013', '4028817a33d4f8b40133d9bea39b0030', '4028817a33d4f8b40133d9bea39b002f', '20', '喜福来', 'JK1050806/JK032', NULL, '套6全明料香槟杯\\r\\n杯碗电镀渐变色，挺底电镀\\r\\n尺寸：5.7X25CM高', 'SETS', 320, 21.00, 6720.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故\n\n延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d0029', '4028817a33fc4e280133fd81e7d70027', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'JK1040009/141760', NULL, '白色字母花纸 \\r\\n送祁县宏艺厂', 'PCS', 300, 0.90, 270.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002a', '4028817a33fc4e280133fd81e7d7001f', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'J859102682/113860', NULL, '白色字母花纸\\r\\nSTORAGE ONLY\\r\\n祁县宏艺厂', 'PCS', 300, 0.40, 120.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002b', '4028817a33fc4e280133fd81e7d70026', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'JK10501218/160380', NULL, '白\n\n色字母花纸 \\r\\n送祁县宏艺厂', 'PCS', 600, 0.40, 240.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002c', '4028817a33fc4e280133fd81e7d70021', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', '123540', NULL, '白色字母花纸(HIGH TEA)\\r\\n字体：ENGLISH SCRIPT\\r\\n尺寸：18X5.5CM\\r\\n祁县光华厂', 'PCS', 100, 0.30, 30.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002d', '4028817a33fc4e280133fd81e7d70022', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'JK1052446/158080', NULL, '白色字母花纸\\r\\n\\r\\n \\r\\n祁县会龙厂', 'PCS', 702, 0.25, 175.50, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002e', '4028817a33fc4e280133fd81e7d7001e', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', '169280', 'undefined', '白色字母花纸(HIGH TEA)\\r\\n字体：ENGLISH SCRIPT\\r\\n尺寸：18X5.5CM\\r\\n祁县光华厂', 'PCS', 100, 0.30, 30.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 6, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0040', '4028817a33fc4e280133fde6504f0039', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK169340/13076', 'undefined', '蒙砂白花纸\\r\\n\\\"烤在蛋糕罩子上(25X26CM)\\r\\n\\\"\\r\\n祁县光华厂', 'PCS', 200, 1.02, 204.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0041', '4028817a33fc4e280133fde6504f0038', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK1050198/12860', 'undefined', '蒙砂白花纸\\r\\n烤在红酒杯（11X19CM)上\\r\\n送平遥鸿艺', 'PCS', 400, 0.49, 196.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0042', '4028817a33fc4e280133fde6504f003c', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK1050195/12859', 'undefined', '蒙砂白花纸\\r\\n烤在香槟杯(8X21CM)上\\r\\n送平遥鸿艺', 'PCS', 400, 0.40, 160.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0043', '4028817a33fc4e280133fde6504f0037', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK1050201/12078', NULL, '蒙砂白花纸\\r\\n烤在蛋糕罩子上\\r\\n祁县光华厂', 'PCS', 402, 0.80, 321.60, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日；', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd3200001', '4028817a33812ffd0133816aacd40019', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4998', 'undefined', '全明料死模风灯 ，电镀花银喷紫色\\r\\n尺寸：11.5X30.5CM', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 6, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0002', '4028817a33812ffd0133816aacd40017', '4028817a33812ffd0133813f25940001', '19', '综艺花纸', '5117', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 300, 3.00, 900.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月30日；', 12, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0003', '4028817a33812ffd0133813f25a30002', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4993', NULL, '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：11.5X20.3CM\\r\\n毛坯1月25日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0004', '4028817a33812ffd0133816aacd40018', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5400', 'undefined', '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：17X23CM高', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 10, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0005', '4028817a33812ffd0133816aacd4000d', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4996', 'undefined', '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：11.5X30.5CM高', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0006', '4028817a33812ffd0133816aacd40014', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5336', NULL, '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：14.5X20CM高', 'PCS', 300, 2.00, 600.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致，\\r\\n       并将验货照片传回\n\n公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重后\n\n果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 8, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0007', '4028817a33812ffd0133813f25a30003', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4994', 'undefined', '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：11.5X20.3CM高', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0008', '4028817a33812ffd0133816aacd40011', '4028817a33812ffd0133813f25940001', '20', '喜福来', '6998', NULL, '全明料蛋糕盘，盘沿电镀\\r\\n尺寸：6-1/2\\\"X12-1/2\\\"高', 'PCS', 300, 6.00, 1800.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 11, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0009', '4028817a33812ffd0133816aacd4000c', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4997', NULL, '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：11.5X30.5CM高', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000a', '4028817a33812ffd0133816aacd40012', '4028817a33812ffd0133813f25940001', '19', '综艺花纸', '5118', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 600, 3.00, 1800.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月30日；', 13, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000b', '4028817a33812ffd0133816aacd40015', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5337', NULL, '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：14.5X20CM高', 'PCS', 300, 2.00, 600.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 9, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000c', '4028817a33812ffd0133816aacc40009', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5331', 'undefined', '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：17X23CM高', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 7, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000d', '4028817a33812ffd0133813f25a30004', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4995', 'undefined', '全明料死模风灯，电镀花银喷紫色\\r\\n尺寸：11.5X20.3CM', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730023', '4028817a3420e78a013421a693820007', '4028817a3420e78a013421a693730001', '19', '综艺花纸', '5117', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 300, 3.00, 900.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年1月15日。', 11, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730024', '4028817a3420e78a013421e2e3c1001a', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5337', 'e877a4e2-2e48-4b06-91a8-3fb64f150a0f.jpg', '全明料死模风灯，电镀花银喷蓝色      \\r\\n尺寸：14.5X20CM高      \\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.00, 900.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 9, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730027', '4028817a3420e78a013421a693820002', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4995', 'b232e729-a02f-48b2-987b-2c6311827816.jpg', '全明料死模风灯，电镀花银喷浅紫色\\r\\n明料挺底      \\r\\n尺寸：11.5X20.3CM    \\r\\n1只/五层内盒     12只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730029', '4028817a3420e78a013421a693820004', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4996', '987692c0-6e47-4117-b6c8-3dbbeaca1b0c.jpg', '全明料死模风灯，电镀花银喷浅绿色\\r\\n明料挺底      \\r\\n尺寸：11.5X30.5CM高    \\r\\n1只/五层内盒      6只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b73002a', '4028817a3420e78a013421a693820006', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4993', 'a803fa9e-dda1-476a-a822-a51b226aca39.jpg', '全明料死模风灯，电镀花银喷浅绿色 \\r\\n明料挺底      \\r\\n尺寸：11.5X20.3CM    \\r\\n1只/五层内盒      12只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意,无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b73002b', '4028817a3420e78a013421d2e3fe0014', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5331', '51902cb9-1650-480b-8373-2da4c3f2338b.jpg', '全明料死模风灯，电镀花银喷绿色      \\r\\n尺寸：17X23CM高      \\r\\n1只/五层内盒      6只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 7, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b73002d', '4028817a3420e78a013421a693820003', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4994', '05b37ddc-8904-4df3-8167-b98129c600de.jpg', '全明料死模风灯，电镀花银喷浅蓝色\\r\\n明料挺底      \\r\\n尺寸：11.5X20.3CM    \\r\\n1只/五层内盒     12只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadeab80031', '4028817a3420e78a013421a693920011', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4997', '7dbc495e-a12c-4eec-9975-c93c1b3f4297.jpg', '全明料死模风灯，电镀花银喷浅蓝色\\r\\n明料挺底      \\r\\n尺寸：11.5X30.5CM高    \\r\\n1只/五层内盒      6只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadeab80037', '4028817a3420e78a013421a693820005', '4028817a3420e78a013421a693730001', '19', '综艺花纸', '5118', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 300, 3.00, 900.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年1月15日。', 12, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadec6d003a', '4028817a3420e78a013421d2e3fe0013', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5336', 'c8350cd2-47ae-4054-ad81-70004fe4eb44.jpg', '全明料死模风灯，电镀花银喷绿色      \\r\\n 尺寸：14.5X20CM高      \\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.00, 900.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 8, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadec6d0042', '4028817a3420e78a013421a69382000e', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4998', '44fc2f77-af8a-42d3-8d9b-fa2bafa8f47a.jpg', '全明料死模风灯，电镀花银喷浅紫色\\r\\n明料挺底      \\r\\n尺寸：11.5X30.5CM高    \\r\\n1只/五层内盒      6只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 6, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadec6d0044', '4028817a3420e78a013421e2e3c10016', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5400', '601585a1-ba16-42bb-9ffb-\n\nd187b521be1f.jpg', '全明料死模风灯，电镀花银喷蓝色      \\r\\n尺寸：17X23CM高      \\r\\n1只/五层内盒      6只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 10, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c005d', '4028817a353b8d8e01353d32350d0051', '4028817a353b8d8e01353d15008d0046', '19', '综艺花纸', '5117', 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '白金字母花纸\\r\\nSWEETS\\r\\n安全包装送祁县光华厂', 'PCS', 100, 3.00, 300.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年2月5日。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c005e', '4028817a353b8d8e01353d32350d005b', '4028817a353b8d8e01353d15008d0046', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5336', '4436f9d7-b0e2-4926-9cd4-f6c66333c290.jpg', '全明料死模风灯，电镀花银喷绿色      \\r\\n       \\r\\n尺寸：14.5X20CM高 \\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 156, 3.00, 468.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c005f', '4028817a353b8d8e01353d32350d005a', '4028817a353b8d8e01353d15008d0046', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5330', 'be775015-234a-4504-ad52-af6af53d2a9c.jpg', '全明料死模风灯，电镀花银喷紫色      \\r\\n      \\r\\n尺寸：14.5X20CM高\\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 156, 3.00, 468.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c0060', '4028817a353b8d8e01353d32350d0055', '4028817a353b8d8e01353d15008d0046', '19', '综艺花纸', '5118', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n安全包装送祁县光华厂', 'PCS', 100, 3.00, 300.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年2月5日。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c0061', '4028817a353b8d8e01353d32350d0057', '4028817a353b8d8e01353d15008d0046', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5337', '673a4e11-3706-4beb-b958-\n\nee1d7c564b3b.jpg', '全明料死模风灯，电镀花银喷蓝色      \\r\\n       \\r\\n尺寸：14.5X20CM高      \\r\\n1只/五层内盒      12只/大箱\n\n    \\r\\n毛坯1月30日送', 'PCS', 156, 3.00, 468.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('40288286607ea08c01607ecc5e8b0006', '40288286607ea08c01607ea3d9500001', 'ff8080816077bbb3016077bd30b10000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', 'fj001', 'fj002,jpg', 'sd', 'PCS', 1, 10.00, 10.00, 'dsad', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('40288287617040310161707a8a1d0002', '402882876170403101617079e0540000', '40288287616a411e01616ab546270006', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', 'FJ1234', 'lv.png', NULL, 'PCS', 21, 11.00, 231.00, NULL, 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('93f91ed9-518f-49b1-bd5a-da971397153a', '42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '4028817a3632e86601363344d16d0001', '淄博花纸厂', '003', 'http://${qiniu.rtValue}', '3', '3', 3, 3.00, 9.00, 'abcdef', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b3460160b5b5ea520001', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b3460160b5b6f3e80002', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33d4f8b40133d9989f5e0024', '民鑫', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5ba180b0000', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a353b8d8e0135415bf0a90070', '宇津水龙头厂', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bb86f10001', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a35e0895e0135ec7a4dbe0087', '西安方圆工贸', NULL, 'adssad', NULL, NULL, 1, 5.00, 5.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bdcd370003', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', NULL, NULL, NULL, 'fj002,jpg', NULL, NULL, 2, 15.00, 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bedc3e0004', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bf2a660005', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', NULL, NULL, NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5c0471b0006', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33de41d80133e982a18a001c', '太谷PVC', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for co_ext_eproduct
-- ----------------------------
DROP TABLE IF EXISTS `co_ext_eproduct`;
CREATE TABLE `co_ext_eproduct`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `export_product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `export_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属报运单id',
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `product_request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_ext_eproduct
-- ----------------------------
INSERT INTO `co_ext_eproduct` VALUES ('4c8f9b0f-7aed-4403-b94f-d0fa382329fd', '50b65129-b296-415d-b917-a568cb30ef4d', '5b468b5e-ff68-4e04-b9a7-f0f4fe702cb1', '4028817a33ecdbf70133ee202e49000b', 'FJ1234', 'lv.png', NULL, 21, 'PCS', 11.00, 231.00, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for co_factory
-- ----------------------------
DROP TABLE IF EXISTS `co_factory`;
CREATE TABLE `co_factory`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物/附件',
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacts` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inspector` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1正常0停用',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_factory
-- ----------------------------
INSERT INTO `co_factory` VALUES ('1', '货物', '祁县海洋厂', '升华', '刘生', '0354-5299987', NULL, NULL, '厦门', '吕波', NULL, NULL, '0', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('10', '货物', '祁县晶晨厂', '晶晨', '续贵', '0354-5271999', NULL, NULL, '东莞', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('12', '货物', '平遥远江厂', '平遥远江', '宏远', NULL, '13935499967', NULL, '连云港', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('13', '货物', '平遥鸿艺厂', '平遥鸿艺', '雄飞', '0354-5940888', NULL, NULL, '东莞', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('15', '货物', '南皮开发玻璃制品厂', '南皮开发', '舒东', '0317-8863999', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('16', '货物', '陕西康达彩印厂', '康达', '袁喜', '029-84528015', NULL, NULL, '拉萨', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('17', '货物', '陕西众鑫印务包装有限公司', '众鑫', '赵毅', '029-84341858', NULL, NULL, '连云港', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('18', '货物', '翰林彩印厂', '翰林', '孙财', '029-88917456', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('19', '货物', '祁县综艺玻璃花纸厂', '综艺花纸', '王棕', '0354-5278918', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('2', '货物', '祁县光华厂', '光华', '薛成', '0354-5298981', NULL, NULL, '长沙', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('20', '货物', '祁县喜福来玻璃加工厂', '喜福来', '王卫', '0354-5328850', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('21', '货物', '祁县美晶泡沫厂', '美晶', '范长', '0354-5071387', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('22', '货物', '祁县瑞成玻璃镀膜厂', '瑞成', '温明', NULL, '13834809374', NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('3', '货物', '祁县会龙厂', '会龙', '李伟', '0354-5248696', NULL, NULL, '长沙', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4', '货物', '祁县精艺厂', '精艺', '闫强', '0354-5047289', NULL, NULL, '厦门', '高琴', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a33d4f8b40133d9989f5e0024', '附件', '闻喜民鑫厂', '民鑫', '李民', '0359-7472727', NULL, NULL, '包头', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a33de41d80133e982a18a001c', '附件', '太谷四通PVC厂', '太谷PVC', '张海', '0354-6226591', NULL, NULL, '沈阳', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a33ecdbf70133ee202e49000b', '附件', '祁县瑞成电镀厂', '瑞成电镀厂', '温民', '13835926900', NULL, NULL, '沈阳', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a34f93be50134f9df84470001', '附件', '神舟玻璃制品有限公司', '神舟厂', '申定', '0356-3961959', '13935672348', '0356-3991304', '福州', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a353b8d8e0135415bf0a90070', '附件', '陕西宇津进出口有限公司', '宇津水龙头厂', '任宁', '029-62990818', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a35e0895e0135ec7a4dbe0087', '附件', '西安方圆工贸有限公司', '西安方圆工贸', '许涛', '029-86539568', NULL, '029-86590565', '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3632e86601363344d16d0001', '附件', '淄博雷波陶瓷花纸厂', '淄博花纸厂', '吴璇', '0533-5176946', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a371a8d7f01372a74451f0068', '附件', '山西大德成工贸有限公司', '铁架厂', '高辉', '0354-5288919', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a37583d45013758d152450038', '附件', '祁县顺驰厂', '顺驰', '王明', '0354-5109398', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a38024a04013803e3a8a2004b', '附件', '祁县欣欣泡沫有限公司', '祁县欣欣泡沫厂', '许杰', '0354-3939793', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a382b4fd401382b9aad2a0008', '附件', '祁县仲玉玻璃厂', '仲玉', '吕军', '0354-5018888', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a38736298013874c51a800036', '附件', '汇融玻璃有限公司', '展鹏厂', '厂长', '0354-5326986', '13834893800', '0354-5826197', '西安', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a389cc7b701389d1efd940001', '附件', '宇虹包装彩印厂', '宇虹包装厂', '翟帅', '0358-3099923', '19033470988', '0358-3098183', '西安', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a39b2b37f0139b46268c40025', '附件', '祁县馨艺玻璃厂', '馨艺', '袁长', '0354-5041938', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3aa9f950013ab0b6c98d0050', '附件', '祁县一先厂', '一先厂', '李刚', '0654-9018444', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3aa9f950013ab97f64110053', '附件', '温县致远玻璃制品有限公司', '温县致远厂', '红升', '18936896666', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3abe8f15013ac019a61f0031', '附件', '祁县喜福来电镀厂', '喜福来电镀厂', '王卫', '0154-5282888', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3ae2ac42013ae3550357000d', '附件', '临潼华清蜡厂', '临潼华清蜡厂123', '吴波', '13791903888', NULL, NULL, '东莞', NULL, NULL, NULL, '0', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('5', '货物', '祁县汇越厂', '汇越', '建忠', '0354-5019656', NULL, NULL, '西安', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('6', '货物', '祁县泰宇厂', '泰宇', '立东', '0354-5299160', NULL, NULL, '西安', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('7', '货物', '祁县天顺厂', '天顺', '渠海', '0354-5299499', NULL, NULL, '连云港', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('8', '货物', '祁县天诚厂', '天诚', '庞正', '0354-5299539', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('9', '货物', '祁县华艺厂', '华艺', '史国', '0354-5041927', NULL, NULL, '东莞', '高琴', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('ff808081301885760130189e47ca0013', NULL, NULL, '文水志远厂1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for co_packing_list
-- ----------------------------
DROP TABLE IF EXISTS `co_packing_list`;
CREATE TABLE `co_packing_list`  (
  `packing_list_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seller` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buyer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invoice_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择',
  `invoice_date` datetime(0) NULL DEFAULT NULL,
  `marks` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descriptions` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `export_ids` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报运ID集合',
  `export_nos` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报运NO集合x,y|z,h',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '0草稿 1已上报',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`packing_list_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of co_packing_list
-- ----------------------------
INSERT INTO `co_packing_list` VALUES ('8a7e8412584c739201584c7433c50000', '美国ABC', 'ABC', 'ABC', '2016-11-09 00:00:00', 'ABC', 'ABC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `co_packing_list` VALUES ('8a7e842b57bc33760157bc340dad0000', 'AJ1', '小陈', 'PK10022', '2016-10-06 00:00:00', 'marks唛头', 'descript描述', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pe_dept
-- ----------------------------
DROP TABLE IF EXISTS `pe_dept`;
CREATE TABLE `pe_dept`  (
  `dept_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` decimal(6, 0) NULL DEFAULT NULL COMMENT '1代表启用，0代表停用，默认为1',
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE,
  INDEX `SYS_C005596`(`parent_id`) USING BTREE,
  CONSTRAINT `SYS_C005596` FOREIGN KEY (`parent_id`) REFERENCES `pe_dept` (`dept_id`) ON DELETE NO ACTION ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pe_dept
-- ----------------------------
INSERT INTO `pe_dept` VALUES ('100', '商贸集团', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('100101', '北京事业部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('100101101', '顺义事业部', '100101', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('3d00290a-1af0-4c28-853e-29fbf96a2722', '市场部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('4028827c4fb6202a014fb6209c730000', '总裁办', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('4028827c4fb633bd014fb64467470000', '财务部', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('73f3fa2f-66a2-4d16-8306-78d89003031b', '网络部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('8a7e862458b9ed5b0158b9edc0e80000', '调研组', '3d00290a-1af0-4c28-853e-29fbf96a2722', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('97f88a8c-90fc-4d52-aed7-2046f62fb498', '总经办', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '船运部', '100', 1, '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for pe_role
-- ----------------------------
DROP TABLE IF EXISTS `pe_role`;
CREATE TABLE `pe_role`  (
  `role_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pe_role
-- ----------------------------
INSERT INTO `pe_role` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '船运专员', '船运专员', NULL, NULL, NULL, '2015-09-11 16:59:44', NULL, '2015-07-25 09:55:21', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '船运经理', '船运经理', 10, NULL, NULL, '2015-09-11 16:59:47', NULL, '2015-07-25 09:55:37', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '装箱专员', '装箱专员', 11, NULL, NULL, '2015-09-11 16:59:49', NULL, '2015-07-31 14:49:21', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '总经理', 'sysadmin', 1, NULL, NULL, '2015-09-11 16:58:57', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '销售经理', 'salemanager', 2, NULL, NULL, '2015-09-11 16:58:04', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0003', '合同专责', 'contract', 3, NULL, NULL, '2015-09-11 16:58:00', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '销售专责', 'sale', 4, NULL, NULL, '2015-09-11 16:57:47', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0005', '报运经理', 'transportation', 5, NULL, NULL, '2015-09-11 16:57:42', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0006', '报运专责', 'trans', 6, NULL, NULL, '2015-09-11 16:57:37', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '财务经理', 'financial', 7, NULL, NULL, '2015-09-11 16:57:32', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '财务专责', 'fin', 8, NULL, NULL, '2015-09-11 16:57:25', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '班主任', '貌美如花', NULL, NULL, NULL, NULL, NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '测试001', '测试001', NULL, NULL, NULL, NULL, NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('a17fad99-b49f-439d-bf26-597e6784a588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '传智播客');

-- ----------------------------
-- Table structure for pe_role_module
-- ----------------------------
DROP TABLE IF EXISTS `pe_role_module`;
CREATE TABLE `pe_role_module`  (
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pe_role_module
-- ----------------------------
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '301');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '204');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50102');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '208');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '207');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '5');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '501');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '205');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '1');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '2');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '101');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '504');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '201');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50103');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50104');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '102');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '203');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '206');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '503');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '202');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '502');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '402');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '503');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '504');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '6');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '601');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '602');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '503');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '402');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '503');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '504');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '6');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '602');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '604');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '603');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '601');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '402');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '182104f0-7690-4a84-a90c-16d24e491a3a');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '50101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '50102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '50103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '50104');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '503');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '2');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '201');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '202');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '203');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '204');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '205');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '206');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '207');
INSERT INTO `pe_role_module` VALUES ('7f2e977b-6f98-4fae-85ea-bb665847e1c6', '208');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '5');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '182104f0-7690-4a84-a90c-16d24e491a3a');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '501');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '50101');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '50102');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '50103');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '502');
INSERT INTO `pe_role_module` VALUES ('757e2868-0fcf-46d7-a9a2-6e28d184fe2c', '503');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '5');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '182104f0-7690-4a84-a90c-16d24e491a3a');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '501');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '50101');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '50102');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '50103');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '502');
INSERT INTO `pe_role_module` VALUES ('9a38ff1b-a883-4513-b6f0-2e57a7e313f2', '503');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '182104f0-7690-4a84-a90c-16d24e491a3a');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '50101');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '50102');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '50103');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '50104');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '503');

-- ----------------------------
-- Table structure for pe_role_user
-- ----------------------------
DROP TABLE IF EXISTS `pe_role_user`;
CREATE TABLE `pe_role_user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pe_role_user
-- ----------------------------
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('071f3544-b21f-4f91-b32d-7ccb2104c05e', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('10d29bc9-78c1-4831-a21a-4fcfea7d87ce', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('40a58e0c-e6ee-47e9-bdb6-0b90a8b41a68', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('6424df15-963c-4218-8371-6ad000ef5a5a', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('6764e5a1-45e5-4229-a72a-7c5d72209b15', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('6bbf3016-54ab-4ab2-b0d3-2d6622ac17eb', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('7188e1c7-40e9-45a1-a503-58daa132af4b', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('7a02a732-f5b5-4a9e-8e40-2e04d0fc66e5', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('84b4a1c0-fb52-4fd5-b410-5db1c933d146', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('8fe436ac-87e9-4d35-a3a4-0eb33cae6c86', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('c9a4973e-8daa-4380-a9ec-599410d6fd6b', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('ca592c7c-860a-464c-8f56-ea51b42a046f', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('e2fc5d41-2733-4c8a-88a6-6dbad214d47e', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('e9007d05-c3ce-480f-8588-e53acdf61f2c', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('faa59d6e-2e04-4972-bd4f-fd946ba38b99', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('0f1f71fe-fe7c-4a44-a952-4f08bf5aa990', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('461eadec-af07-456e-8016-3b224440ad49', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('5f6ba59b-f185-4c8a-9caa-99cba5963cdb', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('cf0015d3-bcdd-433b-889d-808b53b72640', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('e2fc5d41-2733-4c8a-88a6-6dbad214d47e', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('18077bdb-8dd3-4aae-95a2-078c963f8416', '4028a1cd4ee2d9d6014ee2df4c6a0000');
INSERT INTO `pe_role_user` VALUES ('9fe270f8-f682-4126-92aa-604d945c95f1', '4028a1cd4ee2d9d6014ee2df4c6a0000');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0004');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0005');
INSERT INTO `pe_role_user` VALUES ('424b2d01-d812-4f30-be40-dcda14110118', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('71a5a695-0ba5-4f0d-a0b5-0a304efde944', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('b11c3da4-4760-4f4f-9913-78f7749ffcf9', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('b891b14b-1316-4a79-8b88-695be1e3f42f', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('b9dbe6ae-316b-4459-9090-0f54128368fa', '757e2868-0fcf-46d7-a9a2-6e28d184fe2c');
INSERT INTO `pe_role_user` VALUES ('c3386cd9-c8f1-4671-b25f-16621077d9e1', '757e2868-0fcf-46d7-a9a2-6e28d184fe2c');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '9a38ff1b-a883-4513-b6f0-2e57a7e313f2');
INSERT INTO `pe_role_user` VALUES ('3115d27d-afc2-4d10-9ba9-c1c5997da7b2', '9a38ff1b-a883-4513-b6f0-2e57a7e313f2');

-- ----------------------------
-- Table structure for pe_user
-- ----------------------------
DROP TABLE IF EXISTS `pe_user`;
CREATE TABLE `pe_user`  (
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不能重复,可为中文',
  `station` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro MD5密码32位',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '1启用0停用',
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` int(2) NULL DEFAULT NULL,
  `salary` decimal(10, 0) NULL DEFAULT NULL,
  `join_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` int(3) NULL DEFAULT NULL,
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录人编号',
  `create_dempt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录人所属部门编号',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pe_user
-- ----------------------------
INSERT INTO `pe_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', 'lw@export.com', '老王', '员工', '72a7dc98f2ce9f5312a7267d88c965d1', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '0', '12345678', '1989-01-06', 1, 2000, '2019-02-26', 1, NULL, NULL, '2015-10-18 17:00:53', NULL, '2015-10-18 17:00:53', '貌美如花');
INSERT INTO `pe_user` VALUES ('071f3544-b21f-4f91-b32d-7ccb2104c05e', '100', '1714987422@qq.com', 'HL', 'HL', 'cf0dd079a3647f4c2796665d666776eb', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '123', '2020-11-10', 2, 123, '2020-11-19', 213, NULL, NULL, NULL, NULL, NULL, '123');
INSERT INTO `pe_user` VALUES ('0f1f71fe-fe7c-4a44-a952-4f08bf5aa990', '100101101', 'xiaoer@export.com', '小二', '员工', '359c4cd72b2c243b64371da49ef82d75', 1, '1', '传智播客教育股份有限公司', '顺义事业部', NULL, '1', '13800138001', '1992-03-16', 4, 2000, '2010-05-06', 1, NULL, NULL, '2018-01-02 16:02:41', NULL, '1970-01-01 08:00:00', '1');
INSERT INTO `pe_user` VALUES ('0f68fccc-2643-4d12-b5eb-b8b8729d50e9', '100', '1460055344@qq.com', 'HL', 'HL', '022f9fd7a9b113ea7be69e4226acae70', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '15922228853', '2020-09-01', 2, 100, '2020-10-06', 123, NULL, NULL, NULL, NULL, NULL, '213');
INSERT INTO `pe_user` VALUES ('10d29bc9-78c1-4831-a21a-4fcfea7d87ce', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'cy002@export.com', 'cy002', '员工', '36e167b32297d5e0d40339640624ba3e', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '0', '13800138002', '1990-05-19', 4, 5000, '2010-05-06', 2, NULL, NULL, '2018-02-06 18:37:22', NULL, '1970-01-01 08:00:00', '2');
INSERT INTO `pe_user` VALUES ('18077bdb-8dd3-4aae-95a2-078c963f8416', '4028827c4fb6202a014fb6209c730000', 'lisi@export.com', '李四', '经理', '5e582f08ffaef00f984bbe611e121a19', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '0', '13800138003', '1984-02-26', 4, 5000, '', NULL, NULL, NULL, '2015-09-24 00:41:12', NULL, '2015-09-24 00:14:23', '');
INSERT INTO `pe_user` VALUES ('196fd3dd-0d8c-4930-a0e5-33d635c9b6f2', '100101', 'lemon@itcast.cn', '1', '1', '49f6575c5f0d5c7bd6b39e94f2df73a7', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '1', '2019-04-23', 1, 1, '2019-04-01', 1, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pe_user` VALUES ('1d47b054-003f-41e0-8ba3-5600f38653f8', '3d00290a-1af0-4c28-853e-29fbf96a2722', 'huamulan@export.com', '花木兰', '市场经理', '59fe271f9d6719000a8f2af97af38b6c', 1, '1', '传智播客教育股份有限公司', '市场部', NULL, '0', '13800138004', '1988-12-30', 4, 5000, '', NULL, NULL, NULL, '2017-12-31 11:08:19', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('3115d27d-afc2-4d10-9ba9-c1c5997da7b2', '100', 'dm@qq.com', '大美', '员工', 'e6ddd08f48998590bafc262a249c6de7', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '110', '2019-04-09', 3, 100, '2019-04-02', 1, NULL, NULL, NULL, NULL, NULL, '很票i昂');
INSERT INTO `pe_user` VALUES ('40a58e0c-e6ee-47e9-bdb6-0b90a8b41a68', '100101', 'laoda@export.com', '老大', '员工', '943035c4ef1691542dce6db6b3f68a27', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '13800138005', '1987-11-21', 4, 5000, '', NULL, NULL, NULL, '2018-01-02 16:03:48', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('424b2d01-d812-4f30-be40-dcda14110118', '4028827c4fb6202a014fb6209c730000', 'J0724@export.com', 'J0724', '助理', '655fa85f01e03692a11da5ff8575d447', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138006', '1986-09-09', 4, 3500, '', NULL, NULL, NULL, '2015-10-21 10:47:24', NULL, '2015-10-21 10:47:24', '');
INSERT INTO `pe_user` VALUES ('461eadec-af07-456e-8016-3b224440ad49', '100101', 'xlw@qq.com', '小老王', '11', '67ffbcd386afcf7228d4f2aea607eb49', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '0', '11', '2019-04-08', 3, 111, '2019-04-22', 1, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pe_user` VALUES ('4c0b58ef-3d5e-48b6-bc7a-def324a60975', '100', 'test001@qq.com', 'test001', '员工', '123456', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '12345', '2015-09-08', 2, 2000, '2010-05-06', 1, NULL, NULL, NULL, NULL, NULL, '貌美如花');
INSERT INTO `pe_user` VALUES ('5f6ba59b-f185-4c8a-9caa-99cba5963cdb', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'cyboos@export.com', 'cyboos', '副总经理', '2e124d1f66b49df7b76ffab38c30b380', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138007', '1989-01-06', 4, 4000, '', NULL, NULL, NULL, '2018-02-06 18:38:32', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'OOP@export.com', 'OOP', '员工', '029b2816925dd87a0b8cc8904613d2d4', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138008', '1989-01-06', 4, 12000, '', NULL, NULL, NULL, '2016-11-03 10:26:33', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'AOP@export.com', 'AOP', '员工', '47f9644ed1a661c40a3eaeaba8fa83de', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138009', '1989-01-06', 4, 10000, '', NULL, NULL, NULL, '2016-11-03 10:27:16', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('677f58a8-d8c8-4ff5-b9b9-d3df141f7329', '97f88a8c-90fc-4d52-aed7-2046f62fb498', 'mxl@export.com', 'mxl', '总经理', 'b69165df0f85d41156983b7e43b2b45b', 1, '1', '传智播客教育股份有限公司', '总经办', NULL, '1', '13800138010', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2016-12-06 10:37:57', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('6bbf3016-54ab-4ab2-b0d3-2d6622ac17eb', '100101', 'bj001@export.com', 'bj001', '', 'a2675d56cf78781f4f836b67172d6345', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '13800138011', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-01-03 16:16:10', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('702b79dc-475d-4489-933b-6ac5babe52bb', '100', '2921232227@qq.com', 'aa', '1', '58132617ec2354f4b2aa9d2075ce464e', 0, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '1', '2019-04-16', 1, 111, '2019-04-29', 1, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pe_user` VALUES ('7188e1c7-40e9-45a1-a503-58daa132af4b', '100101', 'xxw@qq.com', '小小王', '员工', '26270733ad1af5f1bc1872a46f6f6aa2', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '0', '110', '2019-04-29', 4, 100, '2019-04-01', 1, NULL, NULL, NULL, NULL, NULL, '11');
INSERT INTO `pe_user` VALUES ('71a5a695-0ba5-4f0d-a0b5-0a304efde944', '4028827c4fb6202a014fb6209c730000', 'J0723@export.com', 'J0723', '员工', '396cae50b3da868baf37f71ee95c921c', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138012', '1989-01-06', 4, 15000, '', NULL, NULL, NULL, '2015-10-21 10:46:29', NULL, '2015-10-21 10:46:29', '');
INSERT INTO `pe_user` VALUES ('735730bf-3ac0-4690-882d-100178d58ff9', '100', 'zbz@export.com', 'zbz', '秘书', '5f4849b40ccc3d8e39c61cd7b589a0cb', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '13800138013', '1989-01-06', 4, 3000, '', NULL, NULL, NULL, '2017-03-11 11:51:18', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('7a02a732-f5b5-4a9e-8e40-2e04d0fc66e5', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'cy001@export.com', 'cy001', '', '353ba070f5bf66c9f4dae3799c889f16', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '0', '13800138014', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-02-06 18:36:43', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('7fca6606-8fee-4344-9f12-38e044a1c3ce', '100', '2', '1', '员工', '123', 0, NULL, NULL, '商贸集团', NULL, '0', '13800138001', '2015-09-08', 1, 32, '2010-05-06', 1, NULL, NULL, NULL, NULL, NULL, '貌美如花');
INSERT INTO `pe_user` VALUES ('84b4a1c0-fb52-4fd5-b410-5db1c933d146', '100101101', 'sy001@export.com', 'sy001', '员工', 'd943722276ef1cd9a01ae156e5590a2f', 1, '1', '传智播客教育股份有限公司', '顺义事业部', NULL, '0', '13800138015', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-01-03 16:17:39', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('87307e46-8c11-4599-afad-67762578c930', '100101', '2921232227@qq.com', '1', '1', '7322e594499dec1c78a9304cb1e52b12', 0, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '0', '1', '2019-04-22', 1, 1, '2019-04-15', 1, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pe_user` VALUES ('8e9fb818-bfed-49b5-8beb-ce168b0fd665', '100', 'lemon@itcast.com', '1', '111', '746ef4462279fa4416b9172c39b0f112', 0, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '111', '2019-04-15', 1, 1, '2019-04-01', 111, NULL, NULL, NULL, NULL, NULL, '122');
INSERT INTO `pe_user` VALUES ('8fe436ac-87e9-4d35-a3a4-0eb33cae6c86', '3d00290a-1af0-4c28-853e-29fbf96a2722', 'liufx@export.com', 'liufx', '员工', 'd9b4219aafb664e1a47053b1d9c053ca', 1, '1', '传智播客教育股份有限公司', '市场部', NULL, '0', '13800138016', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2016-10-31 11:36:24', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('9fe270f8-f682-4126-92aa-604d945c95f1', '4028827c4fb6202a014fb6209c730000', 'zhangsan@export.com', 'zhangsan', '', 'b309e4296ed2f6003e8fc8f5d6b390ef', 1, '', 'SAAS企业', '', NULL, '0', '13800138017', '1989-01-06', 0, 5000, '', 0, NULL, NULL, '2015-09-24 00:41:00', NULL, '2015-09-24 00:13:40', '');
INSERT INTO `pe_user` VALUES ('a58e8d38-b87f-4afa-99d9-6c9ae3c37bd2', '100', '2921232227@qq.com', '1', '1', '7322e594499dec1c78a9304cb1e52b12', 0, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '1', '2019-04-22', 1, 1, '2019-04-23', 1, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pe_user` VALUES ('a82e8be5-fc5c-49ab-b0ef-3d7a810a40fd', '100', '2921232227@qq.com', '老王1234567', '11', '58132617ec2354f4b2aa9d2075ce464e', 0, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '1', '2019-04-15', 1, 111, '2019-04-01', 1, NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pe_user` VALUES ('a935f2a1-3dfe-4842-9881-d087ba6aceca', '', '', '', '', '', NULL, '1', NULL, '', NULL, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `pe_user` VALUES ('b11c3da4-4760-4f4f-9913-78f7749ffcf9', '4028827c4fb6202a014fb6209c730000', 'J0725@export.com', 'J0725', '员工', 'ee029a30db22bfef15ec6404abf24df1', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138018', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2015-10-21 10:48:11', NULL, '2015-10-21 10:48:11', '');
INSERT INTO `pe_user` VALUES ('b891b14b-1316-4a79-8b88-695be1e3f42f', '4028827c4fb6202a014fb6209c730000', 'aj@export.com', 'aj', '', '204bf04d928f4fc8743f326f04046ccf', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138019', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2015-09-24 11:37:10', NULL, '2015-09-24 11:37:10', '');
INSERT INTO `pe_user` VALUES ('b9dbe6ae-316b-4459-9090-0f54128368fa', '100', 'heima87@qq.com', 'heima87', '员工', '123456', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '12345', '2019-04-16', 3, 2000, '2010-05-06', 1, NULL, NULL, NULL, NULL, NULL, '貌美如花');
INSERT INTO `pe_user` VALUES ('bf6d1c79-84e6-4851-bb8c-cf7ccefea99a', '100101', '2921232227@qq.com', 'aaa', '', '123456', NULL, '1', '传智播客教育股份有限公司', '北京事业部', NULL, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `pe_user` VALUES ('c3386cd9-c8f1-4671-b25f-16621077d9e1', '4028827c4fb6202a014fb6209c730000', 'xm@qq.com', '小美', '员工', 'f543a17d0162b8678d41667288d10c4f', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '0', '12345678', '1989-01-06', 4, 2000, '2019-02-26', 1, NULL, NULL, NULL, NULL, NULL, '貌美如花');
INSERT INTO `pe_user` VALUES ('c9a4973e-8daa-4380-a9ec-599410d6fd6b', '100101101', 'xiaosan@export.com', 'xiaosan', '员工', 'c16b2ba0003f0b7867489a646c880f34', 1, '1', '传智播客教育股份有限公司', '顺义事业部', NULL, '1', '13800138020', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-01-02 16:03:21', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('ca592c7c-860a-464c-8f56-ea51b42a046f', '3d00290a-1af0-4c28-853e-29fbf96a2722', 'baitu@export.com', 'baitu', '', '3dde9a0d159ede0f0ac5aa1f9156f7e6', 1, '1', '传智播客教育股份有限公司', '市场部', NULL, '1', '13800138021', '1977-11-09', 4, 5000, '', NULL, NULL, NULL, '2018-02-03 12:28:35', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('cf0015d3-bcdd-433b-889d-808b53b72640', '100', 'mz@export.com', '马总', '总经理', 'c5afde1623b313b8dea3aa3033f319bc', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '13800138022', '1984-08-13', 4, 5000, '', NULL, NULL, NULL, '2016-12-06 11:35:25', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028827c4fb6202a014fb6209c730000', 'cgx@export.com', 'cgx', '', 'd244cf08243d25b2855665d8f833916f', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138023', '1979-11-16', 4, 5000, '', NULL, NULL, NULL, '2015-09-24 11:43:02', NULL, '2015-09-24 11:39:47', '');
INSERT INTO `pe_user` VALUES ('e2fc5d41-2733-4c8a-88a6-6dbad214d47e', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'SOA@export.com', 'SOA', '员工', '26ca5931261f9335a27a46c7fc9fb1e5', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138024', '1990-11-06', 4, 5000, '', NULL, NULL, NULL, '2016-11-03 10:28:01', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('e9007d05-c3ce-480f-8588-e53acdf61f2c', '100', 'ww@export.com', '王五', '员工', '123456', NULL, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '0', '13800138001', '1989-01-06', NULL, 2000, '2010-05-06', 1, NULL, NULL, NULL, NULL, NULL, '貌美如花');
INSERT INTO `pe_user` VALUES ('ef1f631d-76c8-4837-9ad9-f5f6209e4463', '100', 'ylj@export.com', 'ylj', '员工', 'd69e7d950529fbf6f846da41a9d3dd88', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '13800138025', '1988-07-26', 4, 5000, '', NULL, NULL, NULL, '2016-11-18 11:12:53', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('faa59d6e-2e04-4972-bd4f-fd946ba38b99', '100101', 'bj002@export.com', 'bj002', '', '0b02be90bd07b3c0551b02b4f5ad2c30', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '13800138026', '1984-02-16', 4, 5000, '', NULL, NULL, NULL, '2018-01-03 16:16:55', NULL, '1970-01-01 08:00:00', '');

-- ----------------------------
-- Table structure for ss_company
-- ----------------------------
DROP TABLE IF EXISTS `ss_company`;
CREATE TABLE `ss_company`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `expiration_date` datetime(0) NULL DEFAULT NULL COMMENT '到期时间',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `license_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业执照-图片',
  `representative` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司电话',
  `company_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司规模',
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属行业',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `state` int(2) NULL DEFAULT 1 COMMENT '状态',
  `balance` double NULL DEFAULT NULL COMMENT '当前余额',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ss_company
-- ----------------------------
INSERT INTO `ss_company` VALUES ('1', '传智播客教育股份有限公司', NULL, '江苏沐阳', 'xxx001', '张三', '110', '100人以上', '教育', '教育机构', 1, 5, '北京', 0);
INSERT INTO `ss_company` VALUES ('2', 'it黑马', NULL, '北京顺义', 'xxx002', '李四', '123', '100人以上', '教育', '教育机构', 1, 100, '北京', 0);
INSERT INTO `ss_company` VALUES ('3', '百度', NULL, '北京市海淀区', 'bzd001', '李某', '110', '5000-10000人', '计算机', '', 1, 100, '北京', 0);
INSERT INTO `ss_company` VALUES ('4', '阿里巴巴', NULL, '中国杭州市滨江区', 'bzd002', '马某', '110', '5000-10000人', '电子商务', '', 1, 100, '杭州', 0);
INSERT INTO `ss_company` VALUES ('5', '腾讯', NULL, '深圳市南山区', 'bzd003', '马某', '110', '5000-10000人', '游戏', '', 1, 100, '深圳', 0);
INSERT INTO `ss_company` VALUES ('6', '江南皮革厂', NULL, '3', '1', '4', '5', '6', '7', '9', 1, 2, '1', 0);
INSERT INTO `ss_company` VALUES ('612671ed-69ea-4a14-8d73-eb207eba0213', '1', NULL, '1', NULL, '1', '1', '1', '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ss_company` VALUES ('79207122-b85b-4c8c-8ece-a92e98be6b21', '黑马', NULL, '顺义', NULL, '不知道', '110', '2000人以上', '教育', NULL, 0, NULL, NULL, 0);
INSERT INTO `ss_company` VALUES ('a3539114-3ee0-41d2-a390-8e1c85f375a1', '测试申请企业ABC', NULL, '中国北京', NULL, '张三', '110', '100人以上', '计算机', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ss_company` VALUES ('aaf1519d-9945-4e22-89d0-6e36732d6fa1', '黑马', NULL, '顺义', NULL, '不知道', '110', '2000人以上', '教育', NULL, 0, NULL, NULL, 0);
INSERT INTO `ss_company` VALUES ('ba85d845-3c66-4821-a66c-739481e8ebc7', '11', '2020-09-29 00:00:00', '11', '11', '11', '11', '11', '11', '11', 0, 11, '11', 0);
INSERT INTO `ss_company` VALUES ('bd4a2eb4-7160-4b71-8978-f68f18907bff', '测试申请企业ABC', NULL, '中国北京', NULL, '张三', '110', '100人以上', '计算机', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ss_company` VALUES ('eb7ed4be-3a8d-400f-93c2-d7183903e20c', '2222222222222222222222222222222222222222222', NULL, '22222222222222222222', NULL, '2222222222222222', '222222222222222', '222222222222222', '222222222222222', NULL, 1, NULL, NULL, 0);

-- ----------------------------
-- Table structure for ss_module
-- ----------------------------
DROP TABLE IF EXISTS `ss_module`;
CREATE TABLE `ss_module`  (
  `module_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `layer_num` decimal(11, 0) NULL DEFAULT NULL,
  `is_leaf` decimal(11, 0) NULL DEFAULT NULL,
  `ico` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpermission` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `curl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctype` decimal(11, 0) NULL DEFAULT NULL COMMENT '0 主菜单/1 左侧菜单/2按钮/3 链接/4 状态',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '1启用0停用',
  `belong` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮时，可以标识其归属，\\n            查询某页面按钮时就用此属性查询',
  `cwhich` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quote_num` decimal(11, 0) NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ss_module
-- ----------------------------
INSERT INTO `ss_module` VALUES ('182104f0-7690-4a84-a90c-16d24e491a3a', '5', '系统管理', '日志管理', NULL, NULL, NULL, '日志管理', 'system/log/list.do', 1, 1, '1', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('2', NULL, NULL, '货运管理', 1, 0, NULL, '货运管理', 'cargo', 0, 1, '1', NULL, NULL, 'cargo', 2);
INSERT INTO `ss_module` VALUES ('201', '2', '货运管理', '购销合同', NULL, NULL, NULL, '购销合同', 'cargo/contract/list.do', 1, 1, '1', NULL, NULL, 'cargo', 9);
INSERT INTO `ss_module` VALUES ('202', '2', '货运管理', '出货表', NULL, NULL, NULL, '出货表', 'cargo/contract/print.do', 1, 1, '1', NULL, NULL, 'cargo', 10);
INSERT INTO `ss_module` VALUES ('203', '2', '货运管理', '合同管理', 2, 0, NULL, '合同管理', 'cargo/export/contractList.do', 1, 1, '1', NULL, NULL, 'cargo', 11);
INSERT INTO `ss_module` VALUES ('204', '2', '货运管理', '出口报运', NULL, NULL, NULL, '出口报运', 'cargo/export/list.do', 1, 1, '1', NULL, NULL, 'cargo', 12);
INSERT INTO `ss_module` VALUES ('205', '2', '货运管理', '装箱管理', NULL, NULL, NULL, '装箱管理', 'cargo/packing/list.do', 1, 1, '1', NULL, NULL, 'cargo', 22);
INSERT INTO `ss_module` VALUES ('206', '2', '货运管理', '委托管理', NULL, NULL, NULL, '委托管理', 'cargo/shipping/list.do', 1, 1, '1', NULL, NULL, 'cargo', 23);
INSERT INTO `ss_module` VALUES ('207', '2', '货运管理', '发票管理', NULL, NULL, NULL, '发票管理', 'cargo/invoice/list.do', 1, 1, '1', NULL, NULL, 'cargo', 24);
INSERT INTO `ss_module` VALUES ('208', '2', '货运管理', '财务管理', NULL, NULL, NULL, '财务管理', 'cargo/finance/list.do', 1, 1, '1', NULL, NULL, 'cargo', 25);
INSERT INTO `ss_module` VALUES ('3', NULL, NULL, '统计分析', 1, 0, NULL, '统计分析', 'stat', 0, 1, '1', NULL, NULL, 'stat', 3);
INSERT INTO `ss_module` VALUES ('301', '3', '统计分析', '生产厂家销售情况', NULL, NULL, NULL, '生产厂家销售情况', 'stat/toCharts.do?chartsType=factory', 1, 1, '1', NULL, NULL, 'stat', 13);
INSERT INTO `ss_module` VALUES ('302', '3', '统计分析', '产品销售排行', NULL, NULL, NULL, '产品销售排行', 'stat/toCharts.do?chartsType=sell', 1, 1, '1', NULL, NULL, 'stat', 14);
INSERT INTO `ss_module` VALUES ('303', '3', '统计分析', '系统访问压力图', NULL, NULL, NULL, '系统访问压力图', 'stat/toCharts.do?chartsType=online', 1, 1, '1', NULL, NULL, 'stat', 15);
INSERT INTO `ss_module` VALUES ('4', NULL, NULL, '基础信息', 1, 0, NULL, '基础信息', 'baseinfo', 0, 1, '1', NULL, NULL, 'baseinfo', 4);
INSERT INTO `ss_module` VALUES ('401', '4', '基础信息', '系统代码', 2, 0, NULL, '系统代码', NULL, 1, 1, '1', NULL, NULL, 'baseinfo', 16);
INSERT INTO `ss_module` VALUES ('402', '4', '基础信息', '厂家信息', 2, 0, NULL, '厂家信息', NULL, 1, 1, '1', NULL, NULL, 'baseinfo', 17);
INSERT INTO `ss_module` VALUES ('5', NULL, NULL, '系统管理', 1, 0, NULL, '系统管理', 'sysadmin', 0, 1, '1', NULL, NULL, 'sysadmin', 5);
INSERT INTO `ss_module` VALUES ('501', '5', '系统管理', '部门管理', 2, 0, NULL, '部门管理', 'system/dept/list.do', 1, 1, '1', NULL, NULL, 'sysadmin', 18);
INSERT INTO `ss_module` VALUES ('50101', '501', '部门管理', '查看部门', 3, 1, NULL, '查看部门', 'sysadmin/deptAction_toview', 2, 1, '1', NULL, NULL, 'sysadmin', 1801);
INSERT INTO `ss_module` VALUES ('50102', '501', '部门管理', '新增部门', 3, 1, NULL, '新增部门', 'sysadmin/deptAction_tocreate', 2, 1, '1', NULL, NULL, 'sysadmin', 1802);
INSERT INTO `ss_module` VALUES ('50103', '501', '部门管理', '修改部门', 3, 1, NULL, '修改部门', 'sysadmin/deptAction_toupdate', 2, 1, '1', NULL, NULL, 'sysadmin', 1803);
INSERT INTO `ss_module` VALUES ('50104', '501', '部门管理', '删除部门', 3, 1, NULL, '删除部门', 'sysadmin/deptAction_delete', 2, 1, '1', NULL, NULL, 'sysadmin', 1804);
INSERT INTO `ss_module` VALUES ('502', '5', '系统管理', '用户管理', 2, 0, NULL, '用户管理', 'system/user/list.do', 1, 1, '1', NULL, NULL, 'sysadmin', 19);
INSERT INTO `ss_module` VALUES ('503', '5', '系统管理', '角色管理', 2, 0, NULL, '角色管理', 'system/role/list.do', 1, 1, '1', NULL, NULL, 'sysadmin', 20);
INSERT INTO `ss_module` VALUES ('8842b580-49c0-4871-b234-5cf9c721a507', 'ad3be6e7-551f-45b6-b816-b2b751e204ed', 'SaaS管理', '模块管理', NULL, NULL, NULL, '模块管理', 'system/module/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('9c5eb9b0-54a4-48bb-aab4-0d1d46cdfbbd', 'ad3be6e7-551f-45b6-b816-b2b751e204ed', 'SaaS管理', '企业管理', NULL, NULL, NULL, '企业管理', 'company/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('ad3be6e7-551f-45b6-b816-b2b751e204ed', '', '', 'SaaS管理', NULL, NULL, NULL, 'SaaS管理', '', 0, 1, '0', NULL, NULL, '', NULL);

-- ----------------------------
-- Table structure for st_online_info
-- ----------------------------
DROP TABLE IF EXISTS `st_online_info`;
CREATE TABLE `st_online_info`  (
  `A1` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of st_online_info
-- ----------------------------
INSERT INTO `st_online_info` VALUES ('00');
INSERT INTO `st_online_info` VALUES ('01');
INSERT INTO `st_online_info` VALUES ('02');
INSERT INTO `st_online_info` VALUES ('03');
INSERT INTO `st_online_info` VALUES ('04');
INSERT INTO `st_online_info` VALUES ('05');
INSERT INTO `st_online_info` VALUES ('06');
INSERT INTO `st_online_info` VALUES ('07');
INSERT INTO `st_online_info` VALUES ('08');
INSERT INTO `st_online_info` VALUES ('09');
INSERT INTO `st_online_info` VALUES ('10');
INSERT INTO `st_online_info` VALUES ('11');
INSERT INTO `st_online_info` VALUES ('12');
INSERT INTO `st_online_info` VALUES ('13');
INSERT INTO `st_online_info` VALUES ('14');
INSERT INTO `st_online_info` VALUES ('15');
INSERT INTO `st_online_info` VALUES ('16');
INSERT INTO `st_online_info` VALUES ('17');
INSERT INTO `st_online_info` VALUES ('18');
INSERT INTO `st_online_info` VALUES ('19');
INSERT INTO `st_online_info` VALUES ('20');
INSERT INTO `st_online_info` VALUES ('21');
INSERT INTO `st_online_info` VALUES ('22');
INSERT INTO `st_online_info` VALUES ('23');

-- ----------------------------
-- Table structure for st_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `st_sys_log`;
CREATE TABLE `st_sys_log`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `method` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of st_sys_log
-- ----------------------------
INSERT INTO `st_sys_log` VALUES ('04222380-3312-4eb4-a617-ff430c9d1c1e', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:00:49', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('042eae60-432f-4feb-9b76-f4b934ef951e', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:24', 'toCharts', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0532ebd0-5485-4c87-af00-aab195b7e153', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:04:18', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('12ed89b4-51c3-4a96-aa53-215685053762', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:02:07', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('167d84e0-d291-41f9-8661-d94a4416f1e9', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:04', 'changeRole', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2424d541-83a9-46b4-99cb-93de0cf71651', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:02:33', 'contractList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('263ac344-8c84-4d38-9573-a6e6be65b880', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-01-30 16:32:38', 'list', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('27b2a611-eb0b-4f02-a1f2-9b50211ca47a', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:10', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('298fd15e-c1b8-4738-b7db-bbcba07f0b31', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:09', 'print', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2bbe4bff-aaf3-4ec1-90ce-d01bcf4cc883', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:00:59', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('41fb5cbe-63de-41cc-b079-ebfefe964cc5', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:03:54', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('43387c49-9381-4ac3-9c59-76c591391cd2', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:13', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4b4fb249-f8f2-45b5-a92e-56dbf808f94a', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:31', 'print', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4bcf1c52-3d6c-42ca-83ae-75f2745a65b3', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-01-30 16:33:12', 'list', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('4f29f8cf-5348-44f4-a2fc-e36054b7728a', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:02:57', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('51a4ce49-eb07-4861-bf5c-1fcd90065e8b', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:00:42', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('532c7434-8e19-4d08-acd1-39b332513a4e', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:50:55', 'print', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('590407ed-90de-4b0c-b549-8cf6fdcd35b7', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('59862ef9-3df4-436a-90e1-3034e674556a', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:04', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('59b67ea9-bbef-45cd-8ef3-c493e0fe89f8', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:09', 'contractList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5ab4a13b-7a8d-4764-8bac-e7fdb7e0bf97', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:17', 'findFactoryData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6b90c387-2d9b-4ce0-bbbe-93b94c1ed699', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 09:59:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f62525a-775a-44e1-ab62-412dc07dc9b9', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('706023ed-3640-4bbe-b3e4-f6bf876f68bf', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:08', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7276ae4a-7e46-4190-bedb-ad71f355dce9', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:03:44', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('73df294f-720d-437c-85d9-c1189b667087', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:50:58', 'contractList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7972bf8b-6d43-48cd-a13d-635e4f3762d2', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:02:34', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7aa5d1a6-6652-4c8a-963a-1e686db96666', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 09:59:41', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7e60376d-b8cd-42ce-89b6-05fbf09a3978', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:20', 'roleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('80decc3f-596d-496b-a9a8-4a5667b46a95', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:01:06', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('85be5fb5-2a5d-4763-abfa-fc57565de292', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:07', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('881231d3-f043-4b7d-b091-d2d0e22ca085', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:00:37', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('89a98ea6-aab5-4d80-908b-8017ddd69899', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:29', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8aeea846-c54c-4ad1-bc2f-2939a3029320', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-01-30 16:33:07', 'toAdd', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('950a87ef-702f-4794-b51f-978f4ac6ab69', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 09:59:44', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('956873b4-8972-4f2a-8b9e-41215f907bcf', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:20', 'toCharts', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('99bbd905-a3e6-4415-8cbd-d01480cb550b', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:10', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('99d19574-1ad4-4e2a-a793-a24128f765ba', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:34', 'contractList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9e44e37c-97d0-4ce2-b84a-0907926b703d', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:22', 'findSellData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9eee8b36-6283-46c4-85ba-b407f273cf9c', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:03:34', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9f10afbb-26c1-4ebd-acf2-1dab9055cdbd', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:02:07', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9fb27744-7c9b-4985-9b99-7fbf5b141b03', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 09:59:57', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a0215319-037a-4c39-9809-240ce60e5ed8', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:21', 'getZtreeNodes', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a1a644b3-c0d9-4ab3-a700-4ea3df2637a0', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:33:43', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a540250c-2bfe-49b1-9de0-d0b2d3e169f7', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:34:15', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a632f563-bccb-4b82-aa76-935c8a79bff3', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-01-30 16:33:21', 'list', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('b14179c8-6690-4439-a8a0-e090f781ac02', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:01:50', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b94f7176-a005-4167-b26c-29b017595d2d', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:25', 'findOnlineData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c01447ce-6901-4563-9ebb-6e63130f97c0', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c482be21-949c-4447-8a9b-309df9f788a9', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:00:25', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c7889ae9-2f36-4e23-9b73-d11e390f3ee8', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-01-30 16:33:16', 'list', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('c936dc24-c281-4e25-85e1-33801f6003b5', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-01-30 16:32:45', 'findAll', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('dbb0a081-b0f3-4554-87e3-4974f39daa69', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 14:06:16', 'toCharts', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('de26af9d-3cb2-4960-b5aa-888026e77f8f', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:07', 'print', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e593519d-09d6-4f5e-a6de-04dae1d743c2', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:03:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ee8ed50d-1ac0-4d27-8758-2a2f52f51036', '老王', '0:0:0:0:0:0:0:1', '2021-01-30 16:33:50', 'roleList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f4a3201d-9a1e-4a07-95fb-10ffc781399e', '老王', '0:0:0:0:0:0:0:1', '2021-02-02 09:51:07', 'contractList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f6c9feb8-5c2c-4c71-9e24-df88cf1118a0', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:00:25', 'exportE', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fd0d9bb3-f794-4813-aa33-a6b5672e86c9', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:01:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fff69145-2775-41dd-92c7-7dead62671b9', '老王', '0:0:0:0:0:0:0:1', '2021-02-03 10:03:44', 'exportE', '', '1', '传智播客教育股份有限公司');

SET FOREIGN_KEY_CHECKS = 1;
