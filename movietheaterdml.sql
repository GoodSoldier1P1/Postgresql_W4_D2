-- Insertions
-- Movie List from 1970


INSERT INTO movies(
    movie_name,
    genre,
    rating,
    screen_time
) VALUES (
    'The Exorcist',
    'Horror',
    'R',
    122
), (
    'Dog Day Afternoon',
    'Drama',
    'R',
    124
), (
    'Dirty Harry',
    'Action',
    'R',
    102
), (
    'American Graffiti',
    'Comedy',
    'PG',
    110
), (
    'The Godfather',
    'Drama',
    'R',
    175
), (
    'M*A*S*H',
    'Comedy',
    'N/A',
    116
);

SELECT *
FROM movies;

DELETE FROM movies -- wanted to test this.


INSERT INTO concessions(
    food_name,
    food_price,
    customer_id
) VALUES(
    'Nachos',
    4.99,
    2
), (
    'Pizza',
    7.99,
    1
), (
    'Fountain Drink - Large',
    4.99,
    1
), (
    'Fountain Drink - Medium',
    3.99,
    2
), (
    'Fountain Drink - Small',
    1.99,
    1
), (
    'Popcorn - Large',
    8.99,
    3
), (
    'Popcorn - Medium',
    6.99,
    1
), (
    'Popcorn - Small',
    3.99,
    3
), (
    'Popcorn - Promo Special',
    13.99,
    1
), (
    'Candy',
    1.99,
    2
), (
    'Bottled Water',
    1.99,
    3
);

DELETE FROM concessions; -- Adding customer id's to have a fixed history of purchases

SELECT *
FROM concessions;

INSERT INTO tickets(
    movie_id,
    customer_id,
    price
) VALUES(
    7,
    1,
    9.99
), (
    8,
    2,
    7.99
), (
    9,
    3,
    6.99
);

SELECT *
FROM tickets;

INSERT INTO customers(
    ticket_id
) VALUES (
    1
), (
    2
), (
    3
);

SELECT *
FROM customers;