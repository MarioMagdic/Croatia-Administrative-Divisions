CREATE TABLE `counties` (
  `id` SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
  `name` VARCHAR (65) NOT NULL,
  `number` VARCHAR(3) NOT NULL
) ENGINE = InnoDb CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `municipalities` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR (65) NOT NULL,
  `county_id` SMALLINT UNSIGNED NOT NULL,
  `type` VARCHAR (15) NOT NULL
) ENGINE = InnoDb CHARACTER SET utf8 COLLATE utf8_unicode_ci;

ALTER TABLE `municipalities` ADD CONSTRAINT `fk_municipality_county`
FOREIGN KEY (`county_id`) REFERENCES `counties` (`id`);
