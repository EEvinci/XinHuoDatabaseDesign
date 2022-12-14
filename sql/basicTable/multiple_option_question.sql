/*
 Navicat Premium Data Transfer

 Source Server         : XinHuo
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 121.4.26.155:3306
 Source Schema         : xinHuo

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 20/11/2022 12:48:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `multiple_option_question` VALUES ('0', '五年感恩奋进,五年精彩蝶变.浙江之所以能取得这些历史性成就,根本在于(),根本在于()科学指引', 'BC', '{\"A\":\"习近平总书记\",\"B\":\"习近平总书记.党中央坚强领导\",\"C\":\"习近平新时代中国特色社会主义思想\",\"D\":\"中国特色社会主义思想\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('1', '省第十五次党代会报告提出,浙江必须把().().()作为根本要求', 'ABC', '{\"A\":\"贯彻新发展理念\",\"B\":\"构建新发展格局\",\"C\":\"推动高质量发展\",\"D\":\"高质量发展建设共同富裕示范区\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('10', '省第十五次党代会提出,到2027年要打造新时代党建高地和清廉建设高地.().().全过程人民民主实践高地.新时代文化高地.社会全面进步高地.生态文明高地.()', 'ABD', '{\"A\":\"高质量发展高地\",\"B\":\"数字变革高地\",\"C\":\"全球制造业高地\",\"D\":\"促进全体人民全面发展高地\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('11', '省第十五次党代会提出,到2027年,数字浙江建设持续深化,党建统领整体智治体系更加完善,数字政府.().().()和()系统建设成效更加彰', 'ABCD', '{\"A\":\"数字社会\",\"B\":\"数字文化\",\"C\":\"数字法治\",\"D\":\"基层智治\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('12', '省第十五次党代会提出,以\"四大建设\"能级整体提升为牵引,以重大项目重大平台为支撑,构建\"().().().全域美丽\"空间格局', 'ABC', '{\"A\":\"一湾引领\",\"B\":\"四极辐射\",\"C\":\"山海互济\",\"D\":\"山海协作\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('13', '省第十五次党代会报告提出,推行以精神富有为标志的文化发展模式,增强先进文化凝聚力,在共同富裕中实现(),在现代化先行中实现()', 'BD', '{\"A\":\"人文富裕\",\"B\":\"精神富有\",\"C\":\"精神先行\",\"D\":\"文化先行\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('14', '省第十五次党代会提出,更大力度建设教育强省,率先实现().()和()', 'ACD', '{\"A\":\"基础教育均衡优质\",\"B\":\"职业教育现代化\",\"C\":\"高等教育高水平普及\",\"D\":\"普惠性人力资本提升\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('15', '省第十五次党代会报告提出,高水平建设国家清洁能源示范省,建设绿色制造体系和服务体系,加快().().().()领域低碳转型,抢占绿色低碳科技革命先机,开发利用林业碳汇和海洋\"蓝碳\",构建减污降碳协同制度体系', 'ABCD', '{\"A\":\"建筑\",\"B\":\"交通\",\"C\":\"农业\",\"D\":\"居民生活\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('16', '省第十五次党代会提出,完善().()的大平安格局', 'AC', '{\"A\":\"横向到边\",\"B\":\"省级抓总\",\"C\":\"纵向到底\",\"D\":\"分级负责\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('17', '省第十五次党代会提出,全面落实新时代党的建设总要求,大力弘扬(),严格落实管党治党政治责任,纵深推进全面从严治党,不断推进以()引领社会革命在浙江生动实践', 'CD', '{\"A\":\"红船精神\",\"B\":\"党的自我斗争\",\"C\":\"伟大建党精神\",\"D\":\"党的自我革命\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('18', '省第十五次党代会提出,迭代升级七张问题清单应用,强化党建统领重大决策落地.重大工作推进.重大风险防控,促进各级党组织().().()整体跃升', 'ABD', '{\"A\":\"领导力\",\"B\":\"组织力\",\"C\":\"战斗力\",\"D\":\"执行力\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('19', '鸦片战争是中国近代史的起点.鸦片战争之所以成为中国近代史的起点,是因为鸦片战争之后,随着外国资本主义的入侵,()', 'AB', '{\"A\":\"中国的封建社会逐步变成了半殖民地半封建社会\",\"B\":\"中国人民逐渐开始了反帝反封建的资产阶级民主革命\",\"C\":\"中国人民对帝国主义的认识进到理性的阶段\",\"D\":\"中国工人阶级开始以独立的姿态登上历史舞台\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('2', '省第十五次党代会报告提出,省第十四次党代会以来的五年极不平凡,是()的五年,是()的五年', 'AD', '{\"A\":\"感恩奋进.实干争先\",\"B\":\"实干争先.感恩奋进\",\"C\":\"实现历史性跨越.开启系统性变革\",\"D\":\"开启系统性变革.实现历史性跨越\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('20', '近代以来中华民族面临的两大历史任务,就是争取民族独立.人民解放和实现国家富强.人民富裕.两大历史任务之间的关系是()', 'CD', '{\"A\":\"两大历史任务的内容一样\",\"B\":\"两大历史任务的实现方式一样\",\"C\":\"前一个任务为后一个任务创造必要的前提\",\"D\":\"后一个任务是前一个任务的最终目的和必然要求\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('21', '帝国主义列强对中国的争夺和瓜分的图谋,在1894年中日甲午战争爆发后达到高潮.中日甲午战争以后,日本通过不平等的<马关条约>迫使清朝割让包括钓鱼岛在内的\"台湾全岛及所有附属各岛屿\".接踵而来的瓜分狂潮,使中华民族的各阶级.各阶层普遍产生了亡国灭种的危机感,中国人开始有了普遍的民族意识的觉醒,救亡图存成了时代的主旋律.以下属于甲午战争爆发后救亡图存言论的是()', 'BCD', '{\"A\":\"师夷长技以制夷\",\"B\":\"亟拯斯民于水火,切扶大厦之将倾\",\"C\":\"振兴中华\",\"D\":\"救亡图存\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('22', '近代中国革命的主要对象是()', 'ABD', '{\"A\":\"帝国主义\",\"B\":\"封建主义\",\"C\":\"小资产阶级\",\"D\":\"官僚资本主义\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('23', '以下属于资本-帝国主义对中国进行经济侵略的方式是()', 'ABCD', '{\"A\":\"剥夺中国关税自主权\",\"B\":\"控制中国通商口岸\",\"C\":\"实行商品倾销\",\"D\":\"操控中国的经济命脉\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('24', '中国封建社会的宗族家长制度突出()三权', 'ACD', '{\"A\":\"君权\",\"B\":\"神权\",\"C\":\"夫权\",\"D\":\"父权\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('25', '第一次鸦片战争后,中国与各侵略国签订了第一批不平等条约,其中主要有()', 'ABCD', '{\"A\":\"中法<黄埔条约>\",\"B\":\"中英<虎门条约>\",\"C\":\"中美<望厦条约>\",\"D\":\"中英<南京条约>\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('26', '下列条约中涉及香港的有()', 'ACD', '{\"A\":\"<南京条约>\",\"B\":\"<辛丑条约>\",\"C\":\"<北京条约>\",\"D\":\"<展拓香港界址专条>\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('27', '19世纪70至80年代,帝国主义列强从侵占中国周边邻国发展到蚕食中国边疆地区,使中国陷入\"边疆危机\".\"边疆危机\"的主要表现有()', 'ABCD', '{\"A\":\"英国从印度侵入西藏,从缅甸入侵云南\",\"B\":\"法国从越南侵犯广西\",\"C\":\"俄国从中亚入侵新疆\",\"D\":\"日本吞并琉球.侵犯中国台湾\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('28', '2020年11月12日下午,正在江苏考察调研的习近平总书记来到南通博物苑,参观张謇生平展陈,了解张謇兴办实业救国.发展教育.从事社会公益事业的情况.习近平指出,张謇在兴办实业的同时,积极兴办教育和社会公益事业,造福乡梓,帮助群众,影响深远,是中国民营企业家的先贤和楷模.在半封建半殖民地的中国,民族资本主义经济是一种与新生产力相联系的先进的生产方式和经济成分,它对发展现代技术.发展社会生产力具有积极作用.但是,在半封建半殖民地的中国,民族资本主义经济的发展受到了多方面的阻碍,在中国整个资本主义经济中不占主体地位,始终没有成为中国社会经济的主要形式.中国民族资本主义经济受到的阻碍包括()', 'ABCD', '{\"A\":\"外国资本的压迫\",\"B\":\"官僚资本的排挤\",\"C\":\"封建生产关系的束缚\",\"D\":\"军阀官僚政府的压榨\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('29', '洋务运动失败的原因主要是()', 'ABC', '{\"A\":\"洋务运动具有封建性\",\"B\":\"洋务运动对外国具有依赖性\",\"C\":\"洋务企业的管理具有腐朽性\",\"D\":\"洋务运动的指导思想具有激进性\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('3', '省第十五次党代会报告提出,().().()是习近平总书记对浙江工作的一以贯之要求', 'ABC', '{\"A\":\"干在实处\",\"B\":\"走在前列\",\"C\":\"勇立潮头\",\"D\":\"要谋新篇\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('30', '以下关于太平天国的表述,正确的是()', 'ABD', '{\"A\":\"历时14载\",\"B\":\"转战18省\",\"C\":\"1854年占领南京,改名天京,定为首都\",\"D\":\"削弱了封建统治的精神支柱\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('31', '以下属于百日维新运动中政治方面的新政内容有()', 'ABC', '{\"A\":\"裁撤闲散.重叠机构\",\"B\":\"裁汰冗员\",\"C\":\"准许旗人自谋生计\",\"D\":\"建立新式农场\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('32', '<天朝田亩制度>反映了太平天国领导者想建立的理想社会的特征是()', 'ABC', '{\"A\":\"有田同耕,有饭同食\",\"B\":\"无处不均匀,无人不保暖\",\"C\":\"有衣同穿,有钱同使\",\"D\":\"均贫富,等贵贱\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('33', '戊戌维新运动的失败,主要是由于维新派自身的局限和以慈禧太后为首的强大的守旧势力的反对.具体说来,主要有()', 'AD', '{\"A\":\"民族资产阶级力量弱小,又没有发动群众\",\"B\":\"维新派触及了封建主义的经济基础--封建土地所有制,导致守旧派强烈反扑\",\"C\":\"维新派没有突破\\\"中体西用\\\"思想的局限,不敢触动君主专制制度\",\"D\":\"维新派虽然大声疾呼救亡图存,却又幻想西方列强能帮助自己变法维新\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('34', '洋务运动举办的重要的官督商办企业有()', 'ABCD', '{\"A\":\"轮船招商局\",\"B\":\"开平矿务局\",\"C\":\"天津电报局\",\"D\":\"上海机器织布局\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('35', '洋务运动时期,清政府创办的新式学堂有:()', 'ABD', '{\"A\":\"军事学堂\",\"B\":\"工艺学堂\",\"C\":\"万木草堂\",\"D\":\"翻译学堂\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('36', '为了镇压太平天国起义,英.法等国帮助清政府建立起的武装有:()', 'AC', '{\"A\":\"常胜军\",\"B\":\"武卫军\",\"C\":\"常捷军\",\"D\":\"义勇军\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('37', '19世纪90年代末中国出现戊戌维新运动不是偶然的,它的发生有着深刻的历史背景,主要是()', 'BCD', '{\"A\":\"中国民族资本主义已经成为中国经济的主要形式\",\"B\":\"新兴的民族资产阶级迫切要求为在中国发展资本主义开辟道路\",\"C\":\"甲午战争惨败造成的新的民族危机激发了新的民族觉醒\",\"D\":\"资产阶级改良思想在中国迅速传播\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('38', '洋务派的代表人物有()', 'ABCD', '{\"A\":\"曾国藩\",\"B\":\"李鸿章\",\"C\":\"左宗棠\",\"D\":\"张之洞\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('39', '以下属于百日维新运动军事方面的新政内容有()', 'BCD', '{\"A\":\"开设新型军事院校\",\"B\":\"改练新式陆军\",\"C\":\"采用西洋兵制\",\"D\":\"裁减旧式绿营兵\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('4', '省第十五次党代会报告提出,要牢牢把握().()的要求', 'AB', '{\"A\":\"立足浙江发展浙江\",\"B\":\"跳出浙江发展浙江\",\"C\":\"瞄准浙江发展浙江\",\"D\":\"立足浙江面向全国\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('40', '维新派与守旧派的论战是围绕()等问题展开的', 'ABD', '{\"A\":\"要不要变法\",\"B\":\"要不要兴民权\",\"C\":\"要不要实行共和\",\"D\":\"要不要废除八股\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('41', '资产阶级维新派的主要代表人物包括:()', 'ABC', '{\"A\":\"康有为\",\"B\":\"梁启超\",\"C\":\"谭嗣同\",\"D\":\"光绪皇帝\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('42', '康有为等维新派自身的局限性主要表现在()', 'ABD', '{\"A\":\"不敢否定封建主义\",\"B\":\"对帝国主义抱有幻想\",\"C\":\"不敢鼓吹民权\",\"D\":\"惧怕人民群众\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('43', '戊戌维新运动作为中国民族资产阶级登上政治舞台的第一次表演,虽然失败了,但它在中国近代史上仍然有着重大的历史意义,主要是()', 'ABC', '{\"A\":\"戊戌维新运动是一次爱国救亡运动\",\"B\":\"戊戌维新运动是一场资产阶级性质的政治改良运动\",\"C\":\"戌维新运动是一场思想启蒙运动\",\"D\":\"戊戌维新运动是一场广泛的群众运动\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('44', '维新运动是一次爱国救亡运动,维新派在民族危亡的关键时刻()', 'ABD', '{\"A\":\"高举救亡图存的旗帜\",\"B\":\"要求通过变法,发展资本主义,使中国走上富强的道路\",\"C\":\"成功地建立起存在百日的君主立宪制度\",\"D\":\"其政治实践和思想理论,贯穿着强烈的爱国主义精神,推动了中华民族的觉醒\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('45', '维新派与守旧派之间的论战产生的影响有()', 'ABCD', '{\"A\":\"进一步开阔了新型知识分子的眼界\",\"B\":\"解放了人们的思想\",\"C\":\"传播了西方资产阶级社会政治学说\",\"D\":\"为变法运动作了思想舆论的准备\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('46', '19世纪90年代,维新派与守旧派开展了一场实质上是资产阶级思想与封建主义思想在中国的第一次正面交锋的论战.这场论战围绕的主要问题是()', 'ACD', '{\"A\":\"要不要变法\",\"B\":\"要不要实行民主共和\",\"C\":\"要不要废八股.改科举和兴西学\",\"D\":\"要不要实行君主立宪\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('47', '()属于洋务运动时期创办的新式学堂', 'ABC', '{\"A\":\"京师同文馆\",\"B\":\"福州船政学堂\",\"C\":\"天津北洋水师学堂\",\"D\":\"京师大学堂\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('48', '下列刊物由维新派创办的是()', 'BC', '{\"A\":\"<民报>\",\"B\":\"<时务报>\",\"C\":\"<国闻报>\",\"D\":\"<新青年>\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('49', '关于戊戌维新的意义,以下说法正确的是:()', 'ABC', '{\"A\":\"是一场爱国救亡运动\",\"B\":\"是一场资产阶级性质的政治改良运动\",\"C\":\"是一场思想启蒙运动\",\"D\":\"是一场统治阶级自上而下的向西方学习的运动\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('5', '省第十五次党代会报告提出,\"5大战略指引.11方面重要遵循\"纲举目张.相互贯通,深刻回答().().().()等基本问题', 'ABCD', '{\"A\":\"\\\"国之大者\\\"与浙江使命\",\"B\":\"理论与实践\",\"C\":\"战略与策略\",\"D\":\"目标与路径\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('50', '维新派本身的局限性包括()', 'ACD', '{\"A\":\"不敢否定封建主义\",\"B\":\"不了解西方的政治改革思想\",\"C\":\"对帝国主义抱有幻想\",\"D\":\"惧怕人民群众\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('51', '辛亥革命失败后,资产阶级革命派为挽救共和制度而进行的斗争主要有()', 'ABC', '{\"A\":\"二次革命\",\"B\":\"护国运动\",\"C\":\"护法运动\",\"D\":\"保路风潮\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('52', '<辛丑条约>签订后,外国在华投资规模急速扩张,其投资项目包括()', 'ABCD', '{\"A\":\"扩大设厂规模\",\"B\":\"给清政府大量高息贷款\",\"C\":\"争夺铁路利权\",\"D\":\"争夺矿山利权\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('53', '袁世凯就任临时大总统后破坏资产阶级民主制度的活动有()', 'ABCD', '{\"A\":\"强迫国会选举他为正式大总统\",\"B\":\"解散国会,遣散议员\",\"C\":\"炮制<中华民国约法>,用总统制取代内阁制\",\"D\":\"修改<总统选举法>以达到无限期连任,并推荐继承人\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('54', '北洋军阀集团在袁世凯死后分裂为三大派系,它们是()', 'ABC', '{\"A\":\"以段祺瑞为首的皖系\",\"B\":\"以冯国璋为首的直系\",\"C\":\"以张作霖为首的奉系\",\"D\":\"以陈炯明为首的粤系\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('55', '习近平在纪念辛亥革命110周年大会上的讲话中指出,孙中山先生和辛亥革命先驱为中华民族建立的历史功绩彪炳千秋,在辛亥革命中英勇奋斗和壮烈牺性的志士们名垂青史,辛亥革命永远是中华民族伟大复兴征程上一座巍然屹立的里程碑.辛亥革命()', 'ABD', '{\"A\":\"传播了民主共和的理念,打开了中国进步潮流的闸门\",\"B\":\"撼动了反动统治秩序的根基,在中华大地上建立起亚洲第一个共和制国家\",\"C\":\"推动了中国社会变革,点亮了实现中华民族伟大复兴的灯塔\",\"D\":\"极大促进了中华民族的思想解放\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('56', '辛亥革命之所以失败,从主观方面来说,在于它的领导者资产阶级革命派本身存在着许多弱点和错误,主要是()', 'ABC', '{\"A\":\"没有提出彻底的反帝反封建的革命纲领\",\"B\":\"不能充分发动和依靠人民群众\",\"C\":\"不能建立坚强的革命政党\",\"D\":\"在帝国主义时代,在半殖民地半封建的中国,资本主义的建国方案行不通\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('57', '1904至1905年,为了争夺在华利益竟然在中国东北进行战争的两个帝国主义国家是()', 'AB', '{\"A\":\"日本\",\"B\":\"俄国\",\"C\":\"英国\",\"D\":\"法国\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('58', '中国资产阶级革命派与改良派的根本不同之处在于,资产阶级革命派()', 'AD', '{\"A\":\"在踏上革命道路之时就高举起民主革命的旗帜\",\"B\":\"始终重视广泛动员人民群众的力量\",\"C\":\"最先制定了明确的反帝反封建的革命纲领\",\"D\":\"选择了以武装起义推翻清王朝统治的斗争方式\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('59', '戊戌变法和辛亥革命的共同点有()', 'BD', '{\"A\":\"都是自上而下的救亡运动\",\"B\":\"都主张在中国发展资本主义\",\"C\":\"都主张改革君主专制制度\",\"D\":\"都未提出彻底的反帝反封建的纲领\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('6', '省第十五次党代会报告提出,这次大会是我省迈入().()新征程,召开的第一次党代会', 'AB', '{\"A\":\"高水平全面建设社会主义现代化\",\"B\":\"全面建设社会主义现代化\",\"C\":\"高质量发展建设共同富裕示范区\",\"D\":\"建设共同富裕示范区\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('60', '毛泽东指出,辛亥革命\"有它胜利的地方,也有它失败的地方.你们看,辛亥革命把皇帝赶跑.这不是胜利了吗?\"说它失败主要是因为()', 'ABC', '{\"A\":\"近代中国社会的主要矛盾没有解决\",\"B\":\"中国半殖民地半封建的社会性质和人民的悲惨境遇没有改变\",\"C\":\"反帝反封建的革命任务没有完成\",\"D\":\"社会经济.思想习惯和社会风俗没有发生变化\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('61', '资产阶级革命宣传家陈天华写了()两本小册子', 'CD', '{\"A\":\"<驳康有为论革命书>\",\"B\":\"<革命军>\",\"C\":\"<猛回头>\",\"D\":\"<警世钟>\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('62', '清政府在清末新政中进行预备立宪的目的是()', 'ABC', '{\"A\":\"皇位永固\",\"B\":\"外患渐轻\",\"C\":\"内乱可弭\",\"D\":\"共和可期\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('63', '中华民国南京临时政府的局限性体现在()', 'ABC', '{\"A\":\"企图以承认不平等条约和外债来换取帝国主义的承认\",\"B\":\"没有提出可以满足农民土地要求的政策和措施\",\"C\":\"以保护私有财产为借口,维护封建土地制度以及官僚.地主所占有的土地和财产\",\"D\":\"没有提出鼓励发展资本主义经济的措施\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('64', '1905年至1907年间发生的资产阶级革命派与改良派的论战,也暴露了革命派在思想理论方面的弱点,主要表现在革命派()', 'ABCD', '{\"A\":\"对\\\"革命是否会招致帝国主义干涉\\\"的问题不敢作出理直气壮的回答\",\"B\":\"所说的\\\"国民\\\",主要还是指资产阶级及其知识分子,而不是广大的劳动群众\",\"C\":\"反对贫苦农民\\\"夺富人之田为己有\\\"\",\"D\":\"只是希望通过\\\"有秩序的革命\\\"来避免动乱和帝国主义的干涉\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('65', '20世纪初各地建立的资产阶级革命团体有()等', 'ABCD', '{\"A\":\"华兴会\",\"B\":\"科学补习所\",\"C\":\"光复会\",\"D\":\"岳王会\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('66', '<中华民国临时约法>规定\"中华民国主权属于全体国民\",以\"()行使其统治权\"', 'ABCD', '{\"A\":\"参议院\",\"B\":\"临时大总统\",\"C\":\"国务员\",\"D\":\"法院\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('67', '兴中会与同盟会誓词的共同内容有()', 'AB', '{\"A\":\"驱逐鞑虏\",\"B\":\"恢复中华(中国)\",\"C\":\"联俄联共\",\"D\":\"平均地权\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('68', '1956年,毛泽东在<纪念孙中山先生>一文中指出,纪念伟大的革命先行者孙中山先生,\"纪念他在辛亥革命时期,领导人民推翻帝制.建立共和国的丰功伟绩.\"辛亥革命是()', 'ACD', '{\"A\":\"资产阶级领导的以反对君主专制制度.建立资产阶级共和国为目的的革命\",\"B\":\"中国民族资产阶级登上政治舞台的第一次表演\",\"C\":\"中国人民为救亡图存.振兴中华而奋起革命的一个里程碑\",\"D\":\"一次比较完全意义上的资产阶级民主革命\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('69', '1905年至1907年间,资产阶级革命派与改良派分别以<民报><新民丛报>为主要舆论阵地,展开了一场大论战.这场论战的主要内容包括()', 'ACD', '{\"A\":\"要不要以革命手段推翻清王朝\",\"B\":\"要不要废八股.改科举和兴西学\",\"C\":\"要不要推翻帝制,实行共和\",\"D\":\"要不要进行社会革命\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('7', '省第十五次党代会报告提出,浙江要在高质量发展中奋力推进()和()', 'AB', '{\"A\":\"中国特色社会主义共同富裕先行\",\"B\":\"省域现代化先行\",\"C\":\"共同富裕示范区先行\",\"D\":\"现代化先行\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('70', '辛亥革命开创了完全意义上的近代民族民主革命.但是,由于历史进程和社会条件的制约,由于没有找到解决中国前途命运问题的正确道路和领导力量,辛亥革命()', 'BCD', '{\"A\":\"没有推动中国的社会变革\",\"B\":\"没有改变旧中国半殖民地半封建的社会性质\",\"C\":\"没有改变中国人民的悲惨境遇\",\"D\":\"没有完成实现民族独立.人民解放的历史任务\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('71', '1905年8月,中国同盟会正式成立.同盟会以<民报>为机关报,并确定了革命纲领.1905年11月,在同盟会机关报<民报>发刊词中,孙中山将同盟会的纲领概括为三大主义,即民族主义.民权主义.民生主义,后被称为三民主义.孙中山的三民主义学说()', 'ABD', '{\"A\":\"初步描绘出中国还不曾有过的资产阶级共和国方案\",\"B\":\"是一个比较完整而明确的资产阶级民主革命纲领\",\"C\":\"从正面鲜明地提出反对帝国主义的主张\",\"D\":\"对推动革命的发展产生了重大而积极的影响\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('72', '<中华民国临时约法>是中国第一部资产阶级民主宪法,它规定()', 'ABCD', '{\"A\":\"中华民国的主权属于国民全体\",\"B\":\"中华民国国民一律平等\",\"C\":\"中华民国国民享有人身.财产.集会.结社.出版.言论等自由\",\"D\":\"分设行政.司法.立法机关\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('73', '三民主义包括以下三个内容()', 'ABC', '{\"A\":\"民族主义\",\"B\":\"民权主义\",\"C\":\"民生主义\",\"D\":\"民治主义\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('74', '中共早期与反马克思主义思潮进行的论战有()', 'ABC', '{\"A\":\"问题与主义论战\",\"B\":\"社会主义讨论\",\"C\":\"关于无政府主义的论战\",\"D\":\"关于社会性质的论战\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('75', '五四以前的新文化运动是生动活泼的.前进的.革命的,这是因为新文化运动的倡导者们()', 'ABC', '{\"A\":\"对于资产阶级民主主义的提倡在客观上具有振聋发聩的作用\",\"B\":\"批判孔学在社会上掀起了一股思想解放的潮流\",\"C\":\"提倡民主和科学是切中时弊的\",\"D\":\"以否定中国的全部传统文化为突破口冲决了禁锢人们的思想闸门\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('76', '早期研究传播马克思主义思想运动的特点有()', 'ACD', '{\"A\":\"重视马克思主义基本理论的学习\",\"B\":\"同情第二国际的社会民主主义\",\"C\":\"注意从中国的实际出发\",\"D\":\"开始提出知识分子应当同劳动群众相结合的思想\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('77', '毛泽东同志当年曾指出,\"五四运动时中国无产阶级开始有了觉悟,五四运动发生在一九一九年,一九二一年便产生了中国共产党\",\"我们研究党史,只从一九二一年起还不能完全说明问题从五四运动说起可能更好\".习近平总书记深刻指出,认识和把握五四运动\"要坚持大历史观\".这些重要论述,深刻揭示了五四运动与中国共产党成立的历史关联.五四运动()', 'ABC', '{\"A\":\"促进了马克思主义在中国的传播\",\"B\":\"促进了马克思主义同中国工人运动的结合\",\"C\":\"为中国共产党的成立作了思想上干部上的准备\",\"D\":\"点亮了实现中华民族伟大复兴的灯塔\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('78', '大革命失败的原因是()', 'ABCD', '{\"A\":\"反革命力量强大,蒋介石集团.汪精卫集团先后叛变革命\",\"B\":\"党当时处于幼年时期,不善于将马列主义的基本原理和中国革命的实践相结合\",\"C\":\"党的中央领导机关在大革命的后期犯了以陈独秀为代表的右倾机会主义的错误\",\"D\":\"共产国际对中国革命作出了一些不切实际的指导\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('79', '新文化运动是从1915年9月陈独秀在上海创办<青年杂志>(后改名<新青年>)开始的.新文化运动是生动活泼的,前进的.革命的,具有重要的意义.新文化运动()', 'BCD', '{\"A\":\"是新民主主义的文化运动\",\"B\":\"主要阵地是<新青年>杂志和北京大学\",\"C\":\"基本口号是民主和科学\",\"D\":\"在社会上掀起了一股思想解放的潮流\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('8', '省第十五次党代会报告提出,浙江笃行\"两个维护\".全面从严治党,坚决做到\"().()()\"', 'ABC', '{\"A\":\"总书记有号令\",\"B\":\"党中央有部署\",\"C\":\"浙江见行动\",\"D\":\"党员干部有行动\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('80', '中国共产党一大代表董必武回忆自己接受马克思主义的过程时曾经说过,\"我们过去和孙中山一起搞革命\",\"革命发展了,孙中山掌握不住,结果叫别人搞去了\".读了许多关于十月革命的书籍后,才\"逐渐了解俄国革命中列宁党的宗旨和工作方法与孙中山先生的宗旨和工作方法迥然不同\".于是就开始\"想俄国与中国问题,开始谈马克思主义\".十月革命之所以能够推动中国的先进分子从资产阶级民主主义转向社会主义,在于()', 'ABC', '{\"A\":\"十月革命发生在其国情与中国相同或近似的俄国,因而对中国先进分子具有特殊吸引力\",\"B\":\"十月革命诞生的社会主义俄国号召反对帝国主义,并以新的平等的态度对待中国,有力地推动了社会主义思想在中国的传播\",\"C\":\"十月革命中俄国工人.农民和士兵群众的广泛发动并由此赢得胜利的事实,给予中国的先进分子以新的革命方法的启示,推动他们去研究这个革命所遵循的主义\",\"D\":\"十月革命一举推翻沙皇专制统治,直接建立起社会主义俄国,令中国先进分子十分向往\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('81', '大革命是在国共合作的条件下进行的,没有国共合作,不会在短时间内掀起这样一场革命.在这场革命中,中国共产党起着独特的.不可代替的作用.没有中国共产党,不会有这场大革命.中国共产党在大革命中的独特的.不可代替的作用表现在()', 'ACD', '{\"A\":\"中国共产党是大革命的政治口号--反对帝国主义.反对军阀--的提出者\",\"B\":\"中国共产党是国共合作的倡导者和统一战线的领导者\",\"C\":\"中国共产党是人民群众的主要发动者和组织者\",\"D\":\"中国共产党帮助和推动了国民革命军的建立\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('82', '五四运动爆发的社会历史条件是()', 'ABD', '{\"A\":\"新的社会力量的成长壮大\",\"B\":\"新文化运动掀起的思想解放的潮流\",\"C\":\"出现了陈独秀.李大钊等一大批马克思主义者\",\"D\":\"俄国十月革命对中国的影响\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('83', '国民革命军北伐战争打击目标是()', 'ABC', '{\"A\":\"吴佩孚\",\"B\":\"孙传芳\",\"C\":\"张作霖\",\"D\":\"陈炯明\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('84', '为了扩大马克思主义的思想阵地,共产党早期组织的成员同以()为代表的反马克思主义的思想流派进行了斗争', 'ABCD', '{\"A\":\"胡适\",\"B\":\"张东荪\",\"C\":\"梁启超\",\"D\":\"黄凌霜\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('85', '下列事件中,由蒋介石亲手制造的有()', 'AB', '{\"A\":\"中山舰事件\",\"B\":\"四·一二反革命政变\",\"C\":\"马日事变\",\"D\":\"七·一五反革命政变\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('86', '中国共产党这个中国近代以来最伟大的创业团队,是1921年在上海的一座石库门小楼里集结出发的.当年这里是望志路106号,1943年至今是兴业路76号.由\"望志\"而\"兴业\",是历史的巧合,也寓意着历史的必然.中国共产党是在特定的社会历史条件下成立的.中国共产党一开始()', 'ABC', '{\"A\":\"就是一个以马克思列宁主义理论为基础的党\",\"B\":\"就是一个区别于第二国际旧式社会改良党的新型工人阶级革命政党\",\"C\":\"就义无反顾地肩负起实现中华民族伟大复兴的历史使命\",\"D\":\"就把党的工作中心放在农村\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('87', '1922年7月中共二大明确提出了反帝反封建的民主革命纲领,这个纲领的基本点包括()', 'ABC', '{\"A\":\"打倒军阀\",\"B\":\"推翻国际帝国主义的压迫,达到中华民族完全独立\",\"C\":\"统一中国为真正的民主共和国\",\"D\":\"实现社会主义,共产主义\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('88', '2021年6月25日下午,习近平带领中央政治局同志来到北大红楼,参观\"光辉伟业红色序章一北大红楼与中国共产党早期北京革命活动主题展\".随后,又参观了丰泽园毛泽东同志故居.习近平强调,北大红楼和丰泽园在党的历史上都具有标志性意义,给我们上了一堂鲜活而又生动的党史课.北大红楼在党的历史上具有标志性意义,因为北京大学()', 'ACD', '{\"A\":\"是新文化运动的中心和五四运动的策源地\",\"B\":\"是各地共产主义者进行建党活动的联络中心\",\"C\":\"最早在我国传播马克思主义思想\",\"D\":\"是我们党在北京早期革命活动的历史见证地\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('89', '中共二大开创了中共创建史上的多个\"第一\",其中包括()', 'ABCD', '{\"A\":\"第一次提出党的反帝反封建的民主革命纲领\",\"B\":\"第一次提出党的统一战线思想\",\"C\":\"第一次公开发表<中国共产党宣言>\",\"D\":\"制定了第一部<中国共产党章程>\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('9', '省第十五次党代会提出,未来五年的奋斗目标是在高质量发展中实现()和()', 'BC', '{\"A\":\"中国特色社会主义现代化先行\",\"B\":\"中国特色社会主义共同富裕先行\",\"C\":\"省域现代化先行\",\"D\":\"共同富裕示范区建设先行\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('90', '下列选项中,属于对早期新文化运动的正确认识的是()', 'ABC', '{\"A\":\"在当时的社会环境中,要想从根本上改造国民,仅依靠少数人的呐喊是不可能的\",\"B\":\"新文化运动的倡导者们,形式主义地看问题\",\"C\":\"新文化运动的参加者基本局限在知识分子的范围内\",\"D\":\"为中国人民提供一种正确认识中国国情的思想武器\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('91', '新文化运动的主阵地是()', 'BC', '{\"A\":\"民友社\",\"B\":\"<新青年>杂志\",\"C\":\"北京大学\",\"D\":\"政学会\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('92', '十月革命前后在中国流行的社会主义流派有()', 'ABCD', '{\"A\":\"无政府主义\",\"B\":\"工团主义\",\"C\":\"基尔特社会主义\",\"D\":\"新村主义\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('93', '五四运动是在新的社会历史条件下发生的,它具有以辛亥革命为代表的旧民主主义革命所不具备的一些特点.五四运动以磅礴之力鼓动了中国人民和中华民族实现民族复兴的志向和信心,是一场()', 'BCD', '{\"A\":\"无产阶级发动和领导的运动\",\"B\":\"以先进青年知识分子为先锋.广大人民群众参加的彻底反帝反封建的伟大爱国革命运动\",\"C\":\"中国人民为拯救民族危亡.捍卫民族尊严.凝聚民族力量而掀起的伟大社会革命运动\",\"D\":\"传播新思想新文化新知识的伟大思想启蒙运动和新文化运动\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('94', '马克思主义的传播,并没有中断或取消五四以前开始的反封建的思想启蒙工作.中国的先进分子在很大程度上克服了以往启蒙者的弱点,把反封建的启蒙运动有力地推向了前进,主要表现是()', 'ABC', '{\"A\":\"从反对封建思想入手进而提出反对产生封建思想的社会制度\",\"B\":\"反封建思想斗争的立足点从争取个人的个性解放扩展到争取人民群众的社会解放\",\"C\":\"反封建的斗争方式从少数人进行的思想批判逐步地发展为人民群众的革命实践\",\"D\":\"把改造国民性置于优先的地位\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('95', '下列选项中,属于早期新文化运动主要内容的是()', 'ABCD', '{\"A\":\"提倡新文学,反对旧文学\",\"B\":\"提倡民主和科学,反对迷信和愚昧\",\"C\":\"反对封建礼教\",\"D\":\"主张实行文学革命\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('96', '十月革命推动中国先进分子从资产阶级民主主义转向社会主义的原因有()', 'ABC', '{\"A\":\"启示落后国家走社会主义道路\",\"B\":\"苏俄以平等态度对待中国\",\"C\":\"启示发动人民的革命方法\",\"D\":\"启示中国人创建新的政党\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('97', '五四爱国运动的左翼骨干包括()', 'ABCD', '{\"A\":\"毛泽东\",\"B\":\"杨匏安\",\"C\":\"蔡和森\",\"D\":\"周恩来\"}', '0');
INSERT INTO `multiple_option_question` VALUES ('98', '中国共产党是在特定的社会历史条件下成立的.一方面,它成立于俄国十月革命取得胜利,第二国际社会民主主义.修正主义破产之后.它所接受的,是具有完整的科学世界观和社会革命论的马克思主义.另一方面,它是在半殖民地半封建中国的工人运动基础上产生的.中国工人阶级身受帝国主义.本国资产阶级和封建势力的三重压迫,具有坚强的革命性.所以,中国共产党成立的历史特点是,它一开始就是一个()', 'AB', '{\"A\":\"以马克思列宁主义理论为基础的党\",\"B\":\"区别于第二国际旧式社会改良党的新型工人阶级革命政党\",\"C\":\"善于将马克思列宁主义基本原理同中国革命的具体实际结合起来的政党\",\"D\":\"广大群众性的.思想上政治上组织上完全巩固的马克思主义政党\"}', '0');

SET FOREIGN_KEY_CHECKS = 1;
