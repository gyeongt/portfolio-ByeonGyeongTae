
use portpolio;

CREATE TABLE `User` (
    `seq` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    `id` VARCHAR(255),
    `pwd` VARCHAR(255),
    `phone_num` VARCHAR(20),
    `kakao_id` BOOLEAN DEFAULT FALSE,
    `naver_id` BOOLEAN DEFAULT FALSE,
    `google_id` BOOLEAN DEFAULT FALSE,
    `regi_date` VARCHAR(255)
);

CREATE TABLE `User_skill` (
    `seq` INT AUTO_INCREMENT PRIMARY KEY,
    `user_seq` INT,
    `skill_name` VARCHAR(255),
    FOREIGN KEY (`user_seq`) REFERENCES `User`(`seq`)
);

CREATE TABLE `Token` (
    `seq` INT AUTO_INCREMENT PRIMARY KEY,
    `user_seq` INT,
    `token_num` VARCHAR(500),
    `token_date` VARCHAR(255),
    FOREIGN KEY (`user_seq`) REFERENCES `User`(`seq`)
);

CREATE TABLE `Sms` (
    `seq` INT AUTO_INCREMENT PRIMARY KEY,
    `id` VARCHAR(255),
    `sms_date` VARCHAR(255),
    `user_seq` INT,
    FOREIGN KEY (`user_seq`) REFERENCES `User`(`seq`)
);
