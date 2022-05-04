-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advert` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `creation_date_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expiration_date_time` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert`
--

LOCK TABLES `advert` WRITE;
/*!40000 ALTER TABLE `advert` DISABLE KEYS */;
INSERT INTO `advert` VALUES (1,NULL,NULL,'banner1',NULL,'https://d2p7wwv96gt4xt.cloudfront.net/S/banners/banners_2022_pick_of_the_month-desktop.jpg','banner1','banner.com'),(2,NULL,NULL,'banner2',NULL,'https://d2p7wwv96gt4xt.cloudfront.net/S/banners/banners_trailblazing_women-desktop.png','banner2','banner2.com'),(3,NULL,NULL,'banner3',NULL,'https://www.jdandj.com/uploads/8/0/0/8/80083458/book-promotional-poster_orig.jpg','banner3','banner3.com');
/*!40000 ALTER TABLE `advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9c4t9576xotgiqoyc8ck5nnwe` (`user_id`),
  CONSTRAINT `FK9c4t9576xotgiqoyc8ck5nnwe` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,0,1),(2,0,4),(3,0,5),(4,0,101),(5,0,102);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `buyer_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhq4crqbokwfsq6hkvhacw2j7v` (`buyer_id`),
  KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`),
  CONSTRAINT `FKhq4crqbokwfsq6hkvhacw2j7v` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`),
  CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,1,1,1),(2,1,1,2),(3,1,1,3);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Văn Học','Văn Học'),(2,'Kinh Tế','Kinh Tế'),(3,'Kỹ Năng Sống','Tâm Lý'),(4,'Nuôi Dạy Con','Nuôi Dạy Con'),(5,'Sách Học Ngoại Ngữ','Sách Học Ngoại Ngữ'),(6,'Tiểu Sử Hồi Ký','Tiểu Sử Hồi Ký'),(7,'Sách Thiếu Nhi','Sách Thiếu Nhi'),(8,'Sách Hay','Sách Hay'),(9,'Sách Nấu Ăn','Sách Nấu Ăn'),(10,'Kỹ Năng sống','Kỹ Năng Sống'),(11,'Sức Khỏe Mỗi Ngày','Sức Khỏe Mỗi Ngày');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `following`
--

DROP TABLE IF EXISTS `following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `following` (
  `buyer_id` bigint NOT NULL,
  `seller_id` bigint NOT NULL,
  KEY `FKdjo212e40lysqhab3y97ox2qg` (`seller_id`),
  KEY `FKb10hd9lv51br4uknw9870un4s` (`buyer_id`),
  CONSTRAINT `FKb10hd9lv51br4uknw9870un4s` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`),
  CONSTRAINT `FKdjo212e40lysqhab3y97ox2qg` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `following`
--

LOCK TABLES `following` WRITE;
/*!40000 ALTER TABLE `following` DISABLE KEYS */;
INSERT INTO `following` VALUES (1,1),(2,1),(3,1),(5,1);
/*!40000 ALTER TABLE `following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `ID` bigint NOT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `READ` tinyint(1) DEFAULT NULL,
  `RECEIVED_DATE` timestamp NULL DEFAULT NULL,
  `USER_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKb3y6etti1cfougkdr0qiiemgv` (`USER_ID`),
  CONSTRAINT `FKb3y6etti1cfougkdr0qiiemgv` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'From Phoenix shop: New product added',0,'2022-03-26 12:43:54',1),(2,'From Phoenix shop: New product added',0,'2022-03-26 12:43:54',1);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `delivered_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `rating` int NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `review_status` varchar(255) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`),
  CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,NULL,'ORDERED',1,4,'Nice books','2022-03-26 19:42:05','APPROVED',NULL,1,8),(2,NULL,'ORDERED',1,4,'well donee','2022-03-26 19:42:05','PENDING',NULL,1,9),(3,NULL,'ORDERED',1,4,'sick one!','2022-03-26 19:42:05','PENDING',NULL,1,10),(4,NULL,'DELIVERED',1,1,'Too opinionate!','2022-03-26 19:42:05','APPROVED',NULL,2,8),(5,NULL,'DELIVERED',1,3,'It does not look like the photo','2022-03-26 19:42:05','APPROVED',NULL,3,8),(6,NULL,'ORDERED',1,0,NULL,NULL,'PENDING',NULL,5,10);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `billing_address` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `ordered_date` datetime DEFAULT NULL,
  `payment_info` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_amount` decimal(19,2) DEFAULT NULL,
  `using_points` bit(1) DEFAULT NULL,
  `buyer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8bfdq6yuliu59tbo7go78xt51` (`buyer_id`),
  CONSTRAINT `FK8bfdq6yuliu59tbo7go78xt51` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'1000 N 4th St, Fairfield, IA',NULL,'2022-03-26 19:42:04','Paid by the card number XXXX XXXX XXXX 1234','DEBIT CARD','1000 N 4th St, Fairfield, IA','NEW',64.97,_binary '\0',1),(2,'1000 N 4th St, Fairfield, IA',NULL,'2022-03-26 19:42:04','Paid by the card number XXXX XXXX XXXX 2345','CREDIT CARD','1000 N 4th St, Fairfield, IA','COMPLETED',19.99,_binary '\0',2),(3,'1000 N 4th St, Fairfield, IA',NULL,'2022-03-26 19:42:04','Paid by the card number XXXX XXXX XXXX 3456','CREDIT CARD','1000 N 4th St, Fairfield, IA','COMPLETED',19.99,_binary '\0',3),(4,'','2022-03-26 22:14:56','2022-03-26 22:14:47','','CREDIT CARD','','CANCELED',0.00,_binary '\0',2),(5,'sdgsdg',NULL,'2022-03-27 00:51:01','Paid by the card number XXXX XXXX XXXX gsdg','DEBIT CARD','sgvdgsd','NEW',19.99,_binary '\0',5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `available` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(19,2) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKesd6fy52tk7esoo2gcls4lfe3` (`seller_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKesd6fy52tk7esoo2gcls4lfe3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,100,'Thiên tiểu thuyết có sức ảnh hưởng sâu rộng của Colleen McCullough về những giấc mơ, những trăn trở, những đam mê thầm kín, và mối tình bị ngăn cấm ở nước Úc xa xôi đã mê hoặc độc giả khắp thế giới. Đây là biên niên sử ba thế hệ dòng họ Cleary, những ngườ','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_44279.jpg','Những Con Chim Ẩn Mình Chờ Chết (Tái Bản 2020)',34.99,1,1),(2,100,'Người Đàn Ông Mang Tên OveNgười đàn ông mang tên Ove năm nay năm mươi chín tuổi. Ông là kiểu người hay chỉ thẳng mặt những kẻ mà ông không ưa như thể họ là bọn ăn trộm và ngón trỏ của ông là cây đèn pin của cảnh sát. Ove tin tất cả những người ở nơi ông s','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/n/g/nguoidanongmangtanove.jpg','Người Đàn Ông Mang Tên Ove',34.99,1,1),(3,100,'Những câu chuyện nhỏ xảy ra ở một ngôi làng nhỏ: chuyện người, chuyện cóc, chuyện ma, chuyện công chúa và hoàng tử , rồi chuyện đói ăn, cháy nhà, lụt lội,... Bối cảnh là trường học, nhà trong xóm, bãi tha ma. Dẫn chuyện là cậu bé 15 tuổi tên Thiều. Thiều ','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2199.jpg','Tôi Thấy Hoa Vàng Trên Cỏ Xanh (Bản In Mới - 2018)',39.99,1,1),(4,100,'Trích \"Cây Chuối Non Đi Giày Xanh\"\n\"Khác với mùa thu rón rén, bao giờ mùa hè cũng về với những bước chân rộn ràng. Cây phượng trước sân trường tôi và cây phượng trước sân chùa Giác Nguyên thi nhau nở đỏ thắm mấy hôm nay. Trên những ngọn cây cao hai bên bờ','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_229129.jpg','Cây Chuối Non Đi Giày Xanh (Bìa Mềm)',79.99,1,1),(5,100,'Có đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê C','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled-9_19.jpg','Cà Phê Cùng Tony (Tái Bản 2017)',17.99,1,1),(6,100,'Thế giới ngầm được phản ánh trong tiểu thuyết Bố già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất c','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/8/9/8936071673381.jpg','Bố Già (Đông A)',59.99,1,1),(7,100,'Câu chuyện chạy qua 8 phần với 64 chương sách nhỏ đầy ắp lòng thương yêu, tính lương thiện, tình thân bạn bè, lòng dũng cảm và bao dung, đánh bạt sự ác độc và cả mọi thói xấu.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/6/0/600ra-bo-suoi---bm_1.jpg','Ra Bờ Suối Ngắm Hoa Kèn Hồng - Tặng Kèm Bookmark Bồi Hai Mặt',29.99,1,1),(8,100,'Chen vai thích cánh để có một chỗ bám trên xe buýt giờ đi làm, nhích từng xentimét bánh xe trên đường lúc tan sở, quay cuồng với thi cử và tiến độ công việc, lu bù vướng mắc trong những mối quan hệ cả thân lẫn sơ… bạn có luôn cảm thấy thế gian xung quanh ','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/b/u/buoc_cham_lai_giua_the_gian_voi_va.u335.d20160817.t102115.612356.jpg','Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)',19.99,1,1),(9,100,'Hai số phận” không chỉ đơn thuần là một cuốn tiểu thuyết, đây có thể xem là \"thánh kinh\" cho những người đọc và suy ngẫm, những ai không dễ dãi, không chấp nhận lối mòn.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_179484.jpg','Hai Số Phận - Bìa Cứng',24.99,1,1),(10,100,'“Làm Giàu Từ Chứng Khoán” là cuốn sách kinh điển mà mọi nhà đầu tư nên đọc, kể từ khi được phát hành lần đầu tiên vào năm 1988 sách đã bán được 2 triệu bản và được dịch ra nhiều thứ tiếng trên thế giới.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/400x400/9df78eab33525d08d6e5fb8d27136e95/t/i/tieu-thuyet-chuyen-the---thanh-guom-diet-quy---khoi-dau-cua-dinh-menh.jpg','Bộ Sách Làm Giàu Từ Chứng Khoán (How To Make Money In Stock) Phiên Bản Mới ',55.00,2,1),(11,100,'Tanjiro Và Nezuko - Khởi Đầu Của Định Mệnh','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/bo_sach_lam_giau_tu_chung_khoan_how_to_make_money_in_stock_phien_ban_moi_huong_dan_thuc_hanh_canslim_cho_nguoi_moi_bat_dau_bo_2_cuon/2021_05_14_14_13_53_1-390x510.jpg','Bộ Sách Làm Giàu Từ Chứng Khoán (How To Make Money In Stock) Phiên Bản Mới ',55.00,2,1),(12,100,'Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất.','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_39473.jpg','13 Nguyên Tắc Nghĩ Giàu Làm Giàu - Think And Grow Rich (Tái Bản 2020)',55.00,2,1),(13,100,'Bạn có bao giờ thốt ra những câu dù biết là không nên nói như  “Còn lề mề đến bao giờ nữa hả?” hay “Chẳng được cái trò trống gì, đưa đây xem nào!”… nhưng vẫn lỡ lời không?','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/i/m/image_182756.jpg','90% Trẻ Thông Minh Nhờ Cách Trò Chuyện Đúng Đắn Của Cha Mẹ (Tái Bản 2019)',55.00,4,1),(14,100,'Ngữ pháp và từ vựng là hai mảng không thể thiếu trong quá trình học ngoại ngữ nói chung và học tiếng Anh nói riêng. Hai phạm trù này sẽ góp phần giúp chúng ta đạt được sự thành thạo về ngôn ngữ. Nếu như ngữ pháp có các quy tắc, có cấu trúc để tuân theo th','https://cdn0.fahasa.com/media/catalog/product/cache/1/small_image/600x600/9df78eab33525d08d6e5fb8d27136e95/h/h/hh-30-chu-de-tu-vung-tieng-anh_1.jpg','30 Chủ Đề Từ Vựng Tiếng Anh (Tập 1)',55.00,5,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6rgw0e6tb24n93c27njlv0wcl` (`user_id`),
  CONSTRAINT `FK6rgw0e6tb24n93c27njlv0wcl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'The Phoenix shop offers hottest and quality books at the best price','Phoenix','/img/shop/1.jpg','APPROVED',2),(2,'O\'reilly offers hottest and quality books at the best price','O\'reilly','/img/shop/2.jpg','PENDING',6),(3,'White Wolf offers hottest and quality books at the best price','White Wolf','/img/shop/3.jpg','PENDING',7);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1000 N 4th St, Fairfield, IA','/img/avatar/buyer.jpg','buyer@shopping.com','First','Buyer','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','123-456-7890','2022-03-26','BUYER'),(2,'1000 N 4th St, Fairfield, IA','/img/avatar/seller.png','seller@shopping.com','First','Seller','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','123-456-7890','2022-03-26','SELLER'),(3,'1000 N 4th St, Fairfield, IA','/img/avatar/admin.png','admin8c@shopping.com','Shopping','Admin','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','000-000-0000','2022-03-26','ADMIN'),(4,'1000 N 4th St, Fairfield, IA','/img/avatar/buyer.jpg','iamloin@king.com','Second','Buyer','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','123-456-7890','2022-03-26','BUYER'),(5,'1000 N 4th St, Fairfield, IA','/img/avatar/buyer.jpg','buyer3@shopping.com','Third','Buyer','$2a$10$b.9CsDYMBdFIMB5ja.lg0.3/OHFiv5kMn7yR.FKCZY3JScMRPvE.G','123-456-7890','2022-03-26','BUYER'),(6,'1000 N 4th St, Fairfield, IA','/img/avatar/seller.png','seller2@shopping.com','Second','Seller','$2a$10$13wR9hYkIwBP0WIT525/XO23UfTvtjUKjbHCLlwAzYNzF3IkBlZRy','123-456-7890','2022-03-26','SELLER'),(7,'1000 N 4th St, Fairfield, IA','/img/avatar/seller.png','seller3@shopping.com','Second','Seller','$2a$10$13wR9hYkIwBP0WIT525/XO23UfTvtjUKjbHCLlwAzYNzF3IkBlZRy','123-456-7890','2022-03-26','SELLER'),(101,'asvasv','/img/avatar/buyer.jpg','thisis@gmail.com','sdgsdgsdg','sdgsdg','$2a$10$4lj/4VCrepo0K9mExaiqoezLGoWI7Lwb5Tjrk905jihpW6l5gRV7O','1561','2022-03-26','BUYER'),(102,'1','/img/avatar/buyer.jpg','buy@me','ddos','ssdfsdf john','$2a$10$if6U1flU31Q.EwpBdmJgW.cvytVHgijphz2QBfx/dnzBP0iU9ro.6','s','2022-03-27','BUYER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 11:01:58
