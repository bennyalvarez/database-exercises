USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(50),
    release_date INT UNSIGNED NOT NULL,
    sales DOUBLE UNSIGNED NOT NULL,
    genre CHAR(50),
    PRIMARY KEY (id)


);