/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : kitecms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-19 14:02:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kite_auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_permission`;
CREATE TABLE `kite_auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '规则名称',
  `url` varchar(64) CHARACTER SET utf8 NOT NULL,
  `menu` tinyint(1) DEFAULT 0 COMMENT '是否为菜单0 否 1是',
  `icon` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT 'fa fa-circle-o' COMMENT '图标',
  `weighing` int(11) DEFAULT 0 COMMENT '权重排序',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '备注说明',
  `lang_var` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '语言表示',
  PRIMARY KEY (`id`),
  KEY `permission_url` (`url`) USING BTREE,
  KEY `lang_var` (`lang_var`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_permission
-- ----------------------------
INSERT INTO `kite_auth_permission` VALUES ('1', '0', '系统管理', '#', '1', 'fa fa-laptop', '6', '', 'System');
INSERT INTO `kite_auth_permission` VALUES ('2', '7', '管理员授权', 'admin/user/auth', '0', '', '3', '', 'Site authorization');
INSERT INTO `kite_auth_permission` VALUES ('3', '0', '信息管理', '#', '1', 'fa fa-file-word-o', '2', '', 'Information');
INSERT INTO `kite_auth_permission` VALUES ('4', '0', '会员管理', '#', '1', 'fa fa-user', '4', '', 'Member');
INSERT INTO `kite_auth_permission` VALUES ('5', '0', '功能扩展', '#', '1', 'fa fa-chrome', '3', '', 'Extended');
INSERT INTO `kite_auth_permission` VALUES ('6', '3', '模型管理', 'admin/documentModel/index', '1', 'fa fa-cube', '4', '', 'Document model');
INSERT INTO `kite_auth_permission` VALUES ('7', '4', '用户管理', 'admin/user/index', '1', 'fa fa-user-secret', '1', '', 'User');
INSERT INTO `kite_auth_permission` VALUES ('8', '4', '角色管理', 'admin/role/index', '1', 'fa fa-users', '2', '', 'Role');
INSERT INTO `kite_auth_permission` VALUES ('9', '1', '站点管理', 'admin/site/index', '1', 'fa fa-globe', '4', '', 'Sites');
INSERT INTO `kite_auth_permission` VALUES ('10', '0', '站点首页', 'admin/index/index', '1', 'fa fa-dashboard ', '1', '', 'Control panel');
INSERT INTO `kite_auth_permission` VALUES ('11', '9', '创建站点', 'admin/site/create', '0', 'fa fa-circle-o', '0', '', 'Create site');
INSERT INTO `kite_auth_permission` VALUES ('12', '1', '权限配置', 'admin/permission/index', '1', 'fa fa-shield', '3', '', 'Permission');
INSERT INTO `kite_auth_permission` VALUES ('13', '12', '增加权限', 'admin/permission/create', '0', 'fa fa-circle-o', '0', '', 'Create permission');
INSERT INTO `kite_auth_permission` VALUES ('14', '12', '权限编辑', 'admin/permission/edit', '0', '', '0', '', 'Permission update');
INSERT INTO `kite_auth_permission` VALUES ('15', '8', '增加角色', 'admin/role/create', '0', '', '0', '', 'Create role');
INSERT INTO `kite_auth_permission` VALUES ('16', '8', '角色编辑', 'admin/role/edit', '0', '', '0', '', 'Role update');
INSERT INTO `kite_auth_permission` VALUES ('17', '8', '角色授权', 'admin/role/auth', '0', '', '0', '', 'Role authorization');
INSERT INTO `kite_auth_permission` VALUES ('18', '7', '创建管理员', 'admin/user/create', '0', '', '0', '', 'Create');
INSERT INTO `kite_auth_permission` VALUES ('19', '7', '更新管理员', 'admin/user/edit', '0', '', '0', '', 'Update');
INSERT INTO `kite_auth_permission` VALUES ('20', '7', '删除管理员', 'admin/user/remove', '0', '', '0', '', 'Delete');
INSERT INTO `kite_auth_permission` VALUES ('21', '7', '管理员批量操作', 'admin/user/handle', '0', '', '0', '', 'Batch operation');
INSERT INTO `kite_auth_permission` VALUES ('22', '9', '编辑站点', 'admin/site/edit', '0', '', '0', '', 'Update site');
INSERT INTO `kite_auth_permission` VALUES ('23', '9', '删除站点', 'admin/site/remove', '0', '', '0', '', 'Delete site');
INSERT INTO `kite_auth_permission` VALUES ('24', '3', '文档信息', 'admin/document/index', '1', 'fa fa-file-text-o', '1', '', 'Document');
INSERT INTO `kite_auth_permission` VALUES ('25', '3', '栏目分类', 'admin/category/index', '1', 'fa fa-list-ol', '2', '', 'Category');
INSERT INTO `kite_auth_permission` VALUES ('26', '6', '创建模型', 'admin/documentModel/create', '0', '', '0', '', 'Create document model');
INSERT INTO `kite_auth_permission` VALUES ('27', '6', '编辑模型', 'admin/documentModel/edit', '0', '', '0', '', 'Edit document model');
INSERT INTO `kite_auth_permission` VALUES ('28', '6', '删除模型', 'admin/documentModel/remove', '0', '', '0', '', 'Remove document model');
INSERT INTO `kite_auth_permission` VALUES ('29', '3', '字段管理', 'admin/documentField/index', '1', 'fa fa-cubes', '3', '', 'Document Field');
INSERT INTO `kite_auth_permission` VALUES ('30', '29', '创建字段', 'admin/documentField/create', '0', '', '0', '', 'Create document field');
INSERT INTO `kite_auth_permission` VALUES ('31', '29', '编辑字段', 'admin/documentField/edit', '0', '', '0', '', 'Edit document field');
INSERT INTO `kite_auth_permission` VALUES ('32', '29', '删除字段', 'admin/documentField/remove', '0', '', '0', '', 'Remove document field');
INSERT INTO `kite_auth_permission` VALUES ('33', '29', '字段类别', 'admin/documentField/category', '0', '', '0', '', 'Document field category');
INSERT INTO `kite_auth_permission` VALUES ('34', '29', '删除字段分类', 'admin/documentField/removeCategory', '0', '', '0', '', 'Remove document field category');
INSERT INTO `kite_auth_permission` VALUES ('35', '29', '批量操作字段分类', 'admin/documentField/handleCategory', '0', '', '0', '', 'Handle document field category');
INSERT INTO `kite_auth_permission` VALUES ('36', '24', '创建文档', 'admin/document/create', '0', '', '0', '', 'Create document');
INSERT INTO `kite_auth_permission` VALUES ('37', '24', '更新文档', 'admin/document/edit', '0', '', '0', '', 'Edit document');
INSERT INTO `kite_auth_permission` VALUES ('38', '24', '删除文档', 'admin/document/remove', '0', '', '0', '', 'Remove document');
INSERT INTO `kite_auth_permission` VALUES ('39', '25', '创建文档', 'admin/category/create', '0', '', '0', '', 'Create category');
INSERT INTO `kite_auth_permission` VALUES ('40', '25', '更新文档', 'admin/category/edit', '0', '', '0', '', 'Edit category');
INSERT INTO `kite_auth_permission` VALUES ('41', '25', '删除文档', 'admin/category/remove', '0', '', '0', '', 'Remove category');
INSERT INTO `kite_auth_permission` VALUES ('51', '4', '积分配置', 'admin/score/index', '1', 'fa fa-star', '3', '', 'Score config');
INSERT INTO `kite_auth_permission` VALUES ('52', '86', '编辑评论', 'admin/comments/edit', '0', '', '0', '', 'Edit comments');
INSERT INTO `kite_auth_permission` VALUES ('53', '72', '文件上传', 'admin/site/uploadFile', '1', 'fa fa-file-o', '4', '', 'File upload');
INSERT INTO `kite_auth_permission` VALUES ('54', '72', '图片水印', 'admin/site/imageWater', '1', 'fa fa-file-photo-o', '5', '', 'Watermarking');
INSERT INTO `kite_auth_permission` VALUES ('55', '72', '验证码', 'admin/site/captcha', '1', 'fa fa-lock', '6', '', 'Captcha');
INSERT INTO `kite_auth_permission` VALUES ('56', '5', '友情链接', 'admin/link/index', '1', 'fa fa-link', '3', '', 'Link');
INSERT INTO `kite_auth_permission` VALUES ('57', '56', '创建友情链接', 'admin/link/create', '0', '', '0', '', 'Create link');
INSERT INTO `kite_auth_permission` VALUES ('58', '56', '编辑友情链接', 'admin/link/edit', '0', '', '0', '', 'Edit link');
INSERT INTO `kite_auth_permission` VALUES ('59', '56', '删除友情链接', 'admin/link/remove', '0', '', '0', '', 'Remove link');
INSERT INTO `kite_auth_permission` VALUES ('60', '56', '友情链接类别', 'admin/link/category', '0', '', '0', '', 'Link category');
INSERT INTO `kite_auth_permission` VALUES ('61', '56', '删除友情链接分类', 'admin/link/removeCategory', '0', '', '0', '', 'Remove link category');
INSERT INTO `kite_auth_permission` VALUES ('62', '56', '批量操作友情链接分类', 'admin/link/handleCategory', '0', '', '0', '', 'Handle link category');
INSERT INTO `kite_auth_permission` VALUES ('63', '1', '模板管理', 'admin/template/filelist', '1', 'fa fa-file-code-o', '8', '', 'Template file');
INSERT INTO `kite_auth_permission` VALUES ('64', '63', '模板修改', 'admin/template/fileedit', '0', '', '0', '', 'Template file edit');
INSERT INTO `kite_auth_permission` VALUES ('65', '5', '幻灯片', 'admin/slider/index', '1', 'fa fa-file-image-o', '2', '', 'Slider');
INSERT INTO `kite_auth_permission` VALUES ('66', '65', '创建幻灯片', 'admin/slider/create', '0', '', '0', '', 'Create slider');
INSERT INTO `kite_auth_permission` VALUES ('67', '65', '编辑幻灯片', 'admin/slider/edit', '0', '', '0', '', 'Edit slider');
INSERT INTO `kite_auth_permission` VALUES ('68', '65', '删除幻灯片', 'admin/slider/remove', '0', '', '0', '', 'Remove slider');
INSERT INTO `kite_auth_permission` VALUES ('69', '65', '幻灯片类别', 'admin/slider/category', '0', '', '0', '', 'Slider category');
INSERT INTO `kite_auth_permission` VALUES ('70', '65', '删除幻灯片分类', 'admin/slider/removeCategory', '0', '', '0', '', 'Remove slider category');
INSERT INTO `kite_auth_permission` VALUES ('71', '65', '批量操作幻灯片分类', 'admin/slider/handleCategory', '0', '', '0', '', 'Handle slider category');
INSERT INTO `kite_auth_permission` VALUES ('72', '1', '参数配置', '#', '1', 'fa fa-wrench', '5', '', 'Site config');
INSERT INTO `kite_auth_permission` VALUES ('73', '72', '短信接口', 'admin/site/sms', '1', 'fa fa-commenting', '3', '', 'SMS');
INSERT INTO `kite_auth_permission` VALUES ('74', '72', '邮件设置', 'admin/site/email', '1', 'fa fa-envelope-o', '2', '', 'Email');
INSERT INTO `kite_auth_permission` VALUES ('75', '5', '内容区块', 'admin/block/index', '1', 'fa fa-code', '4', '', 'Block');
INSERT INTO `kite_auth_permission` VALUES ('76', '75', '创建区块', 'admin/block/create', '0', '', '0', '', 'Create block');
INSERT INTO `kite_auth_permission` VALUES ('77', '75', '编辑区块', 'admin/block/edit', '0', '', '0', '', 'Edit block');
INSERT INTO `kite_auth_permission` VALUES ('78', '75', '删除区块', 'admin/block/remove', '0', '', '0', '', 'Remove block');
INSERT INTO `kite_auth_permission` VALUES ('79', '75', '区块类别', 'admin/block/category', '0', '', '0', '', 'Block category');
INSERT INTO `kite_auth_permission` VALUES ('80', '75', '删除区块分类', 'admin/block/removeCategory', '0', '', '0', '', 'Remove block category');
INSERT INTO `kite_auth_permission` VALUES ('81', '75', '批量操作区块分类', 'admin/block/handleCategory', '0', '', '0', '', 'Handle block category');
INSERT INTO `kite_auth_permission` VALUES ('86', '5', '评论管理', 'admin/comments/index', '1', 'fa fa-comments', '1', '', 'Comments');
INSERT INTO `kite_auth_permission` VALUES ('87', '86', '删除评论', 'admin/comments/remove', '0', '', '0', '', 'Remove comments');
INSERT INTO `kite_auth_permission` VALUES ('88', '86', '批量操作评论', 'admin/comments/handle', '0', '', '0', '', 'Handle comments');
INSERT INTO `kite_auth_permission` VALUES ('89', '1', '系统日志', 'admin/log/index', '1', 'fa fa-history', '6', '', 'Log');
INSERT INTO `kite_auth_permission` VALUES ('90', '1', '编辑菜单', 'admin/navigation/index', '1', 'fa fa-navicon', '7', '', 'Navigation');
INSERT INTO `kite_auth_permission` VALUES ('91', '90', '菜单管理', 'admin/navigation/category', '0', '', '0', '', 'Navigation category');
INSERT INTO `kite_auth_permission` VALUES ('92', '90', '删除菜单', 'admin/navigation/removeCategory', '0', '', '0', '', 'Remove navigation category');
INSERT INTO `kite_auth_permission` VALUES ('93', '90', '批量操作菜单', 'admin/navigation/handleCategory', '0', '', '0', '', 'Handle navigation category');

-- ----------------------------
-- Table structure for kite_auth_role
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_role`;
CREATE TABLE `kite_auth_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `lang_var` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '语言表示',
  `weighing` int(11) DEFAULT 0 COMMENT '权重排序',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_role
-- ----------------------------
INSERT INTO `kite_auth_role` VALUES ('1', '管理员', 'Administrator', '1');
INSERT INTO `kite_auth_role` VALUES ('2', '编辑员', 'Editor', '2');
INSERT INTO `kite_auth_role` VALUES ('3', '注册用户', 'Member', '2');

-- ----------------------------
-- Table structure for kite_auth_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_role_permission`;
CREATE TABLE `kite_auth_role_permission` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `permission_id` int(11) NOT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_role_permission
-- ----------------------------
INSERT INTO `kite_auth_role_permission` VALUES ('1', '10');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '3');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '24');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '36');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '37');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '38');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '25');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '39');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '40');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '41');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '29');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '30');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '31');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '32');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '33');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '34');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '35');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '6');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '26');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '27');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '28');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '5');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '86');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '52');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '87');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '88');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '65');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '66');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '67');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '68');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '69');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '70');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '71');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '56');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '57');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '58');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '59');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '60');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '61');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '62');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '75');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '76');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '77');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '78');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '79');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '80');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '81');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '82');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '83');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '84');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '85');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '4');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '42');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '43');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '44');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '45');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '46');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '47');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '48');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '49');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '50');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '51');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '1');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '7');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '18');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '19');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '20');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '21');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '2');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '8');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '15');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '16');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '17');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '12');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '13');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '14');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '9');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '11');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '22');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '23');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '72');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '74');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '73');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '53');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '54');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '55');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '89');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '90');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '91');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '92');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '93');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '63');
INSERT INTO `kite_auth_role_permission` VALUES ('1', '64');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '10');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '5');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '86');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '52');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '87');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '88');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '65');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '66');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '67');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '68');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '69');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '70');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '71');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '56');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '57');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '58');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '59');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '60');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '61');
INSERT INTO `kite_auth_role_permission` VALUES ('2', '62');

-- ----------------------------
-- Table structure for kite_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_user`;
CREATE TABLE `kite_auth_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `username` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '管理员密码',
  `phone` char(11) COLLATE utf8_bin DEFAULT '' COMMENT '手机号',
  `email` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '电子邮箱',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0 正常 1禁用',
  `count` int(11) NOT NULL DEFAULT 0 COMMENT '登陆次数',
  `last_login_time` int(11) DEFAULT NULL COMMENT '最后一次登陆时间',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '头像',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_id` (`uid`) USING BTREE,
  UNIQUE KEY `user_name` (`username`) USING BTREE,
  KEY `created` (`create_at`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE,
  KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_user
-- ----------------------------
INSERT INTO `kite_auth_user` VALUES ('1', 'admin', '$2y$10$EUJoTCX/QX0w2UFi6LqADukOuxeR00/tqcIfDT2RSSPVrtOVfTYaW', '18780221108', 'kite@kitesky.com', '0', '15', null, null, '', '1560924144', '1535434946');
INSERT INTO `kite_auth_user` VALUES ('2', 'kite', '$2y$10$1f/FRyoZxN.gP3ND6aJcrOueubjMfKQYzGR09rNjWGfsGsCPiBBbe', '', 'kite@qq.com', '0', '0', null, '4', '/upload/20190618/83b56ac13413773672ac9cfbeaccba85.png', '1555628531', '1560843846');
INSERT INTO `kite_auth_user` VALUES ('4', 'test', '$2y$10$Hdj5OUEryL2rvhx4fuzFCeH6M9sEgU4fJPfA6dmhsOLassMLekJC2', '', 'test@19981.com', '0', '0', null, '1', '', '1560852844', '1560852844');

-- ----------------------------
-- Table structure for kite_auth_user_role
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_user_role`;
CREATE TABLE `kite_auth_user_role` (
  `uid` int(11) NOT NULL COMMENT 'UID',
  `role_id` int(11) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_user_role
-- ----------------------------
INSERT INTO `kite_auth_user_role` VALUES ('1', '1');
INSERT INTO `kite_auth_user_role` VALUES ('1', '2');
INSERT INTO `kite_auth_user_role` VALUES ('41', '2');
INSERT INTO `kite_auth_user_role` VALUES ('2', '1');
INSERT INTO `kite_auth_user_role` VALUES ('2', '2');
INSERT INTO `kite_auth_user_role` VALUES ('3', '1');
INSERT INTO `kite_auth_user_role` VALUES ('3', '2');
INSERT INTO `kite_auth_user_role` VALUES ('4', '3');

-- ----------------------------
-- Table structure for kite_auth_user_score
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_user_score`;
CREATE TABLE `kite_auth_user_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分记录编号',
  `site_id` int(11) NOT NULL COMMENT '站点ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `sum` int(11) NOT NULL COMMENT '剩余总数',
  `score` int(11) NOT NULL COMMENT '积分数量',
  `source` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '获取原因',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_user_score
-- ----------------------------
INSERT INTO `kite_auth_user_score` VALUES ('21', '1', '2', '2', '1', 'login_score', '1560852792', '1560852792');
INSERT INTO `kite_auth_user_score` VALUES ('22', '1', '2', '3', '1', 'login_score', '1560852820', '1560852820');
INSERT INTO `kite_auth_user_score` VALUES ('23', '1', '4', '1', '1', 'login_score', '1560852883', '1560852883');
INSERT INTO `kite_auth_user_score` VALUES ('24', '1', '2', '4', '1', 'login_score', '1560853578', '1560853578');

-- ----------------------------
-- Table structure for kite_auth_user_site
-- ----------------------------
DROP TABLE IF EXISTS `kite_auth_user_site`;
CREATE TABLE `kite_auth_user_site` (
  `uid` int(11) NOT NULL,
  `site_id` int(11) NOT NULL COMMENT '站点ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_auth_user_site
-- ----------------------------
INSERT INTO `kite_auth_user_site` VALUES ('1', '4');
INSERT INTO `kite_auth_user_site` VALUES ('1', '3');
INSERT INTO `kite_auth_user_site` VALUES ('1', '2');
INSERT INTO `kite_auth_user_site` VALUES ('1', '1');
INSERT INTO `kite_auth_user_site` VALUES ('2', '3');
INSERT INTO `kite_auth_user_site` VALUES ('2', '2');
INSERT INTO `kite_auth_user_site` VALUES ('3', '2');
INSERT INTO `kite_auth_user_site` VALUES ('3', '1');

-- ----------------------------
-- Table structure for kite_block
-- ----------------------------
DROP TABLE IF EXISTS `kite_block`;
CREATE TABLE `kite_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) DEFAULT 0 COMMENT '友情链接分类ID',
  `site_id` char(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '网站编号',
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '网站名称',
  `variable` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '区块变量标识',
  `content` text COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态： 0隐藏  1 显示',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_block
-- ----------------------------
INSERT INTO `kite_block` VALUES ('1', '1', '2', 'primer', 'primer', 0x7072696D6572, null, null, '1', '1560620866', '1560620866');

-- ----------------------------
-- Table structure for kite_document_category
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_category`;
CREATE TABLE `kite_document_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '上级父ID',
  `site_id` int(11) NOT NULL COMMENT '模型归属站点',
  `cid` int(11) DEFAULT NULL COMMENT '分类ID',
  `model_id` int(11) NOT NULL COMMENT '模型ID',
  `weighing` int(11) DEFAULT NULL COMMENT '权重排序',
  `title` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '文档标题',
  `keywords` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '文档关键词',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '描述',
  `content` text COLLATE utf8_bin DEFAULT NULL COMMENT '文档内容',
  `list_tpl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目模板',
  `detail_tpl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '内容模板',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 隐藏 1 显示',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_category
-- ----------------------------
INSERT INTO `kite_document_category` VALUES ('4', '0', '1', '0', '1', '0', '明星', '', '', '', 'list/index', 'detail/index', '1', null, '1560831077');
INSERT INTO `kite_document_category` VALUES ('5', '0', '1', '0', '1', '0', '图片', '', '', '', 'list/index', 'detail/index', '1', '1541328648', '1541328648');
INSERT INTO `kite_document_category` VALUES ('6', '0', '1', '0', '1', '0', '关于我们', '', '', 0x3C703EE585B3E4BA8EE68891E4BBAC3C2F703E, 'list/index', 'detail/index', '1', '1552019863', '1552019863');
INSERT INTO `kite_document_category` VALUES ('7', '7', '1', '0', '2', '0', '产品1', '', '', '', 'list/index', 'detail/index', '1', '1552019887', '1552549497');
INSERT INTO `kite_document_category` VALUES ('8', '0', '1', '0', '3', '0', '招聘', '', '', '', 'list/index', 'detail/index', '1', '1552019904', '1552020166');
INSERT INTO `kite_document_category` VALUES ('9', '0', '1', '0', '4', '0', '新闻', '', '', '', 'list/index', 'detail/index', '1', '1552271505', '1552271505');
INSERT INTO `kite_document_category` VALUES ('11', '0', '2', '0', '7', '0', '大类测试', '', '', '', 'list/index', 'detail/index', '1', '1560746334', '1560746334');
INSERT INTO `kite_document_category` VALUES ('12', '0', '2', null, '5', '0', 'test111555', '', '', '', 'list/index', 'detail/index', '1', '1560848590', '1560848607');
INSERT INTO `kite_document_category` VALUES ('13', '12', '2', null, '5', '0', 'DFDSF', '', '', '', 'list/index', 'detail/index', '1', '1560848695', '1560848826');

-- ----------------------------
-- Table structure for kite_document_comments
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_comments`;
CREATE TABLE `kite_document_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `site_id` int(11) NOT NULL COMMENT '网站ID',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '评论上级ID',
  `uid` int(11) NOT NULL COMMENT '评论人mid ',
  `document_id` int(11) NOT NULL COMMENT '评论文档ID',
  `content` text COLLATE utf8_bin NOT NULL COMMENT '评论内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 隐藏 1 显示',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_comments
-- ----------------------------
INSERT INTO `kite_document_comments` VALUES ('1', '1', '0', '2', '2', 0x3131, '1', '1560851402', '1560851402');

-- ----------------------------
-- Table structure for kite_document_comments_like
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_comments_like`;
CREATE TABLE `kite_document_comments_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_id` int(11) NOT NULL COMMENT '文档ID',
  `like` tinyint(1) NOT NULL DEFAULT 0 COMMENT '[顶]',
  `unlike` tinyint(1) NOT NULL DEFAULT 0 COMMENT '[踩]',
  `ip` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '客户端IP',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_comments_like
-- ----------------------------

-- ----------------------------
-- Table structure for kite_document_content
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_content`;
CREATE TABLE `kite_document_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0 COMMENT '文档分类ID',
  `site_id` int(11) NOT NULL COMMENT '内容归属站点',
  `mid` int(11) DEFAULT NULL COMMENT '会员发布者 mid',
  `uid` int(11) DEFAULT NULL COMMENT '后台管理员发布者 UID',
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '文档标题',
  `keywords` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '文档关键词',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '描述',
  `content` longtext COLLATE utf8_bin DEFAULT NULL COMMENT '文档内容',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文档封面',
  `album` text COLLATE utf8_bin DEFAULT NULL COMMENT '图片集合',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 待审 1通过',
  `image_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '图片类型标识',
  `video_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '视频类型标识',
  `attach_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '附件类型标识',
  `hot_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '热门标识',
  `recommend_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '推荐标识',
  `focus_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '焦点标识',
  `top_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '置顶标识',
  `pv` int(11) NOT NULL DEFAULT 0 COMMENT '访问次数',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_content
-- ----------------------------
INSERT INTO `kite_document_content` VALUES ('1', '5', '1', null, '1', '网站备案信息真实性核验单 ', '', '', '', '/upload/20190308/b43fe439a4f441d6abcc7634055e2855.jpg', '', '1', '1', '0', '0', '0', '0', '0', '0', '153', '1541328668', '1560851609');
INSERT INTO `kite_document_content` VALUES ('2', '5', '1', null, '1', '产品测试标题', '', '', 0x3C703EE4BAA7E59381E6A8A1E59E8BE58FAFE4BBA5E5889BE5BBBAE4BBBBE4BD95E7B1BBE59E8BE79A84E5AD97E6AEB53C2F703E, '/upload/20190308/ac8494fd0ee97bc769ac108f1c44cb25.jpg', '', '1', '1', '0', '1', '0', '0', '0', '0', '143', '1552020450', '1560851606');
INSERT INTO `kite_document_content` VALUES ('3', '8', '1', null, '1', '招聘设计妹子一枚', '', '', 0x3C703E31313C2F703E, '/upload/20190308/a4116ba637cbbcd3a3a73d8819920b56.jpg', '', '1', '1', '0', '0', '0', '0', '0', '0', '126', '1552021531', '1560851609');
INSERT INTO `kite_document_content` VALUES ('4', '12', '2', null, '1', 'HP Support Assistant v8.7.50.3 для Windows Бесплатно', '', '', 0x3C70207374796C653D22626F782D73697A696E673A20696E68657269743B206D617267696E2D746F703A203070783B206D617267696E2D626F74746F6D3A203172656D3B206C696E652D6865696768743A20323570783B20636F6C6F723A20726762283130332C203132382C20313539293B20666F6E742D66616D696C793A20526F626F746F2C2073616E732D73657269663B20666F6E742D73697A653A20313570783B2077686974652D73706163653A206E6F726D616C3B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223E3C7370616E207374796C653D22626F782D73697A696E673A20696E68657269743B20666F6E742D7765696768743A20626F6C6465723B223E485020537570706F727420417373697374616E74266E6273703B3C2F7370616E3EE2809320D0BED184D0B8D186D0B8D0B0D0BBD18CD0BDD18BD0B920D0BFD0B0D0BAD0B5D18220D0BFD180D0BED0B3D180D0B0D0BCD0BCD0BDD0BED0B3D0BE20D0BED0B1D0B5D181D0BFD0B5D187D0B5D0BDD0B8D18F20D0B4D0BBD18F20D180D0B0D0B1D0BED182D18B20D18120D0BED0B1D0BED180D183D0B4D0BED0B2D0B0D0BDD0B8D0B5D0BC20D0BED18220D0BAD0BED0BCD0BFD0B0D0BDD0B8D0B8204865776C657474205061636B6172642C20D0B220D187D0B8D181D0BBD0BE20D0BAD0BED182D0BED180D0BED0B3D0BE20D0B2D185D0BED0B4D0B8D18220D0BFD180D0B8D0BDD182D0B5D180D18B2C20D181D0BAD0B0D0BDD0B5D180D18B2C20D0BDD0BED183D182D0B1D183D0BAD0B82C20D0BFD0B5D180D181D0BED0BDD0B0D0BBD18CD0BDD18BD0B520D0BAD0BED0BCD0BFD18CD18ED182D0B5D180D18B20D0B820D0BCD0BDD0BED0B3D0BED0B520D0B4D180D183D0B3D0BED0B52E3C2F703E3C70207374796C653D22626F782D73697A696E673A20696E68657269743B206D617267696E2D746F703A203070783B206D617267696E2D626F74746F6D3A203172656D3B206C696E652D6865696768743A20323570783B20636F6C6F723A20726762283130332C203132382C20313539293B20666F6E742D66616D696C793A20526F626F746F2C2073616E732D73657269663B20666F6E742D73697A653A20313570783B2077686974652D73706163653A206E6F726D616C3B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223ED09FD180D0BED0B3D180D0B0D0BCD0BCD0B020D0B0D181D181D0B8D181D182D0B5D0BDD18220D0BFD0BE20D183D0BCD0BED0BBD187D0B0D0BDD0B8D18E20D0BFD180D0B5D0B4D183D181D182D0B0D0BDD0BED0B2D0BBD0B5D0BDD0B020D0BDD0B020D0B2D181D0B5D18520D0BDD0BED183D182D0B1D183D0BAD0B0D18520D0B820D0BAD0BED0BCD0BFD18CD18ED182D0B5D180D0B0D18520D0BED1822048502C20D0BDD0BE20D182D0B0D0BAD0B6D0B520D0BCD0BED0B6D0BDD0BE20D183D181D182D0B0D0BDD0BED0B2D0B8D182D18C20D0B820D0BDD0B020D0BBD18ED0B1D18BD0B520D0B4D180D183D0B3D0B8D0B520D0BAD0BED0BCD0BFD18CD18ED182D0B5D180D18B2C20D0B5D181D0BBD0B820D18DD182D0BE20D0BDD0B5D0BED0B1D185D0BED0B4D0B8D0BCD0BE2E3C2F703E3C70207374796C653D22626F782D73697A696E673A20696E68657269743B206D617267696E2D746F703A203070783B206D617267696E2D626F74746F6D3A203172656D3B206C696E652D6865696768743A20323570783B20636F6C6F723A20726762283130332C203132382C20313539293B20666F6E742D66616D696C793A20526F626F746F2C2073616E732D73657269663B20666F6E742D73697A653A20313570783B2077686974652D73706163653A206E6F726D616C3B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223ED09ED181D0BDD0BED0B2D0BDD0B0D18F20D0B7D0B0D0B4D0B0D187D0B020D0B0D181D181D0B8D181D182D0B5D0BDD182D0B020D183D0BFD180D0BED181D182D0B8D182D18C20D0B2D0B7D0B0D0B8D0BCD0BED0B4D0B5D0B9D181D182D0B2D0B8D0B520D0BCD0B5D0B6D0B4D18320D0BFD0BED0BBD18CD0B7D0BED0B2D0B0D182D0B5D0BBD0B5D0BC2C20D0BED0B1D0BED180D183D0B4D0BED0B2D0B0D0BDD0B8D0B5D0BC20D0B820D0BFD180D0BED0B3D180D0B0D0BCD0BCD0BDD18BD0BC20D0BED0B1D0B5D181D0BFD0B5D187D0B5D0BDD0B8D0B5D0BC2C20D0B7D0B020D181D187D0B5D18220D182D0BED0B3D0BE2C20D187D182D0BE20D0BFD180D0BED0B3D180D0B0D0BCD0BCD0B020D0B1D0B5D180D0B5D18220D0BDD0B020D181D0B5D0B1D18F20D0B2D181D0B520D0BED181D0BDD0BED0B2D0BDD18BD0B520D0B7D0B0D0B4D0B0D187D0B820D0BFD0BE20D0BED0BFD182D0B8D0BCD0B8D0B7D0B0D186D0B8D0B82C20D0BED0B1D0BDD0BED0B2D0BBD0B5D0BDD0B8D18E20D0BFD180D0BED0B3D180D0B0D0BCD0BCD0BDD0BED0B3D0BE20D0BED0B1D0B5D181D0BFD0B5D187D0B5D0BDD0B8D18F2C20D0B820D0BDD0B0D181D182D180D0BED0B9D0BAD0B820D0BAD0BED0BDD184D0B8D0B3D183D180D0B0D186D0B8D0B82C20D187D182D0BE20D0B220D181D0B2D0BED18E20D0BED187D0B5D180D0B5D0B4D18C20D0BFD180D0B8D0B2D0BED0B4D0B8D18220D0BA20D182D0BED0BCD18320D187D182D0BE20D0BFD180D18FD0BCD0BED0B520D183D187D0B0D181D182D0B8D0B520D0BFD0BED0BBD18CD0B7D0BED0B2D0B0D182D0B5D0BBD18F20D181D0B2D0BED0B4D0B8D182D181D18F20D0BA20D0BCD0B8D0BDD0B8D0BCD183D0BCD1832E3C2F703E3C70207374796C653D22626F782D73697A696E673A20696E68657269743B206D617267696E2D746F703A203070783B206D617267696E2D626F74746F6D3A203172656D3B206C696E652D6865696768743A20323570783B20636F6C6F723A20726762283130332C203132382C20313539293B20666F6E742D66616D696C793A20526F626F746F2C2073616E732D73657269663B20666F6E742D73697A653A20313570783B2077686974652D73706163653A206E6F726D616C3B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223ED09AD180D0BED0BCD0B520D182D0BED0B3D0BE2C20D181D182D0BED0B8D18220D0BED182D0BCD0B5D182D0B8D182D18C20D187D182D0BE20D0B220D181D0BED181D182D0B0D0B220485020537570706F727420417373697374616E7420D0B2D185D0BED0B4D0B8D18220D0BED0B1D188D0B8D180D0BDD0B0D18F20D0B4D0BED0BAD183D0BCD0B5D0BDD182D0B0D186D0B8D18F20D0B820D181D0BFD180D0B0D0B2D0BAD0B020D0BFD0BE20D0B2D181D0B5D0BC20D0B2D0B8D0B4D0B0D0BC20D0B2D18BD0BFD183D181D0BAD0B0D0B5D0BCD0BED0B920D0BFD180D0BED0B4D183D0BAD186D0B8D0B820D0BED1822048502C20D0B820D0B220D181D0BBD183D187D0B0D0B520D0BFD180D0BED0B1D0BBD0B5D0BC2C20D0BDD0B0D0BFD180D0B8D0BCD0B5D1802C20D18120D0BFD180D0B8D0BDD182D0B5D180D0BED0BC2C20D0BFD0BED0BBD18CD0B7D0BED0B2D0B0D182D0B5D0BBD18C20D0BBD0B5D0B3D0BAD0BE20D0BDD0B0D0B9D0B4D0B5D18220D0B2D181D18E20D0BDD0B5D0BED0B1D185D0BED0B4D0B8D0BCD183D18E20D0B8D0BDD184D0BED180D0BCD0B0D186D0B8D18E2C20D0BDD0B520D0BFD180D0B8D0B1D0B5D0B3D0B0D18F20D0BA20D0BFD0BED0B8D181D0BAD18320D0B220D0B8D0BDD182D0B5D180D0BDD0B5D182D0B52E3C2F703E3C70207374796C653D22626F782D73697A696E673A20696E68657269743B206D617267696E2D746F703A203070783B206D617267696E2D626F74746F6D3A203172656D3B206C696E652D6865696768743A20323570783B20636F6C6F723A20726762283130332C203132382C20313539293B20666F6E742D66616D696C793A20526F626F746F2C2073616E732D73657269663B20666F6E742D73697A653A20313570783B2077686974652D73706163653A206E6F726D616C3B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223ED095D189D0B520D0BED0B4D0BDD0BED0B920D0BFD0BED0BBD0B5D0B7D0BDD0BED0B920D0BDD0B020D0BCD0BED0B920D0B2D0B7D0B3D0BBD18FD0B420D0BED0BFD186D0B8D0B5D0B920D18FD0B2D0BBD18FD0B5D182D181D18F20D0B0D0B2D182D0BED0BCD0B0D182D0B8D187D0B5D181D0BAD0BED0B520D0BED0B1D0BDD0BED0B2D0BBD0B5D0BDD0B8D0B520D0B4D180D0B0D0B9D0B2D0B5D180D0BED0B22C20D0BED0BFD18FD182D18C20D0B6D0B520D0BFD180D0B8D0B2D0BED0B4D0B8D18220D0BA20D182D0BED0BCD18320D187D182D0BE20D0BFD0BED0BBD18CD0B7D0BED0B2D0B0D182D0B5D0BBD18E20D0BDD0B520D0BFD180D0B8D0B4D191D182D181D18F20D0B8D181D0BFD0BED0BBD18CD0B7D0BED0B2D0B0D182D18C2043442F44564420D0BFD180D0B8D0B2D0BED0B420D0B4D0BBD18F20D0B7D0B0D0BFD183D181D0BAD0B020D0B4D0B8D181D0BAD0B020D0B820D0B8D0BDD181D182D0B0D0BBD0BBD18FD186D0B8D0B820D0B4D180D0B0D0B9D0B2D0B5D180D0BED0B220D0B220D180D183D187D0BDD0BED0BC20D180D0B5D0B6D0B8D0BCD0B52C20D0B8D0BBD0B820D0BA20D0BFD0BED0B8D181D0BAD18320D187D0B5D180D0B5D0B720D0B8D0BDD182D0B5D180D0BDD0B5D1822C20D0B2D181D0B520D0BED0B1D0BED180D183D0B4D0BED0B2D0B0D0BDD0B8D0B520D0B1D183D0B4D0B5D18220D0BED0BFD180D0B5D0B4D0B5D0BBD0B5D0BDD0BE20D0B0D0B2D182D0BED0BCD0B0D182D0B8D187D0B5D181D0BAD0B820D0B820D0BFD180D0BED0B8D0BDD181D182D0B0D0BBD0BBD0B8D180D0BED0B2D0B0D0BDD18B20D0BFD0BED181D0BBD0B5D0B4D0BDD0B8D0B520D0B2D0B5D180D181D0B8D0B820D0B4D180D0B0D0B9D0B2D0B5D180D0BED0B22E3C2F703E3C70207374796C653D22626F782D73697A696E673A20696E68657269743B206D617267696E2D746F703A203070783B206D617267696E2D626F74746F6D3A203172656D3B206C696E652D6865696768743A20323570783B20636F6C6F723A20726762283130332C203132382C20313539293B20666F6E742D66616D696C793A20526F626F746F2C2073616E732D73657269663B20666F6E742D73697A653A20313570783B2077686974652D73706163653A206E6F726D616C3B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B223ED09DD0BE20D0B820D18DD182D0BE20D0B5D189D0B520D0BDD0B520D0B2D181D0B52C20D090D181D181D0B8D181D182D0B5D0BDD18220D0BFD180D0B5D0B4D0BBD0B0D0B3D0B0D0B5D18220D0BDD0B0D0BC20D0B2D181D182D180D0BED0B5D0BDD0BDD18BD0B520D0B0D0B2D182D0BED0BCD0B0D182D0B8D0B7D0B8D180D0BED0B2D0B0D0BDD0BDD18BD0B520D181D180D0B5D0B4D181D182D0B2D0B020D0B4D0BBD18F20D180D0B5D188D0B5D0BDD0B8D18F20D0BFD180D0BED0B1D0BBD0B5D0BC20D0B2D0BED0B7D0BDD0B8D0BAD0BDD183D0B2D188D0B8D18520D0BDD0B5D0BFD0BED0BBD0B0D0B4D0BED0BA20D18120D0BED0B1D0BED180D183D0B4D0BED0B2D0B0D0BDD0B8D0B5D0BC2048502C20D0BFD0BED0B7D0B2D0BED0BBD18FD0B5D18220D180D0B5D188D0B8D182D18C20D181D0B0D0BCD18BD0B520D180D0B0D181D0BFD180D0BED181D182D180D0B0D0BDD191D0BDD0BDD18BD0B520D0BDD0B5D0BFD0BED0BBD0B0D0B4D0BAD0B82C20D0B020D0B5D181D0BBD0B820D0BDD0B520D0BFD0BED0BBD183D187D0B0D0B5D182D181D18F20D183D181D182D180D0B0D0BDD0B8D182D18C20D0BFD180D0BED0B1D0BBD0B5D0BCD1832C20D0BED182D0BFD180D0B0D0B2D0BBD18FD0B5D18220D0BDD0B0D18120D0BDD0B020D0BED184D0B8D186D0B8D0B0D0BBD18CD0BDD18BD0B520D181D0B0D0B9D1822C20D0B3D0B4D0B520D0BDD0B0D0BC20D0BFD0BED0BCD0BED0B3D183D18220D183D0B6D0B520D181D0BFD0B5D186D0B8D0B0D0BBD0B8D181D18220D0BAD0BED0BCD0BFD0B0D0BDD0B8D0B82E3C2F703E3C703E3C62722F3E3C2F703E, '/upload/20190616/744f5ca2fa8aad72596801fc5d4ccc32.png', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1560620717', '1560853788');
INSERT INTO `kite_document_content` VALUES ('5', '11', '2', null, '1', 'test123123123', '', '', 0x3C703EE998BFE890A8E5BEB7E6B395E5B888E68993E58F913C2F703E, null, '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1560746522', '1560746522');
INSERT INTO `kite_document_content` VALUES ('6', '4', '1', null, '2', '11', '', '', 0x3C703E3131313131313C2F703E, null, '', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1560843160', '1560850946');

-- ----------------------------
-- Table structure for kite_document_content_extra
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_content_extra`;
CREATE TABLE `kite_document_content_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文档内容自定义ID',
  `document_id` int(11) NOT NULL COMMENT '文档ID',
  `type` char(20) COLLATE utf8_bin NOT NULL COMMENT '字段内容类型',
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '字段名称',
  `variable` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '字段变量',
  `key` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '字段选项原始值',
  `value` text COLLATE utf8_bin DEFAULT NULL COMMENT '字段值',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`) USING BTREE,
  KEY `variable` (`variable`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_content_extra
-- ----------------------------
INSERT INTO `kite_document_content_extra` VALUES ('4', '3', 'text', '职位', 'zhiwei', '111', 0x313131, null, null);
INSERT INTO `kite_document_content_extra` VALUES ('5', '3', 'select', '地点', 'didian', '2', 0xE9878DE5BA86, null, null);
INSERT INTO `kite_document_content_extra` VALUES ('6', '3', 'select', '薪资待遇', 'daiyu', '1', 0x35303030, null, null);
INSERT INTO `kite_document_content_extra` VALUES ('7', '5', 'text', 'title', 'title', '阿斯顿发送到', 0xE998BFE696AFE9A1BFE58F91E98081E588B0, null, null);
INSERT INTO `kite_document_content_extra` VALUES ('8', '5', 'district', '菜品地区', 'area', '', '', null, null);

-- ----------------------------
-- Table structure for kite_document_content_like
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_content_like`;
CREATE TABLE `kite_document_content_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL COMMENT '文档ID',
  `like` tinyint(1) NOT NULL DEFAULT 0 COMMENT '[顶]',
  `unlike` tinyint(1) NOT NULL DEFAULT 0 COMMENT '[踩]',
  `ip` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '客户端IP',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_content_like
-- ----------------------------
INSERT INTO `kite_document_content_like` VALUES ('1', '1', '1', '0', '171.88.1.80', '1541328834', '1541328834');
INSERT INTO `kite_document_content_like` VALUES ('2', '1', '1', '0', '171.221.254.149', '1548224075', '1548224075');
INSERT INTO `kite_document_content_like` VALUES ('3', '1', '1', '0', '171.221.254.149', '1551251112', '1551251112');
INSERT INTO `kite_document_content_like` VALUES ('4', '1', '1', '0', '171.221.254.149', '1551330765', '1551330765');
INSERT INTO `kite_document_content_like` VALUES ('5', '3', '1', '0', '117.136.64.89', '1552021797', '1552021797');
INSERT INTO `kite_document_content_like` VALUES ('6', '3', '1', '0', '117.136.64.85', '1552664890', '1552664890');
INSERT INTO `kite_document_content_like` VALUES ('7', '1', '1', '0', '223.104.9.200', '1552736710', '1552736710');
INSERT INTO `kite_document_content_like` VALUES ('8', '1', '1', '0', '221.237.179.164', '1553398609', '1553398609');
INSERT INTO `kite_document_content_like` VALUES ('9', '2', '1', '0', '183.199.79.59', '1553516082', '1553516082');
INSERT INTO `kite_document_content_like` VALUES ('10', '1', '0', '1', '182.200.22.168', '1555983287', '1555983287');
INSERT INTO `kite_document_content_like` VALUES ('11', '3', '1', '0', '117.136.64.83', '1559010322', '1559010322');
INSERT INTO `kite_document_content_like` VALUES ('12', '1', '1', '0', '118.112.40.125', '1559778695', '1559778695');
INSERT INTO `kite_document_content_like` VALUES ('13', '3', '0', '1', '118.112.40.110', '1560180629', '1560180629');
INSERT INTO `kite_document_content_like` VALUES ('14', '1', '1', '0', '118.112.40.110', '1560510281', '1560510281');
INSERT INTO `kite_document_content_like` VALUES ('15', '3', '1', '0', '118.112.40.110', '1560768080', '1560768080');
INSERT INTO `kite_document_content_like` VALUES ('16', '1', '1', '0', '127.0.0.1', '1560774492', '1560774492');
INSERT INTO `kite_document_content_like` VALUES ('17', '2', '1', '0', '127.0.0.1', '1560824717', '1560824717');
INSERT INTO `kite_document_content_like` VALUES ('18', '3', '1', '0', '127.0.0.1', '1560827659', '1560827659');
INSERT INTO `kite_document_content_like` VALUES ('19', '6', '1', '0', '127.0.0.1', '1560850947', '1560850947');

-- ----------------------------
-- Table structure for kite_document_field
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_field`;
CREATE TABLE `kite_document_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '字段归类',
  `site_id` int(11) NOT NULL COMMENT '模型归属站点',
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '字段名称',
  `variable` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '字段列名',
  `type` char(20) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '字段类型',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '权重排序',
  `is_require` tinyint(1) DEFAULT 0 COMMENT '0 正常 1必填',
  `is_filter` tinyint(1) DEFAULT NULL COMMENT '0正常 1筛选条件',
  `option` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '字段内容选项',
  `description` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '描述',
  `regular` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '正则表达式',
  `msg` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '验证失败提示语',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_field
-- ----------------------------
INSERT INTO `kite_document_field` VALUES ('1', '1', '1', '商品编号', 'bianhao', 'text', '0', '0', '0', '', '', '', '', '1552020080', '1552020080');
INSERT INTO `kite_document_field` VALUES ('2', '1', '1', '商品毛重', 'maozhong', 'text', '0', '0', '0', '', '', '', '', '1552020106', '1552020106');
INSERT INTO `kite_document_field` VALUES ('3', '1', '1', '商品产地', 'chandi', 'text', '0', '0', '0', '', '', '', '', '1552020125', '1552020125');
INSERT INTO `kite_document_field` VALUES ('4', '2', '1', '职位', 'zhiwei', 'text', '0', '1', '0', '', '', '/[\\u4e00-\\u9fa5]/', '职位不能空', '1552020242', '1552052621');
INSERT INTO `kite_document_field` VALUES ('5', '2', '1', '地点', 'didian', 'select', '0', '1', '1', '1=成都\r\n2=重庆\r\n3=北京\r\n4=上海', '', '', '', '1552020306', '1552021232');
INSERT INTO `kite_document_field` VALUES ('6', '2', '1', '薪资待遇', 'daiyu', 'select', '0', '1', '1', '1=5000\r\n2=8000\r\n3=10000', '', '', '', '1552020361', '1552021245');
INSERT INTO `kite_document_field` VALUES ('7', '3', '1', '来源', 'laiyuan', 'text', '0', '0', '0', '', '', '', '', '1552271563', '1552271563');
INSERT INTO `kite_document_field` VALUES ('8', '1', '2', 'title', 'title', 'text', '0', '0', '0', '', '', '', '', '1552635998', '1552635998');
INSERT INTO `kite_document_field` VALUES ('9', '1', '2', 'screenshots', 'screenshots', 'multipleimageupload', '0', '0', '0', '', '', '', 'screenshots', '1560620667', '1560620667');
INSERT INTO `kite_document_field` VALUES ('10', '1', '2', '菜品地区', 'area', 'select', '0', '0', '1', '1=option 1\r\n2=option 2', '', '', '', '1560746256', '1560765877');
INSERT INTO `kite_document_field` VALUES ('11', '1', '1', '主图', 'zhutu', 'imageupload', '0', '0', '0', '', '', '', '', '1560838632', '1560838632');

-- ----------------------------
-- Table structure for kite_document_model
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_model`;
CREATE TABLE `kite_document_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `site_id` int(11) NOT NULL COMMENT '模型归属站点',
  `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '模型名称',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '排序 越小越靠前',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_model
-- ----------------------------
INSERT INTO `kite_document_model` VALUES ('1', '1', '空模型', '0', '1541328594', '1541328594');
INSERT INTO `kite_document_model` VALUES ('2', '1', '产品模型', '2', '1552019973', '1553529402');
INSERT INTO `kite_document_model` VALUES ('3', '1', '招聘模型', '2', '1552019983', '1560177482');
INSERT INTO `kite_document_model` VALUES ('4', '1', '新闻', '0', '1552271337', '1552271605');
INSERT INTO `kite_document_model` VALUES ('5', '2', 'kite', '0', '1552635959', '1552635959');
INSERT INTO `kite_document_model` VALUES ('6', '2', 'windows', '0', '1560620603', '1560620603');
INSERT INTO `kite_document_model` VALUES ('7', '2', ' test', '1', '1560746160', '1560746278');

-- ----------------------------
-- Table structure for kite_document_model_field
-- ----------------------------
DROP TABLE IF EXISTS `kite_document_model_field`;
CREATE TABLE `kite_document_model_field` (
  `model_id` int(11) NOT NULL COMMENT '模型ID',
  `field_id` int(11) NOT NULL COMMENT '字段ID',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_document_model_field
-- ----------------------------
INSERT INTO `kite_document_model_field` VALUES ('4', '7', '0');
INSERT INTO `kite_document_model_field` VALUES ('3', '4', '0');
INSERT INTO `kite_document_model_field` VALUES ('3', '5', '1');
INSERT INTO `kite_document_model_field` VALUES ('3', '6', '2');
INSERT INTO `kite_document_model_field` VALUES ('7', '8', '0');
INSERT INTO `kite_document_model_field` VALUES ('7', '9', '1');
INSERT INTO `kite_document_model_field` VALUES ('7', '10', '2');

-- ----------------------------
-- Table structure for kite_language
-- ----------------------------
DROP TABLE IF EXISTS `kite_language`;
CREATE TABLE `kite_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '语言名称',
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `weighing` int(11) NOT NULL COMMENT '权重排序 越大越靠后',
  `designation` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_language
-- ----------------------------
INSERT INTO `kite_language` VALUES ('1', 'zh-cn', null, '1', '简体中文(中国) ');
INSERT INTO `kite_language` VALUES ('2', 'en-us', null, '2', '英语(美国) ');

-- ----------------------------
-- Table structure for kite_link
-- ----------------------------
DROP TABLE IF EXISTS `kite_link`;
CREATE TABLE `kite_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) DEFAULT 0 COMMENT '友情链接分类ID',
  `site_id` char(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '网站编号',
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '网站地址',
  `logo` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'logo地址',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态： 0隐藏  1 显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_link
-- ----------------------------
INSERT INTO `kite_link` VALUES ('1', '1', '1', '袖珍书', 'http://www.xiuzhenshu.com', '', '1', '1');

-- ----------------------------
-- Table structure for kite_log
-- ----------------------------
DROP TABLE IF EXISTS `kite_log`;
CREATE TABLE `kite_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作类型',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作内容',
  `ip` char(32) COLLATE utf8_bin DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_log
-- ----------------------------
INSERT INTO `kite_log` VALUES ('1', '1', null, null, null, '171.221.254.149', '1540453386');
INSERT INTO `kite_log` VALUES ('2', '1', null, null, null, '171.221.254.149', '1540862715');
INSERT INTO `kite_log` VALUES ('3', null, '1', null, null, '171.221.254.149', '1540863288');
INSERT INTO `kite_log` VALUES ('4', '1', null, null, null, '171.221.254.149', '1540974277');
INSERT INTO `kite_log` VALUES ('5', '1', null, null, null, '171.88.1.80', '1541328472');
INSERT INTO `kite_log` VALUES ('6', '1', null, null, null, '171.221.254.149', '1541386371');
INSERT INTO `kite_log` VALUES ('7', '1', null, null, null, '171.221.254.149', '1541470914');
INSERT INTO `kite_log` VALUES ('8', '1', null, null, null, '171.221.254.149', '1541557011');
INSERT INTO `kite_log` VALUES ('9', '1', null, null, null, '171.221.254.149', '1541557012');
INSERT INTO `kite_log` VALUES ('10', '1', null, null, null, '171.221.254.149', '1546392687');
INSERT INTO `kite_log` VALUES ('11', '1', null, null, null, '171.221.254.149', '1548224084');
INSERT INTO `kite_log` VALUES ('12', '1', null, null, null, '171.221.254.149', '1548906765');
INSERT INTO `kite_log` VALUES ('13', '1', null, null, null, '171.221.254.149', '1548906961');
INSERT INTO `kite_log` VALUES ('14', '1', null, null, null, '171.221.254.149', '1548907034');
INSERT INTO `kite_log` VALUES ('15', '1', null, null, null, '171.221.254.149', '1550041007');
INSERT INTO `kite_log` VALUES ('16', '1', null, null, null, '171.221.254.149', '1550823764');
INSERT INTO `kite_log` VALUES ('17', '1', null, null, null, '171.221.254.149', '1551152378');
INSERT INTO `kite_log` VALUES ('18', '1', null, null, null, '171.221.254.149', '1551153402');
INSERT INTO `kite_log` VALUES ('19', '1', null, null, null, '183.155.199.253', '1551153413');
INSERT INTO `kite_log` VALUES ('20', '1', null, null, null, '120.229.70.69', '1551153414');
INSERT INTO `kite_log` VALUES ('21', '1', null, null, null, '218.66.10.207', '1551153425');
INSERT INTO `kite_log` VALUES ('22', '1', null, null, null, '117.136.49.19', '1551154229');
INSERT INTO `kite_log` VALUES ('23', '1', null, null, null, '223.104.211.245', '1551154912');
INSERT INTO `kite_log` VALUES ('24', '1', null, null, null, '183.160.236.112', '1551159273');
INSERT INTO `kite_log` VALUES ('25', '1', null, null, null, '171.221.254.149', '1551251057');
INSERT INTO `kite_log` VALUES ('26', '1', null, null, null, '171.221.254.149', '1551339438');
INSERT INTO `kite_log` VALUES ('27', '1', null, null, null, '171.221.254.149', '1551339924');
INSERT INTO `kite_log` VALUES ('28', '1', null, null, null, '127.0.0.1', '1551346512');
INSERT INTO `kite_log` VALUES ('29', '1', null, null, null, '117.136.64.89', '1552019659');
INSERT INTO `kite_log` VALUES ('30', '1', null, null, null, '117.136.62.50', '1552051767');
INSERT INTO `kite_log` VALUES ('31', '1', null, null, null, '49.87.216.15', '1552266923');
INSERT INTO `kite_log` VALUES ('32', '1', null, null, null, '42.49.254.238', '1552271282');
INSERT INTO `kite_log` VALUES ('33', '1', null, null, null, '61.49.251.78', '1552377994');
INSERT INTO `kite_log` VALUES ('34', '1', null, null, null, '115.51.116.190', '1552401793');
INSERT INTO `kite_log` VALUES ('35', '1', null, null, null, '219.140.121.117', '1552459931');
INSERT INTO `kite_log` VALUES ('36', '1', null, null, null, '113.116.196.103', '1552465913');
INSERT INTO `kite_log` VALUES ('37', '1', null, null, null, '1.27.214.126', '1552482800');
INSERT INTO `kite_log` VALUES ('38', '1', null, null, null, '114.219.167.51', '1552544498');
INSERT INTO `kite_log` VALUES ('39', '1', null, null, null, '219.136.2.18', '1552548476');
INSERT INTO `kite_log` VALUES ('40', '1', null, null, null, '183.11.39.156', '1552557119');
INSERT INTO `kite_log` VALUES ('41', '1', null, null, null, '120.85.206.204', '1552558284');
INSERT INTO `kite_log` VALUES ('42', '1', null, null, null, '182.150.160.25', '1552583324');
INSERT INTO `kite_log` VALUES ('43', '1', null, null, null, '113.105.128.67', '1552618208');
INSERT INTO `kite_log` VALUES ('44', '1', null, null, null, '42.49.254.238', '1552635940');
INSERT INTO `kite_log` VALUES ('45', '1', null, null, null, '223.104.9.200', '1552738330');
INSERT INTO `kite_log` VALUES ('46', '1', null, null, null, '115.60.18.139', '1552901624');
INSERT INTO `kite_log` VALUES ('47', '1', null, null, null, '116.117.253.251', '1553047267');
INSERT INTO `kite_log` VALUES ('48', '1', null, null, null, '39.186.168.112', '1553083466');
INSERT INTO `kite_log` VALUES ('49', '1', null, null, null, '58.38.170.168', '1553091335');
INSERT INTO `kite_log` VALUES ('50', '1', null, null, null, '183.48.245.90', '1553094205');
INSERT INTO `kite_log` VALUES ('51', '1', null, null, null, '113.68.12.76', '1553136159');
INSERT INTO `kite_log` VALUES ('52', '1', null, null, null, '113.68.12.76', '1553136159');
INSERT INTO `kite_log` VALUES ('53', '1', null, null, null, '223.91.202.58', '1553173624');
INSERT INTO `kite_log` VALUES ('54', '1', null, null, null, '220.202.232.195', '1553236565');
INSERT INTO `kite_log` VALUES ('55', '1', null, null, null, '27.18.211.41', '1553262436');
INSERT INTO `kite_log` VALUES ('56', '1', null, null, null, '171.213.40.141', '1553272098');
INSERT INTO `kite_log` VALUES ('57', '1', null, null, null, '113.194.80.14', '1553306295');
INSERT INTO `kite_log` VALUES ('58', '1', null, null, null, '221.237.179.164', '1553395834');
INSERT INTO `kite_log` VALUES ('59', '1', null, null, null, '119.84.153.208', '1553446435');
INSERT INTO `kite_log` VALUES ('60', '1', null, null, null, '39.129.3.145', '1553477189');
INSERT INTO `kite_log` VALUES ('61', '1', null, null, null, '183.199.79.59', '1553516256');
INSERT INTO `kite_log` VALUES ('62', '1', null, null, null, '223.104.216.103', '1553529361');
INSERT INTO `kite_log` VALUES ('63', '1', null, null, null, '113.111.10.38', '1553575351');
INSERT INTO `kite_log` VALUES ('64', '1', null, null, null, '123.232.4.66', '1553582290');
INSERT INTO `kite_log` VALUES ('65', '1', null, null, null, '171.113.141.125', '1553607762');
INSERT INTO `kite_log` VALUES ('66', '1', null, null, null, '117.136.72.162', '1553614268');
INSERT INTO `kite_log` VALUES ('67', '1', null, null, null, '171.221.71.198', '1553649500');
INSERT INTO `kite_log` VALUES ('68', '1', null, null, null, '222.244.118.36', '1553709787');
INSERT INTO `kite_log` VALUES ('69', '1', null, null, null, '222.133.194.94', '1553764641');
INSERT INTO `kite_log` VALUES ('70', '1', null, null, null, '124.118.42.240', '1553784575');
INSERT INTO `kite_log` VALUES ('71', '1', null, null, null, '182.204.211.33', '1554011133');
INSERT INTO `kite_log` VALUES ('72', '1', null, null, null, '59.46.28.194', '1554078157');
INSERT INTO `kite_log` VALUES ('73', '1', null, null, null, '183.33.74.42', '1554105292');
INSERT INTO `kite_log` VALUES ('74', '1', null, null, null, '114.238.52.141', '1554169016');
INSERT INTO `kite_log` VALUES ('75', '1', null, null, null, '39.130.3.140', '1554182601');
INSERT INTO `kite_log` VALUES ('76', '1', null, null, null, '222.223.124.183', '1554192491');
INSERT INTO `kite_log` VALUES ('77', '1', null, null, null, '39.130.3.62', '1554250635');
INSERT INTO `kite_log` VALUES ('78', '1', null, null, null, '218.29.85.50', '1554342713');
INSERT INTO `kite_log` VALUES ('79', '1', null, null, null, '127.0.0.1', '1554380668');
INSERT INTO `kite_log` VALUES ('80', '1', null, null, null, '117.154.3.15', '1554644624');
INSERT INTO `kite_log` VALUES ('81', '1', null, null, null, '113.247.70.219', '1554715681');
INSERT INTO `kite_log` VALUES ('82', '1', null, null, null, '219.129.193.55', '1554715782');
INSERT INTO `kite_log` VALUES ('83', '1', null, null, null, '59.42.206.7', '1554778686');
INSERT INTO `kite_log` VALUES ('84', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('85', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('86', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('87', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('88', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('89', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('90', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('91', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('92', '1', null, null, null, '1.192.63.53', '1554787597');
INSERT INTO `kite_log` VALUES ('93', '1', null, null, null, '1.192.63.53', '1554787598');
INSERT INTO `kite_log` VALUES ('94', '1', null, null, null, '1.192.63.53', '1554787598');
INSERT INTO `kite_log` VALUES ('95', '1', null, null, null, '1.192.63.53', '1554787598');
INSERT INTO `kite_log` VALUES ('96', '1', null, null, null, '1.192.63.53', '1554787598');
INSERT INTO `kite_log` VALUES ('97', '1', null, null, null, '1.192.63.53', '1554787598');
INSERT INTO `kite_log` VALUES ('98', '1', null, null, null, '1.80.83.230', '1554876925');
INSERT INTO `kite_log` VALUES ('99', '1', null, null, null, '39.130.3.36', '1555028195');
INSERT INTO `kite_log` VALUES ('100', '1', null, null, null, '119.123.32.68', '1555060930');
INSERT INTO `kite_log` VALUES ('101', '1', null, null, null, '27.26.4.187', '1555144838');
INSERT INTO `kite_log` VALUES ('102', '1', null, null, null, '101.83.163.177', '1555162807');
INSERT INTO `kite_log` VALUES ('103', '1', null, null, null, '111.14.87.65', '1555197640');
INSERT INTO `kite_log` VALUES ('104', '1', null, null, null, '58.53.131.174', '1555297919');
INSERT INTO `kite_log` VALUES ('105', '1', null, null, null, '36.6.47.57', '1555419390');
INSERT INTO `kite_log` VALUES ('106', '1', null, null, null, '112.91.254.2', '1555491606');
INSERT INTO `kite_log` VALUES ('107', '1', null, null, null, '202.100.205.245', '1555499700');
INSERT INTO `kite_log` VALUES ('108', '1', null, null, null, '120.234.2.146', '1555573861');
INSERT INTO `kite_log` VALUES ('109', '1', null, null, null, '118.121.13.9', '1555599991');
INSERT INTO `kite_log` VALUES ('110', '1', null, null, null, '111.14.89.96', '1555628444');
INSERT INTO `kite_log` VALUES ('111', '1', null, null, null, '49.118.203.24', '1555644505');
INSERT INTO `kite_log` VALUES ('112', '1', null, null, null, '49.118.203.24', '1555662401');
INSERT INTO `kite_log` VALUES ('113', '1', null, null, null, '119.129.226.116', '1555695847');
INSERT INTO `kite_log` VALUES ('114', '1', null, null, null, '61.147.108.203', '1555775954');
INSERT INTO `kite_log` VALUES ('115', '1', null, null, null, '113.93.90.18', '1555856746');
INSERT INTO `kite_log` VALUES ('116', '1', null, null, null, '110.152.38.175', '1555902123');
INSERT INTO `kite_log` VALUES ('117', '1', null, null, null, '106.114.236.57', '1555902785');
INSERT INTO `kite_log` VALUES ('118', '1', null, null, null, '39.77.158.88', '1556076232');
INSERT INTO `kite_log` VALUES ('119', '1', null, null, null, '119.164.27.176', '1556104424');
INSERT INTO `kite_log` VALUES ('120', '1', null, null, null, '119.164.27.176', '1556104426');
INSERT INTO `kite_log` VALUES ('121', '1', null, null, null, '121.233.6.125', '1556199640');
INSERT INTO `kite_log` VALUES ('122', '1', null, null, null, '112.229.233.71', '1556355690');
INSERT INTO `kite_log` VALUES ('123', '1', null, null, null, '117.94.92.171', '1556414697');
INSERT INTO `kite_log` VALUES ('124', '1', null, null, null, '223.84.210.181', '1556442180');
INSERT INTO `kite_log` VALUES ('125', '1', null, null, null, '113.71.139.203', '1556505702');
INSERT INTO `kite_log` VALUES ('126', '1', null, null, null, '117.136.36.212', '1556539159');
INSERT INTO `kite_log` VALUES ('127', '1', null, null, null, '171.106.19.9', '1556634737');
INSERT INTO `kite_log` VALUES ('128', '1', null, null, null, '182.35.110.211', '1556817074');
INSERT INTO `kite_log` VALUES ('129', '1', null, null, null, '171.11.6.59', '1557018100');
INSERT INTO `kite_log` VALUES ('130', '1', null, null, null, '120.239.151.74', '1557110835');
INSERT INTO `kite_log` VALUES ('131', '1', null, null, null, '110.152.252.221', '1557156687');
INSERT INTO `kite_log` VALUES ('132', '1', null, null, null, '211.142.128.229', '1557474821');
INSERT INTO `kite_log` VALUES ('133', '1', null, null, null, '49.118.207.247', '1557544502');
INSERT INTO `kite_log` VALUES ('134', '1', null, null, null, '223.104.3.56', '1557567272');
INSERT INTO `kite_log` VALUES ('135', '1', null, null, null, '122.225.137.83', '1557671393');
INSERT INTO `kite_log` VALUES ('136', '1', null, null, null, '119.57.136.138', '1557826414');
INSERT INTO `kite_log` VALUES ('137', '1', null, null, null, '119.123.206.41', '1557932759');
INSERT INTO `kite_log` VALUES ('138', '1', null, null, null, '117.44.182.4', '1558086012');
INSERT INTO `kite_log` VALUES ('139', '1', null, null, null, '183.14.90.137', '1558414752');
INSERT INTO `kite_log` VALUES ('140', '1', null, null, null, '88.17.80.190', '1558484857');
INSERT INTO `kite_log` VALUES ('141', '1', null, null, null, '221.237.127.247', '1558503745');
INSERT INTO `kite_log` VALUES ('142', '1', null, null, null, '113.70.36.72', '1558505345');
INSERT INTO `kite_log` VALUES ('143', '1', null, null, null, '183.63.76.194', '1558512455');
INSERT INTO `kite_log` VALUES ('144', '1', null, null, null, '223.241.92.38', '1558591861');
INSERT INTO `kite_log` VALUES ('145', '1', null, null, null, '210.13.84.70', '1558592430');
INSERT INTO `kite_log` VALUES ('146', '1', null, null, null, '112.51.22.104', '1558632784');
INSERT INTO `kite_log` VALUES ('147', '1', null, null, null, '220.175.154.221', '1558704904');
INSERT INTO `kite_log` VALUES ('148', '1', null, null, null, '117.163.237.147', '1558713106');
INSERT INTO `kite_log` VALUES ('149', '1', null, null, null, '1.25.64.104', '1558773582');
INSERT INTO `kite_log` VALUES ('150', '1', null, null, null, '218.62.244.68', '1559040872');
INSERT INTO `kite_log` VALUES ('151', '1', null, null, null, '220.182.61.17', '1559110814');
INSERT INTO `kite_log` VALUES ('152', '1', null, null, null, '220.182.61.17', '1559110814');
INSERT INTO `kite_log` VALUES ('153', '1', null, null, null, '124.205.75.106', '1559112622');
INSERT INTO `kite_log` VALUES ('154', '1', null, null, null, '202.168.163.101', '1559496185');
INSERT INTO `kite_log` VALUES ('155', '1', null, null, null, '223.78.224.88', '1559543552');
INSERT INTO `kite_log` VALUES ('156', '1', null, null, null, '42.243.22.116', '1559645694');
INSERT INTO `kite_log` VALUES ('157', '1', null, null, null, '1.205.117.242', '1559647187');
INSERT INTO `kite_log` VALUES ('158', '1', null, null, null, '1.205.117.242', '1559647189');
INSERT INTO `kite_log` VALUES ('159', '1', null, null, null, '1.205.117.242', '1559647197');
INSERT INTO `kite_log` VALUES ('160', '1', null, null, null, '125.75.54.108', '1559661902');
INSERT INTO `kite_log` VALUES ('161', '1', null, null, null, '36.34.4.217', '1559737942');
INSERT INTO `kite_log` VALUES ('162', '1', null, null, null, '113.27.67.222', '1559747397');
INSERT INTO `kite_log` VALUES ('163', '1', null, null, null, '112.49.87.203', '1559829856');
INSERT INTO `kite_log` VALUES ('164', '3', null, null, null, '118.112.40.110', '1560098231');
INSERT INTO `kite_log` VALUES ('165', '1', null, null, null, '118.112.40.110', '1560098270');
INSERT INTO `kite_log` VALUES ('166', '1', null, null, null, '118.112.40.110', '1560174800');
INSERT INTO `kite_log` VALUES ('167', null, '1', null, null, '118.112.40.110', '1560180662');
INSERT INTO `kite_log` VALUES ('168', '1', null, null, null, '39.152.1.188', '1560214269');
INSERT INTO `kite_log` VALUES ('169', '1', null, null, null, '113.56.206.133', '1560246895');
INSERT INTO `kite_log` VALUES ('170', '1', null, null, null, '218.22.21.251', '1560498010');
INSERT INTO `kite_log` VALUES ('171', '1', null, null, null, '27.188.183.228', '1560573714');
INSERT INTO `kite_log` VALUES ('172', '1', null, null, null, '89.189.172.170', '1560620529');
INSERT INTO `kite_log` VALUES ('173', '1', null, null, null, '89.189.172.170', '1560620537');
INSERT INTO `kite_log` VALUES ('174', '1', null, null, null, '115.192.64.124', '1560668229');
INSERT INTO `kite_log` VALUES ('175', '1', null, null, null, '58.62.110.170', '1560731587');
INSERT INTO `kite_log` VALUES ('176', '1', null, null, null, '113.120.49.84', '1560746139');
INSERT INTO `kite_log` VALUES ('177', '1', null, null, null, '118.112.40.110', '1560765646');
INSERT INTO `kite_log` VALUES ('178', '1', null, null, null, '118.112.40.110', '1560765914');
INSERT INTO `kite_log` VALUES ('179', null, '1', null, null, '118.112.40.110', '1560767289');
INSERT INTO `kite_log` VALUES ('180', '1', null, null, null, '127.0.0.1', '1560774502');
INSERT INTO `kite_log` VALUES ('181', '1', null, null, null, '127.0.0.1', '1560825576');
INSERT INTO `kite_log` VALUES ('182', null, '1', null, null, '127.0.0.1', '1560839375');
INSERT INTO `kite_log` VALUES ('183', '1', null, null, null, '127.0.0.1', '1560845537');
INSERT INTO `kite_log` VALUES ('184', '4', null, null, null, '127.0.0.1', '1560852851');
INSERT INTO `kite_log` VALUES ('185', '2', null, null, null, '127.0.0.1', '1560853674');

-- ----------------------------
-- Table structure for kite_message
-- ----------------------------
DROP TABLE IF EXISTS `kite_message`;
CREATE TABLE `kite_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息编号',
  `site_id` int(11) NOT NULL COMMENT '网站ID',
  `type` tinyint(1) NOT NULL COMMENT '信息类型 1 系统消息 2 短信 3 邮件',
  `subject` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '信息标题',
  `body` text COLLATE utf8_bin DEFAULT NULL COMMENT '信息内容',
  `code` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '动态码',
  `mid` int(11) DEFAULT NULL COMMENT '系统消息接收人mid',
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件消息接收人email',
  `phone` char(11) COLLATE utf8_bin DEFAULT NULL COMMENT '短信接收人手机号码',
  `send_status` varchar(255) COLLATE utf8_bin NOT NULL COMMENT ' success 发送成功  fail 发送失败',
  `send_error` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '错误代码',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 正常 1 失效',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_message
-- ----------------------------
INSERT INTO `kite_message` VALUES ('1', '1', '2', null, 0x38383437, null, null, null, '18780221108', 'fail', 'InvalidAccessKeyId.NotFound', '0', '1560843104', '1560843104');
INSERT INTO `kite_message` VALUES ('2', '1', '2', null, 0x34393437, null, null, null, '18780221108', 'fail', 'InvalidAccessKeyId.NotFound', '0', '1560843107', '1560843107');

-- ----------------------------
-- Table structure for kite_navigation
-- ----------------------------
DROP TABLE IF EXISTS `kite_navigation`;
CREATE TABLE `kite_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0 COMMENT '导航分类ID',
  `cat_id` int(11) NOT NULL COMMENT '文章栏目分类ID',
  `pid` int(11) NOT NULL DEFAULT 0,
  `site_id` char(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '网站编号',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单URL',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 栏目 2自定义URL',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_navigation
-- ----------------------------
INSERT INTO `kite_navigation` VALUES ('22', '1', '4', '0', '1', '明星', '0', '1', '0', '1560828394', '1560828394');
INSERT INTO `kite_navigation` VALUES ('23', '1', '5', '0', '1', '图片', '0', '1', '0', '1560828394', '1560828394');
INSERT INTO `kite_navigation` VALUES ('24', '1', '6', '0', '1', '关于我们', '0', '1', '0', '1560828394', '1560828394');
INSERT INTO `kite_navigation` VALUES ('25', '1', '8', '0', '1', '招聘', '0', '1', '0', '1560828394', '1560828394');
INSERT INTO `kite_navigation` VALUES ('26', '1', '9', '0', '1', '新闻', '0', '1', '0', '1560828394', '1560828394');

-- ----------------------------
-- Table structure for kite_site
-- ----------------------------
DROP TABLE IF EXISTS `kite_site`;
CREATE TABLE `kite_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '网站SID',
  `city_id` int(11) NOT NULL COMMENT '站点关联城市',
  `name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '站点名称',
  `alias` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '站点别名',
  `logo` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT 'LOGO',
  `domain` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点绑定域名',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '排序 越小越靠前',
  `hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否热门站点',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点标题',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点关键词',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点描述',
  `timezone` char(64) COLLATE utf8_bin DEFAULT NULL COMMENT '时区',
  `theme` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '模板名称',
  `copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '版权信息',
  `icp` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'ICP备案号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 正常 1关闭',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `site_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_site
-- ----------------------------
INSERT INTO `kite_site` VALUES ('1', '0', '搜索引擎优化', 'default', '/upload/20190618/47b08ccd14af32d048e1fb5fcd287143.png', 'http://f.19981.com', '0', '0', '搜索引擎优化', '搜索引擎优化', '搜索引擎优化', 'Asia/Shanghai', 'default', '© 2018 19981.com. All rights reserved', '蜀ICP备12004586号-4', '0', '1528854424', '1560838028');
INSERT INTO `kite_site` VALUES ('2', '0', '风筝的天空', 'kitesky', '/upload/20190611/555ffc45f99a4ad9ab8d5ecab5ea8a77.png', 'http://www.kitesky.com', '0', '0', '风筝的天空', '风筝的天空', '风筝的天空', null, 'default', '个人网站', '蜀ICP备12004586号-2', '0', '1541387367', '1560247110');

-- ----------------------------
-- Table structure for kite_site_config
-- ----------------------------
DROP TABLE IF EXISTS `kite_site_config`;
CREATE TABLE `kite_site_config` (
  `site_id` int(11) NOT NULL COMMENT '网站ID',
  `k` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '键名',
  `v` text COLLATE utf8_bin DEFAULT NULL COMMENT '键值',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  KEY `key` (`k`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_site_config
-- ----------------------------
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_publish_document', 0x30, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'register_score', 0x313030, '1529499198', '1529499198');
INSERT INTO `kite_site_config` VALUES ('1', 'login_score', 0x31, '1529499387', '1529499387');
INSERT INTO `kite_site_config` VALUES ('1', 'publish_score', 0x3130, '1529499540', '1529499540');
INSERT INTO `kite_site_config` VALUES ('1', 'comment_score', 0x2D35, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_type', 0x6C6F63616C, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_size', 0x6A70672C706E672C676966, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_ext', 0x6A70672C706E672C676966, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_path', 0x75706C6F6164, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'alioss_key', 0x34483543346A51627842417362777965, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'alioss_secret', 0x5535426539564C5A437079386F436F377354515343713830367377714756, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'alioss_endpoint', 0x6F73732D636E2D7368656E7A68656E2E616C6979756E63732E636F6D, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'alioss_bucket', 0x6B697465736B79, '1529499606', '1529499606');
INSERT INTO `kite_site_config` VALUES ('1', 'qiniu_ak', 0x3956577A66316A6953336745414C42695F587477454C4861487A484A49654358453557344B744A74, '1530071701', '1530071701');
INSERT INTO `kite_site_config` VALUES ('1', 'qiniu_sk', 0x54474E6432317877662D794847576E3346774E3337666B5257704F7A7A4D685843356A4566677238, '1530071701', '1530071701');
INSERT INTO `kite_site_config` VALUES ('1', 'qiniu_bucket', 0x6B697465736B79, '1530071701', '1530071701');
INSERT INTO `kite_site_config` VALUES ('1', 'qiniu_domain', 0x687474703A2F2F6F6E7872386D7438792E626B742E636C6F7564646E2E636F6D, '1530071701', '1530071701');
INSERT INTO `kite_site_config` VALUES ('1', 'link_category', 0x5B7B226E616D65223A22E69687E5AD97E993BEE68EA5222C227765696768696E67223A2231222C226964223A317D5D, '1531141510', '1531141510');
INSERT INTO `kite_site_config` VALUES ('1', 'slider_category', 0x5B5D, '1531147967', '1531147967');
INSERT INTO `kite_site_config` VALUES ('1', 'field_category', 0x5B7B226E616D65223A22E4BAA7E59381222C227765696768696E67223A22222C226964223A317D2C7B226E616D65223A22E68B9BE88198222C227765696768696E67223A22222C226964223A327D2C7B226E616D65223A22E696B0E997BB222C227765696768696E67223A22222C226964223A337D5D, '1531147967', '1531147967');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_useZh', 0x30, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_useImgBg', 0x30, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_fontSize', 0x3234, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_imageH', 0x3430, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_imageW', 0x323030, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_length', 0x34, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_member_register', 0x30, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_member_login', 0x30, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_publish_comment', 0x30, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_publish_feedback', 0x30, '1531213657', '1531213657');
INSERT INTO `kite_site_config` VALUES ('1', 'water_logo', 0x2F7374617469632F61646D696E2F646973742F696D672F6E6F7069632E706E67, '1531213845', '1531213845');
INSERT INTO `kite_site_config` VALUES ('1', 'water_position', 0x39, '1531213845', '1531213845');
INSERT INTO `kite_site_config` VALUES ('1', 'water_quality', 0x3830, '1531213845', '1531213845');
INSERT INTO `kite_site_config` VALUES ('1', 'water_status', 0x30, '1531213845', '1531213845');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_useCurve', 0x30, '1531217269', '1531217269');
INSERT INTO `kite_site_config` VALUES ('1', 'captcha_useNoise', 0x30, '1531217269', '1531217269');
INSERT INTO `kite_site_config` VALUES ('1', 'sms_type', 0x6479736D73, '1531371550', '1531371550');
INSERT INTO `kite_site_config` VALUES ('1', 'ali_access_key', '', '1531371550', '1531371550');
INSERT INTO `kite_site_config` VALUES ('1', 'ali_access_key_secret', '', '1531371550', '1531371550');
INSERT INTO `kite_site_config` VALUES ('1', 'ali_sign_name', '', '1531371550', '1531371550');
INSERT INTO `kite_site_config` VALUES ('1', 'ali_template_code', '', '1531371550', '1531371550');
INSERT INTO `kite_site_config` VALUES ('1', 'email_host', 0x736D74702E3136332E636F6D, '1531378668', '1531378668');
INSERT INTO `kite_site_config` VALUES ('1', 'email_port', 0x343635, '1531378668', '1531378668');
INSERT INTO `kite_site_config` VALUES ('1', 'email_username', 0x6E73737368, '1531378668', '1531378668');
INSERT INTO `kite_site_config` VALUES ('1', 'email_password', 0x77616E677A68656E67, '1531378668', '1531378668');
INSERT INTO `kite_site_config` VALUES ('1', 'member_register', 0x30, '1531378916', '1531378916');
INSERT INTO `kite_site_config` VALUES ('1', 'email_from_email', 0x6E73737368403136332E636F6D, '1531383066', '1531383066');
INSERT INTO `kite_site_config` VALUES ('1', 'email_from_name', 0x4B697465434D53, '1531383066', '1531383066');
INSERT INTO `kite_site_config` VALUES ('1', 'block_category', 0x5B5D, '1531981998', '1531981998');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_image_ext', 0x6A70672C706E672C676966, '1532327020', '1532327020');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_image_size', 0x32303438, '1532327020', '1532327020');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_video_ext', 0x726D2C726D76622C776D762C3367702C6D70342C6D6F762C6176692C666C76, '1532327020', '1532327020');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_video_size', 0x3130323430, '1532327020', '1532327020');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_attach_ext', 0x646F632C786C732C7261722C7A6970, '1532327020', '1532327020');
INSERT INTO `kite_site_config` VALUES ('1', 'upload_attach_size', 0x3130323430, '1532327020', '1532327020');
INSERT INTO `kite_site_config` VALUES ('1', 'navigation_category', 0x5B7B226E616D65223A22E9A1B6E983A8E5AFBCE888AA222C227765696768696E67223A2231222C226964223A317D5D, '1532675827', '1532675827');
INSERT INTO `kite_site_config` VALUES ('1', 'email_code_template', 0xE5B08AE695ACE79A84E4BC9AE59198247B757365726E616D657D20EFBC8CE682A8E69CACE6ACA1E79A84E9AA8CE8AF81E7A081E4B8BAEFBC9A247B636F64657D20EFBC8CE9AA8CE8AF81E7A081E59CA835E58886E9929FE58685E69C89E69588E38082, '1532856848', '1532856848');
INSERT INTO `kite_site_config` VALUES ('1', 'email_register_template', 0xE5B08AE695ACE79A84E4BC9AE59198247B757365726E616D657D20EFBC8CE682A8E5B7B2E7BB8FE68890E58A9FE6B3A8E5868CEFBC8CE8AFB7E8B0A8E8AEB0E682A8E79A84E794A8E688B7E5908DE58F8AE5AF86E7A081E38082, '1532856848', '1532856848');
INSERT INTO `kite_site_config` VALUES ('1', 'send_email_register', 0x30, '1532856848', '1532856848');
INSERT INTO `kite_site_config` VALUES ('2', 'field_category', 0x5B7B226E616D65223A22636D73222C227765696768696E67223A22222C226964223A317D5D, '1541487138', '1541487138');
INSERT INTO `kite_site_config` VALUES ('2', 'slider_category', null, '1548224151', '1548224151');
INSERT INTO `kite_site_config` VALUES ('2', 'link_category', null, '1548224152', '1548224152');
INSERT INTO `kite_site_config` VALUES ('2', 'block_category', 0x5B7B226E616D65223A2254455354222C227765696768696E67223A2231222C226964223A317D5D, '1548224152', '1548224152');
INSERT INTO `kite_site_config` VALUES ('2', 'register_score', 0x313030, '1548224155', '1548224155');
INSERT INTO `kite_site_config` VALUES ('2', 'login_score', 0x31, '1548224155', '1548224155');
INSERT INTO `kite_site_config` VALUES ('2', 'publish_score', 0x3130, '1548224155', '1548224155');
INSERT INTO `kite_site_config` VALUES ('2', 'comment_score', 0x35, '1548224156', '1548224156');
INSERT INTO `kite_site_config` VALUES ('2', 'email_host', 0x736D74702E3136332E636F6D, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_port', 0x343635, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_username', 0x6B697465333635, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_password', 0x77616E677A68656E67, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_from_email', 0x6B697465406B697465736B792E636F6D, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_from_name', 0x4B697465434D53, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_code_template', 0xE5B08AE695ACE79A84E4BC9AE59198247B757365726E616D657D20EFBC8CE682A8E69CACE6ACA1E79A84E9AA8CE8AF81E7A081E4B8BAEFBC9A247B636F64657D20EFBC8CE9AA8CE8AF81E7A081E59CA835E58886E9929FE58685E69C89E69588E38082, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'email_register_template', 0xE5B08AE695ACE79A84E4BC9AE59198247B757365726E616D657D20EFBC8CE682A8E5B7B2E7BB8FE68890E58A9FE6B3A8E5868CEFBC8CE8AFB7E8B0A8E8AEB0E682A8E79A84E794A8E688B7E5908DE58F8AE5AF86E7A081E38082, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'send_email_register', 0x30, '1548224167', '1548224167');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_type', 0x6C6F63616C, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_image_ext', 0x6A70672C706E672C676966, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_image_size', 0x32303430303030, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_video_ext', 0x726D2C726D76622C776D762C3367702C6D70342C6D6F762C6176692C666C76, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_video_size', 0x32303430303030, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_attach_ext', 0x646F632C786C732C7261722C7A6970, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_attach_size', 0x32303430303030, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'upload_path', 0x75706C6F6164, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'alioss_key', 0x34483543346A51627842417362777965, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'alioss_secret', 0x5535426539564C5A437079386F436F377354515343713830367377714756, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'alioss_endpoint', 0x6F73732D636E2D7368656E7A68656E2E616C6979756E63732E636F6D, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'alioss_bucket', 0x6B697465736B79, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'qiniu_ak', 0x3956577A66316A6953336745414C42695F587477454C4861487A484A49654358453557344B744A74, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'qiniu_sk', 0x794847576E3346774E3337666B5257704F7A7A4D685843356A4566677238, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'qiniu_bucket', 0x6B697465736B79, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'qiniu_domain', 0x687474703A2F2F6F6E7872386D7438792E626B742E636C6F7564646E2E636F6D, '1548224168', '1548224168');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_useZh', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_useImgBg', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_fontSize', 0x3134, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_imageH', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_imageW', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_length', 0x36, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_useCurve', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_useNoise', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_member_register', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_member_login', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_publish_document', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_publish_comment', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'captcha_publish_feedback', 0x30, '1548224169', '1548224169');
INSERT INTO `kite_site_config` VALUES ('2', 'navigation_category', null, '1548224170', '1548224170');
INSERT INTO `kite_site_config` VALUES ('4', 'field_category', null, '1551153424', '1551153424');
INSERT INTO `kite_site_config` VALUES ('4', 'link_category', null, '1551153427', '1551153427');
INSERT INTO `kite_site_config` VALUES ('4', 'slider_category', null, '1551153466', '1551153466');
INSERT INTO `kite_site_config` VALUES ('4', 'block_category', null, '1551153468', '1551153468');
INSERT INTO `kite_site_config` VALUES ('4', 'navigation_category', null, '1551153507', '1551153507');
INSERT INTO `kite_site_config` VALUES ('3', 'field_category', null, '1551343953', '1551343953');
INSERT INTO `kite_site_config` VALUES ('3', 'navigation_category', null, '1553520030', '1553520030');
INSERT INTO `kite_site_config` VALUES ('2', 'sms_type', 0x6479736D73, '1553582312', '1553582312');
INSERT INTO `kite_site_config` VALUES ('2', 'ali_access_key', 0x4163636573734B6579204944, '1553582312', '1553582312');
INSERT INTO `kite_site_config` VALUES ('2', 'ali_access_key_secret', 0x416363657373204B657920536563726574, '1553582312', '1553582312');
INSERT INTO `kite_site_config` VALUES ('2', 'ali_sign_name', 0x31393938312E636F6D, '1553582312', '1553582312');
INSERT INTO `kite_site_config` VALUES ('2', 'ali_template_code', 0x534D535F31323334, '1553582312', '1553582312');
INSERT INTO `kite_site_config` VALUES ('2', 'water_logo', 0x2F7374617469632F61646D696E2F646973742F696D672F6E6F7069632E706E67, '1553582314', '1553582314');
INSERT INTO `kite_site_config` VALUES ('2', 'water_position', 0x39, '1553582315', '1553582315');
INSERT INTO `kite_site_config` VALUES ('2', 'water_quality', 0x3830, '1553582315', '1553582315');
INSERT INTO `kite_site_config` VALUES ('2', 'water_status', 0x30, '1553582315', '1553582315');

-- ----------------------------
-- Table structure for kite_site_file
-- ----------------------------
DROP TABLE IF EXISTS `kite_site_file`;
CREATE TABLE `kite_site_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `site_id` int(11) NOT NULL COMMENT '网站ID',
  `upload_type` char(20) COLLATE utf8_bin NOT NULL COMMENT '上传方式',
  `title` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '图片原始名称',
  `name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '图片上传后生成名字',
  `ext` char(20) COLLATE utf8_bin NOT NULL COMMENT '图片后缀',
  `url` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '图片URL',
  `thumb` text COLLATE utf8_bin DEFAULT NULL COMMENT '本地生成缩略图记录 多个用逗号隔开。方便以后清理',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 上传未被引用; 1 上传后被引用',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_site_file
-- ----------------------------
INSERT INTO `kite_site_file` VALUES ('1', '1', 'local', 'hyd.png', 'c75a61ac9a55d8d79e08a273137480d9.png', 'png', '/upload/20181104/c75a61ac9a55d8d79e08a273137480d9.png', 0x2F75706C6F61642F32303138313130342F63373561363161633961353564386437396530386132373331333734383064395F323530783235302E706E672C2F75706C6F61642F32303138313130342F63373561363161633961353564386437396530386132373331333734383064395F3132307837352E706E672C2F75706C6F61642F32303138313130342F63373561363161633961353564386437396530386132373331333734383064395F323230783134302E706E672C2F75706C6F61642F32303138313130342F63373561363161633961353564386437396530386132373331333734383064395F333530783233302E706E672C2F75706C6F61642F32303138313130342F63373561363161633961353564386437396530386132373331333734383064395F333530783233302E706E67, '0', '1541328538', '1541536786');
INSERT INTO `kite_site_file` VALUES ('2', '1', 'local', '1990992729264925_7CA46AC3814E2BC32AAA040E472BFE2F.jpg', 'b5375810e31069b7f959a00109ca7931.jpg', 'jpg', '/upload/20190226/b5375810e31069b7f959a00109ca7931.jpg', null, '0', '1551152426', '1551152426');
INSERT INTO `kite_site_file` VALUES ('3', '1', 'local', '1990992729264925_BCF67AF8238E28A665B8471C711CA097.jpg', '04b1d8ca8be54fed70ff036692de5843.jpg', 'jpg', '/upload/20190227/04b1d8ca8be54fed70ff036692de5843.jpg', null, '0', '1551251079', '1551251079');
INSERT INTO `kite_site_file` VALUES ('4', '1', 'local', '1.png', '8e6b5a7a4331080f3fad9607d49ed7f4.png', 'png', '/upload/20190308/8e6b5a7a4331080f3fad9607d49ed7f4.png', null, '0', '1552019787', '1552019787');
INSERT INTO `kite_site_file` VALUES ('5', '1', 'local', '1.jpg', 'ac8494fd0ee97bc769ac108f1c44cb25.jpg', 'jpg', '/upload/20190308/ac8494fd0ee97bc769ac108f1c44cb25.jpg', 0x2F75706C6F61642F32303139303330382F61633834393466643065653937626337363961633130386631633434636232355F333530783233302E6A70672C2F75706C6F61642F32303139303330382F61633834393466643065653937626337363961633130386631633434636232355F3132307837352E6A70672C2F75706C6F61642F32303139303330382F61633834393466643065653937626337363961633130386631633434636232355F323230783134302E6A70672C2F75706C6F61642F32303139303330382F61633834393466643065653937626337363961633130386631633434636232355F323530783235302E6A70672C2F75706C6F61642F32303139303330382F61633834393466643065653937626337363961633130386631633434636232355F35307835302E6A7067, '0', '1552021670', '1560767353');
INSERT INTO `kite_site_file` VALUES ('6', '1', 'local', 'c2.jpg', 'a4116ba637cbbcd3a3a73d8819920b56.jpg', 'jpg', '/upload/20190308/a4116ba637cbbcd3a3a73d8819920b56.jpg', 0x2F75706C6F61642F32303139303330382F61343131366261363337636262636433613361373364383831393932306235365F333530783233302E6A70672C2F75706C6F61642F32303139303330382F61343131366261363337636262636433613361373364383831393932306235365F3132307837352E6A70672C2F75706C6F61642F32303139303330382F61343131366261363337636262636433613361373364383831393932306235365F323230783134302E6A70672C2F75706C6F61642F32303139303330382F61343131366261363337636262636433613361373364383831393932306235365F323530783235302E6A70672C2F75706C6F61642F32303139303330382F61343131366261363337636262636433613361373364383831393932306235365F35307835302E6A7067, '0', '1552021704', '1560767353');
INSERT INTO `kite_site_file` VALUES ('7', '1', 'local', 'c7.jpg', 'b43fe439a4f441d6abcc7634055e2855.jpg', 'jpg', '/upload/20190308/b43fe439a4f441d6abcc7634055e2855.jpg', 0x2F75706C6F61642F32303139303330382F62343366653433396134663434316436616263633736333430353565323835355F323530783235302E6A70672C2F75706C6F61642F32303139303330382F62343366653433396134663434316436616263633736333430353565323835355F3132307837352E6A70672C2F75706C6F61642F32303139303330382F62343366653433396134663434316436616263633736333430353565323835355F323230783134302E6A70672C2F75706C6F61642F32303139303330382F62343366653433396134663434316436616263633736333430353565323835355F333530783233302E6A70672C2F75706C6F61642F32303139303330382F62343366653433396134663434316436616263633736333430353565323835355F35307835302E6A7067, '0', '1552021757', '1560767353');
INSERT INTO `kite_site_file` VALUES ('8', '1', 'local', '1544174368(1).png', '82c6bc12eebe1bfa5845ec1032518b05.png', 'png', '/upload/20190314/82c6bc12eebe1bfa5845ec1032518b05.png', null, '0', '1552549390', '1552549390');
INSERT INTO `kite_site_file` VALUES ('9', '2', 'local', '808.jpg', '102082a52c00d370b792a457f2fef68c.jpg', 'jpg', '/upload/20190409/102082a52c00d370b792a457f2fef68c.jpg', null, '0', '1554787624', '1554787624');
INSERT INTO `kite_site_file` VALUES ('10', '2', 'local', '20180816110115375.png', 'f4657a745bd8bca6cb61f8259071379a.png', 'png', '/upload/20190409/f4657a745bd8bca6cb61f8259071379a.png', null, '0', '1554787635', '1554787635');
INSERT INTO `kite_site_file` VALUES ('11', '2', 'local', '1.jpg', 'bfd807741131ab395bde82d6e0fd21f9.jpg', 'jpg', '/upload/20190418/bfd807741131ab395bde82d6e0fd21f9.jpg', null, '0', '1555600044', '1555600044');
INSERT INTO `kite_site_file` VALUES ('12', '2', 'local', '4.png', '555ffc45f99a4ad9ab8d5ecab5ea8a77.png', 'png', '/upload/20190611/555ffc45f99a4ad9ab8d5ecab5ea8a77.png', null, '0', '1560247108', '1560247108');
INSERT INTO `kite_site_file` VALUES ('13', '2', 'local', 'u=3187049305,1981836037&fm=26&gp=0.jpg', 'b188bd2bbf38d9baf3cd06b0b9a47e78.jpg', 'jpg', '/upload/20190615/b188bd2bbf38d9baf3cd06b0b9a47e78.jpg', null, '0', '1560573779', '1560573779');
INSERT INTO `kite_site_file` VALUES ('14', '2', 'local', '下载 (1).jpg', '1a9210884e726089f5d0874556f3aeb1.jpg', 'jpg', '/upload/20190615/1a9210884e726089f5d0874556f3aeb1.jpg', null, '0', '1560573786', '1560573786');
INSERT INTO `kite_site_file` VALUES ('15', '2', 'local', 'netlimiter.png', '744f5ca2fa8aad72596801fc5d4ccc32.png', 'png', '/upload/20190616/744f5ca2fa8aad72596801fc5d4ccc32.png', null, '0', '1560620713', '1560620713');
INSERT INTO `kite_site_file` VALUES ('16', '1', 'local', 'logo.png', '18afca7dec141738ee9602b41cd7698d.png', 'png', '/upload/20190618/18afca7dec141738ee9602b41cd7698d.png', null, '0', '1560838006', '1560838006');
INSERT INTO `kite_site_file` VALUES ('17', '1', 'local', '40.png', '47b08ccd14af32d048e1fb5fcd287143.png', 'png', '/upload/20190618/47b08ccd14af32d048e1fb5fcd287143.png', null, '0', '1560838026', '1560838026');
INSERT INTO `kite_site_file` VALUES ('18', '1', 'local', 'favicon.png', 'e62b9f5b991b2b30b4dec26666714590.png', 'png', '/upload/20190618/e62b9f5b991b2b30b4dec26666714590.png', 0x2F75706C6F61642F32303139303631382F65363262396635623939316232623330623464656332363636363731343539305F36307836302E706E67, '0', '1560839387', '1560839388');
INSERT INTO `kite_site_file` VALUES ('19', '1', 'local', 'favicon.png', '83b56ac13413773672ac9cfbeaccba85.png', 'png', '/upload/20190618/83b56ac13413773672ac9cfbeaccba85.png', 0x2F75706C6F61642F32303139303631382F38336235366163313334313337373336373261633963666265616363626138355F36307836302E706E672C2F75706C6F61642F32303139303631382F38336235366163313334313337373336373261633963666265616363626138355F34307834302E706E67, '0', '1560843695', '1560851429');

-- ----------------------------
-- Table structure for kite_slider
-- ----------------------------
DROP TABLE IF EXISTS `kite_slider`;
CREATE TABLE `kite_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) DEFAULT 0 COMMENT '友情链接分类ID',
  `site_id` char(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '网站编号',
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '网站地址',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'logo地址',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述内容',
  `weighing` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态： 0隐藏  1 显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_slider
-- ----------------------------

-- ----------------------------
-- Table structure for kite_user_nav
-- ----------------------------
DROP TABLE IF EXISTS `kite_user_nav`;
CREATE TABLE `kite_user_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '规则名称',
  `url` varchar(64) CHARACTER SET utf8 NOT NULL,
  `menu` tinyint(1) DEFAULT 0 COMMENT '是否为菜单0 否 1是',
  `icon` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT 'fa fa-circle-o' COMMENT '图标',
  `weighing` int(11) DEFAULT 0 COMMENT '权重排序',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '备注说明',
  `lang_var` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '语言表示',
  PRIMARY KEY (`id`),
  KEY `permission_url` (`url`) USING BTREE,
  KEY `lang_var` (`lang_var`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of kite_user_nav
-- ----------------------------
INSERT INTO `kite_user_nav` VALUES ('1', '0', '信息管理', '#', '1', 'fa fa-laptop', '1', '', 'My document');
INSERT INTO `kite_user_nav` VALUES ('2', '1', '发布信息', 'member/document/create', '1', 'fa fa-edit', '2', '', 'Publish document');
INSERT INTO `kite_user_nav` VALUES ('3', '1', '修改信息', 'member/document/edit', '0', 'fa fa-circle-o', '3', '', 'Edit document');
INSERT INTO `kite_user_nav` VALUES ('4', '1', '删除信息', 'member/document/remove', '0', 'fa fa-circle-o', '4', '', 'Remove document');
INSERT INTO `kite_user_nav` VALUES ('5', '0', '账户设置', '#', '1', 'fa fa-user', '5', '', 'Account setting');
INSERT INTO `kite_user_nav` VALUES ('6', '5', '个人资料', 'member/member/profile', '1', 'fa fa-circle-o text-red', '6', '', 'Member profile');
INSERT INTO `kite_user_nav` VALUES ('7', '5', '账户绑定', 'member/member/bind', '1', 'fa fa-circle-o text-yellow', '7', '', 'Member bind');
INSERT INTO `kite_user_nav` VALUES ('8', '5', '手机绑定', 'member/member/mobileBind', '0', 'fa fa-circle-o', '8', '', 'Mobile bind');
INSERT INTO `kite_user_nav` VALUES ('9', '5', '邮箱绑定', 'member/member/emailBind', '0', 'fa fa-circle-o', '9', '', 'Email bind');
INSERT INTO `kite_user_nav` VALUES ('10', '5', '密码修改', 'member/member/password', '1', 'fa fa-circle-o text-aqua', '10', '', 'Password update');
INSERT INTO `kite_user_nav` VALUES ('11', '1', '信息列表', 'member/document/index', '1', 'fa fa-book', '0', '', 'Document list');
INSERT INTO `kite_user_nav` VALUES ('12', '0', '会员中心', 'member/index/index', '0', 'fa fa-circle-o', '0', '', 'Member index');
INSERT INTO `kite_user_nav` VALUES ('13', '5', '手机解绑', 'member/member/mobileUnbind', '0', 'fa fa-circle-o', '0', '', 'Mobile unbind');
INSERT INTO `kite_user_nav` VALUES ('14', '5', '邮箱解绑', 'member/member/emailUnbind', '0', 'fa fa-circle-o', '0', '', 'Email unbind');
INSERT INTO `kite_user_nav` VALUES ('15', '5', '头像设置', 'member/member/avatar', '0', 'fa fa-circle-o', '0', '', 'Member avatar');
