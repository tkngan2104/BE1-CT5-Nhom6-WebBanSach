-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 07, 2024 lúc 07:35 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom6`
--
CREATE DATABASE IF NOT EXISTS `nhom6` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `nhom6`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`author_id`, `name`) VALUES
(1, 'Daniel Defoe'),
(2, 'Edith Nesbit'),
(3, 'Jules Verne'),
(4, 'Thích Nhất Hạnh'),
(5, 'Sasaki Fumio'),
(6, 'Xứ Sở Ngôn Từ'),
(7, 'Miêu Công Tử'),
(8, 'Azby Brown');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `translator_id` int DEFAULT NULL,
  `publisher_id` int NOT NULL,
  `year` int NOT NULL,
  `number` int NOT NULL,
  `type_id` int NOT NULL,
  `price` int NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` tinyint NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`products_id`, `name`, `author_id`, `translator_id`, `publisher_id`, `year`, `number`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'Robinson Crusoe Tập 1', 1, 1, 1, 2023, 448, 1, 151200, 'RobinsonCrusoe1.jpg', 'Robinson Crusoe sinh ra trong một gia đình khá giả. Cha mẹ đã vạch sẵn cho anh một cuộc đời trung lưu an nhàn, hết lời khuyên anh hãy ở yên một chỗ và sống thật bình lặng, êm ấm. Nhưng không, trái tim anh thuộc về biển cả, dù sống hay chết. Đó là tiếng gọi của định mệnh mà anh không thể cưỡng lại. Và thế là Robinson Crusoe ra khơi. Dĩ nhiên, biển cả không nhân nhượng với bất kỳ ai. Bão tố, đắm tàu, kẻ thù, bệnh tật... lần lượt “ghé thăm” anh. Cuối cùng, anh lạc vào hoang đảo. Khi ấy, bút pháp tỉ mỉ, uyên bác và đầy lý tính của Daniel Defoe đã làm say đắm người đọc thông qua việc tái hiện một cuộc chiến sinh tồn gian khổ với thế giới bên trong và bên ngoài: Robinson vừa phải đấu tranh với nỗi tuyệt vọng, cô đơn và day dứt không ngừng trào dâng, vừa phải khuất phục thiên nhiên hoang dã nơi xích đạo khắc nghiệt. Tất cả đều như muốn nuốt chửng và hủy diệt anh, cả về thể chất lẫn tinh thần. Nhưng anh không đầu hàng thử thách, lại càng không đầu hàng chính mình. Theo cách đó, Robinson Crusoe đã trở thành cái tên quen thuộc với mọi thế hệ, trở thành biểu tượng cho khát vọng sống, ý chí vươn lên nghịch cảnh và khả năng thích nghi tuyệt vời của con người.', 1, '2024-10-30 19:13:24'),
