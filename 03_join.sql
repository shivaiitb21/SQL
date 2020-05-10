-- AS statement
SELECT COUNT(amount) 
	as num_transactions 
	FROM payment;

-- INNER JOIN
SELECT payment_id, payment.customer_id, first_name 
	FROM payment
	INNER JOIN customer
	ON payment.customer_id = customer.customer_id;
	
-- FULL OUTER JOIN
SELECT * FROM customer
	FULL OUTER JOIN payment
	ON customer.customer_id = payment.customer_id
	WHERE customer.customer_id IS null 
	OR payment.payment_id IS null;
	
-- LEFT OUTER JOIN
-- IS NULL
-- The columns available in both tables needs to be called with table name
SELECT film.film_id, title, inventory_id, store_id
	FROM film
	LEFT OUTER JOIN inventory
	ON inventory.film_id = film.film_id
	WHERE inventory.film_id IS null;
	
-- get the email ids of customers in California 	
SELECT district, email 
	FROM customer
	INNER JOIN address
	ON customer.address_id = address.address_id
	WHERE district = 'California';


-- Names of movies with actor Nick Wahlberg
SELECT title, first_name, last_name
	FROM actor
	INNER JOIN film_actor
	ON actor.actor_id = film_actor.actor_id
	INNER JOIN film
	ON film_actor.film_id = film.film_id
	WHERE first_name = 'Nick' AND last_name = 'Wahlberg';



	
	
	

	
	

