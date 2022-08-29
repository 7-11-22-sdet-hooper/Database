USE test_schema;

DROP table if exists login;

CREATE TABLE `login` (
	`id` int unsigned NOT NULL AUTO_INCREMENT,
    `username` varchar(50) DEFAULT NULL,
    `password` varchar(255) DEFAULT NULL,
    `password_salt` varchar(50) DEFAULT NULL,
    `password_hash_alg` varchar(50) DEFAULT "MD5",
    PRIMARY KEY (`id`),
    UNIQUE KEY (`username`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    

insert into `test_schema`.`login` (`username`, `password`, `password_salt`,`password_hash_alg`) values ("testuser","insecureTestPassword","salt","MD5");