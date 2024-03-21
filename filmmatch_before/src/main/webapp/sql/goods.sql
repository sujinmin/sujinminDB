CREATE TABLE `goods` (
  `goods_idx` int NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_contents` text,
  `goods_price` int DEFAULT NULL,
  `goods_quantity` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `goods_brand` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `goods_rating` decimal(3,2) DEFAULT NULL,
  `goods_reviews` int DEFAULT NULL,
  `goods_availability` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`goods_idx`)
);

