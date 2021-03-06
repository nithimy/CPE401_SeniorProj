DROP TABLE IF EXISTS `message`;

CREATE TABLE IF NOT EXISTS `message` (
`id` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`type` int(2) NOT NULL,
`content` text NOT NULL,
`pic_url` text,
`create_at` DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
`create_by` int(10) NOT NULL,
`update_at` DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
`update_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `message` 
    ADD FOREIGN KEY (`create_by`) REFERENCES `account`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    ADD FOREIGN KEY (`update_by`) REFERENCES `account`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;