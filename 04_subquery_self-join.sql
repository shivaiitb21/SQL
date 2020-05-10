-- The months in which payment occured
-- TO_CHAR
SELECT 
	DISTINCT(TO_CHAR(payment_date, 'MONTH'))
	FROM payment;
	
-- Number of payments occured on monday
-- EXTRACT
-- dow (Day of Week)
SELECT COUNT(*)
	FROM payment
	WHERE EXTRACT(dow FROM payment_date)=1;
	
-- Mathematical Operators
-- What % of rental rate, the replacement cost is
SELECT ROUND((rental_rate/replacement_cost),2)*100 
	AS percent_cost
	FROM film;
	
-- String operators
SELECT LENGTH(first_name) 
	FROM customer;
	
SELECT UPPER(first_name) || ' ' || UPPER(last_name)
	AS full_name
	FROM customer;
	
SELECT LOWER(LEFT(first_name, 1)) || LOWER(LEFT(last_name, 2)) || '@gmail.com'
	AS custom_email
	FROM customer;
	
	
-- SUBQUERY --> Query on results of another query
-- Movies with renral rate greater than average
-- Note: Subquery in Parenthesis is executed first 
-- and then the main query
SELECT title, rental_rate
	FROM film
	WHERE rental_rate > 
		(SELECT AVG(rental_rate) FROM film);
		
-- Film dvds returned between specific dates
-- IN
SELECT film_id, title 
	FROM film
	WHERE film_id 
	IN (SELECT inventory.film_id
		FROM rental
		INNER JOIN inventory
		ON inventory.inventory_id = rental.inventory_id
		WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');

-- EXISTS
SELECT first_name, last_name 
	FROM customer as c
	WHERE EXISTS
		(SELECT * FROM payment AS p
			WHERE p.customer_id = c.customer_id
			AND amount>11);
			
-- Self-join
-- All pairs of films with same length
SELECT f1.title, f2.title, f1.length
	FROM film as f1
	INNER JOIN film as f2
	ON f1.film_id != f2.film_id AND f1.length = f2.length;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