(2, 'Robinson Crusoe Tập 2', 1, 1, 1, 2023, 412, 1, 151200, 'RobinsonCrusoe2.jpg', 'Sau khi trở về từ hoang đảo, Robinson Crusoe chấp nhận một cuộc sống yên bình, thảnh thơi trên đất liền. Nhưng cuộc sống ấy ngắn chẳng tày gang. Biển cả là định mệnh của anh, bởi vậy, anh lại ra khơi để tìm kiếm những cuộc phiêu lưu mới. Ở tuổi lục tuần, anh chu du gần như khắp địa cầu, bằng cả đường biển lẫn đường bộ. Gặp gỡ, chạm trán, truy đuổi, chạy trốn..., một loạt sự việc nối tiếp nhau, các tình huống ập tới, con người xoay xở, ứng phó - cứ như vậy, từ trang này sang trang khác, Daniel Defoe đưa người đọc vào một hành trình đầy ắp cảm xúc, mở ra một thế giới rộng lớn, chứa đựng bao điều mới mẻ. Khi tập 2 của tiểu thuyết Robinson Crusoe khép lại, ta chợt hiểu rằng một đời tràn đầy năng lượng và nhiệt huyết như vậy thật đáng mơ ước, và rằng kiến thức đi kèm với lòng can đảm sẽ đưa ta đến bến bờ của hạnh phúc đích thực!', 1, '2024-10-30 19:16:01'),
(3, 'Lũ trẻ đường tàu', 2, 2, 2, 2023, 288, 1, 87200, 'Lutreduongtau.jpg', 'Lũ trẻ đường tàu. Câu chuyện xoay quanh ba đứa trẻ nghèo sống bên đường tàu: Bobbie, Peter và Phyllis. Ba đứa trẻ ấy vốn đang có một cuộc sống hạnh phúc cùng cha mẹ ở London thì bỗng một ngày, người cha \"biến mất\" một cách khó hiểu. Mẹ không nói rõ nguyên do mà lẳng lặng đưa ba chị em tới sống ở một vùng quê hẻo lánh. Nhưng với tâm hồn lạc quan và ưa khám phá, lũ trẻ đã biến quãng thời gian sống ở nơi vốn dĩ trầm lặng ấy trở thành những chuyến phiêu lưu tuyệt vời bên đường tàu.</p>\r\n<p>Xuyên suốt tác phẩm là những tình huống hết sức bình dị nhưng lại vô cùng thấm thía về lòng nhân ái. Người lớn có thể vì cuộc sống mưu sinh và tác động của ngoại cảnh mà vô tình mất đi khả năng quan tâm tới những số phận quanh mình, nhưng ở ba đứa trẻ, lòng nhân ái như một thứ bản năng nguyên sơ, thuần phác nhất.', 1, '2024-10-30 19:19:52'),
(4, 'Hòn đảo bí mật 1', 3, 3, 2, 2023, 436, 1, 119200, 'Hondaobimat1.jpg', 'Lấy bối cảnh những năm cuối của cuộc Nội chiến Mỹ, Hòn đảo bí mật mở đầu bằng cuộc trốn chạy của năm người Mỹ trên chiếc khinh khí cầu trong cơn bão dữ, họ bị cuốn đi xa và rơi xuống một hòn đảo vô danh ở phía nam Thái Bình Dương. Tại đây, họ không chỉ nỗ lực hết sức để có thể sinh tồn mà hơn thế, với trí thông minh, hiểu biết về khoa học và tình yêu sâu sắc dành cho xứ sở được họ coi như quê hương thứ hai, những người định cư cùng nhau xây dựng hòn đảo thành miền đất tươi đẹp, văn minh. Cuốn tiểu thuyết là lời ngợi ca ý chí và lòng dũng cảm của con người trong công cuộc tồn tại và chinh phục thiên nhiên. Cùng với Những đứa con của Thuyền trưởng Grant và Hai vạn dặm dưới biển, Hòn đảo bí mật là cuốn sách khép lại bộ ba tác phẩm phiêu lưu có thể được xem như đỉnh cao trong sự nghiệp sáng tác của Jules Verne.Verne.', 0, '2024-10-31 01:21:16'),
(5, 'Hòn đảo bí mật 2', 3, 3, 2, 2023, 460, 1, 119200, 'Hondaobimat2.jpg', 'Lấy bối cảnh những năm cuối của cuộc Nội chiến Mỹ, Hòn đảo bí mật mở đầu bằng cuộc trốn chạy của năm người Mỹ trên chiếc khinh khí cầu trong cơn bão dữ, họ bị cuốn đi xa và rơi xuống một hòn đảo vô danh ở phía nam Thái Bình Dương. Tại đây, họ không chỉ nỗ lực hết sức để có thể sinh tồn mà hơn thế, với trí thông minh, hiểu biết về khoa học và tình yêu sâu sắc dành cho xứ sở được họ coi như quê hương thứ hai, những người định cư cùng nhau xây dựng hòn đảo thành miền đất tươi đẹp, văn minh. Cuốn tiểu thuyết là lời ngợi ca ý chí và lòng dũng cảm của con người trong công cuộc tồn tại và chinh phục thiên nhiên. Cùng với Những đứa con của Thuyền trưởng Grant và Hai vạn dặm dưới biển, Hòn đảo bí mật là cuốn sách khép lại bộ ba tác phẩm phiêu lưu có thể được xem như đỉnh cao trong sự nghiệp sáng tác của Jules Verne.', 0, '2024-10-31 02:02:12'),
(6, 'Nói Với Tuổi Hai Mươi', 4, NULL, 3, 2019, 183, 2, 68600, 'NoiVoiTuoiHaiMuoi.jpg', 'Thắm thiết và sâu đậm, Nói Với Tuổi Hai Mươi tựa như những lời tâm tình nhẹ nhàng gieo vào lòng độc giả. Chọn lối viết tự sự, Thiền sư Thích Nhất Hạnh mang đến cho bạn đọc một cảm giác ấm áp, chân thành nhưng cũng không kém phần mãnh liệt, sâu sắc.\r\n\r\nNhững lời chia sẻ của Thiền Sư thấm sâu vào lòng những người trẻ tuổi, khơi gợi những ước mơ hoài bão, khơi dậy sức sống dạt dào trong trái tim của họ, làm bừng cháy những yêu thương. Nói Với Tuổi Hai Mươi tìm thấy điểm đồng điệu trong lời thơ của Tố Hữu: \"20 tuổi hồn quay trong gió bão/ gân đang xanh và thớ thịt căng da\", và sức trẻ đó phải được tỏa sáng trong tình yêu và trách nhiệm với đất nước, trong lý tưởng và khát vọng, trong tình yêu và cuộc sống của mình.\r\n\r\nĐọc Nói Với Tuổi Hai Mươi để thấy rằng cuộc đời vô cùng cao quý và tươi đẹp, và các bạn trẻ, hãy sống sao cho khỏi sống hoài, sống phí, để sức trẻ căng tràn của các bạn sẽ hữu ích cho cuộc đời, cho thế gian và nhân loại.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 0, '2024-10-31 01:53:39'),
(7, 'Lối Sống Tối Giản Của Người Nhật (Tái Bản)', 5, 4, 4, 2021, 298, 2, 101150, 'LoiSongDonGianCuaNgNhat.png', 'Lối sống tối giản là cách sống cắt giảm vật dụng xuống còn mức tối thiểu. Và cùng với cuộc sống ít đồ đạc, ta có thể để tâm nhiều hơn tới hạnh phúc, đó chính là chủ đề của cuốn sách này.\r\n\r\nChẳng có ai từ khi sinh ra đã có tài sản, đồ đạc gì trong tay. Vậy nên bất cứ ai khi mới chào đời đều là những người sống tối giản. Cứ mỗi lần bạn sở hữu trong tay những đồ dùng hơn mức cần thiết là một lần bạn lấy mất tự do của chính mình. Giá trị bản thân chúng ta không đo bằng những đồ dùng mà chúng ta sở hữu. Những đồ dùng này chỉ cho chúng ta một chút cảm giác hạnh phúc nhất thời mà thôi. Mang theo những đồ dùng hơn mức cần thiết sẽ lấy hết thời gian, năng lượng của bạn. Khi nhận ra được điều đó, tức là bạn đã bắt đầu trở thành một người sống tối giản.\r\n\r\nNhững người sống tối giản luôn cảm thấy vui vẻ, mới lạ mỗi ngày. Cái cảm giác này, tôi nghĩ bất cứ ai cũng có thể cảm nhận được, dù bạn có phải là một người sống tối giản hay không, bởi bất cứ ai.\r\n\r\nLối sống tối giản của người Nhật gồm có năm chương, trong đó, chương một, tác giả sẽ giới thiệu cho bạn lối sống tối giản là gì, đưa ra định nghĩa của anh về nó. Sau đó anh sẽ đưa ra lý do vì sao mình lại theo lối sống này sau nhiều năm sống trong căn phòng của bản thân.\r\n\r\nChương hai tác giả sẽ đề cập đến tại sao sau ngần ấy năm, đồ đạc trong nhà lại chất nhiều đến thế. Những đồ đạc được tích tụ lại do thói quen hay nhu cầu của con người này mang ý nghĩa gì?\r\n\r\nChương ba là những bí quyết để cắt giảm đồ đạc trong nhà. Tác giả sẽ đưa ra cho bạn những quy tắc cụ thể, những phương pháp để có thể giảm bớt đồ đạc trong nhà. Thêm vào đó cũng sẽ giới thiệu cho bạn danh sách bổ sung 15 điều cho những người muốn tối giản hơn nữa cùng với toa thuốc cho “căn bệnh muốn vứt bỏ”.\r\n\r\nChương bốn, những thay đổi của chính tác giả sau khi dọn hết đồ đạc trong nhà. Kèm theo đó, anh còn phân tích và khảo sát thêm về các kết quả nghiên cứu tâm lý học.\r\n\r\nCuối cùng chương năm, tiếp nối ý từ chương bốn, tác giả sẽ giải thích tại sao những thay đổi của bản thân lại dẫn đến “hạnh phúc”.\r\n\r\nĐể hiểu sâu hơn về lối sống tối giản, bạn nên đọc hết từ chương một đến chương bốn. Tuy nhiên, bạn cũng có thể đọc riêng từng chương. Thậm chí chỉ cần đọc chương ba cũng có thể giúp bạn cắt giảm được đồ đạc của mình.\r\n\r\nTrong cuốn sách này, “lối sống tối giản” được hiểu là: 1) giới hạn tối thiểu cần thiết cho bản thân và 2) vứt bỏ tất cả mọi thứ trừ những thứ quan trọng.\r\n\r\nVà những người sống theo lối sống đó gọi là người sống tối giản.', 0, '2024-10-31 02:01:26'),
(8, 'Bên Bạn Dù Bạn Ở Nơi Đâu', 6, NULL, 5, 2024, 160, 2, 78300, 'BenBanDuBanONoiDau.png', 'Bên bạn dù bạn ở nơi đâu (Trích dẫn song ngữ Việt - Trung có phiên âm) - Cuốn sách đưa bạn rong ruổi trên cánh đồng ngát xanh với những ngôn từ ấm áp và chữa lành, đồng thời đẩy đưa bạn giăng buồm ra khơi trên hành trình học hỏi ngôn ngữ đẹp đẽ của đất nước Trung Hoa\r\n\r\nVới 124 câu trích dẫn theo 7 chủ đề gần gũi xoay quanh cuộc sống hằng ngày gồm gia đình, bạn bè, tình yêu, học tập - công việc, thế giới nội tâm, thế giới bên ngoài và ước mơ, cuốn sách được trình bày theo bố cục 3 phần TIẾNG VIỆT - TIẾNG TRUNG - PHIÊN M, giúp độc giả không những có thể thư giãn và lấp đầy lòng mình bằng những câu từ nhẹ nhàng, chân thành, mà còn dễ dàng luyện tập thanh điệu và học từ vựng mỗi ngày bởi cách trình bày đầy đủ phiên âm tiếng Trung và tô đậm vào các từ mới.\r\nNgoài ra, cuốn sách còn sử dụng những tông màu đặc trưng của mùa hạ mang lại cảm giác dễ chịu và bình yên cho tâm hồn. Hãy thử lật giở một trang sách bất kì, tiếp nhận một thông điệp dễ thương và đừng ngại ngần ôm vào mình những thanh âm ngoại ngữ trong trẻo bạn nhé!\r\n\r\nHy vọng cuốn sách nhỏ này sẽ giúp bạn vững bước trên con đường chinh phục tri thức, nuôi dưỡng và chắp cánh cho những ước mơ, khát khao được bay cao, bay xa. Và đừng quên, luôn có chúng mình ở đây đồng hành cùng bạn.', 0, '2024-10-31 02:21:48'),
(9, 'Trở Thành Phiên Bản Điềm Tĩnh Hơn', 7, NULL, 2, 2024, 184, 2, 95500, 'TroThanhPhienBanDiemTinhHon.png', '\"Trở thành phiên bản điềm tĩnh hơn\" không chỉ là một cuốn sách, mà còn là một hành trình tự khám phá và chữa lành sâu bên trong nội tâm của mỗi người. Thông qua từng trang sách, độc giả sẽ tìm thấy những bài học quý giá về sự bình thản nơi cõi lòng, cách sống chậm lại để cảm nhận cuộc sống một cách trọn vẹn hơn. Những lời nhắn nhủ vô cùng tinh tế và đong đầy ý nghĩa cũng sẽ giúp bạn phần nào vượt qua những lo âu, tìm lại sự cân bằng và sống một cuộc đời an lành hơn.\r\n\r\nVới tài năng và tâm huyết của mình, Miêu Công Tử tiếp tục chinh phục trái tim độc giả bằng cách dẫn dắt từng người vào một hành trình thiền tịnh - nơi mà mọi muộn phiền có thể tan biến và sự bình yên được khơi dậy từ sâu thẳm bên trong. \"Trở thành phiên bản điềm tĩnh hơn\" chắc chắn sẽ là một người bạn đồng hành đáng tin cậy cho những ai đang tìm kiếm sự an yên trong tâm hồn và sự sáng suốt trong cuộc sống này.', 0, '2024-10-31 02:28:56'),
(10, 'Sống Đủ', 8, 5, 2, 2020, 310, 2, 92000, 'SongDu.png', 'Bằng cách chia sẻ những quan sát cá nhân và các câu chuyện miêu tả một lối sống đã phai mờ, SỐNG ĐỦ mang đến góc nhìn sâu sắc về cuộc sống của một xã hội vững bền, không lãng phí, về các vấn đề trải rộng ở nhiều lĩnh vực mà người Nhật phải đối mặt và cách họ tìm ra phương án giải quyết chúng.\r\nNăng lượng, nước, nguyên vật liệu, thực phẩm, dân số, môi trường, rác thải, Đây đều là nan đề không chỉ ở xã hội hiện đại mà từ hơn hai trăm năm trước, người dân thời kỳ Edo đã phải đương đâì. Chỉ bằng cách lấy \"đủ\" từ thế giới, họ đã giải được bài toán xã hội, môi trường gian nan, để mở ra cánh cửa đến với cuộc sống giàu ý nghĩa, vẹn tròn và mãn nguyện.\r\nSỐNG ĐỦ chính là nếp suy nghĩ thấm đượm khắp xã hội Nhật Bản đương thời, và ngày nay, đó có thể là ngọn hải đăng soi sáng cho chúng ta trên con đường nổ lực đạt đến sự bền vững.', 1, '2024-10-31 02:38:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`) VALUES
(1, 'NXB Văn Học'),
(2, 'NXB Thanh Niên'),
(3, 'NXB Hồng Đức'),
(4, 'NXB Lao Động'),
(5, 'NXB Dân Trí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translator`
--

DROP TABLE IF EXISTS `translator`;
CREATE TABLE IF NOT EXISTS `translator` (
  `translator_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`translator_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translator`
--

INSERT INTO `translator` (`translator_id`, `name`) VALUES
(1, 'Khánh An'),
(2, 'Dạ Thảo'),
(3, 'Phùng Nga'),
(4, 'Như Nữ'),
(5, 'Lại Hồng Vy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`type_id`, `name`) VALUES
(1, 'Tiểu thuyết'),
(2, 'Tâm lý - Kỹ năng sống'),
(3, 'Văn hóa - Địa lý - Du lịch');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
