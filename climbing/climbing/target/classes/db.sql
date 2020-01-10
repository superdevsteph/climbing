DROP DATABASE IF EXISTS climbing;
CREATE DATABASE climbing;
USE climbing;
show DATABASES;

--
-- Table structure for table role
--

DROP TABLE IF EXISTS role;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Dumping data for table role
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_USER');

UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `user` VALUES 
(7,'batman','$2a$11$PJ1jJ.Mwo6jTTmGXqs8/ieISW8yqKnt2oCfCRkCvgY9HZWWmjj4IC'),
(8,'ironfist','$2a$11$w5hJhd6KnjbcuE1ew9PaD.Tub/L5iY2yMpRknzcOgEKrmZCZoZaZW'),
(9,'spiderman','$2a$11$J8PszsZCfaBuTfyQG1PjLeeviBeIlSNZ4PpBbAHfUMS.Sp7zdWQy.'),
(10,'stephmehraik','$2a$11$9Q8h18rxp8d4hg3uFiQshuRRyZzLblXLSNYNn6H7xpzAe92Qs00Jy');


--
-- Table structure for table user_role
--

DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_roleid_idx` (`role_id`),
  CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO user_role (`user_id`, `role_id`) VALUES ('7', '1');
INSERT INTO user_role (`user_id`, `role_id`) VALUES ('8', '1');
INSERT INTO user_role (`user_id`, `role_id`) VALUES ('9', '1');
INSERT INTO user_role (`user_id`, `role_id`) VALUES ('10', '1');

CREATE TABLE tb_topo (
  topo_id INT(4) PRIMARY KEY AUTO_INCREMENT,
  toponame VARCHAR(15),
	region VARCHAR(30),
	nbSites INTEGER,
	nbSecteurs INTEGER,
	nbVoies INTEGER,
	disponible BOOLEAN,
	description TEXT,
	topo_user_fk_id INTEGER,
	topo_image VARCHAR(100),
	topo_dateCreation TIMESTAMP,
	topo_lastUpdate TIMESTAMP,
	datePublication DATETIME
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tb_topo (topo_id, toponame, region, nbSites, nbSecteurs, nbVoies, disponible, description, topo_user_fk_id) VALUES ('1', 'Topo1', 'bla', '4', '4564', '4564', '0', 'premier topo', '1');
INSERT INTO tb_topo (`topo_id`, `toponame`, `region`, `nbSites`, `nbSecteurs`, `nbVoies`, `disponible`, `description`, `topo_user_fk_id`) VALUES ('2', 'Topo2', 'bla', '5', '6', '7', '0', 'deuxieme topo', '6');
