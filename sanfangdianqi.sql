/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : sanfangdianqi

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 16/11/2023 15:18:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_dep
-- ----------------------------
DROP TABLE IF EXISTS `admin_dep`;
CREATE TABLE `admin_dep`  (
  `dep_id` int NOT NULL COMMENT '自编号，自增',
  `dep_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称，非空',
  `dep_leader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门负责人，非空',
  `dep_creatTime` datetime NULL DEFAULT NULL COMMENT '部门创建时间，非空',
  PRIMARY KEY (`dep_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin_dep
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登陆名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '11', '123456');
INSERT INTO `sys_user` VALUES (2, 'root', '前途无量', '123456');
INSERT INTO `sys_user` VALUES (4, '9999', 'adsa', '1235');
INSERT INTO `sys_user` VALUES (5, '9999', '77', '1235');
INSERT INTO `sys_user` VALUES (6, '2131', '21412', '1241');
INSERT INTO `sys_user` VALUES (7, '12414', '1221', '21221');

-- ----------------------------
-- Table structure for tbl_depauser
-- ----------------------------
DROP TABLE IF EXISTS `tbl_depauser`;
CREATE TABLE `tbl_depauser`  (
  `id` int NOT NULL COMMENT '序号',
  `user_account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名称',
  `depa_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_depauser
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_equipment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equipment`;
CREATE TABLE `tbl_equipment`  (
  `equip_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '设备状态',
  `id` int NOT NULL AUTO_INCREMENT COMMENT '固定资产编号',
  `equip_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仪器设备种类',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门',
  `price` int NULL DEFAULT NULL COMMENT '价格',
  `specific1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `manu_fact` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生产厂家',
  `accept_date` date NULL DEFAULT NULL COMMENT '验收日期',
  `prod_date` date NULL DEFAULT NULL COMMENT '生产日期',
  `serial_num` int UNSIGNED NULL DEFAULT NULL COMMENT '出厂编号',
  `purch_cont` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '购买合同',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '国别',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位',
  `num` int NOT NULL COMMENT '数量',
  `equip_file_num` int NULL DEFAULT NULL COMMENT '设备档案号',
  `file_loca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '档案位置',
  `calib_date` date NULL DEFAULT NULL COMMENT '校准日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_equipment
-- ----------------------------
INSERT INTO `tbl_equipment` VALUES ('正常运行', 4, '生产设备', '切割机', '生产组', 1000, NULL, '上海齿轮厂', '2023-10-12', '2023-07-19', 757575, '购买合同.pdf', '备注', '中国', NULL, 5, 787878, '第九排第四层', '2023-10-26');
INSERT INTO `tbl_equipment` VALUES ('123', 42, '4234', '23423', '342', 424, '21', '4', '2023-05-23', '2023-05-23', 32, '3', '3', '43', '4', 423, 423, '342', '2023-05-23');

-- ----------------------------
-- Table structure for tbl_equipmentledger
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equipmentledger`;
CREATE TABLE `tbl_equipmentledger`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号，自增',
  `self_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '自编号',
  `equip_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仪器设备名称',
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '型号',
  `fac_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出厂号',
  `cer_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '证书编号',
  `validity` date NOT NULL COMMENT '有效期',
  `cycle` double NOT NULL COMMENT '周期（年）',
  `ver_org` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '检定/校准机构',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `measure_range` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主要测量范围',
  `accuracy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '准确度等级或最大允许误差或不确定度',
  `use_place` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '使用地点',
  `manu_fact` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '生产厂家',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `enabled` tinyint(1) NULL DEFAULT NULL COMMENT '显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_equipmentledger
-- ----------------------------
INSERT INTO `tbl_equipmentledger` VALUES (1, 'SFJ0001', '读数显微镜', 'JC4-10', '040542', '第21006551202号', '2022-09-23', 1, '成都市计量检定测试院', '', '0～8mm', '0.005mm', '计量工程中心', '上海永亨光学仪器制造有限公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (2, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '第21006551221号', '2022-09-23', 1, '成都市计量检定测试院', '', '0～15N', '±0.5%±1字', '计量工程中心', '福建省泉州市计量实验工厂', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (3, '1', '2', '3', '4', '5', '2023-10-02', 6, '7', '8', '9', '10', '11', '12', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (4, 'SFJ0001', '读数显微镜', 'JC4-10', '040542', '第21006551202号', '2022-09-23', 1, '成都市计量检定测试院', '', '0～8mm', '0.005mm', '计量工程中心', '上海永亨光学仪器制造有限公司', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (5, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '第21006551221号', '2022-09-23', 1, '成都市计量检定测试院', '', '0～15N', '±0.5%±1字', '计量工程中心', '福建省泉州市计量实验工厂', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (6, 'SFJ0003', '双臂电桥校验标准器', 'ZY4', '007', '第21006551223号', '2022-09-29', 1, '成都市计量检定测试院', '', '0.0001Ω～1000Ω', '0.01%', '计量工程中心', '上海精密科学仪器有限公司', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (7, 'SFJ0004', '精密数字压力表', 'YK-100B  (-0.1~2.5)MPa', '2607', '第22008076793号', '2023-03-24', 1, '成都市计量检定测试院', '', '(-0.1～2.5)MPa', '0.05级', '计量工程中心', '西安云仪仪器仪表有限公司', 'fourth', 1);
INSERT INTO `tbl_equipmentledger` VALUES (8, 'SFJ0005', '精密数字压力表(数字压力计)', 'SPMK700  (-0.1～1)MPa', '700046190603', '第22007718894G1号', '2023-01-26', 1, '成都市计量检定测试院', '', ' (-0.1～1)Mpa', '0.05级', '计量工程中心', '北京斯贝克科技有限责任公司', 'fourth', 1);
INSERT INTO `tbl_equipmentledger` VALUES (22, '88', '88', '888', '88', '88', '2023-11-06', 88, '88', NULL, '88', '8123', '88', '88', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (23, '22', '222', '22', '22', '22', '2023-11-21', 22, '22', '22', '22', '22', '22', '22', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (24, 'SFJ0001', '读数显微镜', 'JC4-10', '040542', '第21006551202号', '2022-09-23', 1, '成都市计量检定测试院', '', '0～8mm', '0.005mm', '计量工程中心', '上海永亨光学仪器制造有限公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (25, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '第21006551221号', '2022-09-23', 1, '成都市计量检定测试院', '', '0～15N', '±0.5%±1字', '计量工程中心', '福建省泉州市计量实验工厂', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (26, 'SFJ0003', '双臂电桥校验标准器', 'ZY4', '007', '第21006551223号', '2022-09-29', 1, '成都市计量检定测试院', '', '0.0001Ω～1000Ω', '0.01%', '计量工程中心', '上海精密科学仪器有限公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (27, 'SFJ0004', '精密数字压力表', 'YK-100B  (-0.1~2.5)MPa', '2607', '第22008076793号', '2023-03-24', 1, '成都市计量检定测试院', '', '(-0.1～2.5)MPa', '0.05级', '计量工程中心', '西安云仪仪器仪表有限公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (29, 'SFJ0006', '精密数字压力表(数字压力计)', 'SPMK700  (0～6)MPa', '700156191098', '第22007718895号', '2023-01-26', 1, '成都市计量检定测试院', '', ' (0～6)Mpa', '0.05级', '计量工程中心', '北京斯贝克科技有限责任公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (30, 'SFJ0007', '精密数字压力表(数字压力计)', 'SPMK700  (0～25)MPa', '700143191025', '第22007718896G1号', '2023-01-26', 1, '成都市计量检定测试院', '', ' (0～25)Mpa', '0.05级', '计量工程中心', '北京斯贝克科技有限责任公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (31, 'SFJ0008', '精密数字压力表(数字压力计)', 'SPMK700  (0～60)MPa', '700206200201', '第22007718893号', '2023-01-26', 1, '成都市计量检定测试院', '', '(0～60)Mpa', '0.05级', '计量工程中心', '北京斯贝克科技有限责任公司', 'first', 1);
INSERT INTO `tbl_equipmentledger` VALUES (32, 'SFE001', '10m法半电波暗室', 'SAC-10m', '/', '1GA21002649-0001', '2026-03-22', 5, '中国赛宝实验室计量检测中心', '', '9kHz-40GHz', 'NSA:±4dB;SVSWR:±6dB;FU:0～6dB', 'EMC中心', '中国兵器工业北方设计研究院', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (33, 'SFE002', '3米法半电波暗室 ', 'SAC-3m', '/', 'EMCS202004004', '2025-04-01', 5, '北京无线电计量测试研究所', '', '9kHz-40GHz', 'NSA:±4dB;SVSWR:±6dB;FU:0～6dB', 'EMC中心', '奥尔托射频科技(上海)有限公司', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (34, 'SFE003', '6dB衰减器', 'WDTS150', '15032501', 'J202202255808A-0025', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', 'DC-2.5GHz', 'DC-2.5GHz,6dB,±0.4dB', 'EMC中心', '上海华湘计算机通讯工程有限公司', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (35, 'SFE004', '被动式电压探棒', 'ESH2-Z3', '100157', 'J202202255808A-0017', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', '100k-30MHz', '100k-30MHz,10%', 'EMC中心', 'R&S', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (36, 'SFE005', 'EMI测量接收机', 'ESCI', '100983', 'J202202255808A-0004', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', '9kHz-3GHz', '1.34dB', 'EMC中心', 'ROHDE & SCHWARZ', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (37, 'SFE006', '测量接收机', 'ESR3', '101716', 'J202202255808A-0005', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', 'EMI TEST RECEIVERFOR CERTIFICATION TO COMMERCIALSTANDARDS, 9 KHZ TO 3.6 GHZ,CISPR 16-1-1 COMPLIANT', '1.34dB', 'EMC中心', 'R&S', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (38, 'SFE007', '测量接收机', 'ESR7', '101371', 'J202202255808A-0006', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', '20Hz-7GHz', '1.34dB', 'EMC中心', 'R＆S', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (39, 'SFE008', '场强探头', 'FL7006', '0332270', 'J202202255808-0010', '2023-04-17', 1, '广州广电计量检测股份有限公司', '', '9k-6GHz', '1.3', 'EMC中心', 'AR', 'second', 1);
INSERT INTO `tbl_equipmentledger` VALUES (40, 'SFE001', '10m法半电波暗室', 'SAC-10m', '/', '1GA21002649-0001', '2026-03-22', 5, '中国赛宝实验室计量检测中心', '', '9kHz-40GHz', 'NSA:±4dB;SVSWR:±6dB;FU:0～6dB', 'EMC中心', '中国兵器工业北方设计研究院', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (41, 'SFE002', '3米法半电波暗室 ', 'SAC-3m', '/', 'EMCS202004004', '2025-04-01', 5, '北京无线电计量测试研究所', '', '9kHz-40GHz', 'NSA:±4dB;SVSWR:±6dB;FU:0～6dB', 'EMC中心', '奥尔托射频科技(上海)有限公司', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (42, 'SFE003', '6dB衰减器', 'WDTS150', '15032501', 'J202202255808A-0025', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', 'DC-2.5GHz', 'DC-2.5GHz,6dB,±0.4dB', 'EMC中心', '上海华湘计算机通讯工程有限公司', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (43, 'SFE004', '被动式电压探棒', 'ESH2-Z3', '100157', 'J202202255808A-0017', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', '100k-30MHz', '100k-30MHz,10%', 'EMC中心', 'R&S', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (44, 'SFE005', 'EMI测量接收机', 'ESCI', '100983', 'J202202255808A-0004', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', '9kHz-3GHz', '1.34dB', 'EMC中心', 'ROHDE & SCHWARZ', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (45, 'SFE006', '测量接收机', 'ESR3', '101716', 'J202202255808A-0005', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', 'EMI TEST RECEIVERFOR CERTIFICATION TO COMMERCIALSTANDARDS, 9 KHZ TO 3.6 GHZ,CISPR 16-1-1 COMPLIANT', '1.34dB', 'EMC中心', 'R&S', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (46, 'SFE007', '测量接收机', 'ESR7', '101371', 'J202202255808A-0006', '2023-03-14', 1, '广州广电计量检测股份有限公司', '', '20Hz-7GHz', '1.34dB', 'EMC中心', 'R＆S', 'third', 1);
INSERT INTO `tbl_equipmentledger` VALUES (47, 'SFE008', '场强探头', 'FL7006', '0332270', 'J202202255808-0010', '2023-04-17', 1, '广州广电计量检测股份有限公司', '', '9k-6GHz', '1.3', 'EMC中心', 'AR', 'third', 1);

-- ----------------------------
-- Table structure for tbl_equiporder
-- ----------------------------
DROP TABLE IF EXISTS `tbl_equiporder`;
CREATE TABLE `tbl_equiporder`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户工号',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `order_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预约场地',
  `start_time` date NULL DEFAULT NULL COMMENT '开始时间',
  `time_period` tinyint(1) NULL DEFAULT NULL COMMENT '预约时间段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_equiporder
-- ----------------------------
INSERT INTO `tbl_equiporder` VALUES (14, '10', '张三', '场地1', '2023-11-16', 1);
INSERT INTO `tbl_equiporder` VALUES (16, '3', '王五', '场地1', '2023-11-16', 1);
INSERT INTO `tbl_equiporder` VALUES (17, '4', '王柳', '场地1', '2023-11-16', 2);
INSERT INTO `tbl_equiporder` VALUES (18, '1', 'admin', '场地1', '2023-11-17', 1);

-- ----------------------------
-- Table structure for tbl_examineplan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_examineplan`;
CREATE TABLE `tbl_examineplan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号，自增',
  `examine_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仪器设备名称',
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '型号',
  `number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编号',
  `examine_time` date NULL DEFAULT NULL COMMENT '核查时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单项',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_examineplan
-- ----------------------------
INSERT INTO `tbl_examineplan` VALUES (2, '辐射抗扰度测试系统', 'SG6000,150W1000,BLMA1060-200,STLP 9128D,FL7006,PM2002', '0327336,0332731,1711332,17,0332270,0328313', '2023-11-02', 'first', NULL);
INSERT INTO `tbl_examineplan` VALUES (6, 'test', '2', '3', '2023-10-12', 'first', NULL);
INSERT INTO `tbl_examineplan` VALUES (8, 'test2', 'ESCI', '100983', '2023-10-20', 'second', NULL);
INSERT INTO `tbl_examineplan` VALUES (9, 'test', '8449B', '3008A02604', '2023-10-02', 'third', NULL);
INSERT INTO `tbl_examineplan` VALUES (10, '1', 'FSV 30', '101374', '2023-11-01', 'third', '2');
INSERT INTO `tbl_examineplan` VALUES (11, '辐射骚扰测试系统', 'ESCI,FSV 30,VULB9163,BBHA 9120D,FPA-6592G,8449B', '100983,101374,1178,920,060020,3008A02604', '2023-10-04', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (12, '辐射抗扰度测试系统', 'SG6000,150W1000,BLMA1060-200,STLP 9128D,FL7006,PM2002', '0327336,0332731,1711332,17,0332270,0328313', '2023-11-02', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (13, 'test', '2', '3', '2023-10-12', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (14, 'test2', 'ESCI', '100983', '2023-10-20', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (15, 'test', '8449B', '3008A02604', '2023-10-02', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (16, '电气安全校准器', '5320A', '511490707', '2022-02-01', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (17, '精密数字压力表', 'YK-100B', '2607', '2022-03-01', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (18, '接地导通电阻测试仪', 'AN20160', '82009003', '2022-04-01', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (19, '示波器校准器', 'NF4608A/NF4609A', '70912', '2022-03-01', NULL, '');
INSERT INTO `tbl_examineplan` VALUES (20, 'qq', 'ESCI', '100983', '2023-11-24', NULL, NULL);
INSERT INTO `tbl_examineplan` VALUES (21, 'aa', 'ESCI', '100983', '2023-11-21', NULL, '231');
INSERT INTO `tbl_examineplan` VALUES (22, 'ss', 'VULB9163', '1178', '2023-11-24', NULL, '1');
INSERT INTO `tbl_examineplan` VALUES (23, 'dd', 'ESCI', '100983', '2023-11-16', NULL, NULL);
INSERT INTO `tbl_examineplan` VALUES (24, 'cc', 'FSV 30', '101374', '2023-11-15', NULL, NULL);
INSERT INTO `tbl_examineplan` VALUES (25, 'ee', 'FSV 30', '101374', '2023-11-22', 'fourth', NULL);
INSERT INTO `tbl_examineplan` VALUES (26, 'ww', 'ESCI', '100983', '2023-11-15', 'third', NULL);
INSERT INTO `tbl_examineplan` VALUES (27, 'test5', 'FSV 30', '101374', '2023-11-22', 'first', NULL);
INSERT INTO `tbl_examineplan` VALUES (28, '电气安全校准器', '5320A', '511490707', '2022-02-01', 'third', '');
INSERT INTO `tbl_examineplan` VALUES (29, '精密数字压力表', 'YK-100B', '2607', '2022-03-01', 'third', '');
INSERT INTO `tbl_examineplan` VALUES (30, '接地导通电阻测试仪', 'AN20160', '82009003', '2022-04-01', 'third', '');
INSERT INTO `tbl_examineplan` VALUES (31, '示波器校准器', 'NF4608A/NF4609A', '70912', '2022-03-01', 'third', '');

-- ----------------------------
-- Table structure for tbl_file
-- ----------------------------
DROP TABLE IF EXISTS `tbl_file`;
CREATE TABLE `tbl_file`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件名称',
  `founder` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件路径',
  `md5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件md5',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_file
-- ----------------------------
INSERT INTO `tbl_file` VALUES (1, '0375847f0fce4fe08842f0c8a6e0f7b1', '计算机与网络安全学院（牛津布鲁克斯学院）研究生学业奖学金评审办法（试行）.docx', NULL, 'http://localhost:9090/file/0375847f0fce4fe08842f0c8a6e0f7b1.docx', '9c12b963c32b024f01328fa4cac0919b', NULL, 1, 'docx');
INSERT INTO `tbl_file` VALUES (2, '0541946573d0421888db79fbe9e02e6d', '草稿.txt', 'admin', 'http://localhost:9090/file/0541946573d0421888db79fbe9e02e6d.txt', '5aa1d3554d202ebecc9fe23d37a82173', '2023-09-21', 1, 'txt');
INSERT INTO `tbl_file` VALUES (3, '0848038ca3cd4f96be58874a00cd662c', '1.jpg', 'admin', 'http://localhost:9090/file/ddc12d1d5dff4cbc83c8ffa871f5b8b6.jpg', 'f06cb66a809c84f73e50e51bba2ed62e', '2023-10-26', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (4, '094e16afb147427bb6957cc348e9483e', '小鸦鹃.png', 'admin', 'http://localhost:9090/file/094e16afb147427bb6957cc348e9483e.png', '94a39ce41549e323a135db764b24dbea', NULL, 1, 'png');
INSERT INTO `tbl_file` VALUES (5, '0ae4d45d69b743ad9a2a546476b71094', '草稿.txt', 'admin', 'http://localhost:9090/file/0541946573d0421888db79fbe9e02e6d.txt', '5aa1d3554d202ebecc9fe23d37a82173', '2023-10-19', 1, 'txt');
INSERT INTO `tbl_file` VALUES (6, '0afe624cefc54a3a9ba7890568da4e0d', 'userscoolpegcappdatalocaltemptmpdvhumw', 'admin', 'http://localhost:9090/file/7840f2c74d0145bb932e311bb2fc1008.', 'd41d8cd98f00b204e9800998ecf8427e', '2023-09-21', 1, '');
INSERT INTO `tbl_file` VALUES (7, '10188bd50c9647c3af639124594011b0', 'c80f113bbf18102fbe78eea7cb17f1e.png', 'admin', 'http://localhost:9090/file/10188bd50c9647c3af639124594011b0.png', 'c3bf2132d144b7cfe3c579dc491ce4a3', '2023-10-25', 0, 'png');
INSERT INTO `tbl_file` VALUES (8, '1231', '微信图片_20230516180517.jpg', NULL, 'C:/Users/CoolPegc/Desktop/project/sanfangdianqi/bin/files微信图片_20230516180517.jpg', '000', NULL, 1, 'jpg');
INSERT INTO `tbl_file` VALUES (9, '1234231', 'hegezheng_1.png', NULL, 'C:/Users/CoolPegc/Desktop/project/sanfangdianqi/bin/fileshegezheng_1.png', '000', NULL, 1, 'png');
INSERT INTO `tbl_file` VALUES (10, '124', 'Scan Image_3.png', NULL, 'C:/Users/CoolPegc/Desktop/project/sanfangdianqi/bin/filesScan Image_3.png', '000', NULL, 1, 'png');
INSERT INTO `tbl_file` VALUES (11, '1241', 'Scan Image_6.png', NULL, 'C:/Users/CoolPegc/Desktop/project/sanfangdianqi/bin/filesScan Image_6.png', '000', NULL, 1, 'png');
INSERT INTO `tbl_file` VALUES (12, '124124', '粉尘.pdf', NULL, 'C:/Users/CoolPegc/Desktop/project/sanfangdianqi/bin/files粉尘.pdf', '000', NULL, 1, 'pdf');
INSERT INTO `tbl_file` VALUES (13, '13e1578e79eb4155ae44657c30f4d088', '175036-shui_zi_yuan-qi_fen-xing_zhi-zi_ran_jing_guan-gao_de-1920x1080.jpg', 'admin', 'http://localhost:9090/file/f66f5612169b41af928bb5bf17ee3654.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-10-21', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (14, '15329b7408b44126bdd6197aaa43a29c', '9990.png', 'admin', 'http://localhost:9090/file/a679852669dd42c4a69b912f6be9cd0d.png', '9119a4c42a0f3e840f4f5d89765ec9ba', '2023-10-25', 0, 'png');
INSERT INTO `tbl_file` VALUES (15, '19669fcd98ec45bebfc2755e7e6dab84', '1.jpg', 'admin', 'http://localhost:9090/file/ddc12d1d5dff4cbc83c8ffa871f5b8b6.jpg', 'f06cb66a809c84f73e50e51bba2ed62e', '2023-10-20', 1, 'jpg');
INSERT INTO `tbl_file` VALUES (16, '1d412780ea48488c8877b4e3ea2d4315', '参考文献总结 郭翼凌 2022.11.12.pdf', NULL, 'http://localhost:9090/file/1d412780ea48488c8877b4e3ea2d4315.pdf', '29ee4fdc5e81d9141db1da6f8f186936', NULL, 1, 'pdf');
INSERT INTO `tbl_file` VALUES (17, '1e1ad06d7c7e4ac69050729d7296d242', '基于深度学习的语义分割综述_杨洁洁.pdf', NULL, 'http://localhost:9090/file/1e1ad06d7c7e4ac69050729d7296d242.pdf', '131130c1f2fe4e504466910037149c26', NULL, 1, 'pdf');
INSERT INTO `tbl_file` VALUES (18, 'c06ae0a23fc74c37a02af680f230c0bb', '5704.jpg', 'admin', 'http://localhost:9090/file/f66f5612169b41af928bb5bf17ee3654.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-10-30', 1, 'jpg');
INSERT INTO `tbl_file` VALUES (19, '04a59ab6f6cf4324a6dbd649a163068e', '8.jpg', 'admin', 'http://localhost:9090/file/04a59ab6f6cf4324a6dbd649a163068e.jpg', '5064bfa03b199eebcacc5774e0ccbfa9', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (20, '496b82aa75264d63844ce5b0463efc51', '8.jpg', 'admin', 'http://localhost:9090/file/04a59ab6f6cf4324a6dbd649a163068e.jpg', '5064bfa03b199eebcacc5774e0ccbfa9', '2023-10-30', 1, 'jpg');
INSERT INTO `tbl_file` VALUES (21, 'd3cbda0656344ff7a5f13e0c75219f57', '10000.jpg', 'admin', 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (22, 'e08a796631374e4287ceed8470f82242', '10000.jpg', 'admin', 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-10-30', 1, 'jpg');
INSERT INTO `tbl_file` VALUES (23, 'b1763602230443bca53a42fba188c198', '174059-hong-che_deng-lu_deng-li_qing-tou_deng-2560x1440.jpg', 'admin', 'http://localhost:9090/file/b1763602230443bca53a42fba188c198.jpg', '44eb435034506759d45b094a876dc466', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (24, 'c3527e2b793042528080fc5d56f76ec9', '174059-hong-che_deng-lu_deng-li_qing-tou_deng-2560x1440.jpg', 'admin', 'http://localhost:9090/file/b1763602230443bca53a42fba188c198.jpg', '44eb435034506759d45b094a876dc466', '2023-10-30', 1, 'jpg');
INSERT INTO `tbl_file` VALUES (25, '1551205754784f08bfbce8035b352d10', 'img1.wallspic.com-qi_fen-sheng_tai_qu-zi_ran_jing_guan-yu_hui-gao_de-2160x4800.jpg', 'admin', 'http://localhost:9090/file/1551205754784f08bfbce8035b352d10.jpg', '8494e75a28e4ba2ba365fb93b019de30', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (26, 'ae2a2c37b6da414fb8020eda8d57ad06', 'img1.wallspic.com-qi_fen-sheng_tai_qu-zi_ran_jing_guan-yu_hui-gao_de-2160x4800.jpg', 'admin', 'http://localhost:9090/file/1551205754784f08bfbce8035b352d10.jpg', '8494e75a28e4ba2ba365fb93b019de30', '2023-10-30', 1, 'jpg');
INSERT INTO `tbl_file` VALUES (27, '02076cfd5d9042508e4020ca4686d40f', '2.jpg', 'admin', 'http://localhost:9090/file/f66f5612169b41af928bb5bf17ee3654.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (28, '89802645c2224492809f1db1e33da062', '8.jpg', 'admin', 'http://localhost:9090/file/04a59ab6f6cf4324a6dbd649a163068e.jpg', '5064bfa03b199eebcacc5774e0ccbfa9', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (29, '0d3b4ba6f9504128842269c34c90b847', '10000.jpg', 'admin', 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (30, '8cbeab2e7c25499c9e2b6d82524105f4', '10000.jpg', 'admin', 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-10-30', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (31, '7039c066202e4b12922fb7ba1b97e40c', '2.jpg', 'admin', 'http://localhost:9090/file/f66f5612169b41af928bb5bf17ee3654.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-10-31', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (32, 'f8c3d77492f945ceb6d233f9708eb9bf', '2.jpg', 'admin', 'http://localhost:9090/file/f66f5612169b41af928bb5bf17ee3654.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-10-31', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (33, '4747d31e259546a3b553f26c8dfd907d', '6272ad5de5a3696c70ec67e84f661e0.png', 'admin', 'http://localhost:9090/file/4747d31e259546a3b553f26c8dfd907d.png', 'b5ba2a0693ed4f61850c7c24e82e8b52', '2023-11-02', 0, 'png');
INSERT INTO `tbl_file` VALUES (34, '74d6b659b71b470088b1136a5d10b65e', '582270bf2cdbc68d49c548bdbfc98ab.png', 'admin', 'http://localhost:9090/file/74d6b659b71b470088b1136a5d10b65e.png', '23d2c819b9e8ac13844e13175126a18d', '2023-11-02', 0, 'png');
INSERT INTO `tbl_file` VALUES (35, '2d86ec9d23bf4d4bbc9fd95043543956', '设备预约.docx', 'admin', 'http://localhost:9090/file/2d86ec9d23bf4d4bbc9fd95043543956.docx', 'b8f5a13cdedd00e32cc127c1b151f589', '2023-11-02', 0, 'docx');
INSERT INTO `tbl_file` VALUES (38, '3b2c3235ccb74cdc859efaac5629f136', '3.png', 'admin', 'http://localhost:9090/file/3b2c3235ccb74cdc859efaac5629f136.png', '5d0ced6881ac6919820789d8087babb2', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (39, 'cb130764e9d94774a1a4e69fb8a2bb45', '9990.png', NULL, 'http://localhost:9090/file/a679852669dd42c4a69b912f6be9cd0d.png', '9119a4c42a0f3e840f4f5d89765ec9ba', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (40, 'e5ed4885b94943e98e6283037dfa382d', '9990.png', NULL, 'http://localhost:9090/file/a679852669dd42c4a69b912f6be9cd0d.png', '9119a4c42a0f3e840f4f5d89765ec9ba', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (41, '5a2b6e0f81d1409d84a9cc6356dc2370', '10002.png', NULL, 'http://localhost:9090/file/5a2b6e0f81d1409d84a9cc6356dc2370.png', 'b12602714c8dfe37d8ba6e39b130906b', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (42, '0e3c5b4f4b0a4b4ea2b81622b662ef74', '1.png', NULL, 'http://localhost:9090/file/0e3c5b4f4b0a4b4ea2b81622b662ef74.png', '7a26b406e215cdcaffb6f0dc28c29849', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (43, 'becb3e75eac44ebbad8f1ec6d2c5bd8a', 'd3cbda0656344ff7a5f13e0c75219f57.jpg', NULL, 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-11-03', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (44, '997f609ae83f4196bc7749406db86ce5', '3.png', NULL, 'http://localhost:9090/file/3b2c3235ccb74cdc859efaac5629f136.png', '5d0ced6881ac6919820789d8087babb2', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (45, '5acd29929b2f464cac1ef8c867e852fc', '9990.png', NULL, 'http://localhost:9090/file/a679852669dd42c4a69b912f6be9cd0d.png', '9119a4c42a0f3e840f4f5d89765ec9ba', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (46, '7309bb778c2746daa6fac57ca522580d', '10002.png', NULL, 'http://localhost:9090/file/5a2b6e0f81d1409d84a9cc6356dc2370.png', 'b12602714c8dfe37d8ba6e39b130906b', '2023-11-03', 0, 'png');
INSERT INTO `tbl_file` VALUES (47, 'a2cb922ed0494a9ba2d959f9039f756b', 'WIN_20230728_10_54_14_Pro.mp4', NULL, 'http://localhost:9090/file/a2cb922ed0494a9ba2d959f9039f756b.mp4', 'ba3fbdc524ecf16372615b77e8e3bbd4', '2023-11-03', 0, 'mp4');
INSERT INTO `tbl_file` VALUES (48, 'f91d2207bed844ddb3f175750b0a9395', 'WIN_20230728_10_54_14_Pro.mp4', NULL, 'http://localhost:9090/file/a2cb922ed0494a9ba2d959f9039f756b.mp4', 'ba3fbdc524ecf16372615b77e8e3bbd4', '2023-11-03', 0, 'mp4');
INSERT INTO `tbl_file` VALUES (49, 'f57bf5fa983a4d2da7114dacf546c81d', '证书图片_836617.jpg', NULL, 'http://localhost:9090/file/f57bf5fa983a4d2da7114dacf546c81d.jpg', '56d3f27661148298bec9c49dc083ebad', '2023-11-03', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (50, 'b9a3f6633b7145fe80796b4733ec1fbd', 'WIN_20230728_10_54_14_Pro.mp4', NULL, 'http://localhost:9090/file/a2cb922ed0494a9ba2d959f9039f756b.mp4', 'ba3fbdc524ecf16372615b77e8e3bbd4', '2023-11-03', 0, 'mp4');
INSERT INTO `tbl_file` VALUES (51, '6c699f1dc7544f63b6e70b4019588e84', '微信图片_20230516180517.jpg', NULL, 'http://localhost:9090/file/6c699f1dc7544f63b6e70b4019588e84.jpg', '0822986f72cf4a8e34b53fba8abdc1f9', '2023-11-03', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (52, '45f023e108d0441dba2ea21266e757ec', '证书图片_836617.jpg', NULL, 'http://localhost:9090/file/f57bf5fa983a4d2da7114dacf546c81d.jpg', '56d3f27661148298bec9c49dc083ebad', '2023-11-03', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (53, '892d509355a64505b11521a69ca5c340', 'NO.哎呦，你干嘛-c1f89c3204d34621a98fc0eaee95548d.pdf', 'admin', 'http://localhost:9090/file/892d509355a64505b11521a69ca5c340.pdf', '2385ae4d0b258ca600113a599a28995d', '2023-11-03', 1, 'pdf');
INSERT INTO `tbl_file` VALUES (54, 'a7bc1c0573b8494a8573ea942a84dc23', 'NO.哎呦，你干嘛-c1f89c3204d34621a98fc0eaee95548d.pdf', 'admin', 'http://localhost:9090/file/892d509355a64505b11521a69ca5c340.pdf', '2385ae4d0b258ca600113a599a28995d', '2023-11-03', 1, 'pdf');
INSERT INTO `tbl_file` VALUES (55, 'f17d27d6ce3d4d5fbc428fc54466e216', 'NO.哎呦，你干嘛-c1f89c3204d34621a98fc0eaee95548d.pdf', 'admin', 'http://localhost:9090/file/892d509355a64505b11521a69ca5c340.pdf', '2385ae4d0b258ca600113a599a28995d', '2023-11-03', 1, 'pdf');
INSERT INTO `tbl_file` VALUES (56, '0bcb890be05e43d0a4f01be2d273173a', 'NO.哎呦，你干嘛-c1f89c3204d34621a98fc0eaee95548d.pdf', 'admin', 'http://localhost:9090/file/892d509355a64505b11521a69ca5c340.pdf', '2385ae4d0b258ca600113a599a28995d', '2023-11-03', 1, 'pdf');
INSERT INTO `tbl_file` VALUES (57, '95ccb5009b0649e8869ce081a9524a74', '证书图片_836617.jpg', NULL, 'http://localhost:9090/file/f57bf5fa983a4d2da7114dacf546c81d.jpg', '56d3f27661148298bec9c49dc083ebad', '2023-11-03', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (58, 'b83715fc9c4e4cbe8167742ea9a893d3', '10000.jpg', NULL, 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-11-06', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (59, '78f3d04dbea14dae8bc6c00ebf77d0f6', '10000.jpg', NULL, 'http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-11-06', 0, 'jpg');
INSERT INTO `tbl_file` VALUES (62, '78b526f02c344b9d88fe7b0ebcd0c074', '设备台账2022.xlsx', 'admin', 'http://192.168.0.153:9090/file/78b526f02c344b9d88fe7b0ebcd0c074.xlsx', '9ce9d1b9f72ae89d67af5883d35d18a2', '2023-11-16', 0, 'xlsx');
INSERT INTO `tbl_file` VALUES (63, 'a4039c3a5c714f409d34f4ee11b47659', '三方期间核查计划2022-6-27.xlsx', 'admin', 'http://192.168.0.153:9090/file/a4039c3a5c714f409d34f4ee11b47659.xlsx', 'e893e21ad4de96524b4b6cf3f3a8e3fa', '2023-11-16', 0, 'xlsx');
INSERT INTO `tbl_file` VALUES (64, '2d4bd606d36240aa820e6d845162979c', '三方设备送检计划2022.xlsx', 'admin', 'http://192.168.0.153:9090/file/2d4bd606d36240aa820e6d845162979c.xlsx', '2d4d02969412b305225c8072d5299f9e', '2023-11-16', 0, 'xlsx');

-- ----------------------------
-- Table structure for tbl_fileavatar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fileavatar`;
CREATE TABLE `tbl_fileavatar`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件名称',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件路径',
  `md5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件md5',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_fileavatar
-- ----------------------------
INSERT INTO `tbl_fileavatar` VALUES (50, 'dba577306f08401abb1291689ffc63ce', '1.jpg', 'http://localhost:9090/fileAvatar/dba577306f08401abb1291689ffc63ce.jpg', 'f06cb66a809c84f73e50e51bba2ed62e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (51, 'f551d5e0de694a549bbba4874c61b363', '2.jpg', 'http://localhost:9090/fileAvatar/f551d5e0de694a549bbba4874c61b363.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (52, '6a8c9d29d1c34d01ac695c30d302b53e', '1.jpg', 'http://localhost:9090/fileAvatar/dba577306f08401abb1291689ffc63ce.jpg', 'f06cb66a809c84f73e50e51bba2ed62e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (53, '8f05b7049d6b43ca9c77583483e48f31', '2.jpg', 'http://localhost:9090/fileAvatar/f551d5e0de694a549bbba4874c61b363.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (54, '5098dd0fb58c46afb0eaac296fcb3c45', '1.jpg', 'http://localhost:9090/fileAvatar/dba577306f08401abb1291689ffc63ce.jpg', 'f06cb66a809c84f73e50e51bba2ed62e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (55, '11c9535da6b1429384b36c9635845ae4', '2.jpg', 'http://localhost:9090/fileAvatar/f551d5e0de694a549bbba4874c61b363.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (56, 'deabf9d690ca43ac86546b29125cd406', '8.jpg', 'http://localhost:9090/fileAvatar/deabf9d690ca43ac86546b29125cd406.jpg', '5064bfa03b199eebcacc5774e0ccbfa9', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (57, '96b0925dd08f41379822ae02b7be32cd', '10000.jpg', 'http://localhost:9090/fileAvatar/96b0925dd08f41379822ae02b7be32cd.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (58, '3d037b124b644b3a9db811c7f59de4e1', '2.jpg', 'http://localhost:9090/fileAvatar/f551d5e0de694a549bbba4874c61b363.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (59, '56ce13ada60d42ed8a38deddbefcabd5', '174059-hong-che_deng-lu_deng-li_qing-tou_deng-2560x1440.jpg', 'http://localhost:9090/fileAvatar/56ce13ada60d42ed8a38deddbefcabd5.jpg', '44eb435034506759d45b094a876dc466', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (60, '410401ff6e314ced8eace53ce31c8ff6', 'img1.wallspic.com-qi_fen-sheng_tai_qu-zi_ran_jing_guan-yu_hui-gao_de-2160x4800.jpg', 'http://localhost:9090/fileAvatar/410401ff6e314ced8eace53ce31c8ff6.jpg', '8494e75a28e4ba2ba365fb93b019de30', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (61, 'c9319865bf9d48649cdd8946a2db6149', '2.jpg', 'http://localhost:9090/fileAvatar/f551d5e0de694a549bbba4874c61b363.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (62, 'bb69195a28244cc89b08c70f4326670e', '2.jpg', 'http://localhost:9090/fileAvatar/f551d5e0de694a549bbba4874c61b363.jpg', 'e12bd71e15b3f960c03875214ed0ec9e', '2023-11-02', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (63, '63c5a41cd74a462b9da49afcd08e3c6b', '888.png', 'http://localhost:9090/fileAvatar/63c5a41cd74a462b9da49afcd08e3c6b.png', '21cf702b2d45efe02794ed4f8e2539e1', '2023-11-02', 0, 'png');
INSERT INTO `tbl_fileavatar` VALUES (64, '087a21a081344d168dcb8bcb1322332b', '1.png', 'http://localhost:9090/fileAvatar/087a21a081344d168dcb8bcb1322332b.png', '7a26b406e215cdcaffb6f0dc28c29849', '2023-11-02', 0, 'png');
INSERT INTO `tbl_fileavatar` VALUES (65, '076a4d8c7b754a4484891b3e03517d68', '10002.png', 'http://localhost:9090/fileAvatar/076a4d8c7b754a4484891b3e03517d68.png', 'b12602714c8dfe37d8ba6e39b130906b', '2023-11-02', 0, 'png');
INSERT INTO `tbl_fileavatar` VALUES (66, '3822c9099b7648ddb26582ece2849349', '174059-hong-che_deng-lu_deng-li_qing-tou_deng-2560x1440.jpg', 'http://localhost:9090/fileAvatar/56ce13ada60d42ed8a38deddbefcabd5.jpg', '44eb435034506759d45b094a876dc466', '2023-11-07', 0, 'jpg');
INSERT INTO `tbl_fileavatar` VALUES (67, 'e6a6e54b7ffa431e957a5fba83b36867', '10000.jpg', 'http://localhost:9090/fileAvatar/96b0925dd08f41379822ae02b7be32cd.jpg', '0141580c7c91ebf973e245f57ee196e9', '2023-11-07', 0, 'jpg');

-- ----------------------------
-- Table structure for tbl_hidefield
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hidefield`;
CREATE TABLE `tbl_hidefield`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签',
  `prop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变量名',
  `is_show` tinyint NOT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_hidefield
-- ----------------------------
INSERT INTO `tbl_hidefield` VALUES (1, '自编号', 'selfNum', 1);
INSERT INTO `tbl_hidefield` VALUES (2, '仪器设备名称', 'equipName', 1);
INSERT INTO `tbl_hidefield` VALUES (3, '型号', 'model', 1);
INSERT INTO `tbl_hidefield` VALUES (4, '出厂号', 'facNum', 1);
INSERT INTO `tbl_hidefield` VALUES (5, '证书编号', 'cerNum', 1);
INSERT INTO `tbl_hidefield` VALUES (6, '有效期', 'validity', 1);
INSERT INTO `tbl_hidefield` VALUES (7, '周期(年)', 'cycle', 1);
INSERT INTO `tbl_hidefield` VALUES (8, '检定/校准机构', 'verOrg', 1);
INSERT INTO `tbl_hidefield` VALUES (9, '主要测量范围', 'accuracy', 1);
INSERT INTO `tbl_hidefield` VALUES (10, '使用地点', 'usePlace', 1);
INSERT INTO `tbl_hidefield` VALUES (11, '生产厂家', 'manuFact', 1);
INSERT INTO `tbl_hidefield` VALUES (12, '备注', 'remarks', 1);

-- ----------------------------
-- Table structure for tbl_inspplan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_inspplan`;
CREATE TABLE `tbl_inspplan`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号，自增',
  `num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '自编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仪器设备名称',
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '型号',
  `fac_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出厂号',
  `sche_time` date NULL DEFAULT NULL COMMENT '计划送检时间',
  `cycle` double NULL DEFAULT NULL COMMENT '周期（年）',
  `ver_org` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '检定/校准机构',
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选项卡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_inspplan
-- ----------------------------
INSERT INTO `tbl_inspplan` VALUES (1, '1', '1', '1', '040542', '2022-09-01', 1, '成都市计量检定测试院', '1', 'first');
INSERT INTO `tbl_inspplan` VALUES (2, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '2023-10-24', 1, '成都市计量检定测试院', NULL, 'second');
INSERT INTO `tbl_inspplan` VALUES (3, 'SFJ0003', '双臂电桥校验标准器', 'ZY4', '007', '2023-10-05', 1, '成都市计量检定测试院', NULL, 'third');
INSERT INTO `tbl_inspplan` VALUES (4, '1', '1', '1', '1', '2023-10-25', 1, '1', '1', NULL);
INSERT INTO `tbl_inspplan` VALUES (5, '2', '2', '2', '2', '2023-10-04', 2, '2', '2', NULL);
INSERT INTO `tbl_inspplan` VALUES (6, '1', '1', '1', '040542', '2022-09-01', 1, '成都市计量检定测试院', '1', NULL);
INSERT INTO `tbl_inspplan` VALUES (7, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '2023-10-24', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (8, 'SFJ0003', '双臂电桥校验标准器', 'ZY4', '007', '2023-10-05', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (9, '1', '1', '1', '1', '2023-10-25', 1, '1', '1', NULL);
INSERT INTO `tbl_inspplan` VALUES (10, '2', '2', '2', '2', '2023-10-04', 2, '2', '2', NULL);
INSERT INTO `tbl_inspplan` VALUES (11, 'SFJ0001', '读数显微镜', 'JC4-10', '040542', '2022-09-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (12, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '2022-09-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (13, 'SFJ0003', '双臂电桥校验标准器', 'ZY4', '007', '2022-09-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (14, 'SFJ0004', '精密数字压力表', 'YK-100B', '2607', '2022-04-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (15, 'SFJ0005', '精密数字压力表（数字压力计）', 'SPMK700  (-0.1～1)MPa', '700046190603', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (16, 'SFJ0006', '精密数字压力表（数字压力计）', 'SPMK700  (0～6)MPa', '700156191098', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (17, 'SFJ0007', '精密数字压力表（数字压力计）', 'SPMK700  (0～25)MPa', '700143191025', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (18, 'SFJ0008', '精密数字压力表（数字压力计）', 'SPMK700  (0～60)MPa', '700206200201', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (19, 'SFJ0001', '读数显微镜', 'JC4-10', '040542', '2022-09-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (20, 'SFJ0002', '数显量仪测力计', 'SLC', '1067', '2022-09-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (21, 'SFJ0003', '双臂电桥校验标准器', 'ZY4', '007', '2022-09-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (22, 'SFJ0004', '精密数字压力表', 'YK-100B', '2607', '2022-04-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (23, 'SFJ0005', '精密数字压力表（数字压力计）', 'SPMK700  (-0.1～1)MPa', '700046190603', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (24, 'SFJ0006', '精密数字压力表（数字压力计）', 'SPMK700  (0～6)MPa', '700156191098', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (25, 'SFJ0007', '精密数字压力表（数字压力计）', 'SPMK700  (0～25)MPa', '700143191025', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (26, 'SFJ0008', '精密数字压力表（数字压力计）', 'SPMK700  (0～60)MPa', '700206200201', '2022-01-01', 1, '成都市计量检定测试院', '', NULL);
INSERT INTO `tbl_inspplan` VALUES (27, '121', '222', '21', '00', '2023-11-20', 6, '21', NULL, NULL);
INSERT INTO `tbl_inspplan` VALUES (28, '9', '9', '9', NULL, NULL, 9, NULL, NULL, 'fourth');
INSERT INTO `tbl_inspplan` VALUES (29, 'SFA0001', '压力表', '0～1MPa', '06.01.05.7913', '2022-06-01', 1, '成都三方电气有限公司', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (30, 'SFA0002', '压力表', '0～1.6MPa', '520060601', '2022-01-01', 1, '成都三方电气有限公司', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (31, 'SFA0003', '压力表', '0～1.6MPa', '520060602', '2022-01-01', 1, '成都三方电气有限公司', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (32, 'SFA0004', '游标卡尺', '150*0.02mm', '0808031188', '2022-03-01', 1, '成都三方电气有限公司', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (33, 'SFA0005', '玻璃转子流量计', 'LZB-15(G)', '1952', '2022-07-01', 1, '成都市计量检定测试院', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (34, 'SFA0006', '玻璃转子流量计', 'LZB-25(G)', '1951', '2022-07-01', 1, '成都市计量检定测试院', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (35, 'SFA0007', '电磁流量计', 'MF/C5001621105CR101   (DN50)', '0229', '2022-03-01', 2, '成都市计量检定测试院', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (36, 'SFA0008', '精密积分声级计', 'NL-11', '01150494', '2022-02-01', 1, '成都市计量检定测试院', '', 'third');
INSERT INTO `tbl_inspplan` VALUES (37, 'SFA0001', '压力表', '0～1MPa', '06.01.05.7913', '2022-06-01', 0.5, '成都三方电气有限公司', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (38, 'SFA0002', '压力表', '0～1.6MPa', '520060601', '2022-01-01', 1.5, '成都三方电气有限公司', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (39, 'SFA0003', '压力表', '0～1.6MPa', '520060602', '2022-01-01', 1, '成都三方电气有限公司', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (40, 'SFA0004', '游标卡尺', '150*0.02mm', '0808031188', '2022-03-01', 1, '成都三方电气有限公司', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (41, 'SFA0005', '玻璃转子流量计', 'LZB-15(G)', '1952', '2022-07-01', 1, '成都市计量检定测试院', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (42, 'SFA0006', '玻璃转子流量计', 'LZB-25(G)', '1951', '2022-07-01', 1, '成都市计量检定测试院', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (43, 'SFA0007', '电磁流量计', 'MF/C5001621105CR101   (DN50)', '0229', '2022-03-01', 2, '成都市计量检定测试院', '', 'second');
INSERT INTO `tbl_inspplan` VALUES (44, 'SFA0008', '精密积分声级计', 'NL-11', '01150494', '2022-02-01', 1, '成都市计量检定测试院', '', 'second');

-- ----------------------------
-- Table structure for tbl_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log`;
CREATE TABLE `tbl_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `request_ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作类型',
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作用户Id',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '操作描述',
  `actiondate` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `exceptioncode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '异常代码',
  `exceptiondetail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '异常详情',
  `actionmethod` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '请求方法',
  `params` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '请求参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 356 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_log
-- ----------------------------
INSERT INTO `tbl_log` VALUES (255, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-09-21 16:03:52', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (256, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了用户:', '2023-09-21 16:04:19', NULL, NULL, 'delete', '45');
INSERT INTO `tbl_log` VALUES (257, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:', '2023-09-21 16:06:52', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (258, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-09 10:28:09', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (259, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-09 11:03:13', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (260, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-11 09:43:16', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (261, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-11 10:26:02', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (262, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-18 20:49:52', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (263, '0:0:0:0:0:0:0:1', '1', '', '', '删除了用户:', '2023-10-18 20:51:27', NULL, NULL, 'delete', '47');
INSERT INTO `tbl_log` VALUES (264, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-18 20:54:28', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (265, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-18 20:54:36', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (266, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-18 20:54:38', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (267, '0:0:0:0:0:0:0:1', '1', '', '', '增加或修改了用户:', '2023-10-19 13:07:37', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (268, '0:0:0:0:0:0:0:1', '1', '', '', '删除了用户:', '2023-10-19 13:07:50', NULL, NULL, 'delete', '49');
INSERT INTO `tbl_log` VALUES (269, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:', '2023-10-21 14:13:16', NULL, NULL, 'save', '');
INSERT INTO `tbl_log` VALUES (270, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:', '2023-10-21 14:32:44', NULL, NULL, 'save', 'User(id=51, loginName=23456, password=65732202, role=管理员)');
INSERT INTO `tbl_log` VALUES (271, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:', '2023-10-21 14:35:00', NULL, NULL, 'save', 'User(id=52, loginName=1222222, password=12222222, role=普通)');
INSERT INTO `tbl_log` VALUES (272, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:User(id=53, loginName=23424, password=32524, role=普通)', '2023-10-21 14:39:10', NULL, NULL, 'save', 'User(id=53, loginName=23424, password=32524, role=普通)');
INSERT INTO `tbl_log` VALUES (273, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:1e9f377d0dd54b2f8227d0e86226ae0f', '2023-10-21 14:53:21', NULL, NULL, 'delete', '1e9f377d0dd54b2f8227d0e86226ae0f');
INSERT INTO `tbl_log` VALUES (274, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了角色:Role(id=13, name=教师, endTime=2023-10-03, remark=null, enable=null)', '2023-10-21 15:04:06', NULL, NULL, 'save', 'Role(id=13, name=教师, endTime=2023-10-03, remark=null, enable=null)');
INSERT INTO `tbl_log` VALUES (275, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了角色:Role(id=14, name=临时员工, endTime=2023-10-05, remark=null, enable=null)', '2023-10-21 15:04:20', NULL, NULL, 'save', 'Role(id=14, name=临时员工, endTime=2023-10-05, remark=null, enable=null)');
INSERT INTO `tbl_log` VALUES (276, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了角色，id为：:13', '2023-10-21 15:04:45', NULL, NULL, 'delete', '13');
INSERT INTO `tbl_log` VALUES (277, '0:0:0:0:0:0:0:1', '1', '51', '23456', '增加或修改了用户:User(id=54, loginName=李四, password=123456, role=普通)', '2023-10-23 15:56:57', NULL, NULL, 'save', 'User(id=54, loginName=李四, password=123456, role=普通)');
INSERT INTO `tbl_log` VALUES (278, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:User(id=55, loginName=王五, password=123456, role=管理员)', '2023-10-23 16:07:06', NULL, NULL, 'save', 'User(id=55, loginName=王五, password=123456, role=管理员)');
INSERT INTO `tbl_log` VALUES (279, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了用户:User(id=56, loginName=路奇, password=123456, role=临时员工)', '2023-10-23 16:10:20', NULL, NULL, 'save', 'User(id=56, loginName=路奇, password=123456, role=临时员工)');
INSERT INTO `tbl_log` VALUES (280, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:db5b445254254a8da01008208c4a9f3a', '2023-10-26 15:18:42', NULL, NULL, 'delete', 'db5b445254254a8da01008208c4a9f3a');
INSERT INTO `tbl_log` VALUES (281, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=4, examineName=null, model=2352, number=45, examineTime=Tue Oct 10 00:00:00 CST 2023, remarks=435)', '2023-10-26 22:27:09', NULL, NULL, 'save', 'ExaminePlan(id=4, examineName=null, model=2352, number=45, examineTime=Tue Oct 10 00:00:00 CST 2023, remarks=435)');
INSERT INTO `tbl_log` VALUES (282, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=5, examineName=null, model=1, number=1, examineTime=Mon Oct 16 00:00:00 CST 2023, remarks=1)', '2023-10-26 22:27:56', NULL, NULL, 'save', 'ExaminePlan(id=5, examineName=null, model=1, number=1, examineTime=Mon Oct 16 00:00:00 CST 2023, remarks=1)');
INSERT INTO `tbl_log` VALUES (283, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=6, examineName=null, model=1, number=1, examineTime=Thu Oct 12 00:00:00 CST 2023, remarks=null)', '2023-10-26 22:28:08', NULL, NULL, 'save', 'ExaminePlan(id=6, examineName=null, model=1, number=1, examineTime=Thu Oct 12 00:00:00 CST 2023, remarks=null)');
INSERT INTO `tbl_log` VALUES (284, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=7, examineName=1, model=1, number=1, examineTime=Wed Oct 04 00:00:00 CST 2023, remarks=1)', '2023-10-26 22:28:27', NULL, NULL, 'save', 'ExaminePlan(id=7, examineName=1, model=1, number=1, examineTime=Wed Oct 04 00:00:00 CST 2023, remarks=1)');
INSERT INTO `tbl_log` VALUES (285, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了设备核查计划:4', '2023-10-27 09:24:23', NULL, NULL, 'delete', '4');
INSERT INTO `tbl_log` VALUES (286, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了设备核查计划:7', '2023-10-27 09:24:51', NULL, NULL, 'delete', '7');
INSERT INTO `tbl_log` VALUES (287, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了设备核查计划:5', '2023-10-27 09:40:42', NULL, NULL, 'delete', '5');
INSERT INTO `tbl_log` VALUES (288, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=6, examineName=null, model=2, number=3, examineTime=Thu Oct 12 00:00:00 CST 2023, remarks=null)', '2023-10-27 09:42:40', NULL, NULL, 'save', 'ExaminePlan(id=6, examineName=null, model=2, number=3, examineTime=Thu Oct 12 00:00:00 CST 2023, remarks=null)');
INSERT INTO `tbl_log` VALUES (289, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=6, examineName=test, model=2, number=3, examineTime=Thu Oct 12 00:00:00 CST 2023, remarks=null)', '2023-10-27 09:42:50', NULL, NULL, 'save', 'ExaminePlan(id=6, examineName=test, model=2, number=3, examineTime=Thu Oct 12 00:00:00 CST 2023, remarks=null)');
INSERT INTO `tbl_log` VALUES (290, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=8, examineName=test2, model=ESCI, number=100983, examineTime=Fri Oct 20 00:00:00 CST 2023, remarks=null)', '2023-10-27 10:23:26', NULL, NULL, 'save', 'ExaminePlan(id=8, examineName=test2, model=ESCI, number=100983, examineTime=Fri Oct 20 00:00:00 CST 2023, remarks=null)');
INSERT INTO `tbl_log` VALUES (291, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=9, examineName=test, model=8449B, number=3008A02604, examineTime=Mon Oct 02 00:00:00 CST 2023, remarks=null)', '2023-10-27 10:30:56', NULL, NULL, 'save', 'ExaminePlan(id=9, examineName=test, model=8449B, number=3008A02604, examineTime=Mon Oct 02 00:00:00 CST 2023, remarks=null)');
INSERT INTO `tbl_log` VALUES (292, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipInspPlan(id=4, num=1, name=1, model=1, facNum=1, scheTime=Wed Oct 25 00:00:00 CST 2023, cycle=1, verOrg=1, remarks=1)', '2023-10-27 16:32:12', NULL, NULL, 'save', 'EquipInspPlan(id=4, num=1, name=1, model=1, facNum=1, scheTime=Wed Oct 25 00:00:00 CST 2023, cycle=1, verOrg=1, remarks=1)');
INSERT INTO `tbl_log` VALUES (293, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipInspPlan(id=1, num=1, name=1, model=1, facNum=null, scheTime=null, cycle=1, verOrg=null, remarks=1)', '2023-10-27 16:36:29', NULL, NULL, 'save', 'EquipInspPlan(id=1, num=1, name=1, model=1, facNum=null, scheTime=null, cycle=1, verOrg=null, remarks=1)');
INSERT INTO `tbl_log` VALUES (294, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipInspPlan(id=5, num=2, name=2, model=2, facNum=2, scheTime=Wed Oct 04 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2)', '2023-10-27 16:36:58', NULL, NULL, 'save', 'EquipInspPlan(id=5, num=2, name=2, model=2, facNum=2, scheTime=Wed Oct 04 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2)');
INSERT INTO `tbl_log` VALUES (295, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=10, examineName=1, model=FSV 30, number=101374, examineTime=Wed Nov 01 00:00:00 CST 2023, remarks=2)', '2023-10-27 16:37:58', NULL, NULL, 'save', 'ExaminePlan(id=10, examineName=1, model=FSV 30, number=101374, examineTime=Wed Nov 01 00:00:00 CST 2023, remarks=2)');
INSERT INTO `tbl_log` VALUES (296, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:20', '2023-10-30 09:48:17', NULL, NULL, 'delete', '20');
INSERT INTO `tbl_log` VALUES (297, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:22', '2023-10-30 09:48:48', NULL, NULL, 'delete', '22');
INSERT INTO `tbl_log` VALUES (298, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:24', '2023-10-30 09:49:07', NULL, NULL, 'delete', '24');
INSERT INTO `tbl_log` VALUES (299, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:26', '2023-10-30 09:49:48', NULL, NULL, 'delete', '26');
INSERT INTO `tbl_log` VALUES (300, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=3, selfNum=1, equipName=2, model=3, facNum=4, cerNum=5, validity=Mon Oct 02 00:00:00 CST 2023, cycle=6, verOrg=7, remarks=8, measureRange=9, accuracy=10, usePlace=11, manuFact=12)', '2023-10-30 15:19:39', NULL, NULL, 'save', 'EquipLedger(id=3, selfNum=1, equipName=2, model=3, facNum=4, cerNum=5, validity=Mon Oct 02 00:00:00 CST 2023, cycle=6, verOrg=7, remarks=8, measureRange=9, accuracy=10, usePlace=11, manuFact=12)');
INSERT INTO `tbl_log` VALUES (301, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了用户:18', '2023-10-30 20:55:16', NULL, NULL, 'delete', '18');
INSERT INTO `tbl_log` VALUES (302, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=12, selfNum=2, equipName=1122, model=12, facNum=12, cerNum=22, validity=Mon Nov 13 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2, measureRange=2, accuracy=2, usePlace=2, manuFact=2)', '2023-11-01 15:19:48', NULL, NULL, 'save', 'EquipLedger(id=12, selfNum=2, equipName=1122, model=12, facNum=12, cerNum=22, validity=Mon Nov 13 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2, measureRange=2, accuracy=2, usePlace=2, manuFact=2)');
INSERT INTO `tbl_log` VALUES (303, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=21, selfNum=2, equipName=2, model=2, facNum=2, cerNum=2, validity=Wed Nov 15 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2, measureRange=2, accuracy=3, usePlace=2, manuFact=2)', '2023-11-01 21:23:01', NULL, NULL, 'save', 'EquipLedger(id=21, selfNum=2, equipName=2, model=2, facNum=2, cerNum=2, validity=Wed Nov 15 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2, measureRange=2, accuracy=3, usePlace=2, manuFact=2)');
INSERT INTO `tbl_log` VALUES (304, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了文件，编号为:36', '2023-11-02 15:53:30', NULL, NULL, 'delete', '36');
INSERT INTO `tbl_log` VALUES (305, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '删除了公告，id为：:25', '2023-11-03 16:41:27', NULL, NULL, 'delete', '25');
INSERT INTO `tbl_log` VALUES (306, '0:0:0:0:0:0:0:1', '1', '122', '王麻子', '删除了公告，id为：:31', '2023-11-03 20:30:02', NULL, NULL, 'delete', '31');
INSERT INTO `tbl_log` VALUES (307, '0:0:0:0:0:0:0:1', '1', '122', '王麻子', '删除了公告，id为：:30', '2023-11-03 20:32:06', NULL, NULL, 'delete', '30');
INSERT INTO `tbl_log` VALUES (308, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=21, selfNum=222, equipName=2, model=2, facNum=2, cerNum=2, validity=Wed Nov 15 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2, measureRange=2, accuracy=3, usePlace=2, manuFact=2)', '2023-11-06 10:34:04', NULL, NULL, 'save', 'EquipLedger(id=21, selfNum=222, equipName=2, model=2, facNum=2, cerNum=2, validity=Wed Nov 15 00:00:00 CST 2023, cycle=2, verOrg=2, remarks=2, measureRange=2, accuracy=3, usePlace=2, manuFact=2)');
INSERT INTO `tbl_log` VALUES (309, '0:0:0:0:0:0:0:1', '1', '122', '王麻子', '增加或修改了角色:Role(id=15, name=超级管理员, endTime=2023-11-23, remark=null, enable=null)', '2023-11-07 10:04:39', NULL, NULL, 'save', 'Role(id=15, name=超级管理员, endTime=2023-11-23, remark=null, enable=null)');
INSERT INTO `tbl_log` VALUES (310, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=20, examineName=qq, model=ESCI, number=100983, examineTime=Fri Nov 24 00:00:00 CST 2023, type=null, remarks=null)', '2023-11-14 13:45:04', NULL, NULL, 'save', 'ExaminePlan(id=20, examineName=qq, model=ESCI, number=100983, examineTime=Fri Nov 24 00:00:00 CST 2023, type=null, remarks=null)');
INSERT INTO `tbl_log` VALUES (311, '127.0.0.1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=21, examineName=aa, model=ESCI, number=100983, examineTime=Tue Nov 21 00:00:00 CST 2023, type=null, remarks=231)', '2023-11-14 13:48:40', NULL, NULL, 'save', 'ExaminePlan(id=21, examineName=aa, model=ESCI, number=100983, examineTime=Tue Nov 21 00:00:00 CST 2023, type=null, remarks=231)');
INSERT INTO `tbl_log` VALUES (312, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=22, examineName=ss, model=VULB9163, number=1178, examineTime=Fri Nov 24 00:00:00 CST 2023, type=null, remarks=1)', '2023-11-14 13:57:04', NULL, NULL, 'save', 'ExaminePlan(id=22, examineName=ss, model=VULB9163, number=1178, examineTime=Fri Nov 24 00:00:00 CST 2023, type=null, remarks=1)');
INSERT INTO `tbl_log` VALUES (313, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=23, examineName=dd, model=ESCI, number=100983, examineTime=Thu Nov 16 00:00:00 CST 2023, type=null, remarks=null)', '2023-11-14 14:16:18', NULL, NULL, 'save', 'ExaminePlan(id=23, examineName=dd, model=ESCI, number=100983, examineTime=Thu Nov 16 00:00:00 CST 2023, type=null, remarks=null)');
INSERT INTO `tbl_log` VALUES (314, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=24, examineName=cc, model=FSV 30, number=101374, examineTime=Wed Nov 15 00:00:00 CST 2023, type=null, remarks=null)', '2023-11-14 14:18:30', NULL, NULL, 'save', 'ExaminePlan(id=24, examineName=cc, model=FSV 30, number=101374, examineTime=Wed Nov 15 00:00:00 CST 2023, type=null, remarks=null)');
INSERT INTO `tbl_log` VALUES (315, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=25, examineName=ee, model=FSV 30, number=101374, examineTime=Wed Nov 22 00:00:00 CST 2023, type=fourth, remarks=null)', '2023-11-14 14:20:06', NULL, NULL, 'save', 'ExaminePlan(id=25, examineName=ee, model=FSV 30, number=101374, examineTime=Wed Nov 22 00:00:00 CST 2023, type=fourth, remarks=null)');
INSERT INTO `tbl_log` VALUES (316, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=26, examineName=ww, model=ESCI, number=100983, examineTime=Wed Nov 15 00:00:00 CST 2023, type=third, remarks=null)', '2023-11-14 14:20:51', NULL, NULL, 'save', 'ExaminePlan(id=26, examineName=ww, model=ESCI, number=100983, examineTime=Wed Nov 15 00:00:00 CST 2023, type=third, remarks=null)');
INSERT INTO `tbl_log` VALUES (317, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备核查计划:ExaminePlan(id=27, examineName=test5, model=FSV 30, number=101374, examineTime=Wed Nov 22 00:00:00 CST 2023, type=first, remarks=null)', '2023-11-14 14:22:21', NULL, NULL, 'save', 'ExaminePlan(id=27, examineName=test5, model=FSV 30, number=101374, examineTime=Wed Nov 22 00:00:00 CST 2023, type=first, remarks=null)');
INSERT INTO `tbl_log` VALUES (318, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipInspPlan(id=27, num=121, name=222, model=21, facNum=00, scheTime=Mon Nov 20 00:00:00 CST 2023, cycle=6, verOrg=21, remarks=null)', '2023-11-14 19:22:37', NULL, NULL, 'save', 'EquipInspPlan(id=27, num=121, name=222, model=21, facNum=00, scheTime=Mon Nov 20 00:00:00 CST 2023, cycle=6, verOrg=21, remarks=null)');
INSERT INTO `tbl_log` VALUES (319, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=88, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8, usePlace=88, manuFact=88, type=first)', '2023-11-14 20:21:06', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=88, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8, usePlace=88, manuFact=88, type=first)');
INSERT INTO `tbl_log` VALUES (320, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=23, selfNum=22, equipName=222, model=22, facNum=22, cerNum=22, validity=Tue Nov 21 00:00:00 CST 2023, cycle=22.0, verOrg=22, remarks=22, measureRange=22, accuracy=22, usePlace=22, manuFact=22, type=second)', '2023-11-14 20:21:32', NULL, NULL, 'save', 'EquipLedger(id=23, selfNum=22, equipName=222, model=22, facNum=22, cerNum=22, validity=Tue Nov 21 00:00:00 CST 2023, cycle=22.0, verOrg=22, remarks=22, measureRange=22, accuracy=22, usePlace=22, manuFact=22, type=second)');
INSERT INTO `tbl_log` VALUES (321, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, type=first)', '2023-11-15 09:49:10', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, type=first)');
INSERT INTO `tbl_log` VALUES (322, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:13:23', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (323, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:15:05', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (324, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:19:52', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (325, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:21:49', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (326, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:22:50', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (327, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=27, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=first)', '2023-11-15 22:23:11', NULL, NULL, 'save', 'EquipLedger(id=27, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (328, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:23:55', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (329, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=29, selfNum=SFJ0006, equipName=精密数字压力表(数字压力计), model=SPMK700  (0～6)MPa, facNum=700156191098, cerNum=第22007718895号, validity=Thu Jan 26 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange= (0～6)Mpa, accuracy=0.05级, usePlace=计量工程中心, manuFact=北京斯贝克科技有限责任公司, enabled=true, type=first)', '2023-11-15 22:23:58', NULL, NULL, 'save', 'EquipLedger(id=29, selfNum=SFJ0006, equipName=精密数字压力表(数字压力计), model=SPMK700  (0～6)MPa, facNum=700156191098, cerNum=第22007718895号, validity=Thu Jan 26 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange= (0～6)Mpa, accuracy=0.05级, usePlace=计量工程中心, manuFact=北京斯贝克科技有限责任公司, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (330, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:24:48', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (331, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:26:03', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (332, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=27, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=first)', '2023-11-15 22:26:05', NULL, NULL, 'save', 'EquipLedger(id=27, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (333, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:27:16', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (334, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=27, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=first)', '2023-11-15 22:28:02', NULL, NULL, 'save', 'EquipLedger(id=27, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (335, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:28:37', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (336, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)', '2023-11-15 22:31:39', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)');
INSERT INTO `tbl_log` VALUES (337, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:31:57', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (338, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=1, selfNum=SFJ0001, equipName=读数显微镜, model=JC4-10, facNum=040542, cerNum=第21006551202号, validity=Fri Sep 23 00:00:00 CST 2022, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=0～8mm, accuracy=0.005mm, usePlace=计量工程中心, manuFact=上海永亨光学仪器制造有限公司, enabled=true, type=first)', '2023-11-15 22:32:11', NULL, NULL, 'save', 'EquipLedger(id=1, selfNum=SFJ0001, equipName=读数显微镜, model=JC4-10, facNum=040542, cerNum=第21006551202号, validity=Fri Sep 23 00:00:00 CST 2022, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=0～8mm, accuracy=0.005mm, usePlace=计量工程中心, manuFact=上海永亨光学仪器制造有限公司, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (339, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)', '2023-11-15 22:42:51', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)');
INSERT INTO `tbl_log` VALUES (340, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:43:15', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (341, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)', '2023-11-15 22:43:32', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)');
INSERT INTO `tbl_log` VALUES (342, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:47:48', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (343, '0:0:0:0:0:0:0:1', '1', '55', '王五', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)', '2023-11-15 22:52:46', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=false, type=first)');
INSERT INTO `tbl_log` VALUES (344, '0:0:0:0:0:0:0:1', '1', '55', '王五', '增加或修改了设备送检计划:EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)', '2023-11-15 22:53:07', NULL, NULL, 'save', 'EquipLedger(id=22, selfNum=88, equipName=88, model=888, facNum=88, cerNum=88, validity=Mon Nov 06 00:00:00 CST 2023, cycle=88.0, verOrg=88, remarks=null, measureRange=88, accuracy=8123, usePlace=88, manuFact=88, enabled=true, type=first)');
INSERT INTO `tbl_log` VALUES (345, '0:0:0:0:0:0:0:1', '2', '1', 'admin', NULL, '2023-11-16 10:50:07', '距离就餐时间小于三十分钟，不可取消预约', NULL, 'delete', '14');
INSERT INTO `tbl_log` VALUES (346, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '取消了设备预约:15', '2023-11-16 10:50:25', NULL, NULL, 'delete', '15');
INSERT INTO `tbl_log` VALUES (347, '0:0:0:0:0:0:0:1', '2', '1', 'admin', NULL, '2023-11-16 10:50:29', '距离就餐时间小于三十分钟，不可取消预约', NULL, 'delete', '16');
INSERT INTO `tbl_log` VALUES (348, '0:0:0:0:0:0:0:1', '2', '1', 'admin', NULL, '2023-11-16 10:50:52', '距离就餐时间小于三十分钟，不可取消预约', NULL, 'delete', '14');
INSERT INTO `tbl_log` VALUES (349, '0:0:0:0:0:0:0:1', '2', '1', 'admin', NULL, '2023-11-16 10:51:43', '距离就餐时间小于三十分钟，不可取消预约', NULL, 'delete', '16');
INSERT INTO `tbl_log` VALUES (350, '0:0:0:0:0:0:0:1', '2', '1', 'admin', NULL, '2023-11-16 10:51:45', '距离就餐时间小于三十分钟，不可取消预约', NULL, 'delete', '14');
INSERT INTO `tbl_log` VALUES (351, '0:0:0:0:0:0:0:1', '2', '1', 'admin', NULL, '2023-11-16 10:55:49', '距离就餐时间小于三十分钟，不可取消预约', NULL, 'delete', '16');
INSERT INTO `tbl_log` VALUES (352, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=7, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=false, type=fourth)', '2023-11-16 12:40:53', NULL, NULL, 'save', 'EquipLedger(id=7, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=false, type=fourth)');
INSERT INTO `tbl_log` VALUES (353, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=8, selfNum=SFJ0005, equipName=精密数字压力表(数字压力计), model=SPMK700  (-0.1～1)MPa, facNum=700046190603, cerNum=第22007718894G1号, validity=Thu Jan 26 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange= (-0.1～1)Mpa, accuracy=0.05级, usePlace=计量工程中心, manuFact=北京斯贝克科技有限责任公司, enabled=false, type=fourth)', '2023-11-16 12:41:00', NULL, NULL, 'save', 'EquipLedger(id=8, selfNum=SFJ0005, equipName=精密数字压力表(数字压力计), model=SPMK700  (-0.1～1)MPa, facNum=700046190603, cerNum=第22007718894G1号, validity=Thu Jan 26 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange= (-0.1～1)Mpa, accuracy=0.05级, usePlace=计量工程中心, manuFact=北京斯贝克科技有限责任公司, enabled=false, type=fourth)');
INSERT INTO `tbl_log` VALUES (354, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=7, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=fourth)', '2023-11-16 12:41:04', NULL, NULL, 'save', 'EquipLedger(id=7, selfNum=SFJ0004, equipName=精密数字压力表, model=YK-100B  (-0.1~2.5)MPa, facNum=2607, cerNum=第22008076793号, validity=Fri Mar 24 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange=(-0.1～2.5)MPa, accuracy=0.05级, usePlace=计量工程中心, manuFact=西安云仪仪器仪表有限公司, enabled=true, type=fourth)');
INSERT INTO `tbl_log` VALUES (355, '0:0:0:0:0:0:0:1', '1', '1', 'admin', '增加或修改了设备送检计划:EquipLedger(id=8, selfNum=SFJ0005, equipName=精密数字压力表(数字压力计), model=SPMK700  (-0.1～1)MPa, facNum=700046190603, cerNum=第22007718894G1号, validity=Thu Jan 26 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange= (-0.1～1)Mpa, accuracy=0.05级, usePlace=计量工程中心, manuFact=北京斯贝克科技有限责任公司, enabled=true, type=fourth)', '2023-11-16 12:41:05', NULL, NULL, 'save', 'EquipLedger(id=8, selfNum=SFJ0005, equipName=精密数字压力表(数字压力计), model=SPMK700  (-0.1～1)MPa, facNum=700046190603, cerNum=第22007718894G1号, validity=Thu Jan 26 00:00:00 CST 2023, cycle=1.0, verOrg=成都市计量检定测试院, remarks=, measureRange= (-0.1～1)Mpa, accuracy=0.05级, usePlace=计量工程中心, manuFact=北京斯贝克科技有限责任公司, enabled=true, type=fourth)');

-- ----------------------------
-- Table structure for tbl_mealorder
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mealorder`;
CREATE TABLE `tbl_mealorder`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `meal_date` date NULL DEFAULT NULL COMMENT '用餐日期',
  `order_num` int NOT NULL COMMENT '订餐数量',
  `meal_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `order_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `left_thirty` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_mealorder
-- ----------------------------
INSERT INTO `tbl_mealorder` VALUES (2, '2022-11-22', 2131, '1231231', '1231231', NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (3, NULL, 14, '4', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (4, NULL, 14, '4', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (5, NULL, 14, '4', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (6, '2022-11-07', 124, '123', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (7, '2022-11-06', 124, '123', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (9, '2022-11-06', 24, '44', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (10, '2028-11-13', 24, '44', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (11, '2028-11-13', 24, '44', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (13, '2022-11-09', 1231, 'asda', NULL, NULL, NULL);
INSERT INTO `tbl_mealorder` VALUES (14, '2023-10-19', 10, '10:00', NULL, '13037712182', 1);
INSERT INTO `tbl_mealorder` VALUES (15, '2023-10-13', 3, '09:30', NULL, '02884216698', 0);
INSERT INTO `tbl_mealorder` VALUES (16, '2023-10-13', 3, '09:30', '李四', '02884216698', 0);
INSERT INTO `tbl_mealorder` VALUES (17, '2023-11-22', 10, '09:00', NULL, '13037712182', 0);
INSERT INTO `tbl_mealorder` VALUES (18, '2023-11-08', 2, '09:30', 'dd', '13658243303', 0);
INSERT INTO `tbl_mealorder` VALUES (19, '2023-11-07', 3, '09:00', '李四', '12345677654', 0);
INSERT INTO `tbl_mealorder` VALUES (21, '2023-11-10', 1, '20:00', 'admin', '13037712182', 1);
INSERT INTO `tbl_mealorder` VALUES (22, '2023-11-10', 2, '20:30', 'admin', '13037712182', 1);

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路径',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, 'personal', '/personal', '个人信息', NULL);
INSERT INTO `tbl_menu` VALUES (2, 'admin', '/backend', '管理员', NULL);
INSERT INTO `tbl_menu` VALUES (3, 'edit', '/update', '修改密码', NULL);
INSERT INTO `tbl_menu` VALUES (4, 'exit', '/login', '退出', NULL);

-- ----------------------------
-- Table structure for tbl_news
-- ----------------------------
DROP TABLE IF EXISTS `tbl_news`;
CREATE TABLE `tbl_news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `theme` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告主题',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告内容',
  `issuer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_news
-- ----------------------------
INSERT INTO `tbl_news` VALUES (1, 'test1', '# 这里是公告测试1\n## 二级标题\n### 三级标题\n![1f66d736455e4330a4a6fcc38125af85~tplvp14lwwcsbr7.jpg](http://localhost:9090/file/71adac16c72b462ab74d039f70dd9139.jpg)', 'admin', '2022-11-21', NULL);
INSERT INTO `tbl_news` VALUES (2, 'test2222', 'eqweqweqweqew', 'admin', '2022-11-21', NULL);
INSERT INTO `tbl_news` VALUES (15, '12434', '::: hljs-right\n\n::: hljs-center\n\n![175036shui_zi_yuanqi_fenxing_zhizi_ran_jing_guangao_de1920x1080.jpg](http://localhost:9090/file/f66f5612169b41af928bb5bf17ee3654.jpg)\n\n:::\n\n通知图片\n:::\n', 'null', '2023-10-21', NULL);
INSERT INTO `tbl_news` VALUES (17, '12313', '<pre><code class=\"Java\"> <span class=\"hljs-title class_\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">News</span> </span>{\n    <span class=\"hljs-meta\">@TableId</span>(type= IdType.AUTO)\n    <span class=\"hljs-keyword\">private</span> Integer id;\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">String</span> theme;\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">String</span> content;\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">String</span> issuer;}</code></pre>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (18, '1213', '<p>2142143413</p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (19, '12134', '<p>214214341321432</p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (20, '1111111', '<p>214214341321432</p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (21, '新公告', '<h1 id=\"6eqgi\" style=\"text-align:center;\">一级标题</h1><p><span style=\"font-size: 14px;\">&nbsp; &nbsp;&nbsp;</span><b>二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是，</b><b>二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是<br/>&nbsp; &nbsp; &nbsp; &nbsp;</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是，</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是，</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b></p><p><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是，</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">二级标题水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水是是</b><b style=\"font-size: 14px;\">水水水是</b></p><p><b style=\"font-size: 14px;\"><br/></b></p><p><br/></p><p><b style=\"font-size: 14px;\"><br/></b></p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (22, '狗狗欧冠', '<p data-we-empty-p=\"\" style=\"text-align:center;\"><img src=\"http://localhost:9090/file/5a2b6e0f81d1409d84a9cc6356dc2370.png\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"419.5\" height=\"149.55\"/><img src=\"http://localhost:9090/file/0e3c5b4f4b0a4b4ea2b81622b662ef74.png\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"281.69\" height=\"225.21\"/><br/><br/></p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (23, '124124', '<p><iframe src=\"//player.bilibili.com/player.html?aid=873387088&amp;bvid=BV1SN4y1Q7Nk&amp;cid=1265479523&amp;p=1\" scrolling=\"no\" border=\"0\" frameborder=\"no\" framespacing=\"0\" allowfullscreen=\"true\"> </iframe></p><p><img src=\"http://localhost:9090/file/a679852669dd42c4a69b912f6be9cd0d.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/file/5a2b6e0f81d1409d84a9cc6356dc2370.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (24, '214', '<p data-we-empty-p=\"\" style=\"text-align:center;\"><video src=\"http://localhost:9090/file/a2cb922ed0494a9ba2d959f9039f756b.mp4\" controls=\"controls\" style=\"max-width:100%\" width=\"50%\"></video></p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (26, '123', '<p>李四啥</p><p>啦啦啦</p><p><br/></p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (27, '11', '<p>12423423<br/></p><p>驱蚊器饿饿我去额为</p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (28, '112', '<p>&nbsp; &nbsp; 121234<br/></p><p>124134</p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (29, '111', '<p>1</p><p>2</p><p>3</p><p>4</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><i></i><br/></p>', 'admin', '2023-11-03', NULL);
INSERT INTO `tbl_news` VALUES (32, '213', '<p data-we-empty-p=\"\" style=\"text-align:center;\">324撒旦<br/><img src=\"http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/></p><p><br/><img src=\"http://localhost:9090/file/d3cbda0656344ff7a5f13e0c75219f57.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\" width=\"30%\"/></p>', 'admin', '2023-11-06', NULL);

-- ----------------------------
-- Table structure for tbl_operrecord
-- ----------------------------
DROP TABLE IF EXISTS `tbl_operrecord`;
CREATE TABLE `tbl_operrecord`  (
  `oper_id` int NOT NULL COMMENT '序号',
  `oper_account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作账号',
  `oper_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作用户',
  `oper_object` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作对象',
  `oper_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作内容',
  `oper_time` date NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_operrecord
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_project
-- ----------------------------
DROP TABLE IF EXISTS `tbl_project`;
CREATE TABLE `tbl_project`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '项目名称',
  `manager` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '负责人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_project
-- ----------------------------
INSERT INTO `tbl_project` VALUES (3, '12312312', '4124124124');
INSERT INTO `tbl_project` VALUES (4, 'sanfangdianqi', '张三');

-- ----------------------------
-- Table structure for tbl_projectfile
-- ----------------------------
DROP TABLE IF EXISTS `tbl_projectfile`;
CREATE TABLE `tbl_projectfile`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `project_id` int NULL DEFAULT NULL COMMENT '项目编号',
  `project_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '项目名',
  `file_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件编号',
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_projectfile
-- ----------------------------
INSERT INTO `tbl_projectfile` VALUES (1, 4, 'sanfangdianqi', '132131', '123123', NULL);
INSERT INTO `tbl_projectfile` VALUES (2, 3, '12312312', '2131241', '213412312', NULL);
INSERT INTO `tbl_projectfile` VALUES (3, 5, '12313123', '13231', '123123', NULL);
INSERT INTO `tbl_projectfile` VALUES (18, 3, '12312312', '914f83aa95f64f4199eeb9c3e9f5c2a6', '8164b962256f48e98e83144a76029534.jpg', NULL);
INSERT INTO `tbl_projectfile` VALUES (19, 4, 'sanfangdianqi', '914f83aa95f64f4199eeb9c3e9f5c2a6', '8164b962256f48e98e83144a76029534.jpg', NULL);
INSERT INTO `tbl_projectfile` VALUES (21, 4, 'sanfangdianqi', '7bb16ce354df48b1be1db407ec0e21ba', '捕获.PNG', NULL);
INSERT INTO `tbl_projectfile` VALUES (22, 4, 'sanfangdianqi', '6875f3cfa21245e78d86cdf2b3428804', 'u=3009731526,373851691', NULL);
INSERT INTO `tbl_projectfile` VALUES (23, 3, '12312312', '6875f3cfa21245e78d86cdf2b3428804', 'u=3009731526,373851691', NULL);
INSERT INTO `tbl_projectfile` VALUES (24, 7, '111', 'fb365f24d17a4adba5b295c1a729f562', '基于深度学习的图像语义分割方法研究综述_曾文献.pdf', NULL);
INSERT INTO `tbl_projectfile` VALUES (25, 7, '111', 'e49ff3a56b4e45afa3d036d97d5de191', '6.1.6Transformer(1).docx', NULL);
INSERT INTO `tbl_projectfile` VALUES (26, 7, '111', 'fecc5ec09ffe4f048cc13954c22c4623', '1.基于全监督学习的语义分割方法.md', NULL);
INSERT INTO `tbl_projectfile` VALUES (28, 4, 'sanfangdianqi', '47222eb45fe343b0a50aa044167fb880', '一种基于轻量化OpenPose 模型的手部特征融合方法.pdf', 'http://localhost:9090/file/47222eb45fe343b0a50aa044167fb880.pdf');
INSERT INTO `tbl_projectfile` VALUES (29, 3, '12312312', '95ccb5009b0649e8869ce081a9524a74', '证书图片_836617.jpg', 'http://localhost:9090/file/f57bf5fa983a4d2da7114dacf546c81d.jpg');
INSERT INTO `tbl_projectfile` VALUES (30, 4, 'sanfangdianqi', '95ccb5009b0649e8869ce081a9524a74', '证书图片_836617.jpg', 'http://localhost:9090/file/f57bf5fa983a4d2da7114dacf546c81d.jpg');

-- ----------------------------
-- Table structure for tbl_projectuser
-- ----------------------------
DROP TABLE IF EXISTS `tbl_projectuser`;
CREATE TABLE `tbl_projectuser`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_projectuser
-- ----------------------------
INSERT INTO `tbl_projectuser` VALUES (1, 3, '1213', 133, '大三大四的', '撒打算打算');
INSERT INTO `tbl_projectuser` VALUES (2, 3, '31231', 33123, '31231', '321313');
INSERT INTO `tbl_projectuser` VALUES (3, 4, '31231', 312321, '32131', '3123131');
INSERT INTO `tbl_projectuser` VALUES (4, 4, '31231', 33123, '31231', '323313');
INSERT INTO `tbl_projectuser` VALUES (5, 4, 'sanfangdianqi', 122, '412412412', '13221312');
INSERT INTO `tbl_projectuser` VALUES (6, 4, 'sanfangdianqi', 2, '1231231241', '12321312');
INSERT INTO `tbl_projectuser` VALUES (9, 7, '111', 122, 'zhangsan', 'undefined');
INSERT INTO `tbl_projectuser` VALUES (10, 7, '111', NULL, 'chaoshuai', 'undefined');
INSERT INTO `tbl_projectuser` VALUES (12, 3, '12312312', NULL, '张三', 'undefined');
INSERT INTO `tbl_projectuser` VALUES (16, 4, 'sanfangdianqi', 122, '王麻子', NULL);
INSERT INTO `tbl_projectuser` VALUES (17, 4, 'sanfangdianqi', 56, '路奇', NULL);
INSERT INTO `tbl_projectuser` VALUES (18, 4, 'sanfangdianqi', 1, 'admin', NULL);

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '项目名称',
  `level` int NULL DEFAULT NULL,
  `end_time` date NOT NULL COMMENT '截止时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '启用/禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, '管理员', 1, '2022-11-04', '55', 1);
INSERT INTO `tbl_role` VALUES (11, '普通', 2, '2022-11-24', 'dadsadad', 1);
INSERT INTO `tbl_role` VALUES (14, '临时员工', NULL, '2023-10-05', NULL, 1);
INSERT INTO `tbl_role` VALUES (15, '超级管理员', NULL, '2023-11-23', NULL, 1);

-- ----------------------------
-- Table structure for tbl_rolefile
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rolefile`;
CREATE TABLE `tbl_rolefile`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `role_num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色编号',
  `role_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件名',
  `file_right` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_rolefile
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_square
-- ----------------------------
DROP TABLE IF EXISTS `tbl_square`;
CREATE TABLE `tbl_square`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '场地名',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '场地位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_square
-- ----------------------------
INSERT INTO `tbl_square` VALUES (1, '场地1', '场地1', 'EMC中心');
INSERT INTO `tbl_square` VALUES (2, '场地2', '场地2', '安检中心');

-- ----------------------------
-- Table structure for tbl_todaymeal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_todaymeal`;
CREATE TABLE `tbl_todaymeal`  (
  `guemeal_id` int NOT NULL COMMENT '序号',
  `guemeal_orderuser` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订餐用户',
  `ordernum` int NOT NULL COMMENT '订餐数',
  `guemeal_ordertime` datetime NOT NULL COMMENT '预约时间',
  PRIMARY KEY (`guemeal_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_todaymeal
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `login_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户密码',
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `avatar_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin', '123456', '管理员', 'http://localhost:9090/file/79609eaefcc645b0b65487f74def93ec.jpg');
INSERT INTO `tbl_user` VALUES (2, '张三', '123456', '普通用户', NULL);
INSERT INTO `tbl_user` VALUES (10, '123', '123456', '管理员', NULL);
INSERT INTO `tbl_user` VALUES (11, '看见健康健康', '123', '管理员', NULL);
INSERT INTO `tbl_user` VALUES (12, '1234567', '36234567', '管理员', NULL);
INSERT INTO `tbl_user` VALUES (13, '2345', '1234567', '管理员', NULL);
INSERT INTO `tbl_user` VALUES (15, 'shuaipang', '', '', NULL);
INSERT INTO `tbl_user` VALUES (22, 'zhangsan', '123456', 'rtr', NULL);
INSERT INTO `tbl_user` VALUES (33, 'zhangsan', '123456', 'rtr', NULL);
INSERT INTO `tbl_user` VALUES (50, '57045704', '123456', '普通', NULL);
INSERT INTO `tbl_user` VALUES (51, '23456', '65732202', '管理员', NULL);
INSERT INTO `tbl_user` VALUES (52, '1222222', '12222222', '普通', NULL);
INSERT INTO `tbl_user` VALUES (53, '23424', '32524', '普通', NULL);
INSERT INTO `tbl_user` VALUES (54, '李四', '123456', '普通', NULL);
INSERT INTO `tbl_user` VALUES (55, '王五', '123456', '管理员', NULL);
INSERT INTO `tbl_user` VALUES (56, '路奇', '123456', '临时员工', NULL);
INSERT INTO `tbl_user` VALUES (122, '王麻子', '123456', '管理员', NULL);

-- ----------------------------
-- Table structure for tbl_userfile
-- ----------------------------
DROP TABLE IF EXISTS `tbl_userfile`;
CREATE TABLE `tbl_userfile`  (
  `id` int NOT NULL COMMENT '序号',
  `user_account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户姓名',
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件名',
  `file_right` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '文件权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_userfile
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_userinfo`;
CREATE TABLE `tbl_userinfo`  (
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_num` int NOT NULL COMMENT '工号\r\n',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth` date NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `id_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `professional_composition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `edu_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grad_institutions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grad_time` datetime NULL DEFAULT NULL,
  `prof_quality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `prof_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_insured` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `enter_time` datetime NULL DEFAULT NULL,
  `professional` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_userinfo
-- ----------------------------
INSERT INTO `tbl_userinfo` VALUES ('组织部', 1, 'admin', '女', '2023-10-13', 22, '513022199705126843', '测试人员', '测试人员', '计算机科学与技术', '成都理工大学', '2023-10-03 00:00:00', '213', '12414212', '否', '2023-10-04 00:00:00', '是', 'http://localhost:9090/fileAvatar/56ce13ada60d42ed8a38deddbefcabd5.jpg');
INSERT INTO `tbl_userinfo` VALUES ('1231', 2, '张三', '男', '2023-05-23', 20, '432211199705031235', '技术人员', '532', '', '', '2023-05-23 00:00:00', '', '', '是', '2023-05-23 00:00:00', NULL, 'http://localhost:9090/fileAvatar/56ce13ada60d42ed8a38deddbefcabd5.jpg');
INSERT INTO `tbl_userinfo` VALUES ('1231', 10, '李四', '', '2023-05-23', 28710336, '', '', '32', '', '', '2023-05-23 00:00:00', '352', '', '', '2023-05-23 00:00:00', NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 11, '', '', '2023-05-23', 15537600, '', '', '235', '', '', '2023-05-23 00:00:00', '323', '', '', '2023-05-23 00:00:00', NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 12, '1234567', '', NULL, 0, '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('555', 15, 'shuaipang', '', '2023-05-23', 15537600, '', '', '', '2442', '', '2023-05-23 00:00:00', '214', '', '', '2023-05-23 00:00:00', NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('宣传部', 16, 'shuaipang', '', '2023-05-23', 10, '12413', '开发人员', '开发人员', '人工智能', '成都理工大学', '2023-05-23 00:00:00', '123', '2345', '3224', '2023-05-23 00:00:00', NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 18, 'chaoshuai', '', '2023-08-19', 0, '', '', '', '', '', '2023-08-08 00:00:00', '', '', '', NULL, NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 22, 'zhangsan', '', '2023-08-03', 0, '', '', '', '', '', '2023-08-16 00:00:00', '', '', '', '2023-08-02 00:00:00', NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 24, 'lisi', '', NULL, 0, '', '', '', '', '', NULL, '214', '', '', NULL, NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 33, 'zhangsan', '', NULL, 0, '', '', '', '21414', '', NULL, '', '', '', NULL, NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 36, '12432', '', NULL, 0, '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 37, '张三', '', NULL, 0, '', '', '1241', '', '', NULL, '', '', '', NULL, NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('124', 38, '88888', '', '2023-06-10', 0, '', '', '', '87', '', '2023-09-11 00:00:00', '', '', '', '2023-09-30 00:00:00', NULL, NULL);
INSERT INTO `tbl_userinfo` VALUES ('', 56, '路奇', '', NULL, NULL, '', '', '', '', '', NULL, '', '', '', NULL, NULL, 'http://localhost:9090/file/982c6b5987164b2fa17c81c1b245094f.jpg');
INSERT INTO `tbl_userinfo` VALUES ('宣传部', 122, '王麻子', NULL, NULL, 23, '423055199405124567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:9090/fileAvatar/96b0925dd08f41379822ae02b7be32cd.jpg');

SET FOREIGN_KEY_CHECKS = 1;
