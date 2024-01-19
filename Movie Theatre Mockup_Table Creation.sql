CREATE TABLE customer (
  customer_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  billing_info VARCHAR(150)
);

create TABLE tickets (
  ticket_id SERIAL primary key,
  amount NUMERIC(10,2),
  order_date DATE default CURRENT_DATE,
  film_name VARCHAR(100)	  
);

CREATE TABLE movies (
  film_id SERIAL primary key,
  film_name VARCHAR(100),
  film_time DATE default CURRENT_DATE,
  foreign key(film_id) references tickets(ticket_id)
);

CREATE TABLE concessions (
  item_id SERIAL primary key,
  order_date DATE default CURRENT_DATE,
  amount NUMERIC(10,2)
);

CREATE TABLE payment (
  payment_id SERIAL primary key,
  customer_id INTEGER,
  ticket_id INTEGER,
  item_id INTEGER,
  staff_id VARCHAR(15),
  foreign key(item_id) references concessions(item_id) 
);

