-- Создаю бд
CREATE SCHEMA `secretSanta` ;

-- Талица с пользывателями

  CREATE TABLE `secretSanta`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `about` TEXT NULL,
    `blacklist` TEXT NULL,
    `branches` TEXT NULL,
    `departments` TEXT NULL,
    `name` TEXT NULL,
    `wishlist` TEXT NULL,
    `email` TEXT NULL,
    `password` TEXT NULL,
    `status` TEXT NULL,
    `WhoGivesItTo` TEXT NULL,
    PRIMARY KEY (`id`));
