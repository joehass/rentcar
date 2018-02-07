/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : car_rental

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-02-07 14:12:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biaozhi
-- ----------------------------
DROP TABLE IF EXISTS `biaozhi`;
CREATE TABLE `biaozhi` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(20) DEFAULT NULL,
  `b_introduce` varchar(50) DEFAULT NULL,
  `b_img` varchar(1000) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biaozhi
-- ----------------------------
INSERT INTO `biaozhi` VALUES ('3', '大众', '国产', '201703161603145963.jpg', '2017-03-16');
INSERT INTO `biaozhi` VALUES ('4', '宝马', '发动机很好', '201703161719064749.jpg', '2017-03-16');
INSERT INTO `biaozhi` VALUES ('5', '奔驰', '英国产，发动机好', '201703161725115747.jpg', '2017-03-16');
INSERT INTO `biaozhi` VALUES ('6', '奥迪', '美国产', '201703161731068490.jpg', '2017-03-15');
INSERT INTO `biaozhi` VALUES ('7', '保时捷', '德国产，好动力', '201703161831177851.jpg', '2017-03-14');
INSERT INTO `biaozhi` VALUES ('8', '兰博基尼', '美国产，高端大气上档次', '201703161841311030.jpg', '2017-03-15');
INSERT INTO `biaozhi` VALUES ('9', '法拉利', '跑车，发动机很强大', '201703161846357818.jpg', '2017-03-15');
INSERT INTO `biaozhi` VALUES ('10', '奔驰', '恒阿卡', '201706130828288807.jpg', '2017-06-13');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `b_code` varchar(10) DEFAULT NULL,
  `b_kuanshi` varchar(10) DEFAULT NULL,
  `b_buydate` date DEFAULT NULL,
  `b_zuowei` int(11) DEFAULT NULL,
  `b_chemen` int(11) DEFAULT NULL,
  `b_ranliao` varchar(10) DEFAULT NULL,
  `b_biansu` varchar(10) DEFAULT NULL,
  `b_zuoyi` varchar(10) DEFAULT NULL,
  `b_isdao` varchar(10) DEFAULT NULL,
  `b_iswindow` varchar(10) DEFAULT NULL,
  `b_introduce` varchar(255) DEFAULT NULL,
  `b_price` double(5,2) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('6', '1', '3', '甘A-123', '运动款', '2017-03-20', '2', '6', '汽油', '手自一体', '皮布结合', '无', '无', '成功后大数据费', '125.00', 'Y');
