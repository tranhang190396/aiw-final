-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for local_news
CREATE DATABASE IF NOT EXISTS `local_news` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci */;
USE `local_news`;

-- Dumping structure for table local_news.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `intro` text COLLATE utf8_vietnamese_ci NOT NULL,
  `content` text COLLATE utf8_vietnamese_ci NOT NULL,
  `created` date NOT NULL,
  `author` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT 'anonymous',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci COMMENT='a common newspaper news';

-- Dumping data for table local_news.articles: ~13 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `intro`, `content`, `created`, `author`) VALUES
	(1, '“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương!', 'Bộ phim “Gửi Thời Đẹp Đẽ Đơn Thuần Của Chúng Ta” đã kết thúc nhưng những dư âm sâu lắng, những bài học quý báu về tuổi trẻ, thời thanh xuân vẫn còn vang đọng đâu đây. ', 'Gửi Thời Đẹp Đẽ Đơn Thuần Của Chúng Ta không phải là một tác phẩm thanh xuân vườn trường quá đỗi xuất sắc. Rõ ràng, bộ phim vẫn còn tồn tại nhiều khuyết điểm về mặt nội dung kịch bản hay bối cảnh, diễn xuất. Người không thích sẽ cảm thấy phim nhàm chán, một màu và đơn điệu. Mà người đã lỡ "nghiền" rồi thì sẽ mê mẩn và bị cuốn vào mạch phim đến nỗi không thể dứt ra được. Chín người mười ý, không thể đảm bảo chắc chắn rằng khán giả nào cũng đánh giá cao về Gửi Thời Đẹp Đẽ Đơn Thuần Của Chúng Ta.\r\n\r\nTuy nhiên, có một điều mà người hâm mộ dám khẳng định chắc nịch. Đó chính là bộ phim đã cho người xem cơ hội được trở về thời học trò tinh nghịch, được đắm mình trong không khí rạo rực của tuổi thanh xuân tươi đẹp, được thấm nhuần những bài học về tình yêu, tình bạn, tình thầy trò và tình thân sâu sắc.\r\n\r\nTuổi thanh xuân là khi bạn đã biết yêu thương ai đó một cách chân thành\r\n\r\nTất cả các nhân vật trong phim, từ chính đến siêu phụ, ai cũng đều dành cả thanh xuân để níu giữ một hình bóng của người thương. Có thể đó là một cậu học trưởng cao gầy, điển trai, tài hoa hoặc một cô gái xinh xắn với nụ cười tươi rạng rỡ. Họ đã biến thời học trò của mình trở nên đáng nhớ hơn với kỷ niệm về một tình yêu "ô mai" trong sáng, chân thành và giản dị. Dẫu chỉ là tình yêu đơn phương nhưng ít nhất, họ cũng đã từng yêu thương ai đó hết mình.\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 1.\r\n\r\nGiang Thần (Hồ Nhất Thiên) đang là đối tượng khiến tuổi thanh xuân "bị đòi nợ" nhiều nhất trong thời gian gần đây\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 2.\r\n\r\nNhững cô gái vừa xinh đẹp lại vừa mạnh mẽ như Lâm Tĩnh Hiểu (Vương Tử Vi) hẳn cũng là "nàng thơ" của nhiều chàng trai trẻ\r\n\r\nThực chất, Giang Thần hay Lâm Tĩnh Hiểu chỉ là một hình tượng khái quát chung chung cho tình yêu tuổi học trò. Xem phim, khán giả nào rồi cũng sẽ tự bất giác nhớ về một Giang Thần hay một Lâm Tĩnh Hiểu của riêng mình, về những kỷ niệm hồn nhiên thuở ấy. Thì ra, mình đã từng ở trong trường hợp như của Tiểu Hy (Thẩm Nguyệt), Ngô Bách Tùng (Cao Chí Đình), Lục Dương (Tôn Ninh). Chỉ tiếc trong thực tế, chẳng phải ai cũng dám mạnh dạn bày tỏ tình cảm của bản thân. Để rồi, mối tình học trò ấy rơi vào quên lãng và bị xóa nhòa theo sự trưởng thành của mỗi người.\r\n\r\nĐến đây, chúng ta lại càng cảm thấy khâm phục nữ chính Trần Tiểu Hy – cô gái "nhỏ mà có võ" hay Lục Dương – chàng trai yếu đuối nhút nhát mà nam tính không ngờ. Cả hai không phải là người sở hữu ngoại hình bắt mắt nhất, giỏi giang hay giàu có nhất, nhưng họ là người biết yêu thương một cách chân thành nhất.\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 3.\r\n\r\nTiểu Hy "cưa" đổ Giang Thần bởi vì cô rất xứng đáng\r\n\r\nNhiều người cho rằng trường hợp "nấm lùn" Tiểu Hy cầm cưa được người đẹp trai hoàn hảo như Giang Thần chỉ có ở trong phim mà thôi: "Chứ ở ngoài đời mà suốt ngày bị một cái đuôi bám theo như thế, ai mà chịu nổi". Đúng vậy, ban đầu Giang Thần cũng tỏ ra khá khó chịu. Nhưng rồi anh chàng đã bị sự chân thành và ấm áp của Tiểu Hy chinh phục. Bạn muốn được yêu và hạnh phúc, bạn cứ điên theo cách của mình đi vì chẳng ai cấm bạn cả!\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 4.\r\n\r\nTình yêu của Tiểu Hy dành cho Giang Thần ấm áp và thuần khiết đến nỗi khiến người lạnh lùng như Giang Thần cũng phải động lòng\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 5.\r\n\r\nCô đã thử mọi cách để tiếp cận Giang Thần, nào là viết thư tình, tự xịt lốp xe để Giang Thần đèo về nhà, luôn tận dụng mọi cơ hội để học cùng, làm cùng Giang Thần\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 6.\r\n\r\nSuốt 3 năm cấp ba, rồi 5 năm đại học và cộng thêm cả 3 năm xa nhau, Giang Thần và Tiểu Hy chưa bao giờ ngừng nghĩ về đối phương\r\n\r\nTình yêu của Lục Dương cũng lớn lao và chân thành chẳng kém. Nếu chỉ được dùng một từ để miêu tả về tình yêu mà Lục Dương dành cho Tĩnh Hiểu, có lẽ không từ nào phù hợp hơn "tuyệt đối". Lục Dương không hoàn hảo, không quá đẹp trai mà lại mắc bệnh tim, nhưng cậu yêu cô bạn Tĩnh Hiểu bằng một tình yêu tuyệt đối. Mọi thứ dành cho Tĩnh Hiểu, đều phải là 100%. Tĩnh Hiểu muốn có một ngôi sao trên trời, Lục Dương liền cất công mua hẳn cho cô nàng. Tĩnh Hiểu buồn rầu, lo lắng, Lục Dương luôn cận kề bên cạnh để cô dốc bầu tâm sự.\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 7.\r\n\r\nTừ mối quan hệ đơn phương…\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 8.\r\n\r\n…Lục Dương đã biến nó thành "song phương" một cách thành công\r\n\r\nNói đến tình yêu, thật sự không thể không kể đến "nam phụ quốc dân" Ngô Bách Tùng. Khán giả có thể cảm thấy tiếc nuối thay cho nhân vật hoàng tử bơi lội Bách Tùng. Nhưng thiết nghĩ điều đó chẳng cần thiết. Bởi vì rõ ràng, Bách Tùng đã tìm được một tình yêu thật sự thời học trò. Anh đã may mắn gặp được Tiểu Hy – đối tượng để anh dành mọi sự quan tâm và chú ý. Bách Tùng có thể phảng phất sầu não, nhưng ít nhất thì anh cũng đã từng yêu hết mình, "khi yêu thương lôi hết ruột gan để Tiểu Hy được hạnh phúc".\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 9.\r\n\r\nLớp trưởng Lý Vi cũng đã từng yêu thương và theo đuổi Giang Thần hết lòng\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 10.\r\n\r\nNgô Bách Tùng chỉ thiếu một chút vận may thôi, nhưng trong tương lai cậu sẽ gặp được người phù hợp hơn Tiểu Hy\r\n\r\nTuổi thanh xuân là khi bạn nỗ lực hết mình để theo đuổi đam mê\r\n\r\nTrong phim, triết lý về đam mê tuổi trẻ không được đạo diễn và biên kịch đề cập đến nhiều vì thời lượng có hạn. Tuy nhiên, thông qua những chi tiết đan xen khéo léo, khán giả hoàn toàn có thể nhận ra thông điệp mà Gửi Thời Đẹp Đẽ Đơn Thuần Của Chúng Ta muốn gửi gắm: "Không ai có quyền chà đạp ước mơ và đam mê của bạn cả. Chỉ có chính bạn mới đủ quyền năng để điều khiển nó."\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 11.\r\n\r\nGiang Thần trở thành một bác sĩ xuất sắc dù tuổi đời còn rất trẻ\r\n\r\nMột bà mẹ cực nghiêm khắc cũng phải chịu thua trước sự kiên quyết của Giang Thần. Mẹ Giang Thần luôn muốn cậu đến trường đại học Thanh Hoa theo đuổi lĩnh vực Toán học. Nhưng không, ước mơ thật sự của Giang Thần là trở thành bác sĩ cứu người. Bất chấp sự phản đối của mẹ, Giang Thần vẫn một mực kiên trì theo đuổi đam mê. Sự thành công hiện tại của Giang Thần, không phải ngẫu nhiên mà có được.\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 12.\r\n\r\nCái giá để đánh đổi lấy ước mơ và đam mê và khá lớn, nhưng chúng ta mới là người có quyền quyết định, chứ không phải ba mẹ, thầy cô hay bất cứ ai khác\r\n\r\nHay như Tiểu Hy, cô chấp nhận thi lại một năm để theo đuổi ước mơ trở thành họa sĩ truyện tranh. Lục Dương bất chấp định kiến của xã hội để rồi trở thành một game thủ nổi tiếng quốc gia. Ngô Bách Tùng bỏ học để tập trung vào sự nghiệp bơi lội. Còn Tĩnh Hiểu vẫn kiên trì theo đuổi đam mê với ngành chiêm tinh học.\r\n\r\nVà tuổi thanh xuân là của để dành, cho chúng ta nương tựa mỗi khi nhớ về\r\n\r\nKhông một ai có thể tuyên bố rằng tôi đã có một tuổi thanh xuân trọn vẹn. Thời thanh xuân ấy, nhiều tiếc nuối, lầm lỡ hay đắng cay nhưng cũng thật nhiều tiếng cười, niềm vui và sự hạnh phúc. Tuổi trẻ, tuổi học trò sẽ mãi là những món quà vô giá để chúng ta nhớ về khi đã trưởng thành.\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 13.\r\n\r\nRồi mai đây, ai cũng phải trưởng thành, phải chạy theo mưu cầu và ước muốn riêng của bản thân\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 14.\r\n\r\nNhưng tuổi thanh xuân sẽ là sợi dây để chúng ta gắn kết với bạn bè, thầy cô\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 15.\r\n\r\nĐể mỗi lần tụ tập lại bật cười khi nhớ về chuyện cầm cưa ngược đời của Tiểu Hy\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 16.\r\n\r\nNhớ về dáng vẻ lạnh lùng cùng những hành động ghen tuông ngốc nghếch của Giang Thần\r\n“Gửi Thời Đẹp Đẽ Đơn Thuần”: Khi bạn dành cả thanh xuân để yêu và được yêu thương! - Ảnh 17.\r\n\r\nĐể hào hứng kể về kỷ niệm đáng nhớ về thầy chủ nhiệm khó tính\r\n\r\nKết\r\n\r\nĐối với Gửi Thời Đẹp Đẽ Đơn Thuần Của Chúng Ta, mọi sự so sánh đều là không cần thiết. Hãy để bản thân tự cảm nhận cái đẹp của bộ phim này. Cái đẹp mà đúng như tên gọi của tác phẩm – sự đơn thuần, chân thành và ấm áp.', '2017-12-17', 'Thư Thư'),
	(2, '"Ngày Không Còn Mẹ": Hiện tượng phim Hàn khiến khán giả Việt khóc nguyên rạp', 'Lần nữa với "Ngày Không Còn Mẹ", xứ Hàn lại thành công trong việc lấy đi nước mắt người xem, kể cả những kẻ luôn nghĩ mình là mạnh mẽ, cứng cỏi nhất. ', 'Trước nay, các nhà làm phim Hàn Quốc vẫn luôn nổi tiếng là những người biết "hành hạ" khán giả bằng những tác phẩm gây nhiều xúc động. Cái chất melo rất rõ rệt và riêng biệt ấy có thể hiện hữu ở ngay cả những bộ phim mà trước khi ra rạp, người xem cũng không hề nghĩ rằng nó lại là một câu chuyện được làm ra để lấy nước mắt.', '2017-12-17', 'Rawegglover'),
	(3, 'Fan phim Nhật ắt phải biết 7 cảnh mưa lãng mạn bậc nhất sau đây', 'Mỗi năm ở Nhật thường chỉ có ba tháng mưa, nhưng bấy nhiêu đã đủ để tạo thành cảm hứng cho những cảnh mưa xem một lần là nhớ suốt một đời trong lòng mọt phim Nhật. Mỗi năm ở Nhật thường chỉ có ba tháng mưa, nhưng bấy nhiêu đã đủ để tạo thành cảm hứng cho những cảnh mưa xem một lần là nhớ suốt một đời trong lòng mọt phim Nhật. ', 'Gần đây, cộng đồng phim Nhật đang truyền tay nhau một đoạn clip có tên gọi "Nhìn mưa nhớ người" của tài khoản tên A Bão (Able) đăng tải trên một trang cộng đồng ở Trung Quốc. Đoạn clip dài chưa đến bảy phút nhưng tổng hợp được nhiều phim Nhật nổi tiếng trong 15 năm qua, cùng với đó là những phân cảnh trời mưa trong phim với đủ cung bậc cảm xúc. Nào hãy cùng xem qua đoạn clip và đoán xem những phim Nhật nào sẽ xuất hiện trong đó nhé:', '2017-12-17', 'Chi Lanh'),
	(4, 'Khung cảnh đón Giáng sinh sớm ở nhiều nơi trên khắp thế giới: Lộng lẫy, nguy nga và ấm áp', 'Ở nhiều nơi trên thế giới, người dân dường như không thể đợi được tới sát ngày lễ Giáng sinh mới bắt đầu trang hoàng lộng lẫy; bằng chứng là ngay vào lúc này, khung cảnh ở nhiều nơi trên thế giới đã nhìn như buổi sáng ngày 25 tháng 12 rồi. ', 'Dù còn tới hơn 10 ngày nữa, ngày lễ Giáng Sinh năm 2017 mới chính thức bắt đầu, thế nhưng ngay giờ phút này đây, khắp mọi nơi trên thế giới đã nô nức không khí đón mừng ngày lễ này. Quả không ngoa khi nói rằng, ngay sau đêm Halloween 31/10, người ta đã rục rịch chuẩn bị cho mùa lễ hội lớn nhất trong năm - đêm Chúa giáng sinh 24/12.', '2017-12-12', 'Nam Thanh'),
	(5, 'Không phải Bill Gates, ông già Noel mới là người giàu nhất thế giới?', 'Mỗi năm chi tiêu tới 25,3 tỷ USD, ông già Noel chắc chắn phải thuộc top những người giàu có nhất hành tinh. ', 'Theo nghiên cứu của công ty Design by Soap thì ông già Noel đã chi tiêu tổng cộng hơn 25,3 tỷ USD mỗi năm. Phần lớn chi phí khổng lồ này tới từ công việc quan trọng nhất của bất kỳ ông già Noel nào: Sản xuất đồ chơi.', '2017-12-18', 'Phương Linh'),
	(6, 'Chợ nổi Việt Nam được National Geographic vinh danh trong top điểm đến mùa đông trên toàn thế giới', 'Danh sách trên còn có nhiều địa điểm nổi tiếng khác trên thế giới như Campuchia, Nhật Bản, Tanzania... ', 'Với nhiều người, một kỳ nghỉ trong mùa đông đồng nghĩa với việc bắt chuyến bay tới xứ sở nhiệt đới thần tiên nào đấy, với nắng gió và những hàng dừa xanh mát, không còn phải chịu cái nắng oi ả của mùa hè.', '2017-12-18', 'Skye'),
	(7, 'Những con số cát-xê "khủng" của ca sĩ Việt khi đi hát đám cưới từng được tiết lộ', 'Nhiều đám cưới sẵn sàng bỏ hàng trăm triệu để mời những ca sĩ Việt đình đám mà họ yêu quý về biểu diễn trong ngày trọng đại của mình. ', 'Trong thị trường Vpop, mỗi sân khấu hay sự kiện với sự xuất hiện của các ca sĩ đình đám đều có mức cát-xê khác nhau tuỳ thuộc vào tính chất của chương trình và thường rất ít khi được tiết lộ ra bên ngoài. Tuy nhiên, vẫn có những trường hợp hiếm hoi những mức giá này được rò rỉ khi những khán giả muốn mời thần tượng đến hát trong đám cưới của mình. Cùng điểm lại những mức cát-xê đắt giá mà họ phải bỏ ra khi mời những ca sĩ đình đám của showbiz Việt hát trong đám cưới.', '2017-12-17', 'Xoài - Hào Trần'),
	(8, '"Taylor cũ đã chết thật rồi": Taylor Swift mở bán vé tour với giá cắt cổ khiến fan kêu trời', 'Giá vé tăng vọt cho tour diễn quảng bá album mới của Taylor Swift đang khiến dân tình hoang mang. ', 'Cuối tuần qua, vé cho tour "Reputation" tại Anh Quốc của Taylor Swift chính thức mở bán và đã ngay lập tức khiến các fan kêu gào: người vì sung sướng vì mua được vé và người vì bức xúc do giá vé quá chát.', '2017-12-03', 'Nghĩa Nguyễn'),
	(9, 'Danh sách ca sĩ hát tại Victoria\'s Secret Fashion Show 2017 đã chính thức được xác nhận', 'Giám đốc sản xuất của Victoria\'s Secret Fashion Show 2017 đã xác nhận ai là ca sĩ khách mời năm nay. ', 'Victoria\'s Secret Fashion Show 2017 đã cận kề, nhưng giờ đây danh sách ca sĩ trình diễn mới chính thức được thông báo. Dàn ca sĩ năm nay gồm có Harry Styles, đúng như những tin đồn trước đó, ngoài ra còn có Miguel - nam ca sĩ người Mỹ từng đoạt giải Grammy, Leslie Odom Jr. - nam diễn viên kiêm ca sĩ từng đoạt giải Tony, và nữ ca sĩ nổi tiếng Trung Quốc - Trương Lương Dĩnh.', '2017-11-19', 'Tee'),
	(10, 'Bớt Facebook, TV đi, dành 30 phút với thủ thuật đơn giản này mỗi ngày sẽ giúp trí nhớ của bạn tăng thêm 20%', 'Nếu bạn muốn dành thời gian nghỉ giữa giờ ở nơi làm việc để đi dạo quanh tòa nhà công ty và mua một cốc cà phê, sẽ không ai nói là bạn trốn việc cả. Nhưng theo các nhà khoa học, sẽ tốt hơn nếu bạn dành chút thời gian đó đi theo đường mòn và đến một nơi có thật nhiều cây. ', 'Họ cho rằng thời gian ở giữa thiên nhiên sẽ làm thay đổi chức năng não bộ, và làm thay đổi những khu vực đang chiếm ưu thế hoạt động. ', '2017-12-15', 'Đinh Vân'),
	(11, '8 mẹo từ chuyên gia giấc ngủ giúp bạn thức dậy dễ dàng hơn vào mùa đông', '15 phút sau khi thức giấc là khoảng thời gian khó khăn nhất. ', 'Mùa đông, ra khỏi giường mỗi sáng có thể trở thành cơn ác mộng với nhiều người. Làm thế nào để bạn thoát được sự cám dỗ của nệm ấm và chăn êm?', '2017-12-18', 'ZKNIGHT'),
	(12, 'Tại sao nhiều người học giỏi ra đời lại không thành công, làm sếp lớn, sống hạnh phúc bằng những học sinh cá biệt?', 'Vì sao nó "học dốt" thế vẫn thành công hơn mình? Câu hỏi khiến bao nhiêu học sinh xuất sắc đau đầu tìm lời giải. Phải chăng vì quá mải mê học tập, nên họ nghĩ các quy tắc ở trường học cũng được trường đời sử dụng? ', 'Chúng ta thường bị "ảo tưởng" rằng cứ học giỏi rồi tấm vé thành công sẽ trao tay. Ta tin rằng cứ đạt thật nhiều điểm mười, được thầy cô yêu quý, tốt nghiệp với tấm bằng ưu, thì trường đời sẽ trao mình một vị trí xứng đáng.', '2017-12-16', 'Phan Ngọc'),
	(13, 'Áo phao phiên bản 2017 không chỉ ấm mà còn chất vô cùng', 'Khác với kiểu áo phao truyền thống, các mẫu áo phao năm nay đã được biến tấu theo kiểu trendy hơn, mới lạ hơn nhưng tất nhiên là vẫn cực kỳ ấm áp. ', 'Trong số các kiểu áo khoác mùa đông, áo phao có lẽ là item ít được yêu thương nhất, dù nó gần như có khả năng giữ ấm siêu tốt. Lí do vì sao? Vì công bằng mà nói, áo phao vốn chẳng đẹp, lại xù mì, cục mịch và kém thu hút vô cùng. Khoác một chiếc áo phao lên người, độ trendy chắc phải giảm đi vài phần. Thế nhưng, áo phao phiên bản 2017 lại khác, chúng không chỉ ấm và còn chất hơn rất nhiều.', '2017-12-16', 'Ah Gil'),
	(14, '7 loại kem dưỡng tay giá chỉ khoảng 200 ngàn đồng nhưng sẽ đẩy lùi tình trạng khô ráp, khiến tay mềm mượt dễ chịu', 'Nếu bạn đã đầu tư tới 10 bước dưỡng da cho mặt thì cũng đừng bỏ quên đôi tay của mình, đặc biệt là trong mùa đông khắc nghiệt này nhé. ', 'Nếu như da mặt mùa đông đã khô thì da tay thậm chí còn lâm vào tình cảnh bi đát hơn như nứt nẻ, khô mốc vì phải tiếp xúc nhiều với nước cũng như các loại hóa chất khác, đặc biệt là khi bạn thường xuyên làm việc nhà. Tuy vậy, đôi tay nhiều khi lại bị các nàng lãng quên, không chăm sóc chu đáo nên dễ trở nên thô kệch kém xinh. Nếu bạn đã đầu tư tới 10 bước dưỡng da cho mặt thì đôi tay chỉ cần duy nhất một loại kem dưỡng mà thôi. Sau đây là 7 sản phẩm kem dưỡng da tay nằm trong khoảng giá 200.000 VNĐ giúp bạn sở hữu đôi bàn tay mềm mại suốt mùa đông này.', '2017-12-18', 'TiKa'),
	(15, '5 BST collab ầm ĩ nhất, khiến các tín đồ thời trang "cháy túi" nhanh nhất trong năm 2017', 'Chúng ta hãy nhìn lại 5 bộ sưu tập kết hợp được đánh giá là thành công và gây tiếng vang lớn nhất của các thương hiệu thời trang trong năm 2017. ', 'Đã từng có thời việc hai thương hiệu khác biệt "bắt tay" nhau để sáng tạo ra một dòng sản phẩm là khái niệm đầy hoang đường và lạ lẫm. Nhưng vào thời điểm hiện tại, "kết hợp" - collaboration dường như đã trở thành yếu tố hiển nhiên và tất yếu của thời trang.', '2017-12-18', 'Chóp');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table local_news.article_category
