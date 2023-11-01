CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    customer_id INTEGER,
    price INTEGER
);

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE concessions(
    item_id SERIAL PRIMARY KEY,
    food_name VARCHAR,
    food_price INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR,
    genre VARCHAR,
    rating VARCHAR,
    screen_time INTEGER
);

ALTER TABLE tickets
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

ALTER TABLE tickets
ADD FOREIGN KEY (movie_id) REFERENCES movies(movie_id)

ALTER TABLE movies
ADD price INTEGER;

ALTER TABLE movies
DROP COLUMN price; -- added it then had to remove it as well. My idea didn't work.