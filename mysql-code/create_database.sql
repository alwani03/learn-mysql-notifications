CREATE DATABASE belajar_mysql_notification
use belajar_mysql_notification

/* User */
CREATE TABLE user
(
    id   VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SHOW TABLES;

/* Insert Table User */
INSERT INTO user(id, name)
VALUES ('alwani', 'achmad alwani');
INSERT INTO user(id, name)
VALUES ('nurul', 'Nurul Karomah');

SELECT * FROM USER;