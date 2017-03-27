/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ezro_db

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-03-20 21:37:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `id` char(32) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('a', '13123616673');
INSERT INTO `phone` VALUES ('b', '13123616673');
INSERT INTO `phone` VALUES ('c', '13123616673');
INSERT INTO `phone` VALUES ('d', '13123616673');
INSERT INTO `phone` VALUES ('e', '13123616673');
INSERT INTO `phone` VALUES ('f', '13123616673');
INSERT INTO `phone` VALUES ('g', '13123616673');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '测试的内容',
  `sort_order` int(20) DEFAULT NULL,
  `microsecond` char(20) DEFAULT NULL COMMENT '时间 秒',
  `create_time` datetime DEFAULT NULL COMMENT '插入时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='测试表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('test_1', '伊宫', '0', '伊宫宁仇栾暴甘斜厉戎祖武符刘景詹束龙叶幸司韶郜黎蓟薄印宿白怀蒲邰从鄂索咸', '69561', '0.14760900', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_2', '车侯宓', '1', '车侯宓蓬全郗班仰秋仲伊宫宁仇栾暴甘斜厉戎', '24414', '0.20033800', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_3', '轩辕', '1', '轩辕令狐锺离宇文长孙慕容鲜于闾丘司徒司空丌官司寇仉督子车颛孙端木巫马公西漆雕乐正壤驷公良拓拔夹谷', '98172', '0.23324900', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_4', '毋沙乜', '1', '毋沙乜养鞠须丰巢关蒯相查后荆红游竺权逑盖益桓公万俟司马上官欧阳', '74319', '0.30836600', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_5', '宓蓬全', '0', '宓蓬全郗班仰秋仲伊宫宁仇栾暴甘斜厉戎祖武符刘景詹束龙叶幸司韶郜黎蓟薄印宿白怀蒲邰从鄂索咸籍赖卓蔺屠蒙', '11492', '0.33335500', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_6', '虞万支柯', '1', '虞万支柯昝管卢莫经房裘缪干解应宗丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇', '21502', '0.35962800', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_7', '孟平', '1', '孟平黄和穆萧尹姚邵湛汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董梁杜阮蓝闽席季麻', '93761', '0.39169000', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_8', '时傅', '0', '时傅皮卞齐康伍余元卜顾孟平黄和穆萧尹姚邵湛汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董梁杜阮蓝', '77497', '0.41766100', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_9', '门商牟', '1', '门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟', '81621', '0.44209900', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('test_10', '应宗', '1', '应宗丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於', '17622', '0.48434000', '2016-11-08 21:55:07', '2016-11-08 21:55:07');
INSERT INTO `users` VALUES ('2d1ebe33d24c32903fc7c53ce4bce53c', '丘左', '1', '丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟', '41680', '0.72677000', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('4af0441f111eb268419feee75cbe1069', '弓牧隗', '0', '弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫宁仇栾暴甘斜厉戎祖武符刘景詹束', '31484', '0.76630900', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('bf9799ae6a967ffeacde9d54dcd76b96', '申扶', '1', '申扶堵冉宰郦雍郤璩桑桂濮牛寿通边扈燕冀郏浦尚农温别庄晏柴瞿阎充慕连茹习宦艾鱼容向古易', '59173', '0.79049600', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('0341be0b1906e6c1a03fced43a5b2fe0', '羊舌', '1', '羊舌微生岳帅缑亢况后有琴梁丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年', '96181', '0.81595500', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('d398d97a41bbc55a9df6c20eb12fa5ff', '干百里', '0', '干百里东郭南门呼延归海羊舌微生岳帅缑亢况后有琴梁丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年爱', '82806', '0.88295100', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('7e9ba3e22421d85a978837f2dbfa9c7e', '籍赖卓蔺', '1', '籍赖卓蔺屠蒙池乔阴郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵', '40366', '0.90954900', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('9525fcc52e5dd84efd45fb76e425df06', '漆雕乐', '0', '漆雕乐正壤驷公良拓拔夹谷宰父谷梁晋楚阎法汝鄢涂', '81253', '0.94335600', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('a0acd183542b0d2ab2d52291171aef0b', '燕冀郏浦', '0', '燕冀郏浦尚农温别庄晏柴瞿阎充慕连茹习宦艾鱼容向古易慎戈廖庾终暨居衡', '32263', '0.97600600', '2016-11-08 21:55:51', '2016-11-08 21:55:51');
INSERT INTO `users` VALUES ('11ba99b456848bb9145cd7579cd9a21b', '戈廖', '1', '戈廖庾终暨居衡步都耿满弘匡国文寇广禄阙东欧殳', '20097', '0.01052500', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('98edb63721c0426a434392f889b45378', '林刁锺', '0', '林刁锺徐丘骆高夏蔡田樊胡凌霍虞万支柯昝管卢莫经房裘缪', '51376', '0.04400500', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('66869b2d267ab9ede30371e5334612fc', '边扈燕', '1', '边扈燕冀郏浦尚农温别庄晏柴瞿阎充慕连茹习宦艾鱼容向古易慎戈廖', '35076', '0.10898800', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('9405306d861cf86b2022757c6e107e54', '何吕施', '1', '何吕施张孔曹严华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁', '61739', '0.14340700', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('80844b09c92c9ce0f785e1193515b26f', '倪汤', '1', '倪汤滕殷罗毕郝邬安常乐于时傅皮卞齐康伍余元卜顾', '11335', '0.17587000', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('4c0e86869afc0d0119a263ae94ba449c', '伊宫', '0', '伊宫宁仇栾暴甘斜厉戎祖武符刘景詹束龙叶幸司韶郜黎蓟薄印宿白怀蒲邰从鄂索咸籍赖卓蔺屠蒙池乔', '86168', '0.21017000', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('c81e97c47ec3859ce38941a5cc7b5b51', '宫宁仇', '1', '宫宁仇栾暴甘斜厉戎祖武符刘景詹束龙叶幸司韶郜', '53675', '0.24224400', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('b0d3edf4229fe254c5725094d4fe5c71', '长孙慕', '0', '长孙慕容鲜于闾丘司徒司空丌官司寇仉督子车颛孙端木巫马公西', '82513', '0.28446200', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('8e10dcb289ee9138a4b87a761edb6f95', '谢邹喻柏', '0', '谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁', '65802', '0.31642800', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('467a7153cfe1de5de38d6eb851f949c2', '谈宋茅庞', '1', '谈宋茅庞熊纪舒屈项祝董梁杜阮蓝闽席季麻强', '17900', '0.34459300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('adda9d29ee581584c30f4307c4438e29', '孙慕容', '0', '孙慕容鲜于闾丘司徒司空丌官司寇仉督子车颛孙端木巫马公西漆雕乐正壤', '22580', '0.37728100', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('45ab3724e69900581b61804d3d843435', '谷梁晋楚', '0', '谷梁晋楚阎法汝鄢涂钦段干百里东郭南门呼延归', '41992', '0.41003300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('460d689770f3ffee6f6a7a8e162a40d6', '郁胥能', '0', '郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮牛', '44279', '0.44220700', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('4e20f94183c481026711e169dfdf06a7', '郁单杭洪', '1', '郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄麹家封', '66228', '0.47723300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('4164e3320d2e41670ab3b5a3358b88ae', '鱼容向古', '1', '鱼容向古易慎戈廖庾终暨居衡步都耿满弘匡国文寇广禄阙东欧殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾辛阚那', '74824', '0.51007000', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('11ee29b03298d0bcbee02670beb80ea1', '俟司马上', '1', '俟司马上官欧阳夏侯诸葛闻人东方赫连皇甫尉迟公羊澹台', '36082', '0.54288500', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('65e46a3ece3d4784ef14f69214f10160', '柏水', '1', '柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕', '55046', '0.57705700', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('bfe979294d3d85a4bb2b9848f0d80a49', '墨哈', '1', '墨哈谯笪年爱阳佟', '5308', '0.60887600', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('a5da0e1508c2ff8daaf4fabb201c3aab', '韦昌马', '1', '韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮卞齐康', '95936', '0.64175200', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('172a72bdd5a5c987ae914636361fc02c', '柯昝管', '0', '柯昝管卢莫经房裘缪干解应宗丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢', '12190', '0.66581800', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('9470211e5d8382efc773da45358863fc', '宇文长', '0', '宇文长孙慕容鲜于闾丘司徒司空丌官司寇仉督', '57886', '0.68211800', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('95ecf967ae217df1fc59556a34878773', '南门', '1', '南门呼延归海羊舌微生岳帅缑亢况后有琴梁丘左丘东门西门商牟佘佴伯赏', '54796', '0.70819300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('c39e662e2c1c9438f4adb1d407f1b50c', '郝邬', '0', '郝邬安常乐于时傅皮卞齐康伍余元卜顾孟平黄和穆萧尹姚邵湛', '20949', '0.73517500', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('d3004c46c45646d444483f3aa2b5e1c8', '孔曹严', '0', '孔曹严华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕', '66222', '0.78210300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('3bb790c9d152b3ed89b638efcd7c4f54', '芮羿储', '1', '芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫宁仇栾暴甘斜厉戎祖武符刘景詹束龙', '62080', '0.81650500', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('e9fc44681764a5aefcbd3e72c5bef359', '羊於惠', '1', '羊於惠甄麹家封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫宁仇', '87848', '0.84464400', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('fdd5416daebba1c5ede45f1e3ab63c66', '马苗', '1', '马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮卞齐康伍余元卜顾孟平', '32393', '0.87707800', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('65331ae3548cca2390bc86090857e873', '后有', '0', '后有琴梁丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟', '46584', '0.90879300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('094ce94c15f9c4c7c95a8709225cd3ba', '令狐', '0', '令狐锺离宇文长孙慕容鲜于闾丘司徒司空丌官司寇仉督', '27408', '0.97487300', '2016-11-08 21:55:52', '2016-11-08 21:55:52');
INSERT INTO `users` VALUES ('3c704ec996a41c22f2f9b2ac95e832c5', '年爱阳佟', '0', '年爱阳佟', '27121', '0.02694900', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('51b2fa4a585feeae08f8402bb4fa780d', '于单', '0', '于单于太叔申屠公孙仲孙轩辕令狐锺离宇文长孙慕容鲜于闾丘司徒司空丌官司寇仉督子车颛孙端木巫马公西', '65301', '0.07307200', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('a5599ea45e70b73fbcc1b65f30f3cecf', '蒙池乔', '1', '蒙池乔阴郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑', '49182', '0.10990400', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('b18add23a2a4ae7ac0db7e0f2d52286b', '马上官欧', '1', '马上官欧阳夏侯诸葛闻人东方赫连皇甫尉迟公', '62152', '0.14375100', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('c086b3dc845c7a47182bbe3109990eb8', '柏水窦', '1', '柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任', '42771', '0.17591300', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('97ee46df22aef511dedf783527034ce1', '阎充慕连', '0', '阎充慕连茹习宦艾鱼容向古易慎戈廖庾终暨居衡步都耿满弘匡国文寇广禄阙东欧殳沃利蔚', '5202', '0.22031700', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('ca692fa05f94504d0620fd64ddcdf7fc', '阙东', '0', '阙东欧殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾', '21423', '0.25232100', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('f4759cba19131c773b7c26e4889dde0d', '席季麻强', '1', '席季麻强贾路娄危江童颜郭梅盛林刁锺徐丘骆高夏蔡田樊胡凌霍虞万支柯', '27094', '0.28636600', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('be9438bd84de9f05fef48662da41770e', '田樊', '0', '田樊胡凌霍虞万支柯昝管卢莫经房裘缪干解应宗丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇', '57454', '0.31861100', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('09b2c006654b96d0ea130090d6503a99', '宗丁宣', '1', '宗丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄麹家封芮羿储靳汲', '84129', '0.37197400', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('83b801c430783b0f6ef636d47c4d6358', '仉督', '1', '仉督子车颛孙端木巫马公西漆雕乐正壤驷公良拓拔夹谷宰父谷梁晋楚阎法汝鄢涂钦段干百里东郭南门呼延归海羊', '59213', '0.40159400', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('17ee84672fefa4b8a1d54c91d6aef6d4', '楚阎法汝', '1', '楚阎法汝鄢涂钦段干百里东郭南门呼延归海羊舌微生岳帅缑亢况后有琴梁丘左丘东门西门', '30514', '0.44251200', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('261b15ff311eac7eee00959e0a429c5a', '督子车颛', '1', '督子车颛孙端木巫马公西漆雕乐正壤驷公良拓拔夹谷宰父谷梁晋楚阎法汝鄢涂钦', '43327', '0.46655500', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('224c1869a82d50b160fae6b4e70161e7', '郁单杭洪', '0', '郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄麹家封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山', '88612', '0.49323200', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('bf6243e48e31b7c65fdc4c6d1cc0206e', '袁柳酆', '1', '袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮卞齐康伍余元卜顾孟平黄和穆萧尹姚', '10958', '0.55664300', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('f59a241eca5c8d295cadbdca3269de9b', '司徒', '0', '司徒司空丌官司寇仉督子车颛孙端木巫马公西漆雕乐正壤驷公良拓拔夹谷宰父谷梁', '32194', '0.58267400', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('2ee2a015455c187b0ffad5583bb6002c', '莘党翟', '1', '莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮牛寿通边扈', '22045', '0.60704100', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('2fba138b71a95955d187c2e39887955a', '詹束龙', '0', '詹束龙叶幸司韶郜黎蓟薄印宿白怀蒲邰从鄂索咸籍赖', '52684', '0.62353100', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('dc8e3acd09ee916218d6a940b4a06f7c', '子车颛孙', '0', '子车颛孙端木巫马公西漆雕乐正壤驷公良拓拔夹谷宰父谷梁晋楚阎法汝鄢涂钦段干百里东郭南门', '71564', '0.66013300', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('21f8e8276be770a3a51bdcf509ed7bd2', '弘匡', '1', '弘匡国文寇广禄阙东欧殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾辛阚那简饶空', '41415', '0.69246200', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('9eef45f8b1d912411b5cc1b66230c08d', '邰从', '1', '邰从鄂索咸籍赖卓蔺屠蒙池乔阴郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮', '64766', '0.72652200', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('41ee1b7ffdae9396bc707b980267c54f', '魏陶姜戚', '0', '魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁', '59874', '0.75018500', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('3d3b2f2f6e493bdac82c954c5430f9f1', '韦昌马苗', '0', '韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时', '89437', '0.77616700', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('ed190329d6645a09e395eb2e104fef08', '封芮羿储', '1', '封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗', '17958', '0.79931400', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('f722facb6f50f9c20bf43cc5ddc879aa', '黎蓟', '0', '黎蓟薄印宿白怀蒲邰从鄂索咸籍赖卓蔺屠蒙池乔阴郁胥能苍双闻莘党翟谭', '94144', '0.82675000', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('7a12b994a1e34546874e515260d2e01e', '琴梁', '0', '琴梁丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟', '45215', '0.85867500', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('40f1f49231c00a9d55f1325f70bd7be4', '盛林刁锺', '0', '盛林刁锺徐丘骆高夏蔡田樊胡凌霍虞万支柯昝管卢莫经房裘缪干解', '61485', '0.88575700', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('f5ffd104015794f1637c26c0b66ff4fd', '隆师巩厍', '0', '隆师巩厍聂晁勾敖融冷訾辛阚那简饶空曾毋沙乜养鞠须丰巢关蒯', '70104', '0.91696100', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('33198b15d4bfcaea55517b98bde9a622', '乜养鞠', '0', '乜养鞠须丰巢关蒯相查后荆红游竺权逑盖益桓公万俟司马上官欧阳夏侯', '82337', '0.94252700', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('0006e06050e0a5b9d3627f454ccd02ff', '谭贡劳逄', '1', '谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮牛寿通边扈燕冀郏浦尚农温别庄晏柴瞿阎充慕连茹习宦', '92238', '0.99274700', '2016-11-08 21:55:53', '2016-11-08 21:55:53');
INSERT INTO `users` VALUES ('b218353cdd3e37221fbb2fed3e34e2ad', '嵇邢', '1', '嵇邢滑裴陆荣翁荀羊於惠甄麹家封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫', '34112', '0.03302400', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('2ab38dcadd2b7b52db9f1fffb061a726', '瞿阎充', '0', '瞿阎充慕连茹习宦艾鱼容向古易慎戈廖庾终暨居衡步都耿满弘匡国文', '58636', '0.06765100', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('81db8367ca8791a7f724ba52c0dd9568', '正壤', '0', '正壤驷公良拓拔夹谷宰父谷梁晋楚阎法汝鄢涂', '51001', '0.09395200', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('cfe522d0fde63402690d90b53277eccf', '瞿阎充慕', '1', '瞿阎充慕连茹习宦艾鱼容向古易慎戈廖庾终暨居衡步都耿满弘匡国文寇广禄阙东欧', '36973', '0.12620100', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('602841dabf847be164336daac8e5ba5f', '轩辕令狐', '0', '轩辕令狐锺离宇文长孙慕容鲜于闾丘司徒司空丌官司寇仉督子车颛孙端木巫马公', '4226', '0.14998300', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('2795654585f066899275505fcb028203', '官欧阳', '0', '官欧阳夏侯诸葛闻人东方赫连皇甫尉迟公羊澹台公冶宗政濮阳淳于单于太叔申屠公孙仲孙轩辕令狐锺离', '91833', '0.17612300', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('0cff8203cbe139fb355250da8e6d2179', '贾路娄', '1', '贾路娄危江童颜郭梅盛林刁锺徐丘骆高夏蔡田樊胡凌霍虞万支柯昝管', '71292', '0.19985800', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('4335b2a993ee62ac24ffd68f752880ec', '鄂索咸', '1', '鄂索咸籍赖卓蔺屠蒙池乔阴郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮牛寿通边扈', '61953', '0.22599200', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('92af8c1f9cbba9039342318dc281ca33', '耿满弘匡', '0', '耿满弘匡国文寇广禄阙东欧殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾辛阚那简饶空曾毋沙乜养鞠须丰巢', '18233', '0.24867000', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('6280367c816fbdfc4e7039f33c44b7c8', '祝董', '1', '祝董梁杜阮蓝闽席季麻强贾路娄危江童颜郭梅盛林刁锺徐丘骆高夏蔡田樊胡凌霍虞万', '30478', '0.27347200', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('d8a4d75a00ba4e3cea724a183a1cf162', '池乔', '0', '池乔阴郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮牛寿通边扈燕冀郏浦尚农温别庄晏', '65866', '0.29868600', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('f44d3eaca03b38aed236ac92baa2317b', '潘葛', '1', '潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮卞齐康伍余元', '3208', '0.32673900', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('bc0e219499c9b46df270d2ab13a2a6be', '盛林', '1', '盛林刁锺徐丘骆高夏蔡田樊胡凌霍虞万支柯昝', '73038', '0.34882600', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('09b74b189e595ec34c7318307f24f497', '满弘匡国', '0', '满弘匡国文寇广禄阙东欧殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾辛阚那简饶空曾毋沙乜养鞠须丰巢关蒯相查', '81851', '0.36529000', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('7badadb55f583b33306c4eb32a73347f', '雕乐正壤', '0', '雕乐正壤驷公良拓拔夹谷宰父谷梁晋楚阎法汝鄢涂钦段干百里东郭南', '6879', '0.39976600', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('b912f574ad0f0e641af1b0a483134b85', '沙乜养鞠', '0', '沙乜养鞠须丰巢关蒯相查后荆红游竺权逑盖益桓公万俟司马上', '43270', '0.42509900', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('b5362af7ff06c403262c2cec4c2ce06b', '那简饶空', '0', '那简饶空曾毋沙乜养鞠须丰巢关蒯相查后荆红游竺权逑盖益桓公万俟司马上官欧阳夏侯诸葛闻人东方赫连皇', '17048', '0.45074200', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('3869879647b82220dbed1c421751052e', '曹严', '0', '曹严华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费', '7734', '0.47456900', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('fb79491dd6ce4e34a057914d842aeb6a', '韦昌', '1', '韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时', '14988', '0.50071200', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('df2ecd608745a34d7b1a33beaa6e24a5', '湛汪祁', '0', '湛汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董梁', '18169', '0.52471300', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('abd3a12a0d672a32bed487d77fbccf74', '翁荀羊於', '1', '翁荀羊於惠甄麹家封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋', '45170', '0.55003400', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('413d79458cc647fd48ffb45d692a2052', '章云苏潘', '1', '章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐', '15408', '0.63628300', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
INSERT INTO `users` VALUES ('e44c578446ef0f745fd1ca30db80c4ef', '邢滑', '0', '邢滑裴陆荣翁荀羊於惠甄麹家封芮羿储靳汲邴糜松井', '62349', '0.73494800', '2016-11-08 21:55:54', '2016-11-08 21:55:54');
SET FOREIGN_KEY_CHECKS=1;
