# Dump da tabela users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `document` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `document`, `created_at`, `updated_at`)
VALUES
	(1,'Robson','Santos','robson1@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(2,'Alexandre','Santos','alexandre27@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(3,'Willian','Santos','willian28@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(4,'Eleno','Santos','eleno29@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(5,'Lucas','Santos','lucas30@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(6,'Mateus','Santos','mateus31@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(7,'João','Santos','joão32@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(8,'Felipe','Santos','felipe33@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(9,'Anderson','Santos','anderson34@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(10,'Elton','Santos','elton35@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(11,'Leonardo','Santos','leonardo36@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(12,'Regilton','Santos','regilton37@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(13,'Sidney','Santos','sidney38@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(14,'Lourival','Santos','lourival39@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(15,'Henrique','Santos','henrique40@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(16,'Daniel','Santos','daniel41@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(17,'Pedro','Santos','pedro42@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(18,'Andre Roberto','Santos','andre roberto43@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(19,'Ozeias','Santos','ozeias44@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(20,'Arnobio','Santos','arnobio45@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(21,'Roniel','Santos','roniel46@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(22,'Caíque','Santos','caíque47@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(23,'Lucas','Santos','lucas48@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(24,'Francisco','Santos','francisco49@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(25,'Cristian','Santos','cristian50@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(26,'Eduardo','Santos','eduardo51@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(27,'Rodrigo','Santos','rodrigo52@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(28,'Raphael','Santos','raphael53@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(29,'Jose','Santos','jose54@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(30,'Rodrigo','Santos','rodrigo55@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(31,'Diego','Santos','diego56@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(32,'Alexandre','Santos','alexandre57@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(33,'Edimar','Santos','edimar58@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(34,'Jackell','Santos','jackell59@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(35,'Luis','Santos','luis60@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(36,'Lucas','Santos','lucas61@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(37,'Wander','Santos','wander62@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(38,'Tairo','Santos','tairo63@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(39,'Rubens','Santos','rubens64@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(40,'Hugo','Santos','hugo65@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(41,'Gustavo','Santos','gustavo66@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(42,'Paulo','Santos','paulo67@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(43,'Rodrigo','Santos','rodrigo68@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(44,'Denio','Santos','denio69@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(45,'Idalmir','Santos','idalmir70@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(46,'Ataide','Santos','ataide71@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(47,'Luiz','Santos','luiz72@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(48,'Luciano','Santos','luciano73@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(49,'Adir','Santos','adir74@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33'),
	(50,'Tainan','Santos','tainan75@email.com.br',NULL,'2018-09-03 16:39:07','2018-09-03 16:39:33');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
