/*
 Navicat Premium Data Transfer

 Source Server         : XinHuo
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 121.4.26.155:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 19/11/2022 00:47:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `organization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stuName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stuClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for exam_answer_sheet
-- ----------------------------
DROP TABLE IF EXISTS `exam_answer_sheet`;
CREATE TABLE `exam_answer_sheet`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `studentNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_answer_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for exam_test_sheet
-- ----------------------------
DROP TABLE IF EXISTS `exam_test_sheet`;
CREATE TABLE `exam_test_sheet`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `object` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `hasDone` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_test_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for fill_in_question
-- ----------------------------
DROP TABLE IF EXISTS `fill_in_question`;
CREATE TABLE `fill_in_question`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trueAnswer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fill_in_question
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'article', '管理文章', '', NULL, 'Article', 'crud', 'com.ruoyi.project.system', 'system', 'article', '文章管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"文章管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:23', '', '2022-11-18 12:04:06', '');
INSERT INTO `gen_table` VALUES (2, 'exam_answer_sheet', '考试答卷', '', NULL, 'ExamAnswerSheet', 'crud', 'com.ruoyi.project.system', 'system', 'examanswer', '答卷管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2003\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"考试管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:25', '', '2022-11-18 14:10:24', '');
INSERT INTO `gen_table` VALUES (3, 'exam_test_sheet', '管理考卷', '', NULL, 'ExamTestSheet', 'crud', 'com.ruoyi.project.system', 'system', 'examsheet', '考卷管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2003\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"考试管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:26', '', '2022-11-18 14:10:36', '');
INSERT INTO `gen_table` VALUES (4, 'fill_in_question', '填空题', '', NULL, 'FillInQuestion', 'crud', 'com.ruoyi.project.system', 'system', 'fillinquestion', '管理填空题', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"题库管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:26', '', '2022-11-18 13:11:30', '');
INSERT INTO `gen_table` VALUES (5, 'gift_score_record', '得分记录', '', NULL, 'GiftScoreRecord', 'crud', 'com.ruoyi.project.system', 'system', 'giftrecord', '得分管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2005\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"积分管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:27', '', '2022-11-18 13:42:05', '');
INSERT INTO `gen_table` VALUES (6, 'great_man', '伟人表', '', NULL, 'GreatMan', 'crud', 'com.ruoyi.project.system', 'system', 'man', '伟人管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"文章管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:27', '', '2022-11-18 12:17:59', '');
INSERT INTO `gen_table` VALUES (7, 'item_exchange', '礼品', '', NULL, 'ItemExchange', 'crud', 'com.ruoyi.project.system', 'system', 'exchange', '礼品管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2005\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"积分管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:28', '', '2022-11-18 12:18:57', '');
INSERT INTO `gen_table` VALUES (8, 'judge_question', '判断题', '', NULL, 'JudgeQuestion', 'crud', 'com.ruoyi.project.system', 'system', 'judgequestion', '判断题管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"题库管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:28', '', '2022-11-18 13:10:59', '');
INSERT INTO `gen_table` VALUES (10, 'message_notification', '通知表', '', NULL, 'MessageNotification', 'crud', 'com.ruoyi.project.system', 'system', 'notification', '管理通知', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"签到管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:29', '', '2022-11-18 12:27:59', '');
INSERT INTO `gen_table` VALUES (11, 'multiple_option_question', '多选题', '', NULL, 'MultipleOptionQuestion', 'crud', 'com.ruoyi.project.system', 'system', 'mulquestion', '管理多选题', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"题库管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:30', '', '2022-11-18 13:13:11', '');
INSERT INTO `gen_table` VALUES (13, 'organization_meeting_record', '会议表', '', NULL, 'OrganizationMeetingRecord', 'crud', 'com.ruoyi.project.system', 'system', 'record', '会议管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"文章管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:31', '', '2022-11-18 12:33:25', '');
INSERT INTO `gen_table` VALUES (14, 'organization_news', '组织咨询', '', NULL, 'OrganizationNews', 'crud', 'com.ruoyi.project.system', 'system', 'news', '组织咨询管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"文章管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:31', '', '2022-11-18 12:35:53', '');
INSERT INTO `gen_table` VALUES (15, 'practice_answer_sheet', '练习答卷', '', NULL, 'PracticeAnswerSheet', 'crud', 'com.ruoyi.project.system', 'system', 'testanswer', '练习答卷管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2004\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"答题管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:32', '', '2022-11-18 14:11:47', '');
INSERT INTO `gen_table` VALUES (16, 'pratice_test_sheet', '练习试卷', '', NULL, 'PraticeTestSheet', 'crud', 'com.ruoyi.project.system', 'system', 'testsheet', '练习试卷管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2004\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"答题管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:33', '', '2022-11-18 14:11:14', '');
INSERT INTO `gen_table` VALUES (17, 'sign_in_record', '签到表', '', NULL, 'SignInRecordMy', 'crud', 'com.ruoyi.project.system', 'system', 'signrecordmy', '管理签到', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"签到管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:33', '', '2022-11-18 15:20:06', '');
INSERT INTO `gen_table` VALUES (18, 'single_option_question', '单选题', '', NULL, 'SingleOptionQuestion', 'crud', 'com.ruoyi.project.system', 'system', 'singlequestion', '单选题管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"题库管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:33', '', '2022-11-18 13:14:04', '');
INSERT INTO `gen_table` VALUES (19, 'student', '学生表', '', NULL, 'Student', 'crud', 'com.ruoyi.project.system', 'system', 'student', '管理学生', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"学生管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:34', '', '2022-11-18 12:44:28', '');
INSERT INTO `gen_table` VALUES (20, 'swear_record', '宣誓记录', '', NULL, 'SwearRecord', 'crud', 'com.ruoyi.project.system', 'system', 'swear', '宣誓管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"学生管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:35', '', '2022-11-18 13:09:01', '');
INSERT INTO `gen_table` VALUES (22, 'to_do', '待办事项', '', NULL, 'ToDo', 'crud', 'com.ruoyi.project.system', 'system', 'todo', '待办事项管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"学生管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:37', '', '2022-11-18 13:57:39', '');
INSERT INTO `gen_table` VALUES (23, 'today_in_history', '党史上的今天', '', NULL, 'TodayInHistory', 'crud', 'com.ruoyi.project.system', 'system', 'history', '党史管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"文章管理\",\"treeCode\":\"\"}', 'admin', '2022-11-18 11:58:38', '', '2022-11-18 12:48:57', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:23', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (2, '1', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:24', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (3, '1', 'time', '发布时间', 'date', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-11-18 11:58:24', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (4, '1', 'writer', '作者', 'varchar(255)', 'String', 'writer', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:24', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (5, '1', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:24', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (6, '1', 'type', '文章类型', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-11-18 11:58:24', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (7, '1', 'images', '图片地址', 'varchar(255)', 'String', 'images', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2022-11-18 11:58:24', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (8, '1', 'organization', '组织', 'varchar(255)', 'String', 'organization', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (9, '1', 'stuName', '学生名称', 'varchar(255)', 'String', 'stuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 12:04:07');
INSERT INTO `gen_table_column` VALUES (10, '1', 'stuClass', '学生班级', 'varchar(255)', 'String', 'stuClass', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 12:04:08');
INSERT INTO `gen_table_column` VALUES (11, '2', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (12, '2', 'title', '试卷名', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (13, '2', 'studentNumber', '学号', 'varchar(255)', 'String', 'studentNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (14, '2', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (15, '2', 'score', '成绩', 'varchar(255)', 'String', 'score', '0', '0', NULL, '1', '1', '1', '1', 'LTE', 'input', '', 5, 'admin', '2022-11-18 11:58:25', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (16, '2', 'type', '面向对象', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (17, '2', 'date', '考试时间', 'datetime', 'Date', 'date', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:24');
INSERT INTO `gen_table_column` VALUES (18, '3', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:36');
INSERT INTO `gen_table_column` VALUES (19, '3', 'title', '考卷名称', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:36');
INSERT INTO `gen_table_column` VALUES (20, '3', 'object', '面向对象', 'varchar(255)', 'String', 'object', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:36');
INSERT INTO `gen_table_column` VALUES (21, '3', 'date', '考试时间', 'date', 'Date', 'date', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'datetime', '', 4, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:36');
INSERT INTO `gen_table_column` VALUES (22, '3', 'content', '内容', 'longtext', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:37');
INSERT INTO `gen_table_column` VALUES (23, '3', 'hasDone', '使用/未使用', 'tinyint', 'Long', 'hasDone', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-11-18 11:58:26', NULL, '2022-11-18 14:10:37');
INSERT INTO `gen_table_column` VALUES (24, '4', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:11:30');
INSERT INTO `gen_table_column` VALUES (25, '4', 'content', '题目', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:11:31');
INSERT INTO `gen_table_column` VALUES (26, '4', 'trueAnswer', '答案', 'varchar(255)', 'String', 'trueAnswer', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:11:31');
INSERT INTO `gen_table_column` VALUES (27, '5', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:42:05');
INSERT INTO `gen_table_column` VALUES (28, '5', 'stuNumber', '学号', 'varchar(255)', 'String', 'stuNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:42:05');
INSERT INTO `gen_table_column` VALUES (29, '5', 'action', '得分操作', 'varchar(255)', 'String', 'action', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:42:05');
INSERT INTO `gen_table_column` VALUES (30, '5', 'time', '得分时间', 'date', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'datetime', '', 4, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:42:05');
INSERT INTO `gen_table_column` VALUES (31, '5', 'value', '积分值', 'int', 'Long', 'value', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:27', NULL, '2022-11-18 13:42:06');
INSERT INTO `gen_table_column` VALUES (32, '6', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:17:59');
INSERT INTO `gen_table_column` VALUES (33, '6', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:17:59');
INSERT INTO `gen_table_column` VALUES (34, '6', 'image', '图片地址', 'varchar(255)', 'String', 'image', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:17:59');
INSERT INTO `gen_table_column` VALUES (35, '6', 'description', '伟人介绍', 'longtext', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:17:59');
INSERT INTO `gen_table_column` VALUES (36, '7', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:18:57');
INSERT INTO `gen_table_column` VALUES (37, '7', 'name', '礼品名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:18:57');
INSERT INTO `gen_table_column` VALUES (38, '7', 'value', '积分值', 'varchar(255)', 'String', 'value', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:18:57');
INSERT INTO `gen_table_column` VALUES (39, '7', 'image', '图片地址', 'varchar(255)', 'String', 'image', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:28', NULL, '2022-11-18 12:18:57');
INSERT INTO `gen_table_column` VALUES (40, '8', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:29', NULL, '2022-11-18 13:10:59');
INSERT INTO `gen_table_column` VALUES (41, '8', 'content', '题目', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'summernote', '', 2, 'admin', '2022-11-18 11:58:29', NULL, '2022-11-18 13:10:59');
INSERT INTO `gen_table_column` VALUES (42, '8', 'trueAnswer', '答案', 'varchar(255)', 'String', 'trueAnswer', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:29', NULL, '2022-11-18 13:10:59');
INSERT INTO `gen_table_column` VALUES (43, '8', 'checked', '是/否', 'tinyint', 'Long', 'checked', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:29', NULL, '2022-11-18 13:11:00');
INSERT INTO `gen_table_column` VALUES (44, '8', 'options', '选项', 'varchar(255)', 'String', 'options', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:29', NULL, '2022-11-18 13:11:00');
INSERT INTO `gen_table_column` VALUES (49, '10', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 12:28:00');
INSERT INTO `gen_table_column` VALUES (50, '10', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 12:28:00');
INSERT INTO `gen_table_column` VALUES (51, '10', 'time', '时间', 'datetime', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 12:28:00');
INSERT INTO `gen_table_column` VALUES (52, '10', 'stuNumber', '学号', 'varchar(255)', 'String', 'stuNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 12:28:00');
INSERT INTO `gen_table_column` VALUES (53, '11', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 13:13:11');
INSERT INTO `gen_table_column` VALUES (54, '11', 'question', '题目', 'text', 'String', 'question', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 13:13:11');
INSERT INTO `gen_table_column` VALUES (55, '11', 'trueAnswer', '答案', 'varchar(255)', 'String', 'trueAnswer', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 13:13:11');
INSERT INTO `gen_table_column` VALUES (56, '11', 'options', '选项', 'text', 'String', 'options', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 13:13:11');
INSERT INTO `gen_table_column` VALUES (57, '11', 'checked', '是/否', 'varchar(255)', 'String', 'checked', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:30', NULL, '2022-11-18 13:13:11');
INSERT INTO `gen_table_column` VALUES (61, '13', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:31', NULL, '2022-11-18 12:33:25');
INSERT INTO `gen_table_column` VALUES (62, '13', 'type', '会议类型', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'select', '', 2, 'admin', '2022-11-18 11:58:31', NULL, '2022-11-18 12:33:25');
INSERT INTO `gen_table_column` VALUES (63, '13', 'participants', '参与人员', 'varchar(255)', 'String', 'participants', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:31', NULL, '2022-11-18 12:33:25');
INSERT INTO `gen_table_column` VALUES (64, '13', 'time', '会议时间', 'date', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2022-11-18 11:58:31', NULL, '2022-11-18 12:33:25');
INSERT INTO `gen_table_column` VALUES (65, '13', 'title', '会议主题', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:31', NULL, '2022-11-18 12:33:25');
INSERT INTO `gen_table_column` VALUES (66, '14', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 12:35:53');
INSERT INTO `gen_table_column` VALUES (67, '14', 'time', '时间', 'datetime', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 12:35:53');
INSERT INTO `gen_table_column` VALUES (68, '14', 'title', '咨询标题', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 12:35:53');
INSERT INTO `gen_table_column` VALUES (69, '14', 'author', '作者', 'varchar(255)', 'String', 'author', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 12:35:53');
INSERT INTO `gen_table_column` VALUES (70, '15', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (71, '15', 'title', '试卷名', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (72, '15', 'studentNumber', '学号', 'varchar(255)', 'String', 'studentNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (73, '15', 'content', '内容', 'longtext', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (74, '15', 'score', '成绩', 'varchar(255)', 'String', 'score', '0', '0', NULL, '1', '1', '1', '1', 'LTE', 'input', '', 5, 'admin', '2022-11-18 11:58:32', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (75, '15', 'type', '面向对象', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'select', '', 6, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (76, '15', 'date', '答题时间', 'datetime', 'Date', 'date', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 14:11:48');
INSERT INTO `gen_table_column` VALUES (77, '16', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 14:11:14');
INSERT INTO `gen_table_column` VALUES (78, '16', 'title', '考卷名称', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 14:11:14');
INSERT INTO `gen_table_column` VALUES (79, '16', 'type', '面向对象', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 14:11:14');
INSERT INTO `gen_table_column` VALUES (80, '16', 'content', '内容', 'longtext', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 14:11:14');
INSERT INTO `gen_table_column` VALUES (81, '17', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 15:20:06');
INSERT INTO `gen_table_column` VALUES (82, '17', 'stuNumber', '学号', 'varchar(255)', 'String', 'stuNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 15:20:06');
INSERT INTO `gen_table_column` VALUES (83, '17', 'date', '登录时间', 'date', 'Date', 'date', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-11-18 11:58:33', NULL, '2022-11-18 15:20:07');
INSERT INTO `gen_table_column` VALUES (84, '18', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 13:14:04');
INSERT INTO `gen_table_column` VALUES (85, '18', 'checked', '是/否', 'tinyint', 'Long', 'checked', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 13:14:04');
INSERT INTO `gen_table_column` VALUES (86, '18', 'question', '题目', 'text', 'String', 'question', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 3, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 13:14:05');
INSERT INTO `gen_table_column` VALUES (87, '18', 'trueAnswer', '答案', 'varchar(255)', 'String', 'trueAnswer', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 13:14:05');
INSERT INTO `gen_table_column` VALUES (88, '18', 'options', '选项', 'text', 'String', 'options', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 13:14:05');
INSERT INTO `gen_table_column` VALUES (89, '19', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 1, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 12:44:28');
INSERT INTO `gen_table_column` VALUES (90, '19', 'number', '学号', 'varchar(255)', 'String', 'number', '1', '0', NULL, '1', NULL, NULL, NULL, 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 12:44:28');
INSERT INTO `gen_table_column` VALUES (91, '19', 'giftScore', '积分', 'varchar(255)', 'String', 'giftScore', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-11-18 11:58:34', NULL, '2022-11-18 12:44:28');
INSERT INTO `gen_table_column` VALUES (92, '19', 'organization', '组织', 'varchar(255)', 'String', 'organization', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-11-18 11:58:35', NULL, '2022-11-18 12:44:28');
INSERT INTO `gen_table_column` VALUES (93, '19', 'phoneNumber', '电话号码', 'varchar(255)', 'String', 'phoneNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-11-18 11:58:35', NULL, '2022-11-18 12:44:28');
INSERT INTO `gen_table_column` VALUES (94, '19', 'identity', '身份', 'varchar(255)', 'String', 'identity', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-11-18 11:58:35', NULL, '2022-11-18 12:44:29');
INSERT INTO `gen_table_column` VALUES (95, '20', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:36', NULL, '2022-11-18 13:09:02');
INSERT INTO `gen_table_column` VALUES (96, '20', 'stuNumber', '学号', 'varchar(255)', 'String', 'stuNumber', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-11-18 11:58:36', NULL, '2022-11-18 13:09:02');
INSERT INTO `gen_table_column` VALUES (97, '20', 'swearCount', '宣誓次数', 'int', 'Long', 'swearCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-11-18 11:58:36', NULL, '2022-11-18 13:09:02');
INSERT INTO `gen_table_column` VALUES (100, '22', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:37', NULL, '2022-11-18 13:57:40');
INSERT INTO `gen_table_column` VALUES (101, '22', 'studentNumber', '学号', 'varchar(255)', 'String', 'studentNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-11-18 11:58:37', NULL, '2022-11-18 13:57:40');
INSERT INTO `gen_table_column` VALUES (102, '22', 'content', '待办事项', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-11-18 11:58:37', NULL, '2022-11-18 13:57:40');
INSERT INTO `gen_table_column` VALUES (103, '23', 'id', '编号', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-11-18 11:58:38', NULL, '2022-11-18 12:48:57');
INSERT INTO `gen_table_column` VALUES (104, '23', 'date', '时间', 'varchar(255)', 'String', 'date', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-11-18 11:58:38', NULL, '2022-11-18 12:48:57');
INSERT INTO `gen_table_column` VALUES (105, '23', 'content', '内容', 'longtext', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'summernote', '', 3, 'admin', '2022-11-18 11:58:38', NULL, '2022-11-18 12:48:57');

-- ----------------------------
-- Table structure for gift_score_record
-- ----------------------------
DROP TABLE IF EXISTS `gift_score_record`;
CREATE TABLE `gift_score_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stuNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `value` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gift_score_record
-- ----------------------------

-- ----------------------------
-- Table structure for great_man
-- ----------------------------
DROP TABLE IF EXISTS `great_man`;
CREATE TABLE `great_man`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of great_man
-- ----------------------------

-- ----------------------------
-- Table structure for item_exchange
-- ----------------------------
DROP TABLE IF EXISTS `item_exchange`;
CREATE TABLE `item_exchange`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for judge_question
-- ----------------------------
DROP TABLE IF EXISTS `judge_question`;
CREATE TABLE `judge_question`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trueAnswer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checked` tinyint NULL DEFAULT NULL,
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of judge_question
-- ----------------------------

-- ----------------------------
-- Table structure for learning_time
-- ----------------------------
DROP TABLE IF EXISTS `learning_time`;
CREATE TABLE `learning_time`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stuNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `timeCount` time NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of learning_time
-- ----------------------------

-- ----------------------------
-- Table structure for message_notification
-- ----------------------------
DROP TABLE IF EXISTS `message_notification`;
CREATE TABLE `message_notification`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `stuNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_notification
-- ----------------------------

-- ----------------------------
-- Table structure for multiple_option_question
-- ----------------------------
DROP TABLE IF EXISTS `multiple_option_question`;
CREATE TABLE `multiple_option_question`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trueAnswer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `checked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of multiple_option_question
-- ----------------------------

-- ----------------------------
-- Table structure for organization_info
-- ----------------------------
DROP TABLE IF EXISTS `organization_info`;
CREATE TABLE `organization_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_info
-- ----------------------------

-- ----------------------------
-- Table structure for organization_meeting_record
-- ----------------------------
DROP TABLE IF EXISTS `organization_meeting_record`;
CREATE TABLE `organization_meeting_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `participants` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_meeting_record
-- ----------------------------

-- ----------------------------
-- Table structure for organization_news
-- ----------------------------
DROP TABLE IF EXISTS `organization_news`;
CREATE TABLE `organization_news`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` datetime NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_news
-- ----------------------------

-- ----------------------------
-- Table structure for practice_answer_sheet
-- ----------------------------
DROP TABLE IF EXISTS `practice_answer_sheet`;
CREATE TABLE `practice_answer_sheet`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `studentNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of practice_answer_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for pratice_test_sheet
-- ----------------------------
DROP TABLE IF EXISTS `pratice_test_sheet`;
CREATE TABLE `pratice_test_sheet`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pratice_test_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for sign_in_record
-- ----------------------------
DROP TABLE IF EXISTS `sign_in_record`;
CREATE TABLE `sign_in_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stuNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign_in_record
-- ----------------------------

-- ----------------------------
-- Table structure for single_option_question
-- ----------------------------
DROP TABLE IF EXISTS `single_option_question`;
CREATE TABLE `single_option_question`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `checked` tinyint NULL DEFAULT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `trueAnswer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of single_option_question
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `giftScore` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `organization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for swear_record
-- ----------------------------
DROP TABLE IF EXISTS `swear_record`;
CREATE TABLE `swear_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stuNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `swearCount` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of swear_record
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2022-11-18 11:31:00', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:39', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-11-18 11:30:40', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:57', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-11-18 11:30:58', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-11-18 11:30:58', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-11-18 11:30:58', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:58', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-11-18 11:30:58', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-11-18 11:30:59', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-11-18 11:30:55', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-11-18 11:30:55', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-11-18 11:30:55', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-11-18 11:30:56', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-11-18 11:31:01', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-11-18 11:31:01', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-11-18 11:31:01', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 11:32:40');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 11:40:42');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-11-18 13:03:03');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 13:03:06');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 13:04:33');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 13:30:22');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 13:37:30');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 13:51:31');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 13:57:14');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 14:00:52');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 14:02:19');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 14:43:32');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-11-18 15:09:54');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:09:58');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:16:06');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:16:46');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:18:11');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:22:41');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:24:08');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:30:30');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 15:32:00');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-11-18 16:24:39');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2007 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-11-18 11:30:42', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-11-18 11:30:42', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-11-18 11:30:42', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '1', '1', '', 'fa fa-location-arrow', 'admin', '2022-11-18 11:30:42', 'admin', '2022-11-18 11:33:38', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2022-11-18 11:30:42', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2022-11-18 11:30:42', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2022-11-18 11:30:42', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2022-11-18 11:30:42', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2022-11-18 11:30:42', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2022-11-18 11:30:42', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2022-11-18 11:30:42', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2022-11-18 11:30:42', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2022-11-18 11:30:42', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2022-11-18 11:30:43', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2022-11-18 11:30:43', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2022-11-18 11:30:43', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2022-11-18 11:30:43', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2022-11-18 11:30:43', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2022-11-18 11:30:43', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2022-11-18 11:30:43', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2022-11-18 11:30:43', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2022-11-18 11:30:43', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2022-11-18 11:30:43', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2022-11-18 11:30:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2022-11-18 11:30:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2022-11-18 11:30:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2022-11-18 11:30:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2022-11-18 11:30:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2022-11-18 11:30:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2022-11-18 11:30:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2022-11-18 11:30:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2022-11-18 11:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '文章管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-book', 'admin', '2022-11-18 11:47:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '题库管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-database', 'admin', '2022-11-18 11:51:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '学生管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-address-book', 'admin', '2022-11-18 11:51:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '考试管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-bookmark-o', 'admin', '2022-11-18 11:52:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '答题管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-edit', 'admin', '2022-11-18 11:52:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '积分管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-gift', 'admin', '2022-11-18 11:54:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '签到管理', 0, 5, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-check-square-o', 'admin', '2022-11-18 11:54:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '文章管理', 2000, 1, '/system/article', '', 'C', '0', '1', 'system:article:view', '#', 'admin', '2022-11-18 12:54:15', '', NULL, '文章管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '文章管理查询', 2007, 1, '#', '', 'F', '0', '1', 'system:article:list', '#', 'admin', '2022-11-18 12:54:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '文章管理新增', 2007, 2, '#', '', 'F', '0', '1', 'system:article:add', '#', 'admin', '2022-11-18 12:54:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '文章管理修改', 2007, 3, '#', '', 'F', '0', '1', 'system:article:edit', '#', 'admin', '2022-11-18 12:54:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '文章管理删除', 2007, 4, '#', '', 'F', '0', '1', 'system:article:remove', '#', 'admin', '2022-11-18 12:54:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '文章管理导出', 2007, 5, '#', '', 'F', '0', '1', 'system:article:export', '#', 'admin', '2022-11-18 12:54:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '伟人管理', 2000, 1, '/system/man', '', 'C', '0', '1', 'system:man:view', '#', 'admin', '2022-11-18 12:54:51', '', NULL, '伟人管理菜单');
INSERT INTO `sys_menu` VALUES (2014, '伟人管理查询', 2013, 1, '#', '', 'F', '0', '1', 'system:man:list', '#', 'admin', '2022-11-18 12:54:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '伟人管理新增', 2013, 2, '#', '', 'F', '0', '1', 'system:man:add', '#', 'admin', '2022-11-18 12:54:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '伟人管理修改', 2013, 3, '#', '', 'F', '0', '1', 'system:man:edit', '#', 'admin', '2022-11-18 12:54:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '伟人管理删除', 2013, 4, '#', '', 'F', '0', '1', 'system:man:remove', '#', 'admin', '2022-11-18 12:54:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '伟人管理导出', 2013, 5, '#', '', 'F', '0', '1', 'system:man:export', '#', 'admin', '2022-11-18 12:54:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '会议管理', 2000, 1, '/system/record', '', 'C', '0', '1', 'system:record:view', '#', 'admin', '2022-11-18 12:55:43', '', NULL, '会议管理菜单');
INSERT INTO `sys_menu` VALUES (2020, '会议管理查询', 2019, 1, '#', '', 'F', '0', '1', 'system:record:list', '#', 'admin', '2022-11-18 12:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '会议管理新增', 2019, 2, '#', '', 'F', '0', '1', 'system:record:add', '#', 'admin', '2022-11-18 12:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '会议管理修改', 2019, 3, '#', '', 'F', '0', '1', 'system:record:edit', '#', 'admin', '2022-11-18 12:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '会议管理删除', 2019, 4, '#', '', 'F', '0', '1', 'system:record:remove', '#', 'admin', '2022-11-18 12:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '会议管理导出', 2019, 5, '#', '', 'F', '0', '1', 'system:record:export', '#', 'admin', '2022-11-18 12:55:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '组织咨询管理', 2000, 1, '/system/news', '', 'C', '0', '1', 'system:news:view', '#', 'admin', '2022-11-18 12:56:12', '', NULL, '组织咨询管理菜单');
INSERT INTO `sys_menu` VALUES (2026, '组织咨询管理查询', 2025, 1, '#', '', 'F', '0', '1', 'system:news:list', '#', 'admin', '2022-11-18 12:56:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '组织咨询管理新增', 2025, 2, '#', '', 'F', '0', '1', 'system:news:add', '#', 'admin', '2022-11-18 12:56:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '组织咨询管理修改', 2025, 3, '#', '', 'F', '0', '1', 'system:news:edit', '#', 'admin', '2022-11-18 12:56:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '组织咨询管理删除', 2025, 4, '#', '', 'F', '0', '1', 'system:news:remove', '#', 'admin', '2022-11-18 12:56:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '组织咨询管理导出', 2025, 5, '#', '', 'F', '0', '1', 'system:news:export', '#', 'admin', '2022-11-18 12:56:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '党史管理', 2000, 1, '/system/history', '', 'C', '0', '1', 'system:history:view', '#', 'admin', '2022-11-18 12:56:33', '', NULL, '党史管理菜单');
INSERT INTO `sys_menu` VALUES (2032, '党史管理查询', 2031, 1, '#', '', 'F', '0', '1', 'system:history:list', '#', 'admin', '2022-11-18 12:56:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '党史管理新增', 2031, 2, '#', '', 'F', '0', '1', 'system:history:add', '#', 'admin', '2022-11-18 12:56:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '党史管理修改', 2031, 3, '#', '', 'F', '0', '1', 'system:history:edit', '#', 'admin', '2022-11-18 12:56:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '党史管理删除', 2031, 4, '#', '', 'F', '0', '1', 'system:history:remove', '#', 'admin', '2022-11-18 12:56:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '党史管理导出', 2031, 5, '#', '', 'F', '0', '1', 'system:history:export', '#', 'admin', '2022-11-18 12:56:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '单选题管理', 2001, 1, '/system/singlequestion', '', 'C', '0', '1', 'system:singlequestion:view', '#', 'admin', '2022-11-18 13:14:50', '', NULL, '单选题管理菜单');
INSERT INTO `sys_menu` VALUES (2038, '单选题管理查询', 2037, 1, '#', '', 'F', '0', '1', 'system:singlequestion:list', '#', 'admin', '2022-11-18 13:14:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '单选题管理新增', 2037, 2, '#', '', 'F', '0', '1', 'system:singlequestion:add', '#', 'admin', '2022-11-18 13:14:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '单选题管理修改', 2037, 3, '#', '', 'F', '0', '1', 'system:singlequestion:edit', '#', 'admin', '2022-11-18 13:14:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '单选题管理删除', 2037, 4, '#', '', 'F', '0', '1', 'system:singlequestion:remove', '#', 'admin', '2022-11-18 13:14:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '单选题管理导出', 2037, 5, '#', '', 'F', '0', '1', 'system:singlequestion:export', '#', 'admin', '2022-11-18 13:14:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '管理多选题', 2001, 1, '/system/mulquestion', '', 'C', '0', '1', 'system:mulquestion:view', '#', 'admin', '2022-11-18 13:15:28', '', NULL, '管理多选题菜单');
INSERT INTO `sys_menu` VALUES (2044, '管理多选题查询', 2043, 1, '#', '', 'F', '0', '1', 'system:mulquestion:list', '#', 'admin', '2022-11-18 13:15:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '管理多选题新增', 2043, 2, '#', '', 'F', '0', '1', 'system:mulquestion:add', '#', 'admin', '2022-11-18 13:15:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '管理多选题修改', 2043, 3, '#', '', 'F', '0', '1', 'system:mulquestion:edit', '#', 'admin', '2022-11-18 13:15:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '管理多选题删除', 2043, 4, '#', '', 'F', '0', '1', 'system:mulquestion:remove', '#', 'admin', '2022-11-18 13:15:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '管理多选题导出', 2043, 5, '#', '', 'F', '0', '1', 'system:mulquestion:export', '#', 'admin', '2022-11-18 13:15:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '判断题管理', 2001, 1, '/system/judgequestion', '', 'C', '0', '1', 'system:judgequestion:view', '#', 'admin', '2022-11-18 13:22:11', '', NULL, '判断题管理菜单');
INSERT INTO `sys_menu` VALUES (2050, '判断题管理查询', 2049, 1, '#', '', 'F', '0', '1', 'system:judgequestion:list', '#', 'admin', '2022-11-18 13:22:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '判断题管理新增', 2049, 2, '#', '', 'F', '0', '1', 'system:judgequestion:add', '#', 'admin', '2022-11-18 13:22:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '判断题管理修改', 2049, 3, '#', '', 'F', '0', '1', 'system:judgequestion:edit', '#', 'admin', '2022-11-18 13:22:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '判断题管理删除', 2049, 4, '#', '', 'F', '0', '1', 'system:judgequestion:remove', '#', 'admin', '2022-11-18 13:22:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '判断题管理导出', 2049, 5, '#', '', 'F', '0', '1', 'system:judgequestion:export', '#', 'admin', '2022-11-18 13:22:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '管理填空题', 2001, 1, '/system/fillinquestion', '', 'C', '0', '1', 'system:fillinquestion:view', '#', 'admin', '2022-11-18 13:24:34', '', NULL, '管理填空题菜单');
INSERT INTO `sys_menu` VALUES (2056, '管理填空题查询', 2055, 1, '#', '', 'F', '0', '1', 'system:fillinquestion:list', '#', 'admin', '2022-11-18 13:24:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '管理填空题新增', 2055, 2, '#', '', 'F', '0', '1', 'system:fillinquestion:add', '#', 'admin', '2022-11-18 13:24:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '管理填空题修改', 2055, 3, '#', '', 'F', '0', '1', 'system:fillinquestion:edit', '#', 'admin', '2022-11-18 13:24:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '管理填空题删除', 2055, 4, '#', '', 'F', '0', '1', 'system:fillinquestion:remove', '#', 'admin', '2022-11-18 13:24:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '管理填空题导出', 2055, 5, '#', '', 'F', '0', '1', 'system:fillinquestion:export', '#', 'admin', '2022-11-18 13:24:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '礼品管理', 2005, 1, '/system/exchange', '', 'C', '0', '1', 'system:exchange:view', '#', 'admin', '2022-11-18 13:40:58', '', NULL, '礼品管理菜单');
INSERT INTO `sys_menu` VALUES (2062, '礼品管理查询', 2061, 1, '#', '', 'F', '0', '1', 'system:exchange:list', '#', 'admin', '2022-11-18 13:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '礼品管理新增', 2061, 2, '#', '', 'F', '0', '1', 'system:exchange:add', '#', 'admin', '2022-11-18 13:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '礼品管理修改', 2061, 3, '#', '', 'F', '0', '1', 'system:exchange:edit', '#', 'admin', '2022-11-18 13:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '礼品管理删除', 2061, 4, '#', '', 'F', '0', '1', 'system:exchange:remove', '#', 'admin', '2022-11-18 13:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '礼品管理导出', 2061, 5, '#', '', 'F', '0', '1', 'system:exchange:export', '#', 'admin', '2022-11-18 13:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '得分管理', 2005, 1, '/system/giftrecord', '', 'C', '0', '1', 'system:giftrecord:view', '#', 'admin', '2022-11-18 13:42:44', '', NULL, '得分管理菜单');
INSERT INTO `sys_menu` VALUES (2068, '得分管理查询', 2067, 1, '#', '', 'F', '0', '1', 'system:giftrecord:list', '#', 'admin', '2022-11-18 13:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '得分管理新增', 2067, 2, '#', '', 'F', '0', '1', 'system:giftrecord:add', '#', 'admin', '2022-11-18 13:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '得分管理修改', 2067, 3, '#', '', 'F', '0', '1', 'system:giftrecord:edit', '#', 'admin', '2022-11-18 13:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '得分管理删除', 2067, 4, '#', '', 'F', '0', '1', 'system:giftrecord:remove', '#', 'admin', '2022-11-18 13:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '得分管理导出', 2067, 5, '#', '', 'F', '0', '1', 'system:giftrecord:export', '#', 'admin', '2022-11-18 13:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2073, '管理学生', 2002, 1, '/system/student', '', 'C', '0', '1', 'system:student:view', '#', 'admin', '2022-11-18 13:47:37', '', NULL, '管理学生菜单');
INSERT INTO `sys_menu` VALUES (2074, '管理学生查询', 2073, 1, '#', '', 'F', '0', '1', 'system:student:list', '#', 'admin', '2022-11-18 13:47:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '管理学生新增', 2073, 2, '#', '', 'F', '0', '1', 'system:student:add', '#', 'admin', '2022-11-18 13:47:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2076, '管理学生修改', 2073, 3, '#', '', 'F', '0', '1', 'system:student:edit', '#', 'admin', '2022-11-18 13:47:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2077, '管理学生删除', 2073, 4, '#', '', 'F', '0', '1', 'system:student:remove', '#', 'admin', '2022-11-18 13:47:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2078, '管理学生导出', 2073, 5, '#', '', 'F', '0', '1', 'system:student:export', '#', 'admin', '2022-11-18 13:47:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2079, '宣誓管理', 2002, 1, '/system/swear', '', 'C', '0', '1', 'system:swear:view', '#', 'admin', '2022-11-18 13:47:54', '', NULL, '宣誓管理菜单');
INSERT INTO `sys_menu` VALUES (2080, '宣誓管理查询', 2079, 1, '#', '', 'F', '0', '1', 'system:swear:list', '#', 'admin', '2022-11-18 13:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '宣誓管理新增', 2079, 2, '#', '', 'F', '0', '1', 'system:swear:add', '#', 'admin', '2022-11-18 13:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2082, '宣誓管理修改', 2079, 3, '#', '', 'F', '0', '1', 'system:swear:edit', '#', 'admin', '2022-11-18 13:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2083, '宣誓管理删除', 2079, 4, '#', '', 'F', '0', '1', 'system:swear:remove', '#', 'admin', '2022-11-18 13:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2084, '宣誓管理导出', 2079, 5, '#', '', 'F', '0', '1', 'system:swear:export', '#', 'admin', '2022-11-18 13:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2085, '待办事项管理', 2002, 1, '/system/do', 'menuItem', 'C', '1', '1', 'system:do:view', '#', 'admin', '2022-11-18 13:48:12', 'admin', '2022-11-18 14:03:56', '待办事项管理菜单');
INSERT INTO `sys_menu` VALUES (2086, '待办事项管理查询', 2085, 1, '#', '', 'F', '0', '1', 'system:do:list', '#', 'admin', '2022-11-18 13:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2087, '待办事项管理新增', 2085, 2, '#', '', 'F', '0', '1', 'system:do:add', '#', 'admin', '2022-11-18 13:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2088, '待办事项管理修改', 2085, 3, '#', '', 'F', '0', '1', 'system:do:edit', '#', 'admin', '2022-11-18 13:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '待办事项管理删除', 2085, 4, '#', '', 'F', '0', '1', 'system:do:remove', '#', 'admin', '2022-11-18 13:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2090, '待办事项管理导出', 2085, 5, '#', '', 'F', '0', '1', 'system:do:export', '#', 'admin', '2022-11-18 13:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2091, '待办事项管理', 2002, 1, '/system/todo', '', 'C', '0', '1', 'system:todo:view', '#', 'admin', '2022-11-18 13:58:35', '', NULL, '待办事项管理菜单');
INSERT INTO `sys_menu` VALUES (2092, '待办事项管理查询', 2091, 1, '#', '', 'F', '0', '1', 'system:todo:list', '#', 'admin', '2022-11-18 13:58:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2093, '待办事项管理新增', 2091, 2, '#', '', 'F', '0', '1', 'system:todo:add', '#', 'admin', '2022-11-18 13:58:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2094, '待办事项管理修改', 2091, 3, '#', '', 'F', '0', '1', 'system:todo:edit', '#', 'admin', '2022-11-18 13:58:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2095, '待办事项管理删除', 2091, 4, '#', '', 'F', '0', '1', 'system:todo:remove', '#', 'admin', '2022-11-18 13:58:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2096, '待办事项管理导出', 2091, 5, '#', '', 'F', '0', '1', 'system:todo:export', '#', 'admin', '2022-11-18 13:58:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '答卷管理', 2003, 1, '/system/examanswer', '', 'C', '0', '1', 'system:examanswer:view', '#', 'admin', '2022-11-18 14:14:36', '', NULL, '答卷管理菜单');
INSERT INTO `sys_menu` VALUES (2110, '答卷管理查询', 2109, 1, '#', '', 'F', '0', '1', 'system:examanswer:list', '#', 'admin', '2022-11-18 14:14:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2111, '答卷管理新增', 2109, 2, '#', '', 'F', '0', '1', 'system:examanswer:add', '#', 'admin', '2022-11-18 14:14:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2112, '答卷管理修改', 2109, 3, '#', '', 'F', '0', '1', 'system:examanswer:edit', '#', 'admin', '2022-11-18 14:14:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2113, '答卷管理删除', 2109, 4, '#', '', 'F', '0', '1', 'system:examanswer:remove', '#', 'admin', '2022-11-18 14:14:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2114, '答卷管理导出', 2109, 5, '#', '', 'F', '0', '1', 'system:examanswer:export', '#', 'admin', '2022-11-18 14:14:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2115, '考卷管理', 2003, 1, '/system/examsheet', '', 'C', '0', '1', 'system:examsheet:view', '#', 'admin', '2022-11-18 14:14:54', '', NULL, '考卷管理菜单');
INSERT INTO `sys_menu` VALUES (2116, '考卷管理查询', 2115, 1, '#', '', 'F', '0', '1', 'system:examsheet:list', '#', 'admin', '2022-11-18 14:14:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2117, '考卷管理新增', 2115, 2, '#', '', 'F', '0', '1', 'system:examsheet:add', '#', 'admin', '2022-11-18 14:14:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2118, '考卷管理修改', 2115, 3, '#', '', 'F', '0', '1', 'system:examsheet:edit', '#', 'admin', '2022-11-18 14:14:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2119, '考卷管理删除', 2115, 4, '#', '', 'F', '0', '1', 'system:examsheet:remove', '#', 'admin', '2022-11-18 14:14:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2120, '考卷管理导出', 2115, 5, '#', '', 'F', '0', '1', 'system:examsheet:export', '#', 'admin', '2022-11-18 14:14:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2121, '练习答卷管理', 2004, 1, '/system/testanswer', '', 'C', '0', '1', 'system:testanswer:view', '#', 'admin', '2022-11-18 14:15:14', '', NULL, '练习答卷管理菜单');
INSERT INTO `sys_menu` VALUES (2122, '练习答卷管理查询', 2121, 1, '#', '', 'F', '0', '1', 'system:testanswer:list', '#', 'admin', '2022-11-18 14:15:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2123, '练习答卷管理新增', 2121, 2, '#', '', 'F', '0', '1', 'system:testanswer:add', '#', 'admin', '2022-11-18 14:15:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2124, '练习答卷管理修改', 2121, 3, '#', '', 'F', '0', '1', 'system:testanswer:edit', '#', 'admin', '2022-11-18 14:15:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2125, '练习答卷管理删除', 2121, 4, '#', '', 'F', '0', '1', 'system:testanswer:remove', '#', 'admin', '2022-11-18 14:15:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2126, '练习答卷管理导出', 2121, 5, '#', '', 'F', '0', '1', 'system:testanswer:export', '#', 'admin', '2022-11-18 14:15:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2127, '练习试卷管理', 2004, 1, '/system/testsheet', '', 'C', '0', '1', 'system:testsheet:view', '#', 'admin', '2022-11-18 14:15:34', '', NULL, '练习试卷管理菜单');
INSERT INTO `sys_menu` VALUES (2128, '练习试卷管理查询', 2127, 1, '#', '', 'F', '0', '1', 'system:testsheet:list', '#', 'admin', '2022-11-18 14:15:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2129, '练习试卷管理新增', 2127, 2, '#', '', 'F', '0', '1', 'system:testsheet:add', '#', 'admin', '2022-11-18 14:15:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2130, '练习试卷管理修改', 2127, 3, '#', '', 'F', '0', '1', 'system:testsheet:edit', '#', 'admin', '2022-11-18 14:15:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2131, '练习试卷管理删除', 2127, 4, '#', '', 'F', '0', '1', 'system:testsheet:remove', '#', 'admin', '2022-11-18 14:15:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2132, '练习试卷管理导出', 2127, 5, '#', '', 'F', '0', '1', 'system:testsheet:export', '#', 'admin', '2022-11-18 14:15:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2145, '管理通知', 2006, 1, '/system/notification', '', 'C', '0', '1', 'system:notification:view', '#', 'admin', '2022-11-18 15:14:25', '', NULL, '管理通知菜单');
INSERT INTO `sys_menu` VALUES (2146, '管理通知查询', 2145, 1, '#', '', 'F', '0', '1', 'system:notification:list', '#', 'admin', '2022-11-18 15:14:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2147, '管理通知新增', 2145, 2, '#', '', 'F', '0', '1', 'system:notification:add', '#', 'admin', '2022-11-18 15:14:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2148, '管理通知修改', 2145, 3, '#', '', 'F', '0', '1', 'system:notification:edit', '#', 'admin', '2022-11-18 15:14:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2149, '管理通知删除', 2145, 4, '#', '', 'F', '0', '1', 'system:notification:remove', '#', 'admin', '2022-11-18 15:14:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2150, '管理通知导出', 2145, 5, '#', '', 'F', '0', '1', 'system:notification:export', '#', 'admin', '2022-11-18 15:14:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2151, '管理签到', 2006, 1, '/system/signrecordmy', '', 'C', '0', '1', 'system:signrecordmy:view', '#', 'admin', '2022-11-18 15:20:43', '', NULL, '管理签到菜单');
INSERT INTO `sys_menu` VALUES (2152, '管理签到查询', 2151, 1, '#', '', 'F', '0', '1', 'system:signrecordmy:list', '#', 'admin', '2022-11-18 15:20:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2153, '管理签到新增', 2151, 2, '#', '', 'F', '0', '1', 'system:signrecordmy:add', '#', 'admin', '2022-11-18 15:20:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2154, '管理签到修改', 2151, 3, '#', '', 'F', '0', '1', 'system:signrecordmy:edit', '#', 'admin', '2022-11-18 15:20:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2155, '管理签到删除', 2151, 4, '#', '', 'F', '0', '1', 'system:signrecordmy:remove', '#', 'admin', '2022-11-18 15:20:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2156, '管理签到导出', 2151, 5, '#', '', 'F', '0', '1', 'system:signrecordmy:export', '#', 'admin', '2022-11-18 15:20:43', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2022-11-18 11:31:02', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2022-11-18 11:31:02', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:33:38');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"文章管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:47:57');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"题库管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-database\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:51:20');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"学生管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:51:44');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"考试管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-bookmark-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:52:22');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"答题管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-edit\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:52:52');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"积分管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-gift\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:54:10');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"签到管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-check-square-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:54:47');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"today_in_history,temporary_visitor,to_do,student,exam_test_sheet,fill_in_question,gift_score_record,great_man,item_exchange,judge_question,learning_time,message_notification,multiple_option_question,organization_info,organization_meeting_record,organization_news,practice_answer_sheet,pratice_test_sheet,sign_in_record,single_option_question,swear_record,exam_answer_sheet,article\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 11:58:38');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"article\"],\"tableComment\":[\"管理文章\"],\"className\":[\"Article\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"发布时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"time\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"作者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"writer\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"文章类型\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:00:54');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"exam_answer_sheet\"],\"tableComment\":[\"考试答卷\"],\"className\":[\"ExamAnswerSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"试卷名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"成绩\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"score\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LTE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试类型\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns[5].isIns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:03:30');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"article\"],\"tableComment\":[\"管理文章\"],\"className\":[\"Article\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"发布时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"time\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"作者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"writer\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"文章类型\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:04:08');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"exam_test_sheet\"],\"tableComment\":[\"管理考卷\"],\"className\":[\"ExamTestSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考卷名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"面向对象\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"object\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"考试时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"date\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"22\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"23\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"使用/未使用\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"hasDone\"],\"columns[5].isInser', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:07:50');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"exam_answer_sheet\"],\"tableComment\":[\"考试答卷\"],\"className\":[\"ExamAnswerSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"试卷名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"成绩\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"score\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LTE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"面向对象\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns[5].isIns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:08:55');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"fill_in_question\"],\"tableComment\":[\"填空题\"],\"className\":[\"FillInQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"24\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"25\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"content\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"26\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"question\"],\"functionName\":[\"管理填空题\"],\"params[parentMenuId]\":[\"2001\"],\"params[parentMenuName]\":[\"题库管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:09:52');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"judge_question\"],\"tableComment\":[\"判断题\"],\"className\":[\"JudgeQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"40\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"41\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"content\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"summernote\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"42\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"43\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"是/否\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"checked\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"44\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"选项\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"options\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"question\"],\"functionName\":[\"判断题管理\"],\"params[parentMenuId]\":[\"2001', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:14:41');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"gift_score_record\"],\"tableComment\":[\"得分记录\"],\"className\":[\"GiftScoreRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"27\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"28\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"29\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"得分操作\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"action\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"30\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"得分时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"time\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"31\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"积分值\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"value\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"record\"],\"functionName\":[\"得分管理\"],\"params[parentMenuId]\":[\"2005\"],\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:16:05');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"great_man\"],\"tableComment\":[\"伟人表\"],\"className\":[\"GreatMan\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"图片地址\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"image\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"伟人介绍\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"description\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"man\"],\"functionName\":[\"伟人管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"文章管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:17:59');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"item_exchange\"],\"tableComment\":[\"礼品\"],\"className\":[\"ItemExchange\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"36\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"37\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"礼品名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"38\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"积分值\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"value\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"39\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"图片地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"image\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"exchange\"],\"functionName\":[\"礼品管理\"],\"params[parentMenuId]\":[\"2005\"],\"params[parentMenuName]\":[\"积分管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:18:58');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:25:07');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"message_notification\"],\"tableComment\":[\"通知表\"],\"className\":[\"MessageNotification\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"49\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"50\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"内容\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"content\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"51\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"time\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"52\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"stuNumber\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"notification\"],\"functionName\":[\"管理通知\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"签到管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:28:00');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"multiple_option_question\"],\"tableComment\":[\"多选题\"],\"className\":[\"MultipleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"53\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"54\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"question\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"55\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"56\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"选项\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"options\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"57\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是/否\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"checked\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"question\"],\"functionName\":[\"管理多选题\"],\"params[par', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:29:39');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:31:43');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"organization_meeting_record\"],\"tableComment\":[\"会议表\"],\"className\":[\"OrganizationMeetingRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"61\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"62\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"会议类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"type\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"63\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"参与人员\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"participants\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"64\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"会议时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"time\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"65\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"会议主题\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"title\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"record\"],\"functionName\":[\"会议管理\"],\"params[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:33:26');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"organization_news\"],\"tableComment\":[\"组织咨询\"],\"className\":[\"OrganizationNews\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"66\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"67\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"时间\"],\"columns[1].javaType\":[\"Date\"],\"columns[1].javaField\":[\"time\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"68\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"咨询标题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"69\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"作者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"author\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"news\"],\"functionName\":[\"组织咨询管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"文章管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:35:53');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"practice_answer_sheet\"],\"tableComment\":[\"练习答卷\"],\"className\":[\"PracticeAnswerSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"70\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"71\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"试卷名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"72\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"73\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"74\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"成绩\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"score\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LTE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"75\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"面向对象\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:39:08');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"pratice_test_sheet\"],\"tableComment\":[\"练习试卷\"],\"className\":[\"PraticeTestSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"77\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"78\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考卷名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"79\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"面向对象\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"80\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"sheet\"],\"functionName\":[\"练习试卷管理\"],\"params[parentMenuId]\":[\"2004\"],\"params[parentMenuName]\":[\"答题管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:40:37');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sign_in_record\"],\"tableComment\":[\"签到表\"],\"className\":[\"SignInRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"登录时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"date\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"record\"],\"functionName\":[\"管理签到\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"签到管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:41:48');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"single_option_question\"],\"tableComment\":[\"单选题\"],\"className\":[\"SingleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"checked\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"question\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"trueAnswer\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"options\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"question\"],\"functionName\":[\"单选题管理\"],\"params[parentMenuId]\":[\"2001\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:43:22');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"student\"],\"tableComment\":[\"学生表\"],\"className\":[\"Student\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"89\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"姓名\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"name\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"LIKE\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"90\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"number\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"91\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"积分\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"giftScore\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"92\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"组织\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"organization\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"93\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"电话号码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"phoneNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"94\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"身份\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"identity\"],\"columns[5].isInser', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:44:29');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"swear_record\"],\"tableComment\":[\"宣誓记录\"],\"className\":[\"SwearRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"95\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"96\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"97\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"宣誓次数\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"swearCount\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"record\"],\"functionName\":[\"宣誓管理\"],\"params[parentMenuId]\":[\"2002\"],\"params[parentMenuName]\":[\"学生管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:45:42');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"23\"],\"tableName\":[\"today_in_history\"],\"tableComment\":[\"党史上的今天\"],\"className\":[\"TodayInHistory\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"103\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"104\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"时间\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"date\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"105\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"content\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"summernote\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"history\"],\"functionName\":[\"党史管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"文章管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:48:58');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:49:31');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"to_do\"],\"tableComment\":[\"待办事项\"],\"className\":[\"ToDo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"100\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"101\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"102\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"待办事项\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"content\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"do\"],\"functionName\":[\"待办事项管理\"],\"params[parentMenuId]\":[\"2002\"],\"params[parentMenuName]\":[\"学生管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 12:50:17');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/organization_meeting_record', '127.0.0.1', '内网IP', '\"organization_meeting_record\"', NULL, 0, NULL, '2022-11-18 12:50:32');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/article', '127.0.0.1', '内网IP', '\"article\"', NULL, 0, NULL, '2022-11-18 12:51:16');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/great_man', '127.0.0.1', '内网IP', '\"great_man\"', NULL, 0, NULL, '2022-11-18 12:52:08');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/organization_meeting_record', '127.0.0.1', '内网IP', '\"organization_meeting_record\"', NULL, 0, NULL, '2022-11-18 12:52:18');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/organization_news', '127.0.0.1', '内网IP', '\"organization_news\"', NULL, 0, NULL, '2022-11-18 12:52:42');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/today_in_history', '127.0.0.1', '内网IP', '\"today_in_history\"', NULL, 0, NULL, '2022-11-18 12:52:56');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/organization_meeting_record', '127.0.0.1', '内网IP', '\"organization_meeting_record\"', NULL, 0, NULL, '2022-11-18 12:57:21');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"swear_record\"],\"tableComment\":[\"宣誓记录\"],\"className\":[\"SwearRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"95\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"96\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"97\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"宣誓次数\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"swearCount\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"swear\"],\"functionName\":[\"宣誓管理\"],\"params[parentMenuId]\":[\"2002\"],\"params[parentMenuName]\":[\"学生管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:09:02');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/single_option_question', '127.0.0.1', '内网IP', '\"single_option_question\"', NULL, 0, NULL, '2022-11-18 13:09:34');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/fill_in_question', '127.0.0.1', '内网IP', '\"fill_in_question\"', NULL, 0, NULL, '2022-11-18 13:09:45');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/judge_question', '127.0.0.1', '内网IP', '\"judge_question\"', NULL, 0, NULL, '2022-11-18 13:09:50');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/multiple_option_question', '127.0.0.1', '内网IP', '\"multiple_option_question\"', NULL, 0, NULL, '2022-11-18 13:09:54');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"judge_question\"],\"tableComment\":[\"判断题\"],\"className\":[\"JudgeQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"40\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"41\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"content\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"summernote\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"42\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"43\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"是/否\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"checked\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"44\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"选项\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"options\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"judgequestion\"],\"functionName\":[\"判断题管理\"],\"params[parentMenuId]\":[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:11:00');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"multiple_option_question\"],\"tableComment\":[\"多选题\"],\"className\":[\"MultipleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"53\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"54\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"question\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"55\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"56\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"选项\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"options\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"57\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是/否\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"checked\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"mulquestion\"],\"functionName\":[\"管理多选题\"],\"params[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:11:13');
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"fill_in_question\"],\"tableComment\":[\"填空题\"],\"className\":[\"FillInQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"24\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"25\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"content\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"26\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"fillinquestion\"],\"functionName\":[\"管理填空题\"],\"params[parentMenuId]\":[\"2001\"],\"params[parentMenuName]\":[\"题库管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:11:31');
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"single_option_question\"],\"tableComment\":[\"单选题\"],\"className\":[\"SingleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"完成/未完成\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"checked\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"题目\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"question\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"答案\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"trueAnswer\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"选项\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"options\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"question\"],\"functionName\":[\"单选题管理\"],\"params[par', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:12:38');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"multiple_option_question\"],\"tableComment\":[\"多选题\"],\"className\":[\"MultipleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"53\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"54\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"题目\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"question\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"55\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"答案\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"trueAnswer\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"56\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"选项\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"options\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"57\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"是/否\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"checked\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"mulquestion\"],\"functionName\":[\"管理多选题\"],\"params[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:13:12');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"single_option_question\"],\"tableComment\":[\"单选题\"],\"className\":[\"SingleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"是/否\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"checked\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"题目\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"question\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"答案\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"trueAnswer\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"选项\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"options\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"question\"],\"functionName\":[\"单选题管理\"],\"params[parent', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:13:49');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"single_option_question\"],\"tableComment\":[\"单选题\"],\"className\":[\"SingleOptionQuestion\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"84\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"85\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"是/否\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"checked\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"86\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"题目\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"question\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"87\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"答案\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"trueAnswer\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"88\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"选项\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"options\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"singlequestion\"],\"functionName\":[\"单选题管理\"],\"params[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:14:05');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/single_option_question', '127.0.0.1', '内网IP', '\"single_option_question\"', NULL, 0, NULL, '2022-11-18 13:14:12');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/multiple_option_question', '127.0.0.1', '内网IP', '\"multiple_option_question\"', NULL, 0, NULL, '2022-11-18 13:14:17');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/judge_question', '127.0.0.1', '内网IP', '\"judge_question\"', NULL, 0, NULL, '2022-11-18 13:14:20');
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/fill_in_question', '127.0.0.1', '内网IP', '\"fill_in_question\"', NULL, 0, NULL, '2022-11-18 13:14:22');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/item_exchange', '127.0.0.1', '内网IP', '\"item_exchange\"', NULL, 0, NULL, '2022-11-18 13:39:37');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/item_exchange', '127.0.0.1', '内网IP', '\"item_exchange\"', NULL, 0, NULL, '2022-11-18 13:39:58');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/gift_score_record', '127.0.0.1', '内网IP', '\"gift_score_record\"', NULL, 0, NULL, '2022-11-18 13:40:05');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"gift_score_record\"],\"tableComment\":[\"得分记录\"],\"className\":[\"GiftScoreRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"27\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"28\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"29\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"得分操作\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"action\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"30\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"得分时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"time\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"31\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"积分值\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"value\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"giftrecord\"],\"functionName\":[\"得分管理\"],\"params[parentMenuId]\":[\"2005', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:42:06');
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/gift_score_record', '127.0.0.1', '内网IP', '\"gift_score_record\"', NULL, 0, NULL, '2022-11-18 13:42:23');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/student', '127.0.0.1', '内网IP', '\"student\"', NULL, 0, NULL, '2022-11-18 13:46:31');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/swear_record', '127.0.0.1', '内网IP', '\"swear_record\"', NULL, 0, NULL, '2022-11-18 13:46:46');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/to_do', '127.0.0.1', '内网IP', '\"to_do\"', NULL, 0, NULL, '2022-11-18 13:46:56');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"to_do\"],\"tableComment\":[\"待办事项\"],\"className\":[\"ToDo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"100\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"101\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"102\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"待办事项\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"content\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"todo\"],\"functionName\":[\"待办事项管理\"],\"params[parentMenuId]\":[\"2002\"],\"params[parentMenuName]\":[\"学生管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 13:57:40');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/to_do', '127.0.0.1', '内网IP', '\"to_do\"', NULL, 0, NULL, '2022-11-18 13:57:52');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2085', '127.0.0.1', '内网IP', '2085', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2022-11-18 14:03:37');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2085\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"待办事项管理\"],\"url\":[\"/system/do\"],\"target\":[\"menuItem\"],\"perms\":[\"system:do:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 14:03:56');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/sign_in_record', '127.0.0.1', '内网IP', '\"sign_in_record\"', NULL, 0, NULL, '2022-11-18 14:05:33');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/message_notification', '127.0.0.1', '内网IP', '\"message_notification\"', NULL, 0, NULL, '2022-11-18 14:06:22');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sign_in_record\"],\"tableComment\":[\"签到表\"],\"className\":[\"SignInRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"登录时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"date\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"signrecord\"],\"functionName\":[\"管理签到\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"签到管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 14:07:11');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/sign_in_record', '127.0.0.1', '内网IP', '\"sign_in_record\"', NULL, 0, NULL, '2022-11-18 14:07:15');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/message_notification', '127.0.0.1', '内网IP', '\"message_notification\"', NULL, 0, NULL, '2022-11-18 14:07:28');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"exam_answer_sheet\"],\"tableComment\":[\"考试答卷\"],\"className\":[\"ExamAnswerSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"试卷名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"成绩\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"score\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LTE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"面向对象\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns[5].isIns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 14:10:25');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"exam_test_sheet\"],\"tableComment\":[\"管理考卷\"],\"className\":[\"ExamTestSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考卷名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"面向对象\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"object\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"考试时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"date\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"22\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"内容\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"23\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"使用/未使用\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"hasDone\"],\"columns[5].isInser', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 14:10:37');
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"pratice_test_sheet\"],\"tableComment\":[\"练习试卷\"],\"className\":[\"PraticeTestSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"77\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"78\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考卷名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"79\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"面向对象\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"80\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"testsheet\"],\"functionName\":[\"练习试卷管理\"],\"params[parentMenuId]\":[\"2004\"],\"params[parentMenuName]\":[\"答题管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 14:11:14');
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"practice_answer_sheet\"],\"tableComment\":[\"练习答卷\"],\"className\":[\"PracticeAnswerSheet\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"70\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"71\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"试卷名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"72\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"73\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"74\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"成绩\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"score\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LTE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"75\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"面向对象\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"type\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 14:11:48');
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/exam_answer_sheet', '127.0.0.1', '内网IP', '\"exam_answer_sheet\"', NULL, 0, NULL, '2022-11-18 14:12:30');
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/exam_test_sheet', '127.0.0.1', '内网IP', '\"exam_test_sheet\"', NULL, 0, NULL, '2022-11-18 14:12:40');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/practice_answer_sheet', '127.0.0.1', '内网IP', '\"practice_answer_sheet\"', NULL, 0, NULL, '2022-11-18 14:12:50');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/pratice_test_sheet', '127.0.0.1', '内网IP', '\"pratice_test_sheet\"', NULL, 0, NULL, '2022-11-18 14:12:57');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/sign_in_record', '127.0.0.1', '内网IP', '\"sign_in_record\"', NULL, 0, NULL, '2022-11-18 14:46:41');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/message_notification', '127.0.0.1', '内网IP', '\"message_notification\"', NULL, 0, NULL, '2022-11-18 14:47:35');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2139', '127.0.0.1', '内网IP', '2139', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2022-11-18 15:10:21');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2140', '127.0.0.1', '内网IP', '2140', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:10:28');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2144', '127.0.0.1', '内网IP', '2144', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:10:34');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2139', '127.0.0.1', '内网IP', '2139', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2022-11-18 15:10:39');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2143', '127.0.0.1', '内网IP', '2143', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:10:45');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2142', '127.0.0.1', '内网IP', '2142', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:10:50');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2141', '127.0.0.1', '内网IP', '2141', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:10:58');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2139', '127.0.0.1', '内网IP', '2139', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:17');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2138', '127.0.0.1', '内网IP', '2138', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:23');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2137', '127.0.0.1', '内网IP', '2137', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:29');
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2136', '127.0.0.1', '内网IP', '2136', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:38');
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2135', '127.0.0.1', '内网IP', '2135', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:43');
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2134', '127.0.0.1', '内网IP', '2134', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:48');
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2133', '127.0.0.1', '内网IP', '2133', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:52');
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2104', '127.0.0.1', '内网IP', '2104', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:11:57');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2108', '127.0.0.1', '内网IP', '2108', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:03');
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2107', '127.0.0.1', '内网IP', '2107', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:07');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2105', '127.0.0.1', '内网IP', '2105', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:12');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2106', '127.0.0.1', '内网IP', '2106', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:22');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2103', '127.0.0.1', '内网IP', '2103', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:26');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2102', '127.0.0.1', '内网IP', '2102', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:32');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2101', '127.0.0.1', '内网IP', '2101', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:37');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2100', '127.0.0.1', '内网IP', '2100', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:43');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2099', '127.0.0.1', '内网IP', '2099', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:47');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2098', '127.0.0.1', '内网IP', '2098', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:52');
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2097', '127.0.0.1', '内网IP', '2097', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:12:56');
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/message_notification', '127.0.0.1', '内网IP', '\"message_notification\"', NULL, 0, NULL, '2022-11-18 15:13:22');
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sign_in_record\"],\"tableComment\":[\"签到表\"],\"className\":[\"SignInRecord\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"登录时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"date\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"signrecord\"],\"functionName\":[\"管理签到\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"签到管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:18:41');
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sign_in_record\"],\"tableComment\":[\"签到表\"],\"className\":[\"SignInRecordMy\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"stuNumber\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"登录时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"date\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"signrecordmy\"],\"functionName\":[\"管理签到\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"签到管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-11-18 15:20:07');
INSERT INTO `sys_oper_log` VALUES (213, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/sign_in_record', '127.0.0.1', '内网IP', '\"sign_in_record\"', NULL, 0, NULL, '2022-11-18 15:20:13');
INSERT INTO `sys_oper_log` VALUES (214, '学生管理', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"name\":[\"李琛\"],\"giftScore\":[\"999\"],\"organization\":[\"浙大城市学院\"],\"phoneNumber\":[\"1111111111\"],\"identity\":[\"学生\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'number\' doesn\'t have a default value\r\n### The error may exist in file [D:\\XinHuo\\Web_Admin\\Web\\XinHuoAdmin\\target\\classes\\mybatis\\system\\StudentMapper.xml]\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into student          ( name,                          giftScore,             organization,             phoneNumber,             identity )           values ( ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'number\' doesn\'t have a default value\n; Field \'number\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'number\' doesn\'t have a default value', '2022-11-18 16:26:39');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-11-18 11:30:41', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-11-18 11:30:41', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-11-18 11:30:41', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-11-18 11:30:41', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2022-11-18 11:30:41', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2022-11-18 11:30:41', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-11-19 00:24:38', '2022-11-18 11:30:40', 'admin', '2022-11-18 11:30:40', '', '2022-11-18 16:24:39', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2022-11-18 11:30:40', '2022-11-18 11:30:40', 'admin', '2022-11-18 11:30:40', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('741b9396-3904-4d62-91eb-eed503674db0', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', 'on_line', '2022-11-19 00:24:29', '2022-11-19 00:30:12', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for temporary_visitor
-- ----------------------------
DROP TABLE IF EXISTS `temporary_visitor`;
CREATE TABLE `temporary_visitor`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temporary_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for to_do
-- ----------------------------
DROP TABLE IF EXISTS `to_do`;
CREATE TABLE `to_do`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `studentNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of to_do
-- ----------------------------

-- ----------------------------
-- Table structure for today_in_history
-- ----------------------------
DROP TABLE IF EXISTS `today_in_history`;
CREATE TABLE `today_in_history`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of today_in_history
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
