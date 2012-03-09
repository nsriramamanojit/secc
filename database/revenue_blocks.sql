DROP TABLE IF EXISTS `revenue_blocks`;
CREATE TABLE `revenue_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_number` int(11) DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_count_flag` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of revenue_blocks
-- ----------------------------
INSERT INTO `revenue_blocks` VALUES ('1', 'Jehanabad', '1', null, '1', null, '2', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:36');
INSERT INTO `revenue_blocks` VALUES ('2', 'Vaishali', '1', null, '2', null, '1', null, '0', '1', '1', null, '2012-02-22 11:20:32', null);
INSERT INTO `revenue_blocks` VALUES ('3', 'Paterhi Belsar', '1', null, '2', null, '2', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('4', 'Lalganj', '1', null, '2', null, '3', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('5', 'Bhagwanpur', '1', null, '2', null, '4', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('6', 'Goraul', '1', null, '2', null, '5', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('7', 'Chehra Kalan', '1', null, '2', null, '6', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('8', 'Patepur', '1', null, '2', null, '7', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('9', 'Mahua', '1', null, '2', null, '8', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('10', 'Jandaha', '1', null, '2', null, '9', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('11', 'Raja Pakar', '1', null, '2', null, '10', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('12', 'Hajipur', '1', null, '2', null, '11', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('13', 'Raghopur', '1', null, '2', null, '12', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('14', 'Bidupur', '1', null, '2', null, '13', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('15', 'Desri', '1', null, '2', null, '14', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('16', 'Sahdai Buzurg', '1', null, '2', null, '15', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('17', 'Mahnar', '1', null, '2', null, '16', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('18', 'Mashrakh', '1', null, '3', null, '1', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('19', 'Panapur', '1', null, '3', null, '2', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('20', 'Taraiya', '1', null, '3', null, '3', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('21', 'Ishupur', '1', null, '3', null, '4', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('22', 'Baniapur', '1', null, '3', null, '5', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('23', 'Lahladpur', '1', null, '3', null, '6', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('24', 'Ekma', '1', null, '3', null, '7', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('25', 'Manjhi', '1', null, '3', null, '8', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('26', 'Jalalpur', '1', null, '3', null, '9', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('27', 'Revelganj', '1', null, '3', null, '10', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('28', 'Chapra', '1', null, '3', null, '11', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('29', 'Nagra', '1', null, '3', null, '12', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('30', 'Marhaura', '1', null, '3', null, '13', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('31', 'Amnour', '1', null, '3', null, '14', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('32', 'Maker', '1', null, '3', null, '15', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('33', 'Parsa', '1', null, '3', null, '16', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('34', 'Dariapur', '1', null, '3', null, '17', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('35', 'Garkha', '1', null, '3', null, '18', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('36', 'Dighwara', '1', null, '3', null, '19', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('37', 'Sonepur', '1', null, '3', null, '20', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('38', 'Nautan', '1', null, '4', null, '1', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('39', 'Siwan', '1', null, '4', null, '2', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('40', 'Barharia', '1', null, '4', null, '3', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('41', 'Goriakothi', '1', null, '4', null, '4', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('42', 'Lakri Nabiganj', '1', null, '4', null, '5', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('43', 'Basantpur', '1', null, '4', null, '6', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('44', 'Bhagwanpur Hat', '1', null, '4', null, '7', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('45', 'Maharajganj', '1', null, '4', null, '8', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('46', 'Pachrukhi', '1', null, '4', null, '9', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('47', 'Hussainganj', '1', null, '4', null, '10', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('48', 'Ziradei', '1', null, '4', null, '11', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('49', 'Mairwa', '1', null, '4', null, '12', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('50', 'Guthani', '1', null, '4', null, '13', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('51', 'Darauli', '1', null, '4', null, '14', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('52', 'Andar', '1', null, '4', null, '15', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('53', 'Raghunathpur', '1', '1', '4', null, '16', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('54', 'Hasanpura', '1', '1', '4', null, '17', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('55', 'Daraundha', '1', '1', '4', null, '18', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('56', 'Siswan', '1', '1', '4', null, '19', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('57', 'Katiya', '1', null, '5', null, '1', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('58', 'Bijaipur', '1', null, '5', null, '2', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('59', 'Bhorey', '1', null, '5', null, '3', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('60', 'Pach Deuri', '1', null, '5', null, '4', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('61', 'Kuchaikote', '1', null, '5', null, '5', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('62', 'Phulwaria', '1', null, '5', null, '6', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('63', 'Hathua', '1', null, '5', null, '7', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('64', 'Uchkagaon', '1', null, '5', null, '8', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('65', 'Thawe', '1', null, '5', null, '9', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('66', 'Gopalganj', '1', null, '5', null, '10', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('67', 'Manjha', '1', null, '5', null, '11', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('68', 'Barauli', '1', null, '5', null, '12', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('69', 'Sidhwalia', '1', null, '5', null, '13', null, '0', '1', '1', null, '2012-02-22 11:20:32', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('70', 'Baikunthpur', '1', null, '5', null, '14', null, '0', '1', '1', null, '2012-02-22 12:35:12', '2012-02-22 11:20:32');
INSERT INTO `revenue_blocks` VALUES ('71', 'Sahebganj', '1', null, '6', null, '1', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('72', 'Baruraj (Motipur)', '1', null, '6', null, '2', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('73', 'Paroo', '1', null, '6', null, '3', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('74', 'Saraiya', '1', null, '6', null, '4', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('75', 'Marwan', '1', null, '6', null, '5', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('76', 'Kanti', '1', null, '6', null, '6', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('77', 'Minapur', '1', null, '6', null, '7', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('78', 'Bochaha', '1', null, '6', null, '8', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('79', 'Aurai', '1', null, '6', null, '9', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('80', 'Katra', '1', null, '6', null, '10', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('81', 'Gaighat', '1', null, '6', null, '11', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('82', 'Bandra', '1', null, '6', null, '12', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('83', 'Dholi (Moraul)', '1', null, '6', null, '13', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('84', 'Musahari', '1', null, '6', null, '14', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('85', 'Kurhani', '1', null, '6', null, '15', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('86', 'Sakra', '1', null, '6', null, '16', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('87', 'Sidhaw', '1', null, '7', null, '1', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('88', 'Ramnagar', '1', null, '7', null, '2', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('89', 'Gaunaha', '1', null, '7', null, '3', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('90', 'Mainatanr', '1', null, '7', null, '4', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('91', 'Narkatiaganj', '1', null, '7', null, '5', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('92', 'Lauriya', '1', null, '7', null, '6', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('93', 'Bagaha', '1', null, '7', null, '7', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('94', 'Piprasi', '1', null, '7', null, '8', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('95', 'Madhubani', '1', null, '7', null, '9', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('96', 'Bhitaha', '1', null, '7', null, '10', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('97', 'Thakrahan', '1', null, '7', null, '11', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('98', 'Jogapatti', '1', null, '7', null, '12', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('99', 'Chanpatia', '1', null, '7', null, '13', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('100', 'Sikta', '1', null, '7', null, '14', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('101', 'Majhaulia', '1', null, '7', null, '15', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('102', 'Bettiah', '1', null, '7', null, '16', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('103', 'Bairia', '1', null, '7', null, '17', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('104', 'Nautan', '1', null, '7', null, '18', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('105', 'Bairgania', '1', null, '8', null, '1', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('106', 'Suppi', '1', null, '8', null, '2', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('107', 'Majorganj', '1', null, '8', null, '3', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('108', 'Sonbarsa', '1', null, '8', null, '4', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('109', 'Parihar', '1', null, '8', null, '5', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('110', 'Sursand', '1', null, '8', null, '6', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('111', 'Bathnaha', '1', null, '8', null, '7', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('112', 'Riga', '1', null, '8', null, '8', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('113', 'Parsauni', '1', null, '8', null, '9', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('114', 'Belsand', '1', null, '8', null, '10', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('115', 'Runisaidpur', '1', null, '8', null, '11', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('116', 'Dumra', '1', null, '8', null, '12', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('117', 'Bajpatti', '1', null, '8', null, '13', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('118', 'Charaut', '1', null, '8', null, '14', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('119', 'Pupri', '1', null, '8', null, '15', null, '0', '1', '1', '1', '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('120', 'Nanpur', '1', null, '8', null, '16', null, '0', '1', '1', '1', '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('121', 'Bokhara', '1', null, '8', null, '17', null, '0', '1', '1', '1', '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('122', 'Purnahiya', '1', null, '9', null, '1', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('123', 'Piprarhi', '1', null, '9', null, '2', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('124', 'Sheohar', '1', null, '9', null, '3', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('125', 'Dumri Katsari', '1', null, '9', null, '4', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
INSERT INTO `revenue_blocks` VALUES ('126', 'Tariani Chowk', '1', null, '9', null, '5', null, '0', '1', '1', null, '2012-02-22 15:14:15', '2012-02-22 15:14:15');
