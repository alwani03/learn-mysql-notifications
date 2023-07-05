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


/*  Notification */
CREATE TABLE notification
(
    id        INT          NOT NULL AUTO_INCREMENT,
    title     VARCHAR(255) NOT NULL,
    detail    TEXT         NOT NULL,
    create_at TIMESTAMP    NOT NULL,
    user_id   VARCHAR(100),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SHOW TABLES;

ALTER TABLE notification
    ADD CONSTRAINT fk_notification_user
        FOREIGN KEY (user_id) REFERENCES user (id);

DESC notification;

/* Insert Table Notification */

INSERT INTO notification(title, detail, create_at, user_id)
VALUES ('Contoh Pesanan', 'Detail Pesanan', CURRENT_TIMESTAMP(), 'alwani');
INSERT INTO notification(title, detail, create_at, user_id)
VALUES ('Contoh Promo', 'Detail Promo', CURRENT_TIMESTAMP(), null);
INSERT INTO notification(title, detail, create_at, user_id)
VALUES ('Contoh Pembayaran', 'Detail Pembayaran', CURRENT_TIMESTAMP(), 'nurul');

SELECT *
FROM notification;

SELECT * FROM notification
WHERE  (user_id = 'alwani' OR user_id IS NULL) ORDER BY create_at DESC;