CREATE TABLE IF NOT EXISTS `article_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` tinyint(3) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_category_article_id` (`article_id`),
  KEY `fk_article_category_category_id` (`category_id`),
  CONSTRAINT `fk_article_category_article_id` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_article_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci COMMENT='pivot';

-- Dumping data for table local_news.article_category: ~15 rows (approximately)
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` (`id`, `article_id`, `category_id`) VALUES
	(1, 1, 4),
	(2, 2, 4),
	(3, 3, 4),
	(4, 4, 5),
	(5, 5, 5),
	(6, 6, 5),
	(7, 7, 3),
	(8, 8, 3),
	(9, 9, 3),
	(10, 10, 2),
	(11, 11, 2),
	(12, 12, 2),
	(13, 13, 1),
	(14, 14, 1),
	(15, 15, 1);
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;

-- Dumping structure for table local_news.article_tag
CREATE TABLE IF NOT EXISTS `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` tinyint(3) unsigned NOT NULL,
  `tag_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_tag_article_id` (`article_id`),
  KEY `fk_article_tag_tag_id` (`tag_id`),
  CONSTRAINT `fk_article_tag_article_id` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_article_tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci COMMENT='pivot';

-- Dumping data for table local_news.article_tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;

-- Dumping structure for table local_news.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table local_news.categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`) VALUES
	(1, 'thời trang'),
	(2, 'khám phá'),
	(3, 'âm nhạc'),
	(4, 'phim ảnh'),
	(5, 'thế giới');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table local_news.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `content` text COLLATE utf8_vietnamese_ci NOT NULL,
  `created` date NOT NULL,
  `article_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_article_id` (`article_id`),
  CONSTRAINT `fk_comments_article_id` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci COMMENT='comments on articles';

-- Dumping data for table local_news.comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table local_news.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `article_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_image_id` (`article_id`),
  CONSTRAINT `fk_images_article_id` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci COMMENT='images of a speciffic article';

-- Dumping data for table local_news.images: ~75 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `path`, `article_id`) VALUES
	(1, 'images\\cinema\\fan-phim\\1-1513241673078.jpg', 3),
	(2, 'images\\cinema\\fan-phim\\4-1513241673084.jpg', 3),
	(3, 'images\\cinema\\fan-phim\\7-1513241673089.jpg', 3),
	(4, 'images\\cinema\\fan-phim\\11-1513241673091.jpg', 3),
	(5, 'images\\cinema\\fan-phim\\14-1513241673096.jpg', 3),
	(6, 'images\\cinema\\fan-phim\\17-1513241673104.png', 3),
	(7, 'images\\cinema\\fan-phim\\20-1513241673111.jpg', 3),
	(8, 'images\\cinema\\gui-thoi\\1-1513498223752.jpg', 1),
	(9, 'images\\cinema\\gui-thoi\\2-1513498223753.jpg', 1),
	(10, 'images\\cinema\\gui-thoi\\3-1513498398150.jpg', 1),
	(11, 'images\\cinema\\gui-thoi\\4-1513498458291.jpg', 1),
	(12, 'images\\cinema\\gui-thoi\\5-1513498458292.jpg', 1),
	(13, 'images\\cinema\\gui-thoi\\6-1513498458294.jpg', 1),
	(14, 'images\\cinema\\gui-thoi\\7-1513498560883.jpg', 1),
	(15, 'images\\cinema\\gui-thoi\\8-1513498560884.jpg', 1),
	(16, 'images\\cinema\\gui-thoi\\9-1513498601409.jpg', 1),
	(17, 'images\\cinema\\gui-tho\\10-1513498601410.jpgi', 1),
	(18, 'images\\cinema\\gui-thoi\\11-1513499289649.jpg', 1),
	(19, 'images\\cinema\\gui-thoi\\12-1513499314639.jpg', 1),
	(20, 'images\\cinema\\gui-thoi\\13-1513499672610.jpg', 1),
	(21, 'images\\cinema\\gui-thoi\\14-1513499672611.jpg', 1),
	(22, 'images\\cinema\\gui-thoi\\15-1513499672612.jpg', 1),
	(23, 'images\\cinema\\gui-thoi\\16-1513499672615.jpg', 1),
	(24, 'images\\cinema\\gui-thoi\\17-1513499672616.jpg', 1),
	(26, 'images\\cinema\\ngay-khong\\b1-1513485332121.jpeg', 2),
	(27, 'images\\cinema\\ngay-khong\\b2-1513485363166.jpeg', 2),
	(28, 'images\\cinema\\ngay-khong\\b3-1513485509812.jpeg', 2),
	(29, 'images\\cinema\\ngay-khong\\b4-1513485521513.jpeg', 2),
	(30, 'images\\cinema\\ngay-khong\\b5-1513485572432.jpeg', 2),
	(31, 'images\\cinema\\ngay-khongx3-1513248379714.jpg', 2),
	(32, 'images\\discovery\\8-meo\\photo-1-1513560256697.jpg', 11),
	(33, 'images\\discovery\\8-meo\\photo-1-1513560258181.jpg', 11),
	(34, 'images\\discovery\\8-meo\\photo-2-1513560258183.jpg', 11),
	(35, 'images\\discovery\\8-meo\\photo-3-1513560258184.jpg', 11),
	(36, 'images\\discovery\\8-meo\\photo-4-1513560258185.jpg', 11),
	(37, 'images\\discovery\\8-meo\\photo-5-1513560258186.jpg', 11),
	(38, 'images\\discovery\\8-meo\\photo-6-1513560258187.jpg', 11),
	(39, 'images\\discovery\\8-meo\\photo-7-1513560258188.jpg', 11),
	(40, 'images\\discovery\\8-meo\\photo-8-1513560258189.jpg', 11),
	(41, 'images\\discovery\\bot-fb\\photo-1-1513314522081.jpg', 10),
	(42, 'images\\discovery\\tai-sao\\photo-1-1513388873457.jpg', 12),
	(43, 'images\\discovery\\tai-sao\\photo-1-1513388874950.jpg', 12),
	(44, 'images\\discovery\\tai-sao\\photo-2-1513388874952.jpg', 12),
	(45, 'images\\fashion\\5-bo\\1a-1513517742239.jpg', 15),
	(46, 'images\\fashion\\5-bo\\1d-1513517742243.jpg', 15),
	(47, 'images\\fashion\\5-bo\\3b-1513518597976.jpg', 15),
	(48, 'images\\fashion\\5-bo\\3e-1513518597985.jpg', 15),
	(49, 'images\\fashion\\5-bo\\5a-1513518636890.jpg', 15),
	(50, 'images\\fashion\\5-bo\\5d-1513518636901.jpg', 15),
	(51, 'images\\fashion\\7-loai\\4-1513573000182.jpg', 14),
	(52, 'images\\fashion\\7-loai\\anh2-1513572888830.jpg', 14),
	(53, 'images\\fashion\\7-loai\\anh3-1513572897814.jpg', 14),
	(54, 'images\\fashion\\7-loai\\anh5-1513573012664.jpg', 14),
	(55, 'images\\fashion\\7-loai\\anh8-1513573039887.jpg', 14),
	(56, 'images\\fashion\\7-loai\\anh9-1513573047471.jpg', 14),
	(57, 'images\\fashion\\7-loai\\anh10-1513573080765.jpg', 14),
	(58, 'images\\fashion\\7-loai\\anh11-1513573067976.jpg', 14),
	(59, 'images\\fashion\\ao-phao\\ph1-1513400467365.jpg', 13),
	(60, 'images\\fashion\\ao-phao\\ph5-1513400467374.jpg', 13),
	(61, 'images\\fashion\\ao-phao\\ph6-1513400467376.jpg', 13),
	(62, 'images\\music\\danh-sach\\hbz-performances-vs-index-new-1511021297-1511070526692.jpg', 9),
	(63, 'images\\music\\nhung-con-so\\1-1509979907037.jpg', 7),
	(64, 'images\\music\\nhung-con-so\\1-1509979982669.jpg', 7),
	(65, 'images\\music\\nhung-con-so\\1-1509980686544.jpg', 7),
	(66, 'images\\music\\taylor-cu\\image1-1512283833197.jpeg', 8),
	(67, 'images\\music\\taylor-cu\\image4-1512283833201.jpeg', 8),
	(68, 'images\\music\\taylor-cu\\image6-1512283833205.jpeg', 8),
	(69, 'images\\world\\cho-noi\\photo-1-1513567294642.jpg', 6),
	(70, 'images\\world\\cho-noi\\photo-1-1513573025523.jpg', 6),
	(71, 'images\\world\\cho-noi\\photo-6-1513567296638.jpg', 6),
	(72, 'images\\world\\khong-phai\\photo-1-1513571276220.jpg', 5),
	(73, 'images\\world\\khung-canh\\photo-1-1513065506290.jpg', 4),
	(74, 'images\\world\\khung-canh\\photo-1-1513066209336.jpg', 4),
	(75, 'images\\world\\khung-canh\\photo-1-1513068848848.jpg', 4),
	(76, 'images\\world\\khung-canh\\photo-1-1513068996822.jpg', 4);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table local_news.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci COMMENT='keywords';

-- Dumping data for table local_news.tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