INSERT INTO `car` VALUES ('8', '7', '3', '甘A-003', '高配', '2017-03-20', '8', '4', '汽油', '手动', '皮质', '有', '有', '载客量大，适合旅游', '180.00', 'N');
INSERT INTO `car` VALUES ('10', '5', '4', '甘A-1110', '高配', '2017-03-21', '2', '2', '电力', '手动', '皮质', '无', '无', '可以的，好车，适合自驾游', '82.00', 'N');
INSERT INTO `car` VALUES ('11', '2', '6', '甘A-221', '典雅款', '2017-03-23', '2', '2', '汽油', '手自一体', '皮质', '有', '有', '好车，适合自驾游', '145.00', 'Y');
INSERT INTO `car` VALUES ('14', '1', '9', '甘A-888', '高配', '2017-03-24', '2', '2', '汽油', '手动', '皮质', '有', '有', '适合赛车、越野', '210.00', 'Y');
INSERT INTO `car` VALUES ('15', '2', '3', '甘A-201', '高配', '2017-03-29', '4', '4', '汽油', '手动', '皮质', '有', '有', '适合旅游啊', '139.00', 'Y');
INSERT INTO `car` VALUES ('16', '7', '9', '甘A-202', '运动款', '2017-03-29', '2', '2', '汽油', '手动', '皮质', '有', '有', '适合赛车', '201.00', 'Y');
INSERT INTO `car` VALUES ('17', '5', '6', '甘A-203', '高配', '2017-03-29', '2', '2', '汽油', '手动', '皮布结合', '无', '无', '还好，一人可独行', '78.00', 'Y');
INSERT INTO `car` VALUES ('18', '7', '8', '甘A-009', '高配', '2017-03-29', '2', '2', '汽油', '手动', '皮质', '有', '有', '尊贵版，好车，很优惠啊', '166.00', 'Z');
INSERT INTO `car` VALUES ('19', '2', '7', '甘A-209', '典雅款', '2017-03-29', '4', '4', 'CNG', '其他', '皮质', '有', '有', '这款车很优惠啊', '114.00', 'Y');
INSERT INTO `car` VALUES ('20', '7', '6', '甘A-886', '运动款', '2017-03-29', '2', '2', '汽油', '手动', '皮质', '有', '有', '推荐一下，真的好啊', '138.00', 'Y');
INSERT INTO `car` VALUES ('21', '2', '5', '甘A-520', '高配', '2017-03-29', '2', '2', '汽油', '手动', '皮质', '有', '有', '好车啊，高配', '198.00', 'Z');
INSERT INTO `car` VALUES ('22', '5', '6', '甘A-2226', '高配', '2017-04-17', '2', '2', '汽油', '手动', '皮质', '有', '有', '好车', '112.00', 'Y');
INSERT INTO `car` VALUES ('23', '1', '3', '甘A-2221', '高配', '2017-04-17', '6', '6', '汽油', '手动', '皮质', '有', '有', '挺好的车，做的人多啊', '109.00', 'Y');
INSERT INTO `car` VALUES ('24', '5', '3', '甘A-300', '高配', '2017-05-10', '6', '6', '柴油', '手动', '皮质', '有', '有', '力量可以的的，欢迎预约', '111.00', 'Y');
INSERT INTO `car` VALUES ('25', '7', '8', '甘A-312', '悦动款', '2017-05-10', '2', '2', '汽油', '手自一体', '皮质', '有', '有', '好车，值得拥有，欢迎预约啊', '112.00', 'Y');
INSERT INTO `car` VALUES ('26', '7', '3', '甘A-302', '高配', '2017-05-10', '8', '2', '汽油', '其他', '织物', '无', '有', '确实是好车啊，值得信赖啊', '112.00', 'Y');
INSERT INTO `car` VALUES ('27', '2', '7', '甘A-306', '高配', '2017-05-10', '4', '4', '汽油', '手动', '皮质', '有', '有', '好车啊，挺舒适的，你值得信赖，值得拥有', '133.00', 'Y');
INSERT INTO `car` VALUES ('28', '8', '5', '甘A-307', '高配', '2017-05-10', '6', '6', '汽油', '手动', '皮质', '无', '无', '适合团队旅游，值得拥有啊', '95.00', 'Y');
INSERT INTO `car` VALUES ('29', '7', '5', '甘B-9997', '运动款', '2017-05-15', '4', '2', '电力', '手自一体', '织物', '无', '无', '小车虽然久了，功能还好着呢', '88.00', 'Y');
INSERT INTO `car` VALUES ('30', '2', '9', '甘A-602', '典雅款', '2017-05-19', '10', '8', '混动', '手自一体', '皮革', '有', '有', '猎豹，风一样的速度！！！', '160.00', 'Z');
INSERT INTO `car` VALUES ('31', '1', '9', '甘A-606', '高配', '2017-05-19', '2', '2', '汽油', '手自一体', '皮布结合', '有', '有', '保时捷，我的最爱！！！', '158.00', 'Y');
INSERT INTO `car` VALUES ('32', '8', '5', '甘A-610', '运动款', '2017-05-19', '6', '4', '混动', '手自一体', '皮质', '有', '有', '奔驰！！！', '166.00', 'Y');

