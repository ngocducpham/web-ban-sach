CREATE DATABASE  IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstore`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_ID` int NOT NULL AUTO_INCREMENT,
  `Phone_Number` text NOT NULL,
  `Full_Address` text NOT NULL,
  `Customer_ID` int NOT NULL,
  `province` text,
  PRIMARY KEY (`Address_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (48,'x','x, Xã Hoà Long, Thị Xã Bà Rịa, Bà Rịa - Vũng Tàu',49,'150');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_id` int NOT NULL AUTO_INCREMENT,
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','Admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `Author_ID` int NOT NULL AUTO_INCREMENT,
  `Author_Name` text NOT NULL,
  PRIMARY KEY (`Author_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Dương Thụy'),(2,'Trần Minh Phương Thảo'),(3,'Nguyễn Xuân Khánh'),(4,'Tú Phạm'),(5,'Nguyên Phong'),(6,'Nguyễn Nhật Ánh'),(7,'Nhiều Tác Giả'),(8,'Thế Hiển'),(9,'Ewen Chia'),(10,'John C Shin'),(11,'Tương Lâm'),(12,'Bạc Mộ Băng Luân'),(13,'Park Ji Hoon'),(14,'Ngô Thị Giáng Uyên'),(15,'Nguyễn Xuân Khánh'),(16,'Lê Văn Nghĩa'),(17,'Quỳnh Hương'),(18,'Nguyễn Hữu Huấn'),(19,'Kim Mi Kyung');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_banner`
--

DROP TABLE IF EXISTS `book_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_banner` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Book_ID` int DEFAULT NULL,
  `Img` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_banner`
--

LOCK TABLES `book_banner` WRITE;
/*!40000 ALTER TABLE `book_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_category` (
  `Category_ID` int NOT NULL AUTO_INCREMENT,
  `Category_Name` text NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
INSERT INTO `book_category` VALUES (1,'Kinh Tế'),(2,'Văn Học Nước Ngoài'),(3,'Văn Học Trong Nước'),(4,'Thường Thức - Đời Sống'),(5,'Thiếu Nhi'),(6,'Phát Triển Bản Thân'),(7,'Tin Học Ngoại Ngữ'),(8,'Chuyên Ngành'),(9,'Giáo Khoa - Giáo Trình'),(10,'Tạp Chí');
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_language`
--

DROP TABLE IF EXISTS `book_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_language` (
  `Language_ID` int NOT NULL AUTO_INCREMENT,
  `Language_Name` text NOT NULL,
  PRIMARY KEY (`Language_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_language`
--

LOCK TABLES `book_language` WRITE;
/*!40000 ALTER TABLE `book_language` DISABLE KEYS */;
INSERT INTO `book_language` VALUES (1,'Tiếng Việt'),(2,'Tiếng Anh');
/*!40000 ALTER TABLE `book_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `Book_ID` int NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Pages` int NOT NULL,
  `Publication_Date` date NOT NULL,
  `Description` text NOT NULL,
  `Price` int NOT NULL,
  `Discount` int NOT NULL,
  `Language_ID` int NOT NULL,
  `Category_ID` int NOT NULL,
  `Publisher_ID` int NOT NULL,
  `Author_ID` int NOT NULL,
  `Img` text,
  PRIMARY KEY (`Book_ID`),
  KEY `Author_ID` (`Author_ID`),
  KEY `Language_ID` (`Language_ID`),
  KEY `Publisher_ID` (`Publisher_ID`),
  KEY `Type_ID` (`Category_ID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Language_ID`) REFERENCES `book_language` (`Language_ID`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`Category_ID`) REFERENCES `book_category` (`Category_ID`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`Publisher_ID`) REFERENCES `publisher` (`Publisher_ID`),
  CONSTRAINT `books_ibfk_4` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`Author_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Con Chim Xanh Biếc Bay Về ',350,'2021-11-17','Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.\n\nNhư một cuốn phim “trinh thám tình yêu”, Con chim xanh biếc bay về dẫn bạn đi hết từ bất ngờ này đến tò mò suy đoán khác, để kết thúc bằng một nỗi hân hoan vô bờ sau bao phen hồi hộp nghi kỵ đến khó thở.\n\nBạn sẽ theo phe sinh viên-nhân viên với những câu thơ dịu dàng và đáo để, hay phe ông chủ với những kỹ năng kinh doanh khởi nghiệp? Và hãy đoán thử, điều gì khiến bạn có thể cảm động đến rưng rưng trong cuộc sống giữa Sài Gòn bộn bề?\n\nLâu lắm mới có hình ảnh thành phố rộn ràng trong tác phẩm của Nguyễn Nhật Ánh - điều hấp dẫn khác thường của Con chim xanh biếc bay về.\n\nChính vì thế mà cuốn sách chỉ có một cách đọc thôi: một mạch từ đầu đến cuối!\n\nMời bạn đón đọc!',270000,20,1,3,1,6,'1.jpg'),(2,'Yêu Em Bằng Mắt, Giữ Em Bằng Tim',420,'2021-11-17','Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra...\n\nTruyện diễn ra với bối cảnh Pháp và Việt Nam, với những phân đoạn tả cảnh tả tình lãng mạn bay bổng, những phút bên nhau đầy say đắm, nhưng cũng không thiếu những gai góc có thể chia rẽ mọi đôi tình nhân - cho dù họ đã có một khởi đầu đẹp đẽ như thế nào chăng nữa. Vì yêu nhau rõ ràng là từ ánh mắt, nhưng muốn ở bên nhau trọn đời, cần phải có một con tim rộng mở, bao dung...\n\nTác phẩm dành cho người trưởng thành.',175000,20,1,3,2,1,'2.jpg'),(3,'Đừng Yêu Thầm Nữa, Tỏ Tình Đi',250,'2021-11-17','Điều kỳ diệu nhất của tuổi trẻ là tình yêu, và điều kì diệu nhất của tình yêu chính là khả năng thay đổi một người.\n\nTừ ít nói, chậm chạp trở nên vui vẻ, hoạt bát.\n\nTừ lạnh lùng, khô khan trở nên gần gũi, dịu dàng.\n\nĐơn giản vì một nụ cười mà cả ngày vui vẻ, cũng vì một giọt nước mắt mà đau đớn trong tim.\n\nNhững sôi nổi, nhiệt thành ấy rồi sẽ dần dần cùng tuổi trẻ biến mất. Vậy tại sao khi còn có thể, bạn không nỗ lực tới cùng để theo đuổi tình yêu?\n\nThấu hiểu những rung động ấy, “Đừng yêu thầm nữa, tỏ tình đi” giống như lời cổ vũ tiếp thêm sức mạnh cho bạn trên hành trình chinh phục tình yêu, để một lúc nào đó ngoảnh đầu nhìn lại, thứ bạn nhìn thấy sẽ là một quãng đường tuổi trẻ rực rỡ mà yên bình.\n\nĐọc “Đừng yêu thầm nữa, tỏ tình đi”, bạn sẽ dễ dàng bắt gặp hình bóng của chính mình để từ đó học được cách yêu, học cách mạnh mẽ để có được tình yêu của cuộc đời.\n\nChúc bạn có thật nhiều can đảm và mạnh mẽ nắm lấy hạnh phúc của chính mình!',86000,22,1,1,1,2,'3.jpg'),(4,'Cổ Tích Việt Nam Cho Bé Mẫu Giáo: Quạ Và Công',300,'2021-11-17','Ai cũng muốn trở nên xinh đẹp. Quạ và công cũng không ngoại lệ. Các bạn ấy đã làm gì để điểm tô cho bộ cánh của mình? Kết quả ra sao? Chúng mình cùng xem nhé\n\nBộ “Cổ tích Việt Nam cho bé mẫu giáo” bao gồm những câu chuyện nổi tiếng của kho tàng chuyện cổ tích Việt Nam, được kể lại ngắn gọn, súc tích cùng với hình minh họa đẹp phù hợp với lứa tuổi mẫu giáo',190000,8,1,5,1,5,'4.jpg'),(5,'Cha Giàu cha nghèo',500,'2010-09-16','Đây là quyển sách dạy bạn về cách suy nghĩ thông minh',300000,7,1,2,1,8,'5.jpg'),(6,'Luật hấp dẫn',358,'2005-06-14','Vũ trụ sẽ gửi lại cho bạn đúng tín hiệu bạn gửi vào vũ trụ',140000,5,1,2,2,8,'6.jpg'),(8,'Phát triển kỹ năng lãnh đạo',456,'2013-04-12','Muốn là một lãnh đạo giỏi thì trước hết chính bản thân bạn phải là một nhân viên xuất sắc',130000,1,1,2,2,8,'8.jpg'),(9,'Tôi Đã Kiếm 1 Triệu Đô Đầu Tiên Trên Internet Như Thế Nào Và Bạn Cũng Có Thể Làm Như Thế (Tái Bản 2021)',488,'2021-11-01','Cuốn sách Tôi đã kiếm 1 triệu đô đầu tiên trên internet như thế nào? - Và Bạn Cũng Có Thể Làm Như Thế hướng dẫn rất dễ hiểu, với từng bước cụ thể để gây dựng một công việc kinh doanh trên mạng Internet đang bùng nổ và dễ dàng kiếm lợi nhuận hàng triệu đô-la, Ewen Chia đã làm sáng tỏ những biệt ngữ trong marketing và chia sẻ những bí quyết và kỹ xảo vẫn đang giúp ông thu về một tài sản đáng mơ ước từ những vụ kinh doanh trực tuyến.\nDù bạn đang cố gắng tạo dựng và phát triển một công việc kinh doanh phát đạt trên Internet từ con số không hay đang tìm cách phát huy hết tiềm năng của công việc hiện tại, dù bạn không biết gì về Internet hay đã có một tấm bằng kinh doanh, bản kế hoạch kiếm triệu đô chi tiết của Ewen sẽ giúp bạn:',349000,3,1,1,3,9,'9.jpg'),(10,'Tư Duy Của Người Giàu Gốc Á - Một Ấn Phẩm Về Nghĩ Giàu Và Làm Giàu',364,'2021-11-02','Cuốn sách đi theo trình tự nội dung của cuốn Nghĩ giàu và Làm giàu kinh điển. Mỗi chương bắt đầu bằng diễn giải hiện đại của tác giả về những điểm mấu chốt trong cuốn sách nổi tiếng của Napoleon Hill. Sau đó',336000,2,1,1,4,10,'10.jpg'),(11,'Digital Marketing: Thế Giới Ảo Tạo Dòng Tiền Thật',340,'2021-11-03','Cuốn sách là sản phẩm bán chạy trên toàn thế giới của bậc thầy về marketing Philip Kotler và hai đồng tác giả Svend Hollensen và Marc Opresnik.\n\nCông nghệ số hiện diện và kiểm soát mọi khía cạnh trong cuộc sống của chúng ta, và lĩnh vực truyền thông tiếp thị không phải là ngoại lệ. Thông tin và thông điệp về sản phẩm được truyền tải đến khách hàng qua nhiều phương tiện và nền tảng số khác nhau. Quảng cáo truyền thống không còn hiệu quả như trước đây.\n\nẤn bản này được sửa đổi và mở rộng toàn bộ, được Bookauthority chọn là một trong những cuốn sách tiếp thị/quảng cáo hay nhất trên thế giới. Cuốn sách dẫn dắt người đọc qua mê cung của các cộng đồng, nền tảng và các công cụ truyền thông xã hội, và trên nền tảng đó họ có thể đưa ra quyết định tốt hơn về việc sử dụng công cụ nào để sử dụng và cách sử dụng chúng hiệu quả nhất. Đối với người mới bắt đầu bị choáng ngợp bởi quá nhiều lựa chọn cũng như đối với các chuyên gia giàu kinh nghiệm mong muốn cải thiện trò chơi của họ, cuốn sách toàn diện này chứa đầy các chiến thuật đã được chứng minh là có hiệu quả trong thế giới tiếp thị thực tế. Cuốn sách sẽ đưa bạn đi từ sự hiểu biết đơn thuần các thuật ngữ chuyên môn đến làm chủ và tận dụng thế giới mạng xã hội.\n\nMục tiêu cuối cùng của marketing là lôi kéo thêm nhiều người mua sản phẩm một cách thường xuyên hơn, để gia tăng lợi nhuận cho công ty. Khi chi tiền cho marketing, bạn buộc phải kiếm ra tiền.\n\nTrong cuộc cách mạng chuyển đổi số hiện tại, digital marketing bùng nổ và trở thành công cụ chiến lược của các công ty. Thế giới “ảo” đang thay đổi mạnh mẽ xu hướng tiêu dùng, với sự ra đời và phổ biến của các nền tảng số. Sự tương tác và chia sẻ trên các ứng dụng công nghệ có sức mạnh đáng kinh ngạc đến tính hiệu quả của chiến lược tiếp thị.\n\nVậy, làm thế nào để tối ưu hóa các công cụ truyền thông số và giúp các khoản chi cho marketing sinh lời? Digital Marketing: Thế giới “ảo” tạo dòng tiền thật chính là lời giải cho các marketer hiện đại.',298000,5,1,1,5,7,'11.jpg'),(12,'Đừng Để Tiền Ngủ Yên Trong Túi (Tái Bản 2021)',200,'2021-10-28','Trong Đừng để tiền ngủ yên trong túi, thông qua câu chuyện về những ông chủ giàu có nhất thành Babylon, bạn sẽ tự học hỏi và rút ra được rất nhiều những bài học kinh nghiệm đầy giá trị dựa trên 5 nguyên tắc đầu tư, sử dụng tiền thông minh và hiệu quả.',418000,5,1,1,6,11,'12.jpg'),(13,'Trò Chơi Trứng Phục Sinh - Tập 1',396,'2021-06-05','Lâm Giác là một sinh viên đại học bình thường như bao người',587000,4,1,2,7,12,'13.jpg'),(14,'Park Tiên Sinh Sống Giữa Sài Gòn',320,'2021-01-02','Tác giả bắt đầu làm việc tại Sài Gòn từ năm 2007 và hiện tại là Tổng giám đốc công ty Tư vấn Thiết kế và Xây dựng Junglim Architecture Việt Nam.\nÔng phụ trách một chuyên mục trong Tạp chí Xin chào Việt Nam dành cho kiều bào người Hàn và cũng là tác giả cuốn sách “Mong seonsaengui Seogong japgi” (xuất bản tại Hàn Quốc) viết về kinh nghiệm sống 10 năm tại Sài Gòn. Ngoài ra ông còn người đại diện Quỹ “Moonbit” (Ánh nước xanh) nhằm hỗ trợ, giúp đỡ cộng đồng và thanh niên Việt Nam; đại diện Quỹ “Arumtaeun gongdongchae” (Beautiful Community) của cộng đồng Hàn kiều tại thành phố Hồ Chí Minh; và là người điều hành website Damascus.\nCuốn sách ghi lại những ấn tượng, cảm nghĩ, trải nghiệm... của ông đối với Sài Gòn, từ con đường đầy tiếng còi xe, đến thói quen bản địa, phong cách làm việc... Giọng văn duyên dáng, hình minh họa hóm hỉnh. Đối với độc giả Việt Nam, quyển sách giúp cho người Việt Nam có một cái nhìn mới về bản thân mình, nhất là khi họ đang sống ở một thành phố đa văn hóa và là một thành viên của xu thế toàn cầu hóa',270000,7,1,2,1,13,'14.jpg'),(15,'Ngón Tay Mình Còn Thơm Mùi Oải Hương',288,'2021-11-05','Du ký châu Âu khoảng thời gian tác giả du học ở Anh Quốc 2004-2005',285000,9,1,3,1,14,'15.jpg'),(16,'Hồ Quý Ly - Tiểu Thuyết Lịch Sử',682,'2021-11-07','Bằng nghệ thuật tái hiện khoáng đạt, nhà văn Nguyễn Xuân Khánh đã lật lại lịch sử thời kì cuối đời nhà Trần, góp thêm tiếng nói khám phá xã hội và con người Hồ Quý Ly - một nhân vật mà hơn 600 năm qua vẫn còn nhiều tranh cãi về ông. Hơn thế, cuốn tiểu thuyết còn là bức tranh đẹp về Thăng Long ngàn năm văn hiến với những địa danh cổ nổi tiếng, những cảnh sinh hoạt thôn dã, những lễ hội dân gian, những phong tục tốt đẹp... được lưu truyền hay đã bị mai một theo năm tháng.\n\nTrong lần in thứ mười ba này, Hồ Quý Ly được in bìa cứng, trang trọng, rất phù hợp để trong Tủ sách gia đình hay quà tặng bạn bè một tác phẩm xuất sắc mang tầm thời đại của lão nhà văn Nguyễn Xuân Khánh.\n\nNhà xuất bản Phụ nữ xin trân trọng được giới thiệu cùng bạn đọc.',374000,10,1,3,8,15,'16.jpg\n'),(17,'Sài Gòn - Những Mảnh Ghép Rời Ký Ức',408,'2021-11-08','Tiếp theo ba tập ghi chép về Sài Gòn xưa: Sài Gòn dòng sông tuổi thơ, Sài Gòn khâu lại mảnh thời gian, Sài Gòn chuyện xưa mà chưa cũ, tập tạp bút - biên khảo này tiếp tục kể lại những câu chuyện sống động về Sài Gòn một thuở cách đây gần nửa thế kỷ, với rạp hát, khu chợ, những thú vui của trẻ con ngày xưa, phòng trà ca nhạc, những tờ báo, sân khấu cải lương, và bao con người đã trở thành chứng nhân của một thời khó quên.\nĐó là những câu chuyện đầy ắp dữ liệu sống động và tràn trề cảm xúc, của một nhà văn, nhà báo đã gắn trọn đời mình với thành phố này.',295000,7,1,3,1,16,'17.jpg'),(18,'Kỹ Thuật Cắt May Căn Bản - Cách Vẽ Và May Các Loại Váy Trang Phục Nam-Nữ-Thiếu Nhi',224,'2020-11-15','1. Cắt đo căn bản  2. Cách vẽ và may các loại váy 3. Cách vẽ và may quần tây 4. Cách vẽ và may trang phục nữ 5. Thiết kế mẫu nam 6. Hướng dẫn may quần áo thiếu nhi 7. Hướng dẫn cắt may các kiểu cổ và tay áo\"',299000,5,1,4,9,17,'18.jpg'),(19,'Hướng Dẫn Tự Học Cắt May - Quỳnh Hương 2021',208,'2020-06-02','Trong một xã hội phát triển, nhu cầu cầu làm đẹp ngày càng cao, thời trang luôn là mối quan tâm lớn của chị em phụ nữ. Tuy nhiên, không phải lúc nào bạn cũng có điều kiện sắm cho mình một bộ cánh vừa ý\n\nTự học cắt may trươc hết mang lại niềm vui được thỏa mãn nhu cầu tự làm đẹp cho mình và người thân trong gia đình, sau nữa nếu cố gắng, bạn sẽ có một nghề phụ mà không bao giờ phải lo thất nghiệp. Và biết đâu, từ đam mê ban đầu, rất có thể bạn trở thành Nhà Thiết Kế Thời Trang trong tương lai.\n\nTrong phần kỹ thuật các bạn sẽ được cung cấp trước tiên là những kỹ thuật may, trong đó, bao gồm các hình thức tạo mũi may thông thường và cơ bản, các đường may tay, may máy, các đường viền, chí, hình thức ráp nối trong khung may, các kiểu và mạng áo quần và cách may chi tiết (của sản phẩm): may cổ áo, bâu cáo, tay áo, túi áo của các kiểu áo...\n\nCuốn sách này rất phù hợp với những người mới học cắt may hoặc chập chững bước vào nghề may.',307000,4,1,4,9,17,'19.jpg'),(20,'Dạy Con Đối Mặt Với Ván Cờ Cuộc Đời (Tái Bản 2021)',216,'2020-09-05','Dạy Con Đối Mặt Với Ván Cờ Cuộc Đời được viết với quan niệm: Những quân cờ vua nhỏ bé không chỉ mang đến cho con người những cung bậc cảm xúc khác nhau mà còn dạy con người nhiều bài học về cuộc đời.\n\nCuốn sách là trang nhật ký của các thành viên trong một gia đình có con đang ở giai đoạn “khủng hoảng tuổi lên 7”. Cu Tý nghịch ngợm, hay tò mò về những thứ xung quanh mình và yêu thích chơi cờ vua. Người mẹ dịu dàng, thường mang trong mình những nỗi lo lắng đến mức thái quá. Người bố bận rộn nhưng luôn cố gắng dành thời gian để làm bạn cùng con.\n\nXuyên suốt 5 chương sách là những tình huống mà bạn đã bắt gặp đâu đó trong cuộc sống hằng ngày. Tư duy cờ vua sẽ giúp bạn ứng phó với chúng một cách nhẹ nhàng, hiệu quả nhất. Bạn sẽ bất ngờ khi khám phá ra rằng, cờ vua không chỉ đơn thuần là một một thể thao trí tuệ mà còn ẩn chứa nhiều triết lý về cuộc sống.\n\nNuôi dạy con trưởng thành là một chặng đường dài và trên hành trình làm cha mẹ, mỗi phụ huynh vẫn còn nhiều bài học phải trải qua.\n\nDạy con đối mặt với ván cờ cuộc đời sẽ đem đến cho bạn nhiều bài học hữu ích về nuôi dạy con, về cách đứng vững giữa cuộc đời nhiều thử thách.',289000,7,1,4,10,18,'20.jpg'),(21,'Mẹ Tự Tôn - Con Tự Tin',304,'2021-03-06','Cuốn sách Mẹ tự tôn – Con tự tin chứa đựng nhiều quan điểm tiến bộ bởi đã nêu ra câu hỏi mang tính thách thức đối với quan niệm cố hữu của số đông về “bổn phận làm mẹ”.\n\nPhụ nữ bắt đầu vai trò làm mẹ từ khi em bé được hình thành trong bụng và duy trì liên tục cho tới khi nhắm mắt xuôi tay. Tuy nhiên, nhiều người thiết lập sai lầm ngay từ đầu mối quan hệ cha mẹ – con cái quý giá này. Nhiều bà mẹ tin chắc rằng “bổn phận chân chính của người làm mẹ” chính là phải trở thành chuyên gia về đào tạo và nuôi dạy trẻ. Và họ dốc toàn lực để theo đuổi niềm tin đó. Nhưng, giây phút chúng ta thiết lập vai trò bản thân theo quan điểm như vậy cũng là lúc bi kịch bắt đầu.\n\nKhi việc cho con vào học tại một trường đại học tốt trở thành sứ mệnh của cả gia đình, thì trách nhiệm của người bố là phải cố gắng kiếm tiền để đầu tư cho con, người mẹ phải trở thành chuyên gia về kỳ thi đại học, còn các con phải nỗ lực để đạt kết quả tốt. Sẽ không còn gì tuyệt vời hơn nếu tất cả đều như ý, nhưng nuôi lớn một con người đâu phải lúc nào cũng diễn ra đúng theo kế hoạch. Cuộc thi nào cũng có cạnh tranh khốc liệt, trong khi thời điểm thành công của từng đứa trẻ lại không giống nhau, vì vậy, điều dễ hiểu là phần lớn người tham gia cuộc đua đều trở thành kẻ thua cuộc.',289000,8,1,4,5,19,'21.jpg'),(22,'Thai Giáo Theo Chuyên Gia - 280 Ngày - Mỗi Ngày Đọc Một Trang (Tái Bản 2021)',256,'2021-11-09','Thai giáo, xét theo nghĩa rộng là: Trong thời gian thai nghén, bà bầu ngoài việc coi trọng sức khỏe và dinh dưỡng cho mình còn cần chú trọng những ảnh hưởng từ môi trường, cố gắng bồi dưỡng tâm lí tích cực để thai nhi ở trong bụng mẹ có thể cảm nhận được những điều tốt đẹp, khiến cho bé sau khi ra đời được khỏe mạnh và thông minh.\n\nTheo nghĩa hẹp, thai giáo là: Thông qua những phương pháp nhất định, ví dụ như nói chuyện với thai nhi, vuốt ve vùng bụng của mẹ, nghe những bản nhạc êm dịu, vận động nhẹ nhàng, duy trì tâm trạng vui vẻ... để tiến hành giáo dục sớm cho thai nhi.\n\nTrong 280 ngày mang thai, bé trải qua một chuyến \"du lịch thần kỳ\" trong cơ thể bạn, bạn muốn biết mỗi ngày bé trải qua những thay đổi kỳ diệu nào không? Bạn có muốn vì bé mà tạo nên nhiều điều vui vẻ và thú vị không? Vậy mời bạn, hãy cùng chúng tôi bước vào thời khắc hạnh phúc này nhé! Bạn sẽ nhận thấy, thực ra mỗi ngày chỉ cần dành một chút thời gian, có thể chỉ là một vài câu nói, đọc một vài trang sách, hát một bài hát hay, thậm chí chơi một trò chơi, niềm vui sẽ đến và tràn ngập cuộc sống của bạn.',289000,3,1,4,8,7,'22.jpg');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` text NOT NULL,
  `Email` text NOT NULL,
  `Last_Name` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (49,'x','x','x','$2a$12$qvWVKU6K.vYPMBBkM1h0b.dpkkYGBCb0IGCbKqo9RCfcGhQ2a30Ba');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Date` date NOT NULL,
  `Dest_Address` text NOT NULL,
  `Customer_ID` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (73,'2021-12-26','x, Xã Hoà Long, Thị Xã Bà Rịa, Bà Rịa - Vũng Tàu',49,1),(74,'2021-12-26','x, Xã Hoà Long, Thị Xã Bà Rịa, Bà Rịa - Vũng Tàu',49,1),(75,'2021-12-26','x, Xã Hoà Long, Thị Xã Bà Rịa, Bà Rịa - Vũng Tàu',49,1);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `Order_Detail_ID` int NOT NULL AUTO_INCREMENT,
  `Quantity` int NOT NULL,
  `Total_Cost` int NOT NULL,
  `Book_ID` int NOT NULL,
  `Order_ID` int NOT NULL,
  PRIMARY KEY (`Order_Detail_ID`),
  KEY `Book_ID` (`Book_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `books` (`Book_ID`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `customer_order` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (73,1,174800,4,73),(74,1,274350,17,74),(75,1,174800,4,75);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `auto_delete_customer_order` AFTER DELETE ON `order_detail` FOR EACH ROW begin
    delete from customer_order
        where customer_order.Order_ID=OLD.Order_ID;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `order_request`
--

DROP TABLE IF EXISTS `order_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_request` (
  `order_request_id` int NOT NULL AUTO_INCREMENT,
  `request_date` date NOT NULL,
  `status` int NOT NULL,
  `Customer_ID` int NOT NULL,
  PRIMARY KEY (`order_request_id`),
  KEY `fk_order_request_customer1_idx` (`Customer_ID`),
  CONSTRAINT `fk_order_request_customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_request`
--

LOCK TABLES `order_request` WRITE;
/*!40000 ALTER TABLE `order_request` DISABLE KEYS */;
INSERT INTO `order_request` VALUES (2,'2021-12-26',1,49);
/*!40000 ALTER TABLE `order_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `Publisher_ID` int NOT NULL AUTO_INCREMENT,
  `Publisher_Name` text NOT NULL,
  PRIMARY KEY (`Publisher_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'NXB Trẻ'),(2,'Nhã Nam'),(3,'Nxb Công Thương'),(4,'NXB Dân Trí'),(5,'Nxb Lao động'),(6,'NXB Thanh Niên'),(7,'Nxb Hà Nội'),(8,'NXB Phụ Nữ'),(9,'NXB Hồng Đức'),(10,'Nxb Thế giới');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bookstore'
--

--
-- Dumping routines for database 'bookstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 22:35:59
