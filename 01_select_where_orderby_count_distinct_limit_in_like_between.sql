..........................01...............................

--Select
select * from customer;
select first_name, last_name, email from customer;

--Distinct
select * from film;
select distinct(release_year) from film;
select distinct (rental_rate) from film;

--Count
select * from payment;
select count(*) from payment;
select count(distinct(amount)) from payment;

--Where
select * from customer;
select * from customer where first_name='Jared';
select * from film where rental_rate>4;
select * from film where rental_rate>4 and replacement_cost >= 19.99 and rating = 'R';
select count(*) from film where rental_rate>4 and replacement_cost >= 19.99 and rating = 'R';

--Where
select * from customer;
select email from customer where first_name='Nancy' and last_name='Thomas';

--Order By
select customer_id from payment order by payment_date ASC limit 10;
select * from film;
select title, length from film order by length ASC limit 5;
select count(title) from film where length <= 50;

--Miscellaneous
select * from payment;
select count(amount) from payment where amount>5;
select * from actor;
select count(*) from actor where first_name like 'P%';
select * from address;
select distinct(district) from address;
select * from film;
select count(*) from film where rating = 'R' and replacement_cost between 5 and 15;
select count(*) from film where title like '%Truman%';