-- ----------------------------
-- Table structure for car_img
-- ----------------------------
DROP TABLE IF EXISTS `car_img`;
CREATE TABLE `car_img` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_code` varchar(20) DEFAULT NULL,
  `img1` varchar(30) DEFAULT NULL,
  `img2` varchar(30) DEFAULT NULL,
  `img3` varchar(30) DEFAULT NULL,
  `img4` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_img
-- ----------------------------
INSERT INTO `car_img` VALUES ('6', '甘A-123', '201705181101501872.jpg', '201703241202308019.jpg', '20170324120230897.jpg', '20170324120230301.jpg');
INSERT INTO `car_img` VALUES ('8', '甘A-003', '201703241211596107.jpg', '201703241211591693.jpg', '20170324121159186.jpg', '201703241211598894.jpg');
INSERT INTO `car_img` VALUES ('10', '甘A-1110', '20170324160406236.jpg', '20170324160406776.jpg', '201703241604066366.jpg', '20170324160406102.jpg');
INSERT INTO `car_img` VALUES ('11', '甘A-221', '201703241957371749.jpg', '201703241957378047.jpg', '201703241957375567.jpg', '201703241957374468.jpg');
INSERT INTO `car_img` VALUES ('14', '甘A-888', '201703242006261314.jpg', '20170324200626406.jpg', '201703242006267838.jpg', '201703242006261841.jpg');
INSERT INTO `car_img` VALUES ('15', '甘A-201', '201703291244002628.jpg', '201703291244003648.jpg', '201703291244006855.jpg', '201703291244003413.jpg');
INSERT INTO `car_img` VALUES ('16', '甘A-202', '201703291245245696.jpg', '201703291245245533.jpg', '201703291245243938.jpg', '201703291245249368.jpg');
INSERT INTO `car_img` VALUES ('17', '甘A-203', '201703291252148559.jpg', '201703291252149249.jpg', '201703291252147412.jpg', '201703291252142810.jpg');
INSERT INTO `car_img` VALUES ('18', '甘A-009', '20170329125811235.jpg', '201703291258112096.jpg', '201703291258118659.jpg', '201703291258113195.jpg');
INSERT INTO `car_img` VALUES ('19', '甘A-209', '201703291300186281.jpg', '201703291300188527.jpg', '201703291300187611.jpg', '201703291300187652.jpg');
INSERT INTO `car_img` VALUES ('20', '甘A-886', '201703291306283816.jpg', '201703291306287882.jpg', '201703291306289014.jpg', '201703291306287885.jpg');
INSERT INTO `car_img` VALUES ('21', '甘A-520', '201703291308247063.jpg', '201703291308241372.jpg', '201703291308244074.jpg', '201703291308242268.jpg');
INSERT INTO `car_img` VALUES ('23', '甘A-2226', '201704171326099548.jpg', '201704171326098857.jpg', '201704171326092590.jpg', '201704171326096407.jpg');
INSERT INTO `car_img` VALUES ('24', '甘A-2221', '201704171327234546.jpg', '201704171327233877.jpg', '201704171327232951.jpg', '201704171327237015.jpg');
INSERT INTO `car_img` VALUES ('25', '甘A-300', '20170510230231933.jpg', '201705102302311693.jpg', '201705102302316258.jpg', '201705102302318892.jpg');
INSERT INTO `car_img` VALUES ('26', '甘A-312', '201705102305462442.jpg', '201705102305466758.jpg', '201705102305464823.jpg', '20170510230546681.jpg');
INSERT INTO `car_img` VALUES ('27', '甘A-302', '201705102311096729.jpg', '201705102310148367.jpg', '201705102310143168.jpg', '201705102310141029.jpg');
INSERT INTO `car_img` VALUES ('28', '甘A-306', '201705102313141051.jpg', '201705102313148601.jpg', '201705102313147770.jpg', '201705102313149234.jpg');
INSERT INTO `car_img` VALUES ('29', '甘A-307', '201705102317594104.jpg', '20170510231759118.jpg', '201705102317597978.jpg', '201705102317591172.jpg');
INSERT INTO `car_img` VALUES ('30', '甘B-9997', '20170515133750892.jpg', '201705151337503487.jpg', '201705151337509938.jpg', '201705151337509356.jpg');
INSERT INTO `car_img` VALUES ('31', '甘A-602', '201705191119566345.jpg', '201705191119567526.jpg', '201705191119568768.jpg', '20170519111956468.jpg');
INSERT INTO `car_img` VALUES ('32', '甘A-605', '201705191121413461.jpg', '201705191121415964.jpg', '201705191121418948.jpg', '201705191121415425.jpg');
INSERT INTO `car_img` VALUES ('33', '甘A-606', '201705191559056132.jpg', '201705191559052850.jpg', '201705191559053260.jpg', '201705191559058694.jpg');
INSERT INTO `car_img` VALUES ('34', '甘A-610', '201705191559597482.jpg', '201705191559595753.jpg', '201705191559591842.jpg', '201705191559593627.jpg');

-- ----------------------------
-- Table structure for diqu
-- ----------------------------
DROP TABLE IF EXISTS `diqu`;
CREATE TABLE `diqu` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `d_name` varchar(20) DEFAULT NULL,
  `d_pname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diqu
