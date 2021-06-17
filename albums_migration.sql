USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(100),
    release_date INT,
    sales DOUBLE UNSIGNED NOT NULL,         --DECIMAL(15, 2), also would have been more precise since 10 digits in million.
    genre VARCHAR(50),
    PRIMARY KEY (id)


);