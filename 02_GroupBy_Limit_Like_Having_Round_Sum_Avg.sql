--GROUP BY
select customer_id from payment 
	group by customer_id
	order by customer_id;
select customer_id, staff_id, sum(amount)
	from payment
	group by staff_id, customer_id
	order by customer_id, sum(amount);

--SUM, GROUP BY & ORDER BY Descending order
SELECT DATE(payment_date), SUM(amount) FROM payment
	GROUP BY DATE(payment_date)
	ORDER BY SUM(amount) DESC;

--GROUP BY	
SELECT * FROM payment;
SELECT staff_id, COUNT(amount)
	FROM payment
	GROUP BY staff_id;

--ROUND 
SELECT * FROM film;
select rating, ROUND(AVG(replacement_cost), 2)
	FROM film
	GROUP BY rating;
	
--LIMIT
SELECT * FROM payment;
SELECT customer_id, SUM(amount)
	FROM payment
	GROUP BY customer_id
	ORDER BY SUM(amount) DESC
	LIMIT 5;

--HAING	
SELECT customer_id, COUNT(*) 
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*)>=40;

--HAVING	
SELECT customer_id, SUM(amount)
	FROM payment
	WHERE staff_id=2
	GROUP BY customer_id  
	HAVING SUM(amount)>100;
	
--HAVING SUM
SELECT customer_id, SUM(amount)
	FROM payment
	WHERE staff_id=2
	GROUP BY customer_id  
	HAVING SUM(amount)>=110;	
	
--LIKE
SELECT * FROM film;
SELECT COUNT(title) FROM film
	WHERE title LIKE 'J%';
	
--LIKE, ORDER BY, LIMIT
SELECT * FROM customer;
SELECT first_name, last_name
	FROM customer
	WHERE first_name LIKE 'E%' AND address_id<500
	ORDER BY customer_id DESC
	LIMIT 1;
	