-- ----------------------------
INSERT INTO `diqu` VALUES ('1', '1', '兰州市', '兰州租赁中心');
INSERT INTO `diqu` VALUES ('2', '1', '定西市', '定西租赁中心');
INSERT INTO `diqu` VALUES ('3', '2', '西安市', '西安租赁中心');
INSERT INTO `diqu` VALUES ('4', '2', '安康市', '安康租赁中心');
INSERT INTO `diqu` VALUES ('5', '3', '郑州市', '郑州租赁中心');
INSERT INTO `diqu` VALUES ('6', '3', '开封市', '开封租赁中心');
INSERT INTO `diqu` VALUES ('7', '1', '天水市', '天水租赁中心');
INSERT INTO `diqu` VALUES ('8', '1', '白银市', '白银租赁中心');
INSERT INTO `diqu` VALUES ('9', '1', '平凉市', '平凉租赁中心');
INSERT INTO `diqu` VALUES ('10', '1', '庆阳市', '庆阳租赁中心');
INSERT INTO `diqu` VALUES ('11', '1', '武威市', '武威租赁中心');
INSERT INTO `diqu` VALUES ('12', '1', '张掖市', '张掖租赁中心');
INSERT INTO `diqu` VALUES ('13', '1', '嘉峪关市', '嘉峪关租赁中心');
INSERT INTO `diqu` VALUES ('14', '1', '甘南自治州', '甘南租赁中心');
INSERT INTO `diqu` VALUES ('15', '1', '临洮县', '临洮租赁中心');
INSERT INTO `diqu` VALUES ('16', '2', '宝鸡市', '宝鸡租赁中心');
INSERT INTO `diqu` VALUES ('17', '2', '咸阳市', '咸阳租赁中心');
INSERT INTO `diqu` VALUES ('18', '2', '商洛市', '商洛租赁中心');
INSERT INTO `diqu` VALUES ('19', '2', '渭南市', '渭南租赁中心');
INSERT INTO `diqu` VALUES ('20', '3', '洛阳市', '洛阳租赁中心');
INSERT INTO `diqu` VALUES ('21', '3', '南阳市', '南阳租赁中心');
INSERT INTO `diqu` VALUES ('22', '3', '许昌市', '许昌租赁中心');
INSERT INTO `diqu` VALUES ('23', '3', '商丘市', '商丘租赁中心');
INSERT INTO `diqu` VALUES ('24', '3', '信阳市', '信阳租赁中心');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(10) NOT NULL,
  `m_psw` varchar(10) NOT NULL,
  `m_sex` char(1) DEFAULT NULL,
  `m_age` int(2) DEFAULT NULL,
  `m_card` varchar(20) NOT NULL,
  `m_address` varchar(20) DEFAULT NULL,
  `m_phone` varchar(15) DEFAULT NULL,
  `m_img` varchar(1000) DEFAULT NULL,
  `m_date` date DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '曹黎明', '123456', '男', '23', '622427199407150923', '甘肃兰州', '18215142113', '201310538.jpg', '2017-02-15', null);
