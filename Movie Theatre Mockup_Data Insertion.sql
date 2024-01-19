-- Customer
insert into customer(customer_id, first_name, last_name, address, billing_info)
values (1, 'Alexis', 'Torres', '250 Park st New York, NY 10032', '4242 6905 4576 0001');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (2, 'Jeff', 'Thomas', '4002 York Dr Staten Island, NY 10302', '6969 4006 6786 0134');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (3, 'Jake', 'Stanford', '50 Park Slope Dr Newark, NJ 11032', '5802 4545 3269 6907');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (4, 'Mike', 'Pierce', '123 Pasadena Av Allentown,PA 18105', '5879 5674 8907 4343');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (5, 'Dale', 'Mace', '444 Barbey st Boston, Massachusetts 02199', '6969 4343 3478 1965');


--ticket information
select * from tickets;

insert into tickets(film_name, order_date, amount)
values('Wakanda forever', NOW()::timestamp,'15.99');

insert into tickets(film_name, order_date, amount)
values('Avatar 2', NOW()::timestamp, '18.99');

insert into tickets(film_name, order_date, amount)
values('Black Adam', NOW()::timestamp, '15.99');

insert into tickets(film_name, order_date, amount)
values('Interstellar', NOW()::timestamp, '15.99');

insert into tickets(film_name, order_date, amount)
values('Inception', NOW()::timestamp, '15.99');


-- film information

insert into movies(film_id, film_name)
values('1','Wakanda forever');

insert into movies(film_id, film_name)
values('2', 'Avatar 2');

insert into movies(film_id, film_name)
values('3', 'Black Adam');

insert into movies(film_id, film_name)
values('4', 'Interstellar');

insert into movies(film_id, film_name)
values('5', 'Inception');

-- Concession
alter table concessions add column item_type VARCHAR(100);

insert into concessions  (order_date, amount, item_type)
values(NOW()::timestamp, 7.10, 'popcorn');

insert into concessions (order_date, amount, item_type)
values(NOW()::timestamp, 11.30, 'nachos');

insert into concessions (order_date, amount, item_type)
values(NOW()::timestamp, 16.99,'chicken tenders combo');

insert into concessions (order_date, amount, item_type)
values(NOW()::timestamp, 12.99,'hotdogs combo');

insert into concessions (order_date, amount, item_type)
values(NOW()::timestamp, 1.99,'M&M');



-- Checking data

select * from customer
where last_name = 'Mace'

select amount, film_id, movies.film_name 
from tickets 
inner join movies 
on movies.film_name = tickets.film_name
