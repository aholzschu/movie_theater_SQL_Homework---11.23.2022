SELECT*
FROM customer;

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthday VARCHAR(25),
    phone_num VARCHAR(15),
    email VARCHAR(50)
);
SELECT*
FROM ticket;

create table ticket(
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date TIMESTAMP 
);


SELECT*
FROM concessions;


create table concessions(
    movie_title SERIAL PRIMARY KEY,
    quantity INTEGER,
    product_type VARCHAR(50),
    product_id INTEGER  
);


SELECT*
FROM movie;

create table movie(
    movie_seats SERIAL PRIMARY KEY,
    quantity INTEGER,
    movie_rating VARCHAR(5),
    movie_title VARCHAR(50)  
);


ALTER TABLE ticket
ADD customer_id INTEGER;

ALTER TABLE ticket
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);


ALTER TABLE ticket
ADD movie_title VARCHAR(50);

ALTER TABLE ticket
ADD FOREIGN KEY (movie_title) REFERENCES concessions(movie_title);

ALTER TABLE ticket
ADD movie_seats VARCHAR(50);

ALTER TABLE ticket
ADD FOREIGN KEY (movie_seats) REFERENCES movie(movie_seats);