INSERT INTO `manager` VALUES ('2', '1', '1', '女', '22', '622427150963250158', '甘肃兰州', '18805698965', '201310538.jpg', '2017-02-18', null);
INSERT INTO `manager` VALUES ('3', '2', '2', '男', '21', '622452625419984526', '甘肃兰州', '18805698965', '201310538.jpg', '2017-02-18', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_card` varchar(20) NOT NULL,
  `m_info` varchar(200) DEFAULT NULL,
  `m_return` varchar(200) DEFAULT NULL,
  `m_date` date DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('22', '622427199407150965', '优惠多多，挺好的啊', '恩恩', '2017-03-28');
INSERT INTO `message` VALUES ('24', '622427199401258245', '挺好的啊，优惠多多，希望把好车多加点，这样就有更好的效益啊，是吧？哈哈', null, '2017-03-28');
INSERT INTO `message` VALUES ('25', '622427199407150965', '挺好的啊，希望继续努力', '你说的对', '2017-03-31');
INSERT INTO `message` VALUES ('26', '622427199407150965', '真的挺好的啊！哈哈', null, '2017-04-22');
INSERT INTO `message` VALUES ('27', '622427199407150965', '我感觉确实挺好的，希望继续啊', null, '2017-04-24');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_code` varchar(50) NOT NULL,
  `u_card` varchar(20) NOT NULL,
  `u_jscard` varchar(20) NOT NULL,
  `b_code` varchar(20) NOT NULL,
  `b_price` double(5,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days` int(11) DEFAULT NULL,
  `allMoney` int(11) DEFAULT NULL,
  `o_bx` varchar(20) DEFAULT NULL,
  `d_id` int(11) NOT NULL,
  `o_state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('5', '123456789012', '622427199407150965', '201310538123', '甘A-123', '124.00', '2017-03-19', '2017-03-20', '1', '112', '未购买', '4', '已还车');
INSERT INTO `orderlist` VALUES ('6', '136547896540', '622427199407150965', '201310538123', '甘A-886', '138.00', '2017-04-26', '2017-04-28', '2', '283', '已购买', '2', '已取消');
INSERT INTO `orderlist` VALUES ('8', '654897544', '622427199407150965', '201310538123', '甘A-209', '114.00', '2017-06-28', '2017-06-29', '1', '138', '已购买', '4', '已取消');
INSERT INTO `orderlist` VALUES ('10', '12365478', '622427199407150965', '201310538123', '甘A-009', '166.00', '2017-06-19', '2017-06-23', '4', '633', '已购买', '3', '未支付');
INSERT INTO `orderlist` VALUES ('11', '465355665', '622427199407150965', '201310538123', '甘A-123', '124.00', '2017-04-13', '2017-04-18', '5', '558', '未购买', '4', '已还车');
INSERT INTO `orderlist` VALUES ('14', 'khq237i06z01492881025554', '622427199407150965', '201310538123', '甘A-2221', '109.00', '2017-04-28', '2017-04-29', '1', '98', '未购买', '4', '已提车');
INSERT INTO `orderlist` VALUES ('15', 'w3gdyxjec801493030725081', '622427199407550933', '20130415', '甘A-003', '180.00', '2017-04-28', '2017-04-29', '1', '997', '已购买', '3', '已提车');
INSERT INTO `orderlist` VALUES ('16', 'vwv2c48ndb01494431359140', '622427199407150845', '201410569874', '甘A-221', '145.00', '2017-05-16', '2017-05-17', '1', '131', '未购买', '6', '已取消');
INSERT INTO `orderlist` VALUES ('17', '1gw6u90xqk01494431481459', '622427199407150845', '201410569874', '甘A-221', '145.00', '2017-05-16', '2017-05-18', '2', '261', '未购买', '6', '已取消');
INSERT INTO `orderlist` VALUES ('18', 'hwuu7e2pkh01494431683902', '622427199407150845', '201410569874', '甘A-201', '139.00', '2017-05-16', '2017-05-17', '1', '125', '未购买', '3', '未支付');
INSERT INTO `orderlist` VALUES ('19', '26egi$499l01494431932222', '622427199407150845', '201410569874', '甘A-201', '139.00', '2017-05-16', '2017-05-17', '1', '125', '未购买', '5', '已取消');
INSERT INTO `orderlist` VALUES ('20', 'igdjlxjns701495338992024', '622427199407550933', '20130415', '甘A-888', '210.00', '2017-05-25', '2017-05-27', '2', '1178', '未购买', '22', '已取消');
INSERT INTO `orderlist` VALUES ('21', 'fd89z$sess01495339925292', '622427199407550933', '20130415', '甘A-886', '138.00', '2017-05-25', '2017-05-27', '2', '1083', '已购买', '18', '已支付');
INSERT INTO `orderlist` VALUES ('22', '5j7875vhxy01495340029682', '622427199407550933', '20130415', '甘A-201', '139.00', '2017-05-25', '2017-05-27', '2', '1050', '未购买', '20', '已支付');
INSERT INTO `orderlist` VALUES ('23', '1wp67b0ijg01495988019083', '622427199407550933', '20130415', '甘A-2221', '109.00', '2017-05-25', '2017-05-27', '2', '996', '未购买', '18', '已支付');
INSERT INTO `orderlist` VALUES ('24', 'ieohf4u3ms01496373398349', '622427199407550933', '20130415', '甘A-888', '210.00', '2017-05-25', '2017-05-27', '2', '1178', '未购买', '20', '已支付');
INSERT INTO `orderlist` VALUES ('25', 'qlu5ynvwj801497142820314', '622427199407550933', '20130415', '甘A-520', '198.00', '2017-06-20', '2017-06-21', '1', '1013', '已购买', '18', '未支付');
INSERT INTO `orderlist` VALUES ('26', '5g4q585syw01515411753627', '622427199407150965', '201310538123', '甘A-602', '160.00', '2017-05-25', '2017-05-27', '0', '800', '未购买', '7', '未支付');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '甘肃省');
INSERT INTO `province` VALUES ('2', '陕西省');
INSERT INTO `province` VALUES ('3', '河南省');

-- ----------------------------
-- Table structure for systemset
-- ----------------------------
DROP TABLE IF EXISTS `systemset`;
CREATE TABLE `systemset` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) DEFAULT NULL,
  `s_logo` varchar(255) DEFAULT NULL,
  `s_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemset
-- ----------------------------
INSERT INTO `systemset` VALUES ('1', '租车后台管理系统', '201704211502329339.jpg', 'yst.mp4');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_type` varchar(20) DEFAULT NULL,
  `t_introduce` varchar(100) DEFAULT NULL,
  `t_img` varchar(500) DEFAULT NULL,
  `t_date` date DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '跑车', '发动机发达，速度超快', '201703181424405067.jpg', '2017-03-14');
