DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS toys;
DROP TABLE IF EXISTS cattoys;

CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255),
    breed VARCHAR(255)
    
);

CREATE TABLE toys (
    id SERIAL PRIMARY KEY,
    price FLOAT,
    color VARCHAR(255),
    name VARCHAR(255)
);

CREATE TABLE cattoys (
    id SERIAL PRIMARY KEY,
    cat_id INTEGER,
    toy_id INTEGER,
    FOREIGN KEY(cat_id)
    REFERENCES cats (id),
    FOREIGN KEY(toy_id)
    REFERENCES toys (id)
);

INSERT INTO cats (name, color, breed)
VALUES  ('Fluffy', 'black', 'Shorthair'),
        ('Roma', 'striped', 'Tabby'),
        ('Lana', 'orange', 'Exotic'),
        ('Mashu', 'gray', 'French Shorthair'),
        ('Tommy', 'blue', 'Russian Blue');

    
INSERT INTO toys (price, color, name)
VALUES  (10.95, 'blue', 'ball'),
        (1.99, 'gray', 'mouse'),
        (5.00, 'red', 'feather'),
        (1.00, 'green', 'ball'),
        (24.99, 'brown', 'scratching post');

INSERT INTO cattoys (cat_id, toy_id)
VALUES  (1, 4),
        (2, 5),
        (3, 3),
        (4, 2),
        (5, 1);
