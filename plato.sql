
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
flush privileges;

create database plato;
use plato;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `corpus_data`;
CREATE TABLE `corpus_data` (
  `corpus_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `corpus_question` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `corpus_answer` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `tags_project` varchar(255) DEFAULT NULL,
  `tags_scene` varchar(255) DEFAULT NULL,
  `tags_gametheme` varchar(255) DEFAULT NULL,
  `tags_gametype` varchar(255) DEFAULT NULL,
  `tags_q_mood` varchar(255) DEFAULT NULL,
  `tags_a_mood` varchar(255) DEFAULT NULL,
  `tags_q_role` varchar(255) DEFAULT NULL,
  `tags_a_role` varchar(255) DEFAULT NULL,
  `tags_q_character` varchar(255) DEFAULT NULL,
  `tags_a_character` varchar(255) DEFAULT NULL,
  `tags_q_intent` varchar(255) DEFAULT NULL,
  `tags_a_intent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`corpus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
SET GLOBAL innodb_large_prefix = ON;
ALTER TABLE `corpus_data` ADD INDEX index_project ( `tags_project` );
ALTER TABLE `corpus_data` ADD INDEX index_gametype ( `tags_gametype` );
ALTER TABLE `corpus_data` ADD INDEX index_q_mood ( `tags_q_mood` );
ALTER TABLE `corpus_data` ADD INDEX index_a_mood ( `tags_a_mood` );
ALTER TABLE `corpus_data` ADD INDEX index_q_role ( `tags_q_role` );
ALTER TABLE `corpus_data` ADD INDEX index_a_role ( `tags_a_role` );
ALTER TABLE `corpus_data` ADD INDEX index_q_character ( `tags_q_character` );
ALTER TABLE `corpus_data` ADD INDEX index_a_character ( `tags_a_character` );
ALTER TABLE `corpus_data` ADD INDEX index_q_intent ( `tags_q_intent` );
ALTER TABLE `corpus_data` ADD INDEX index_a_intent ( `tags_a_intent` );
