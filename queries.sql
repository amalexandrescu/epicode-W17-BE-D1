POSTGRESQL HW

-- * Find all columns from the film table.
	SELECT * FROM film
	-- 1000 results
-- * Find district, phone, postal_code from “address” table.
	SELECT district, phone, postal_code FROM address
	-- 603 results
-- * Find address, district, postal_code and concat them and get as “full_address”.
	SELECT address || ' ' || district || ' ' || postal_code AS full_address FROM address
	-- 603 results
-- * Find all “R” rated movies, return title, rating and length only
	SELECT title, rating, length FROM film WHERE rating = 'R'
	-- 195 results
-- * Find all “G” rated movies with a length greater than 3 hours
	SELECT title, rating, length FROM film WHERE rating = 'G' AND length 	> 180
	-- 9 results
-- * Find top 10 payments by amount spent
	SELECT * FROM payment ORDER BY amount DESC LIMIT 10
	-- 10 results
-- * Find first 5 films, sort them by title DESC
	SELECT * FROM film ORDER BY title DESC LIMIT 5
	-- 5 results
-- * Find all payments with amount between 1 and 2 and sort them by amount descending order
	SELECT * FROM payment WHERE amount BETWEEN 1 AND 2 ORDER BY amount DESC
	-- 581 results
-- * Find payments that happened in March 2007
	SELECT * FROM payment WHERE payment_date BETWEEN '2007-03-01' AND '2007-03-31'
	-- 5644 results
-- * Find all films which title contains the word “north”
	SELECT * FROM film WHERE title ILIKE '%north%'
	-- 7 results
-- * Find all actors with surname starting with “W”
	SELECT * FROM actor WHERE last_name LIKE 'W%' 
	-- 19 results
-- * Find all actors with name containing three characters and last one is “y”
	SELECT * FROM actor WHERE first_name LIKE '__y' 
	-- 25 results



-- Find all the actors from actor table which first_name starts with “N”, contains “al” somewhere inside and after “al” has 2 more letters

SELECT * FROM actor WHERE first_name LIKE 'N%al__'
-- 2 results

-- Find from customer table the first_name and the last_name and concatenate them as “full_name”
SELECT first_name || ' ' || last_name AS full_name FROM customer
-- 599 results


-- Find from payment table all the matches where customer_id is 341 and staff_id id grater or equal than 2
SELECT * FROM payment WHERE customer_id = 341 AND staff_id >=2
-- 14 results


-- Find from payment table all the matches where customer_id is 341 and the payment date is between 6(included) and 10 (included) of April 2007 
SELECT * FROM payment WHERE customer_id = 341 AND payment_date BETWEEN '2007-04-06’ AND '2007-04-11’
-- 4 results


-- Find all matches from city table which contains somewhere in “city” the letters “an” and has the country_id grater or equal than 6 (so 6 included) and lowers or equal than 11 (so 11 included) and sort them descending by city_id
SELECT * FROM city WHERE city LIKE '%an%' AND country_id BETWEEN 6 AND 11 ORDER BY city_id DESC
-- 8 results