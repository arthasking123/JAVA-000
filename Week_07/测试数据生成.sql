-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 118.190.65.33    Database: crmeb
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_good`
--

DROP TABLE IF EXISTS `tb_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_good` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '商品名称',
  `image_url` varchar(200) NOT NULL DEFAULT '' COMMENT '商品图片',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '品类ID',
  `merchant_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '价格（分）',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `version` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '当前商品信息版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_good`
--

LOCK TABLES `tb_good` WRITE;
/*!40000 ALTER TABLE `tb_good` DISABLE KEYS */;
INSERT INTO `tb_good` VALUES (1,'Allen881','https://reshoerend.au/itnebut/our/totiwa/ndall.aspx?id=89',1,1,1732,'2020-11-09 14:34:23','2020-10-18 18:33:50',1),(2,'Leach1953','https://anenhen.hk/entan/methiwitera.asp',2,2,598,'2020-11-27 16:23:30','2020-07-02 23:25:54',1),(3,'Kelsi83','http://www.inhenwayou.tw/meal/ednotere/omearetiore.asp',3,3,312,'2020-06-26 13:09:07','2020-01-01 00:15:51',5),(4,'Willy298','http://wahenndent.net/sho/andouras/stter.htm',4,4,273,'2020-01-01 02:10:35','2020-04-10 16:00:16',2),(5,'Behrens29','https://ouhandst.net/ithene/entwant/the/stwatehis.html#9',5,5,212,'2020-06-21 01:14:39','2020-01-01 00:00:16',4),(6,'Mose487','https://oulngour.za/waarere/ndou/ntandera/neyouhad.php',6,6,611,'2020-01-01 00:00:01','2020-01-01 00:05:34',1),(7,'Sandi1956','https://www.starveen.au/watost/le/ne/thiithitea.php?t=95',7,7,238,'2020-01-21 01:37:25','2020-01-01 00:13:11',5),(8,'Jeannine437','https://asarhatme.kr/nthad/thaith/hisbutas.asp',8,8,998,'2020-06-14 19:11:06','2020-02-13 04:34:29',4),(9,'Jeanne74','http://ountestha.it/hadisit/not/ngionsho/areseshowa.aspx',9,9,1833,'2020-01-01 00:07:45','2020-01-01 00:04:19',4),(10,'Mandie1977','http://anseerar.it/witentti/seseesth.asp?id=190',10,10,1642,'2020-10-19 05:17:13','2020-09-01 17:26:36',1),(11,'Lane451','https://eranedter.lu/edeve/ionalen/fornt/oulorthies.asp?id=82',1,11,176,'2020-10-12 01:33:41','2020-01-01 00:00:10',5),(12,'Ratcliff549','https://www.veromeandtio.es/but/hete.asp?id=37',2,12,1921,'2020-01-01 01:46:29','2020-08-23 17:14:08',3),(13,'Florida7','https://ishi.fi/all/atingre/nt/shoheneve.asp',3,13,497,'2020-03-12 13:20:26','2020-01-01 00:00:44',4),(14,'Laure12','http://hadsteres.au/the/wasorournt.html',4,14,1745,'2020-02-17 16:54:41','2020-02-24 21:27:01',3),(15,'Kelvin1996','http://www.arforevein.kr/tiotio/was/hissttioth.php',5,15,1401,'2020-01-01 00:11:00','2020-01-01 00:00:02',3),(16,'Melodi47','http://arhisthing.uk/evene/teringis/entteuld/butorheas.htm',6,16,1991,'2020-01-01 00:00:06','2020-11-09 05:20:40',4),(17,'Schmid5','https://methewasare.cy/stionto/butatveor.html',7,17,1914,'2020-09-26 03:04:57','2020-01-04 09:51:02',2),(18,'Chantay7','http://arneiontio.dk/en/wasrehad/he/henalto.html',8,18,663,'2020-06-14 10:33:58','2020-08-05 21:06:40',4),(19,'Clemmie2000','https://www.enher.de/enverare/arehad/iswasar/eastionall.php',9,19,996,'2020-08-30 16:01:27','2020-08-22 22:09:22',5),(20,'Blaine32','https://www.allyouomeour.biz/hi/alaled/thterere/orththafor.php',10,20,246,'2020-01-01 00:01:56','2020-01-01 00:01:07',4),(21,'Katrice2023','https://www.haereded.hk/as/ithithin/tibuthe/neng.asp',1,21,1157,'2020-01-01 02:19:01','2020-01-01 00:12:21',4),(22,'Carmen2019','https://www.forher.at/arehenhat/thianhat/eraand/terour.asp?id=688',2,22,781,'2020-09-30 09:28:05','2020-05-16 08:18:50',3),(23,'Dannette573','https://www.ngsho.nl/thatehi/eaomean/esoute/ourthaoulsho.php?t=22&p=958',3,23,1732,'2020-09-26 12:44:29','2020-01-01 00:00:06',1),(24,'Cooke1955','http://www.alent.mx/nd/our/herrewit/anmetoit.php',4,24,529,'2020-04-22 14:41:39','2020-07-26 02:13:45',2),(25,'Dustin1999','https://www.entnthersho.cn/ion/ionforeve/ou/eaeveentoul.php',5,25,1086,'2020-09-25 06:36:08','2020-05-02 13:37:23',1),(26,'Lieselotte7','http://www.atalin.tr/the/ereourall.aspx',6,26,1030,'2020-01-01 00:04:03','2020-09-23 04:25:35',3),(27,'Ashe2016','https://www.outo.gr/ententhi/ver/in/neoulbution.htm#5',7,27,1645,'2020-01-01 00:00:01','2020-01-01 00:00:49',5),(28,'Adah264','https://www.ndhadanal.jp/areineve/thewasera/eaonanth.php?t=65&p=5667',8,28,1960,'2020-01-01 00:00:14','2020-09-30 00:26:52',5),(29,'Jolyn594','http://thais.ua/esion/tiuldng/toneing/anenarefor.html',9,29,716,'2020-01-01 00:06:30','2020-01-27 20:31:25',4),(30,'Bartley2010','http://www.eningeveal.fr/nteaeve/thallat/herasera/washe.htm',10,30,1218,'2020-01-01 00:00:49','2020-01-01 00:00:39',2),(31,'Marcelo1973','https://ereatenhis.lv/all/arto/onouhaes.php?t=33&p=891',1,31,943,'2020-01-01 00:00:23','2020-09-09 17:35:59',5),(32,'Willow1987','http://www.thon.it/ulded/ha/nghinnot/atenonas.htm#38',2,32,527,'2020-01-01 00:15:56','2020-01-01 00:21:59',3),(33,'Cinthia2023','https://onorsend.nl/ouevete/ndtoed.asp',3,33,535,'2020-01-01 00:12:09','2020-01-29 20:29:48',2),(34,'Cary23','https://www.ithhinforher.cz/lehenome/neshoat/reesera/haterayouwa.asp?id=47',4,34,591,'2020-10-09 21:21:17','2020-02-21 08:42:29',4),(35,'Ayres119','https://anyouthate.ar/isshond/nethnot/ederentle.php',5,35,1605,'2020-08-17 03:11:25','2020-03-06 03:23:46',1),(36,'Hong6','https://www.vehiteith.fi/veveror/ith/eve/notouonhat.asp',6,36,1761,'2020-01-01 00:00:04','2020-01-09 21:37:45',4),(37,'Alcala2003','https://esthverhi.it/witentle/allforou.php?t=71',7,37,1438,'2020-01-01 00:00:02','2020-10-04 04:03:26',1),(38,'Aisha238','http://edhadteera.ar/hatthito/erewitnd/aslehad/youne.asp',8,38,1835,'2020-01-07 16:01:18','2020-01-01 00:00:06',1),(39,'Dupont73','http://www.esion.fr/nt/arha/meforis/ngshoitst.php?t=92&p=772',9,39,249,'2020-07-08 04:11:48','2020-01-01 00:01:01',5),(40,'Adam277','https://www.eveteat.br/inthere/wawit.htm#182',10,40,1566,'2020-01-26 22:39:31','2020-06-12 12:46:18',3),(41,'Romana875','http://verent.tw/en/leea.php?t=27',1,41,891,'2020-03-14 04:47:23','2020-11-10 14:48:24',1),(42,'Juanita1994','http://teionted.fi/ithevesho/areterome/stnd.php?t=14&p=472',2,42,1956,'2020-11-03 10:11:54','2020-08-26 15:26:49',5),(43,'Watts15','http://www.eaionver.ar/on/hititer/hetioante.php?t=76&p=3527',3,43,1976,'2020-01-01 00:00:10','2020-03-21 18:32:30',3),(44,'Andrus2028','http://youthiheas.uk/anent/reatvewa.aspx?id=435',4,44,1408,'2020-02-12 16:02:07','2020-06-20 16:03:35',2),(45,'Kim1976','https://eveouwittio.be/arethe/forentare/stwaas/thierearere.html',5,45,1520,'2020-05-07 21:24:44','2020-10-19 12:41:47',5),(46,'Benedict2025','https://www.ison.ch/hethng/younotonen.html',6,46,123,'2020-01-01 00:00:36','2020-07-19 15:02:41',5),(47,'Kyoko554','https://www.shoentera.cy/tianit/hitene/al/meshomethi.html',7,47,408,'2020-01-27 17:11:06','2020-01-01 00:01:43',2),(48,'Cherelle217','http://esoulednt.eg/heninto/verhense/arha/asoulit.html#06748',8,48,1525,'2020-07-19 15:49:18','2020-01-01 00:01:40',4),(49,'Dolly2006','https://www.allorouter.tw/is/forforome/hadshowasme.php',9,49,1848,'2020-05-03 19:02:47','2020-07-17 16:33:31',4),(50,'Mireya211','https://thathiareen.nz/youth/ion/neor.asp',10,50,533,'2020-08-04 15:35:10','2020-01-01 01:31:24',1);
/*!40000 ALTER TABLE `tb_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_good_detail`
--

DROP TABLE IF EXISTS `tb_good_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_good_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `content` text NOT NULL COMMENT '商品详情/商品富文本描述',
  PRIMARY KEY (`id`),
  KEY `good_id_idx` (`good_id`),
  CONSTRAINT `good_id` FOREIGN KEY (`good_id`) REFERENCES `tb_good` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='商品详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_good_detail`
--

LOCK TABLES `tb_good_detail` WRITE;
/*!40000 ALTER TABLE `tb_good_detail` DISABLE KEYS */;
INSERT INTO `tb_good_detail` VALUES (1,19,'gsunwhyeedvxcxbkfigvnvkly'),(2,17,'pivkuiotdchjvglwmyvpxuxzzgrlidriuyqg'),(3,22,'uropvdblcjjrymqhivwiqflhz'),(4,37,'taouotldhyfeqbxrjhlk'),(5,2,'qciydhujzhhfqyjauimvvoq'),(6,20,'qircjjudigsrwxnehdpcnsggrlhnbuilyjv'),(7,33,'jtixhnrwqwlrkojkkoqahhquogsujzkwuah'),(8,22,'gdfdbwzaxdjfykbudouuwthmrgjfyj'),(9,34,'suhdnpgjdqld'),(10,45,'pgafxqgol'),(11,8,'omdgdjqbmnvripxcvkglitldizbmjkcckmhabht'),(12,43,'sffny'),(13,22,'avvwnhwgqmirxogbfiqtzkacdzbafldwiykanqbdym'),(14,47,'kchbtkzvaeidyazimwo'),(15,11,'amyyppwz'),(16,14,'pgeychjhitcmefbgxynnnfvzndvhs'),(17,47,'pfaxiztlwvfqlaxjkxloemunrcrzk'),(18,50,'vhmvjfxbqoajujljjqzyqvfytagepmxugqga'),(19,5,'dnjmcoefdxxqnlfnciivxfs'),(20,50,'tqpgrevwglimsqvdwxgdnomnrc'),(21,40,'spadfexgyeqwjwselxbtqgxussci'),(22,43,'gqrvaxothoqkvxndpqofqbzvbvsunycb'),(23,44,'bmsiywhuudlgfcsoizn'),(24,12,'srdwdxhvczcckuqacugttsxgdz'),(25,46,'ydxpdigsvqnljqqoholebyzmtrwrhqgdojjlsbjwnxk'),(26,7,'sjvxfkrniknj'),(27,24,'lvojswtqxk'),(28,29,'unwafkqdksavnvxvcvnjptk'),(29,41,'erzydtuomcymlfuvecheclscrcfbjrfexjhu'),(30,20,'jqlhaitdjnzsyj'),(31,44,'qauywcgopedefwuza'),(32,50,'skcurm'),(33,12,'ctbxprwximwusktrvhzswk'),(34,35,'zahvcwcais'),(35,1,'dmaygynb'),(36,17,'hbrzhuludnfoopqbaeidf'),(37,50,'tnqsqmbiecbf'),(38,29,'fbcfkefpfaripoqdqaggavftplnwrrfjhbfkjie'),(39,24,'jnromhkflhsx'),(40,8,'reoxuimrlbciafeuuaxqxxnfusbbc'),(41,28,'ajeo'),(42,1,'cbryywhuqmxtomjatmvymlwtt'),(43,3,'awngvmsillkiiyvjknnnlhkixpbmvmaqjhebufwxmzrq'),(44,25,'ibcefqollduz'),(45,34,'dvrlxwvziflam'),(46,36,'nlrcorsahg'),(47,31,'xwubgojdhohsbrxebgbhluukop'),(48,38,'nxpyaowgmfblnxllbojksikn'),(49,30,'lmmllknevrxrlpmolokfsdxaldfjqldigvjpydot'),(50,25,'woexhhfvpuzslejuymzpwuzmqvgxcmu');
/*!40000 ALTER TABLE `tb_good_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_good_detail_snapshot`
--

DROP TABLE IF EXISTS `tb_good_detail_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_good_detail_snapshot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照表id',
  `content` varchar(45) NOT NULL DEFAULT '' COMMENT '商品详情/商品富文本描述',
  PRIMARY KEY (`id`),
  KEY `good_snapshot_id` (`good_snapshot_id`),
  CONSTRAINT `gid1` FOREIGN KEY (`good_snapshot_id`) REFERENCES `tb_good_snapshot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='商品详情快照表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_good_detail_snapshot`
--

LOCK TABLES `tb_good_detail_snapshot` WRITE;
/*!40000 ALTER TABLE `tb_good_detail_snapshot` DISABLE KEYS */;
INSERT INTO `tb_good_detail_snapshot` VALUES (1,15,'qydsbfraa'),(2,15,'axzly'),(3,1,'p'),(4,14,'dknnfj'),(5,3,'dhdgygogrgiobuhsf'),(6,12,'wk'),(7,22,'vpguqhjhqyitebccolblkqaevfcwv'),(8,44,'yhjgbgcdxtynwjaoslzyujmgsnwhrjcbqduwnq'),(9,21,'vsefasfbtfqjtzcfumfdlxcxainzdtstmnmtsgcak'),(10,31,'chewmtr'),(11,33,'clfgcr'),(12,50,'fbaxfcityisbhhmdvjmtetrpbggwengqotcgeorfmunz'),(13,33,'xmppnfvugxgxynddcpnhtgfdelnfosdqbredq'),(14,31,'hxnutdim'),(15,5,'aeruxqowkclifvyldjygqorvnsophgjdutntptboho'),(16,2,'hkzykgierkxgmehurmkkqahh'),(17,31,'mswbf'),(18,26,'kps'),(19,42,'maty'),(20,38,'sivzakea'),(21,14,'waodaqawgizglstitriwcnjvrlelgexjizddqghiqeu'),(22,9,'vupljxutccorfxbtvyntbfto'),(23,37,'scvfinrqeuqeraehhtbbxjt'),(24,9,'hqpakifgqiaftlflzlxhfedesoyudhjgurvgquhjtbhzb'),(25,8,'tb'),(26,6,'zjksajotkksdbxfjcgufsmbfkugctvpvvoh'),(27,47,'enlqzfpbflhckynolpltrlhleoeuffsljggmcrrt'),(28,37,'ygzaceetxhfmnpboxdieasldllggpicannl'),(29,48,'jomkorkdgvmlbnqxgiqgokllxgfcjnfylcoxsssjlyfu'),(30,5,'dclvkufwuctieqzwueh'),(31,46,'tvpoabattsfupebajlwjccih'),(32,50,'hxeebnfvwidumwlqykbdwflzhcnthoin'),(33,41,'jufwsgzmafdvdqcjxmkgpesncgaaafihmt'),(34,50,'gbt'),(35,31,'wuwazlvlcgcyacpoaqfwdhlddidybiqtjsxjpepi'),(36,4,'ywxqphmfihtarewyejcdtotjhtwigref'),(37,21,'akbb'),(38,21,'nwxpjdnpdihsfiqbfzbdmzsshntvffgwvtdrxavpqho'),(39,29,'lqferfiweueuaykcmllb'),(40,21,'ghwtvttgckudfzdizgctrmlgefwomwridq'),(41,2,'pnuoicefohikeyyelrvvbdakgoeqb'),(42,2,'lcj'),(43,11,'bkigfmyhvfpazapeptjcvzculjnyxqzixtykpcact'),(44,36,'wrsexgllyxmeorxvxzbtpojffjvfclrjvqso'),(45,14,'aqvnzkihrldvxvzkyzfmnu'),(46,36,'ychitoczjmbmwcbugjftcweq'),(47,25,'sgoipqjnehpudvxlrjvm'),(48,39,'vxjfcjsppbiiaztaagldilbgtjagceoxgoks'),(49,23,'vjsfczturzmfwxdlncgnjohstbgznen'),(50,41,'zlgyqaklktibz');
/*!40000 ALTER TABLE `tb_good_detail_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_good_snapshot`
--

DROP TABLE IF EXISTS `tb_good_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_good_snapshot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '商品名称',
  `image_url` varchar(200) NOT NULL DEFAULT '' COMMENT '商品图片',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '品类ID',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '价格（分）',
  `version` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品信息版本',
  `snapshot_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '快照生成时间',
  PRIMARY KEY (`id`),
  KEY `good_version` (`good_id`,`version`),
  CONSTRAINT `gid` FOREIGN KEY (`good_id`) REFERENCES `tb_good` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='商品快照表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_good_snapshot`
--

LOCK TABLES `tb_good_snapshot` WRITE;
/*!40000 ALTER TABLE `tb_good_snapshot` DISABLE KEYS */;
INSERT INTO `tb_good_snapshot` VALUES (1,6,'Keisha2004','https://www.letomeer.fi/tiithhe/hadforuld/inthefor.htm',1,186,3,'2020-01-01 00:00:57'),(2,40,'Becerra2008','https://forion.nz/andeaere/asened/edsttha/ionit.php',2,1941,5,'2020-04-19 16:07:25'),(3,45,'Delta1970','https://arewasouyou.uk/hanear/outo/inhenere/formealare.php',3,1403,2,'2020-05-06 15:13:21'),(4,3,'Mauro2004','https://www.ouhadhime.tr/ouit/hisis/itthaent/youinndea.html#4653',4,1209,5,'2020-10-20 01:49:18'),(5,25,'Kristy16','http://www.hertiatti.dk/esto/tioorter/atentou/tiat.asp?id=436',5,558,2,'2020-08-08 23:03:32'),(6,18,'Emerald84','http://www.evendevete.biz/edwithis/itandithere.htm#1562',6,632,5,'2020-07-08 08:06:50'),(7,35,'Teressa1967','https://seesallare.lu/eraasen/lenotst/hiwitto/veroutoand.php',7,1946,3,'2020-01-01 00:01:27'),(8,29,'Jenkins53','https://www.uldneerehe.it/era/waforthi/hinesare/tihaourhe.php',8,685,4,'2020-03-30 01:19:49'),(9,44,'Mott679','http://www.ithforea.eg/omeas/henhenomene.html#28328',9,158,5,'2020-04-12 03:50:47'),(10,26,'Kenny2025','https://www.haalher.br/heted/hadhat/towanot/hadtedver.htm#23',10,274,2,'2020-01-01 00:36:13'),(11,38,'Jorge3','http://www.searewashi.ar/eahinhis/theourasfor.php',11,1439,1,'2020-01-01 00:04:35'),(12,43,'Yeager2003','http://www.erabuttiis.be/itwaall/ingeare.php?t=64&p=8734',12,1691,3,'2020-08-11 10:40:25'),(13,16,'Irwin1995','http://www.eraswane.biz/ntne/ednd/hin/ouere.html',13,188,3,'2020-09-25 19:41:53'),(14,6,'Riva6','http://witwitourhi.eg/st/youtiandas.php?t=39&p=7560',14,296,5,'2020-01-01 00:03:09'),(15,6,'Joseph666','https://www.entmehin.nl/omeea/to/youhened/enttedinth.asp?id=29',15,1739,1,'2020-07-19 05:26:17'),(16,22,'Waters398','http://www.entne.za/omentis/wasasar/vehi.htm',16,813,5,'2020-01-01 01:55:36'),(17,41,'Elsie124','http://www.oulalomeng.ar/ationha/erwatha/tio/alhaternot.htm',17,854,1,'2020-01-01 00:00:04'),(18,34,'Beaulah83','https://asasal.at/hionion/to/the/ertoenou.php?t=14&p=9626',18,1628,3,'2020-01-01 00:10:47'),(19,30,'Gia1976','https://www.andallvernot.ae/es/ntterwa/theonis/evehaforea.htm',19,1883,4,'2020-04-25 15:04:08'),(20,7,'Kasi2024','http://nehadbut.ge/in/meor/not/iseraat.htm',20,1189,3,'2020-09-23 21:53:13'),(21,42,'Shaun192','https://www.aretedthou.org/hi/ououtiher.asp',21,1703,2,'2020-10-09 21:17:59'),(22,13,'Clemens34','https://heth.be/ouisand/ententhis/the/nghento.asp?id=544',22,567,1,'2020-11-12 03:35:32'),(23,19,'Chas14','https://www.inentesion.hk/wit/ingvererion.htm',23,296,1,'2020-04-30 05:12:30'),(24,4,'Mari1983','http://www.arterin.za/hawithi/meandte/the/allwitndng.php?t=73&p=592',24,443,4,'2020-02-19 06:50:42'),(25,47,'Ozella22','https://butareonat.tr/erehinyou/hentihined.htm',25,1660,5,'2020-01-01 00:00:07'),(26,4,'Catherine2005','https://hathier.hu/buteveter/eauld.htm',26,941,1,'2020-07-05 11:46:38'),(27,38,'Michiko532','http://ithenfor.ar/eveeveing/edthast/esstasve.htm',27,1113,3,'2020-01-01 00:08:04'),(28,8,'Adaline2004','http://www.aredwath.mx/thi/as/forallhat/onngntti.htm',28,160,4,'2020-07-06 05:48:44'),(29,11,'Sheilah836','http://www.aloulwa.se/eveerain/omerengher.php',29,213,4,'2020-09-02 23:21:43'),(30,37,'Foret3','http://www.witndoureve.ca/ngernt/are/ereshoer/tedtedhisbut.asp',30,1386,2,'2020-01-01 00:15:38'),(31,26,'Alesia313','http://atveeath.tr/hi/ngitour/reand.asp',31,549,2,'2020-04-09 23:21:46'),(32,18,'Lester2003','http://anderhive.jp/atall/veonar/almeedher.htm#1',32,1922,2,'2020-01-01 02:11:30'),(33,20,'Acevedo41','http://www.oultheome.nl/edhis/newitve/hinomeer/hisngashen.asp?id=34',33,1071,4,'2020-01-01 02:09:14'),(34,37,'Abby12','http://www.witishaall.cn/eremeve/thihihad/leyoune/thihatalluld.php?t=46&p=85',34,1581,5,'2020-04-28 12:10:01'),(35,22,'Acker2012','http://www.oneayouen.at/ndre/hadaseveat.php?t=30&p=75',35,1146,1,'2020-08-25 10:39:15'),(36,50,'Cristy4','https://www.arntarha.tw/eveverre/ithouruld/wasstthi/notedome.html',36,1766,5,'2020-03-14 17:04:39'),(37,47,'Werner2005','http://www.eswit.at/theedin/thar/ve/ndtio.htm',37,840,2,'2020-01-01 00:08:55'),(38,18,'Mercedes81','https://www.ntwaingse.com/st/seanst.htm',38,307,2,'2020-09-17 03:23:24'),(39,42,'Satterfield1','https://www.ourarethatio.biz/ouresat/enhithesho.html',39,640,5,'2020-03-24 07:31:40'),(40,29,'Benjamin2004','http://www.teuld.de/leerewit/anhaden/shoingith/wasanesing.php',40,875,5,'2020-09-18 09:15:18'),(41,3,'Minter645','http://www.erantall.mx/resean/thindor/ores/youhemeeve.asp',41,1604,1,'2020-07-24 09:57:19'),(42,39,'Almeida1996','http://edbutithea.ar/eaesent/inhane/hiares/inentmeit.asp?id=668',42,885,3,'2020-01-01 00:57:24'),(43,38,'Rosella2013','http://www.ionithtihad.de/ithene/witing/aterain.htm',43,345,2,'2020-01-01 00:15:29'),(44,2,'Saran681','http://eatedened.br/nengha/enthinhad/andhat/andasanis.htm#82',44,1705,2,'2020-11-04 00:42:11'),(45,23,'Clay1986','https://www.arehis.tw/eveithme/notheter/iththiisand.php?t=81&p=92',45,1178,4,'2020-01-01 00:35:13'),(46,8,'Bruton2026','http://allheeang.cz/ereitan/ed/enhishisbut.php?t=29',46,1976,1,'2020-01-01 00:14:46'),(47,40,'Cleopatra4','https://hisomeerest.at/reoulall/thfortoon.asp?id=738',47,1267,2,'2020-09-13 13:37:49'),(48,38,'Josefine2013','http://www.isle.dk/er/vethasho/edhad/atvererat.asp',48,99,2,'2020-03-31 11:38:59'),(49,29,'Grady1960','http://thseen.ca/aluldhen/le/for/enthenot.asp',49,724,5,'2020-01-01 02:02:34'),(50,32,'Antwan2003','http://esvernotme.lu/retoan/forevemene.asp',50,454,2,'2020-03-16 08:57:01');
/*!40000 ALTER TABLE `tb_good_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '用户名',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `version` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '当前用户信息版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'Gregory1990',10,'2020-08-10 21:47:27','2020-01-01 00:00:43',4),(2,'Mcdonnell436',7,'2020-01-01 00:00:08','2020-01-07 03:17:06',5),(3,'Casey2021',43,'2020-09-14 13:24:52','2020-01-01 00:00:10',4),(4,'Cleta4',7,'2020-04-08 20:55:46','2020-05-18 20:17:58',3),(5,'Georgie2000',22,'2020-03-20 18:39:17','2020-09-28 12:58:53',4),(6,'Ackerman2006',14,'2020-05-14 11:08:52','2020-01-20 22:25:14',2),(7,'Erminia3',38,'2020-03-28 19:44:37','2020-05-31 16:25:32',5),(8,'Milton795',17,'2020-10-10 22:09:58','2020-04-16 06:54:59',3),(9,'Dwain1960',92,'2020-02-07 18:22:49','2020-10-26 21:10:30',3),(10,'Leigh36',9,'2020-01-01 00:00:10','2020-01-01 00:00:07',1),(11,'Edmund1973',62,'2020-07-07 05:31:22','2020-01-01 00:00:04',1),(12,'Karry741',24,'2020-05-01 22:06:05','2020-02-06 15:20:38',5),(13,'Louanne89',44,'2020-01-01 00:00:45','2020-11-07 19:39:22',4),(14,'Erasmo1969',37,'2020-10-13 13:07:15','2020-07-31 17:01:02',2),(15,'Johnathon154',25,'2020-06-30 14:26:58','2020-01-01 00:00:53',1),(16,'Isidro1981',24,'2020-01-01 00:07:03','2020-01-01 00:14:55',2),(17,'Ashlie2010',18,'2020-01-01 01:24:55','2020-01-01 00:15:48',2),(18,'Leisha2014',95,'2020-11-21 07:56:05','2020-11-04 13:44:12',3),(19,'Rodriquez989',93,'2020-01-01 00:11:43','2020-03-13 15:19:25',5),(20,'Esperanza52',9,'2020-01-01 00:41:32','2020-04-16 07:21:30',3),(21,'Julianna2019',81,'2020-01-01 00:00:10','2020-01-01 00:01:17',2),(22,'Applegate634',60,'2020-03-12 08:48:33','2020-06-13 13:33:40',2),(23,'Luigi2023',48,'2020-05-14 18:16:10','2020-01-01 01:29:04',2),(24,'Wheat1956',65,'2020-03-08 12:45:45','2020-01-02 08:04:57',3),(25,'Jesusita826',13,'2020-06-09 09:35:56','2020-07-23 10:34:10',3),(26,'Jeannetta1995',37,'2020-05-04 20:11:42','2020-03-14 03:56:47',5),(27,'Arellano3',31,'2020-06-01 00:34:07','2020-01-01 00:26:47',1),(28,'Jackie876',59,'2020-01-01 00:00:32','2020-08-23 09:55:48',4),(29,'Kelvin3',30,'2020-08-15 06:33:59','2020-01-01 02:35:09',1),(30,'Ashli917',2,'2020-04-09 05:19:42','2020-07-07 12:39:17',1),(31,'Owen3',6,'2020-01-01 00:00:03','2020-01-01 00:18:39',2),(32,'Demetra446',38,'2020-01-01 00:08:47','2020-01-01 01:45:29',5),(33,'Janean122',48,'2020-07-26 14:19:25','2020-05-19 17:56:29',5),(34,'Jordon2026',31,'2020-01-22 03:11:09','2020-04-22 01:40:25',1),(35,'Chung2019',79,'2020-01-19 23:45:54','2020-05-26 06:52:43',4),(36,'Abdul1961',6,'2020-08-05 03:58:43','2020-04-09 22:22:54',1),(37,'Nick16',69,'2020-01-11 08:21:31','2020-06-03 18:49:02',1),(38,'Adam291',63,'2020-11-18 00:35:53','2020-05-19 16:03:45',2),(39,'Darcey28',74,'2020-11-28 19:02:13','2020-01-01 00:00:06',5),(40,'Chaney1977',52,'2020-01-01 00:03:40','2020-10-30 19:46:57',4),(41,'Blum126',54,'2020-02-06 04:00:17','2020-01-01 00:00:07',5),(42,'Jasper2008',0,'2020-07-18 00:56:43','2020-07-14 00:28:33',5),(43,'Evelia971',84,'2020-01-01 02:20:32','2020-01-01 01:39:09',2),(44,'Whittaker6',75,'2020-02-21 18:23:41','2020-07-19 10:29:53',2),(45,'Abraham414',64,'2020-09-13 06:19:45','2020-01-01 00:00:26',1),(46,'Abraham526',23,'2020-01-01 00:00:59','2020-10-03 23:39:14',5),(47,'Mikel2011',9,'2020-11-03 15:41:48','2020-01-01 01:23:33',1),(48,'Afton174',73,'2020-07-29 20:32:47','2020-01-01 01:09:02',3),(49,'Azucena1988',49,'2020-01-01 00:13:59','2020-01-01 00:11:23',3),(50,'Abigail257',4,'2020-09-29 15:43:38','2020-08-13 17:17:38',1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_snapshot`
--

DROP TABLE IF EXISTS `tb_user_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_snapshot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '用户名',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `version` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户信息版本',
  `snapshot_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '快照生成时间',
  PRIMARY KEY (`id`),
  KEY `user_version` (`user_id`,`version`),
  CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='用户快照表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_snapshot`
--

LOCK TABLES `tb_user_snapshot` WRITE;
/*!40000 ALTER TABLE `tb_user_snapshot` DISABLE KEYS */;
INSERT INTO `tb_user_snapshot` VALUES (1,50,'Ivan1996',75,4,'2020-02-26 02:54:38'),(2,37,'Alethia837',24,1,'2020-08-04 19:37:56'),(3,32,'Tony1988',50,2,'2020-01-01 00:24:22'),(4,24,'Horacio818',33,2,'2020-02-17 06:13:11'),(5,16,'Ignacio1974',94,1,'2020-01-01 00:09:50'),(6,48,'Copley1969',21,5,'2020-03-23 10:18:21'),(7,50,'Alberta2024',11,5,'2020-11-26 02:32:51'),(8,24,'Stull4',65,3,'2020-01-15 18:26:24'),(9,6,'Aurelio1',52,5,'2020-01-01 00:03:26'),(10,1,'Arica128',53,2,'2020-01-01 01:48:17'),(11,21,'Janay1992',47,3,'2020-09-20 14:37:55'),(12,15,'Alayna1974',54,1,'2020-01-01 00:14:16'),(13,30,'Almond1951',47,3,'2020-10-17 19:42:21'),(14,18,'Adela44',76,1,'2020-07-02 03:00:06'),(15,40,'Vincenzo2011',51,2,'2020-01-01 00:00:06'),(16,47,'Hamel2023',72,1,'2020-01-27 07:27:40'),(17,4,'Albert2',17,3,'2020-06-09 01:58:40'),(18,32,'Alexis23',37,5,'2020-01-01 00:00:20'),(19,8,'Babin12',35,4,'2020-07-17 18:23:51'),(20,44,'Irvine887',25,2,'2020-01-20 13:28:12'),(21,8,'Elliott664',38,4,'2020-01-01 00:00:58'),(22,49,'Gunter31',93,2,'2020-07-31 00:39:13'),(23,26,'Cassondra1974',93,2,'2020-07-04 11:03:51'),(24,14,'Stephaine865',2,2,'2020-01-01 00:13:44'),(25,4,'Adelaide368',96,1,'2020-11-24 19:25:29'),(26,16,'Bowman2002',72,5,'2020-05-22 13:19:54'),(27,5,'Rowe1960',56,5,'2020-07-09 04:56:13'),(28,28,'Lionel1962',65,1,'2020-11-07 19:02:35'),(29,14,'Jenae1977',4,5,'2020-01-01 00:00:06'),(30,5,'Horowitz6',15,1,'2020-01-01 00:05:10'),(31,13,'Houston739',67,3,'2020-08-01 17:17:10'),(32,27,'Darlena2004',7,3,'2020-04-23 06:35:45'),(33,35,'Conway469',81,2,'2020-01-01 00:00:10'),(34,38,'Dion1957',65,4,'2020-01-01 01:19:01'),(35,43,'Fuentes296',57,4,'2020-04-15 20:55:38'),(36,15,'Darren1',37,4,'2020-05-04 01:32:40'),(37,2,'Lowery3',97,3,'2020-02-23 20:48:54'),(38,9,'Echols18',0,4,'2020-01-01 00:12:12'),(39,5,'Katy2006',34,3,'2020-01-18 09:53:27'),(40,37,'Groves1989',7,3,'2020-03-10 17:16:49'),(41,31,'Harold2006',62,1,'2020-11-17 05:10:59'),(42,40,'Pasquale711',75,3,'2020-07-07 10:06:28'),(43,47,'Landon51',71,3,'2020-07-05 10:18:48'),(44,12,'Dimple1972',25,5,'2020-05-29 04:42:16'),(45,19,'Maryland1973',35,4,'2020-09-23 06:24:48'),(46,4,'Wava2017',3,5,'2020-01-01 00:00:53'),(47,34,'Lindsay2028',70,3,'2020-01-01 02:19:47'),(48,7,'Willett9',8,1,'2020-04-23 20:03:14'),(49,12,'Rivas2020',86,4,'2020-01-01 00:00:06'),(50,5,'Schuster1999',84,3,'2020-10-10 14:57:02');
/*!40000 ALTER TABLE `tb_user_snapshot` ENABLE KEYS */;


DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` char(32) NOT NULL COMMENT '订单编号',
  `trade_no` char(64) DEFAULT NULL COMMENT '第三方支付订单号',
  `pay_type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '支付类型 1支付宝 2微信',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `user_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '用户快照id',
  `good_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `good_snapshot_id` bigint(20) unsigned NOT NULL COMMENT '商品快照id',
  `pay_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际应支付金额（分）',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user` (`user_snapshot_id`),
  KEY `user_id` (`user_id`),
  KEY `good` (`good_snapshot_id`),
  KEY `good_id_1` (`good_id`),
  CONSTRAINT `good` FOREIGN KEY (`good_snapshot_id`) REFERENCES `tb_good_snapshot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `good_id_1` FOREIGN KEY (`good_id`) REFERENCES `tb_good_snapshot` (`good_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user` FOREIGN KEY (`user_snapshot_id`) REFERENCES `tb_user_snapshot` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user_snapshot` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000001 DEFAULT CHARSET=utf8 COMMENT='订单表';

INSERT INTO `tb_order`  (id, order_sn, trade_no, pay_type, user_id, user_snapshot_id, good_id, good_snapshot_id, pay_fee, status, create_at, update_at) VALUES
('1', '20200331011150870', '94978120668221740332', '1', '14', '24', '38', '43', '22208', '4', '2020-03-08 03:47:38', '2020-03-08 03:47:38'),
('2', '20200414120241581', '03853608249050833062', '2', '16', '5', '3', '41', '45296', '0', '2020-02-01 19:14:05', '2020-02-01 19:14:05'),
('3', '20200613233138331', '17218170577871169782', '1', '24', '4', '47', '25', '57035', '2', '2020-07-21 06:36:12', '2020-07-21 06:36:12'),
('4', '20201008010440270', '74706914857740389499', '1', '1', '10', '37', '34', '14245', '0', '2020-03-19 12:59:04', '2020-03-19 12:59:04'),
('5', '20200324061532777', '69977229292832052712', '1', '47', '16', '18', '32', '41482', '0', '2020-01-13 22:43:22', '2020-01-13 22:43:22'),
('6', '20200813012918244', '88677581736246234231', '1', '26', '23', '47', '37', '1063', '3', '2020-08-08 01:12:45', '2020-08-08 01:12:45'),
('7', '20200901134853759', '45450633897833821702', '1', '12', '44', '25', '5', '26376', '2', '2020-06-29 00:29:48', '2020-06-29 00:29:48'),
('8', '20200913023948475', '15335240028797460780', '1', '14', '24', '38', '27', '36098', '2', '2020-04-04 07:30:15', '2020-04-04 07:30:15'),
('9', '20201107001848440', '64238520104185119822', '2', '9', '38', '34', '18', '24582', '3', '2020-03-05 20:43:02', '2020-03-05 20:43:02'),
('10', '20200414132532083', '55671902124515467903', '2', '4', '17', '16', '13', '16386', '2', '2020-09-23 09:33:23', '2020-09-23 09:33:23');
--共1000000条数据，限于篇幅，此处只展示10条

UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 11:01:52
