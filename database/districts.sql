DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_number` int(11) DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES ('1', 'Jahanabad', '1', null, 'Jahanabad', '37', 'JBD', '1', '1', null, '2012-02-16 14:48:31', '2012-02-16 14:48:31');
INSERT INTO `districts` VALUES ('2', 'Vishali', '1', null, 'Vishali', '18', 'VSL', '1', '1', null, '2012-02-18 23:14:21', '2012-02-18 23:14:21');
INSERT INTO `districts` VALUES ('3', 'Chapra/Saran', '1', null, 'Chapra/Saran', '17', 'CPR', '1', '1', null, '2012-02-21 17:11:14', '2012-02-21 17:11:17');
INSERT INTO `districts` VALUES ('4', 'Siwan', '1', null, 'Siwan', '16', 'SWN', '1', '1', null, '2012-02-21 17:11:40', '2012-02-21 17:11:44');
INSERT INTO `districts` VALUES ('5', 'Gopalganj', '1', null, 'Gopalganj', '15', 'GPN', '1', '1', null, '2012-02-21 17:12:07', '2012-02-21 17:12:10');
INSERT INTO `districts` VALUES ('6', 'Muzaffarpur', '1', null, 'Muzaffarpur', '14', 'MFR', '1', '1', null, '2012-02-21 17:12:39', '2012-02-21 17:12:42');
INSERT INTO `districts` VALUES ('7', 'West Champran', '1', null, 'West Champran', '1', 'WCN', '1', '1', null, '2012-02-21 17:13:19', '2012-02-21 17:13:22');
INSERT INTO `districts` VALUES ('8', 'Sitamahri', '1', null, 'Sitamahri', '4', 'STR', '1', '1', null, '2012-02-21 17:13:48', '2012-02-21 17:13:51');
INSERT INTO `districts` VALUES ('9', 'Sheohar', '1', null, 'Sheohar', '3', 'SHR', '1', '1', null, '2012-02-21 17:14:18', '2012-02-21 17:14:21');