INSERT INTO `type` VALUES ('2', 'SUV', '舒适，宽敞，易于自驾游', '20170318143939569.jpg', '2017-03-15');
INSERT INTO `type` VALUES ('5', '皮卡', '人货两载型，马力大', '201703181446278170.jpg', '2017-03-14');
INSERT INTO `type` VALUES ('7', 'MVP', '车大，载客数多', '201703181448284841.jpg', '2017-03-15');
INSERT INTO `type` VALUES ('8', '微面', '拉的人比较多，值得拥有', '20170510231527155.jpg', '2017-05-10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(10) NOT NULL,
  `u_psw` varchar(10) NOT NULL,
  `u_sex` char(1) DEFAULT NULL,
  `u_age` int(2) DEFAULT NULL,
  `u_card` varchar(20) NOT NULL,
  `u_address` varchar(20) DEFAULT NULL,
  `u_phone` varchar(15) DEFAULT NULL,
  `u_img` varchar(1000) DEFAULT NULL,
  `u_jscard` varchar(20) NOT NULL,
  `u_date` date DEFAULT NULL,
  `u_state` varchar(10) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123654', '男', '24', '622427199407150965', '甘肃兰州', '18215142114', '147118442222184737.jpg', '201310538123', '2015-03-15', '已审核', null);
INSERT INTO `user` VALUES ('2', 'lisi', '123456', '男', '24', '622427199407150845', '甘肃临洮', '18512457892', '147112542222184737.jpg', '201410569874', '2016-03-15', '已审核', null);
INSERT INTO `user` VALUES ('3', 'wangwu', '654321', '女', '22', '622427199401258245', '甘肃临洮', '18809407154', '201310538.jpg', '201410569821', '2017-02-14', '已审核', null);
INSERT INTO `user` VALUES ('4', 'it', '123456', '男', '23', '622427199407550933', '甘肃兰州', '18215142113', '201704202209521615.jpg', '20130415', '2017-04-20', '已审核', null);
INSERT INTO `user` VALUES ('5', 'laoluo', '123654', '男', '23', '622427199407150941', '甘肃兰州', '18809465059', '201310538.jpg', '20140521', '2017-04-21', '已审核', null);
INSERT INTO `user` VALUES ('6', 'Alice', '123456', '女', '28', '622427199405721365', '甘肃兰州', '18215142113', '201704202209521615.jpg', '20131052', '2017-05-02', '已审核', null);
INSERT INTO `user` VALUES ('8', 'Dopa', '123456', '男', '24', '622427199301547256', '福建福州', '18215142113', '147112542222184737.jpg', '18809165', '2017-05-02', '已审核', null);
INSERT INTO `user` VALUES ('9', 'clm', '123654', '男', '21', '622427199407150933', '甘肃兰州', '18215142113', '201310538.jpg', '20132569', '2017-05-19', '未审核', null);
INSERT INTO `user` VALUES ('10', 'sadmin', '123456', '男', '29', '622427199407150931', '甘肃兰州', '18215142113', '201704202209521615.jpg', '20141209', '2017-06-12', '未审核', null);

-- ----------------------------
-- Table structure for user_pb
-- ----------------------------
DROP TABLE IF EXISTS `user_pb`;
CREATE TABLE `user_pb` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_card` varchar(20) NOT NULL COMMENT '用户身份证',
  `p_pd` int(5) DEFAULT NULL COMMENT '用户积分',
  `p_money` int(5) DEFAULT NULL COMMENT '用户余额',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pb
-- ----------------------------
INSERT INTO `user_pb` VALUES ('1', '622427199407150845', '6', '101');
INSERT INTO `user_pb` VALUES ('2', '622427199407150965', '115', '1453');
INSERT INTO `user_pb` VALUES ('3', '622427199401258245', '50', '1005');
INSERT INTO `user_pb` VALUES ('4', '622427199407550933', '16', '300');
INSERT INTO `user_pb` VALUES ('5', '622427199407150941', '0', '0');
INSERT INTO `user_pb` VALUES ('6', '622427199405721365', '0', '0');
INSERT INTO `user_pb` VALUES ('7', '622427199405721365', '0', '0');
INSERT INTO `user_pb` VALUES ('8', '622427199301547256', '0', '0');
INSERT INTO `user_pb` VALUES ('9', '622427199407150933', '0', '0');
INSERT INTO `user_pb` VALUES ('10', '622427199407150931', '0', '0');

-- ----------------------------
-- Table structure for user_recode
-- ----------------------------
DROP TABLE IF EXISTS `user_recode`;
CREATE TABLE `user_recode` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_card` varchar(20) NOT NULL COMMENT '用户身份证',
  `r_money` int(5) DEFAULT NULL COMMENT '充钱金额',
  `r_date` date DEFAULT NULL COMMENT '充钱日期',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_recode
-- ----------------------------
INSERT INTO `user_recode` VALUES ('3', '622427199407150965', '200', '2017-04-24');
INSERT INTO `user_recode` VALUES ('4', '622427199407150965', '200', '2017-04-24');
INSERT INTO `user_recode` VALUES ('5', '622427199407150965', '200', '2017-04-24');
INSERT INTO `user_recode` VALUES ('6', '622427199407150965', '100', '2017-04-24');
INSERT INTO `user_recode` VALUES ('7', '622427199407550933', '100', '2017-04-24');
INSERT INTO `user_recode` VALUES ('8', '622427199407550933', '100', '2017-04-24');
INSERT INTO `user_recode` VALUES ('9', '622427199407150965', '100', '2017-05-18');
INSERT INTO `user_recode` VALUES ('10', '622427199407150965', '100', '2017-05-19');
INSERT INTO `user_recode` VALUES ('11', '622427199407150965', '100', '2017-05-19');
INSERT INTO `user_recode` VALUES ('12', '622427199407550933', '100', '2017-06-01');
