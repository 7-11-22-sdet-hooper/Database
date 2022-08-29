USE mysql;
DROP SCHEMA IF EXISTS test_schema;
CREATE SCHEMA test_schema;
USE test_schema;

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `vocab` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `word` varchar(45),
  `definition` varchar(255),
  PRIMARY KEY (`id`),
  KEY `FK_Vocab_Category_id` (`category_id`),
  CONSTRAINT `FK_Vocab_Category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `multiple_choice` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `a` varchar(200),
  `b` varchar(200),
  `c` varchar(200),
  `d` varchar(200),
  `correct_answer` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_MultipleChoice_Category_id` (`category_id`),
  CONSTRAINT `FK_MultipleChoice_Category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `login` (
	`id` int unsigned NOT NULL AUTO_INCREMENT,
    `username` varchar(50) DEFAULT NULL,
    `password` varchar(255) DEFAULT NULL,
    `password_salt` varchar(50) DEFAULT NULL,
    `password_hash_alg` varchar(50) DEFAULT "MD5",
    PRIMARY KEY (`id`),
    UNIQUE KEY (`username`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;