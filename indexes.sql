USE employees;

# use of indexes is part of Query Optimization

SHOW INDEXES from employees;

SHOW INDEXES from departments;

# Let's say I want some salary info

SELECT salary FROM salaries
WHERE salary BETWEEN 50000 and 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

USE codeup_test_db;

CREATE TABLE quotes2 (
    id INT NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE quotes ADD UNIQUE (content);

# INSERT INTO quotes (content, author)
# VALUES('The real voyage of discovery consists not in seeking new landscapes, but in
# having new eyes.', 'Marcel Proust');
#
# DROP INDEX salary_index ON salaries;


# This is Inexes Exercise

USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE unique_artist_and_name (artist, name);

ALTER TABLE albums DROP INDEX unique_artist_and_name;

