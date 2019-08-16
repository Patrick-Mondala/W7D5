DROP TABLE cattoys;
DROP TABLE cats;
DROP TABLE toys;


CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name varchar(255) NULL,
    color varchar(255) NOT NULL,
    breed varchar(255) NOT NULL
);

CREATE TABLE toys (
    id SERIAL PRIMARY KEY,
    price float NOT NULL,
    name varchar(255) NOT NULL,
    color varchar(255) NOT NULL
);

CREATE TABLE cattoys (
    id SERIAL PRIMARY KEY,
    cat_id int,
    toy_id int,
    FOREIGN KEY (cat_id) REFERENCES cats(id),
    FOREIGN KEY (toy_id) REFERENCES toys(id)
);

/*Cats table*/

INSERT INTO 
    cats (name, color, breed)
VALUES 
    ('kitty', 'white', 'mixed');

INSERT INTO 
    cats(name, color, breed)
VALUES 
    ('kitty2', 'black', 'mixed');

INSERT INTO 
    cats(name, color, breed)
VALUES 
    ('Botero', 'orange', 'mixed');

INSERT INTO 
    cats(name, color, breed)
VALUES 
    ('Bacon', 'tuxedo', 'mixed');

INSERT INTO 
    cats(name, color, breed)
VALUES
    ('Lino', 'tabby', 'mixed');

    /*Toys table */

INSERT INTO
    toys(price, name, color)
VALUES
    (2.00, 'catnip sack', 'red');

INSERT INTO
    toys(price, name, color)
VALUES
    (21.00, 'attack blanket', 'white');

INSERT INTO
    toys(price, name, color)
VALUES
    (1.00, 'ball', 'green');

INSERT INTO
    toys(price, name, color)
VALUES
    (99.00, 'cat tree', 'brown');

INSERT INTO
    toys(price, name, color)
VALUES
    (3.00, 'mouse toy', 'blue');

/*Cattoys table*/

INSERT INTO
    cattoys (cat_id, toy_id)
VALUES
    (5, 1);

INSERT INTO
    cattoys(cat_id, toy_id)
VALUES
    (4, 2);

INSERT INTO
    cattoys(cat_id, toy_id)
VALUES
    (3, 3);

INSERT INTO
    cattoys(cat_id, toy_id)
VALUES
    (2, 4);

INSERT INTO
    cattoys(cat_id, toy_id)
VALUES
    (1, 5);


