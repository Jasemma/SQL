USE sakila;
-- List all actors.
select * from actor;
-- Find the surname of the actor with the forename 'John'.
select *
from actor
where first_name = 'John';
-- Find all actors with surname 'Neeson'.
select *
from actor
where last_name = 'Neeson';
-- Find all actors with ID numbers divisible by 10.
select *
from actor
where MOD(actor_id,10) = 0;
-- What is the description of the movie with an ID of 100?
select film_id,
	description
from film
where film_id = '100';
-- Find every R-rated movie.
select title,
	rating
from film
where rating = 'R';
-- Find every non-R-rated movie.
select title,
	rating
from film
where rating != 'R';
-- Find the ten shortest movies.
select film_id,
	title,
    length
from film
where length = (select min(length)
				from film)
limit 10;
-- Find the movies with the longest runtime, without using LIMIT.
select film_id,
	title,
    length
from film
where length = (select max(length)
				from film);
-- Find all movies that have deleted scenes.
select title,
	special_features
from film
where special_features = 'deleted scenes';
-- Using HAVING, reverse-alphabetically list the last names that are not repeated.
select distinct last_name
from actor
group by last_name
having count(last_name)
order by count(last_name) DESC;
-- Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
select distinct last_name,
	count(last_name) AS frequency
from actor
group by last_name
having count(last_name)
order by frequency desc;
-- Which actor has appeared in the most films?
select actor.first_name,
	actor.last_name,
	count(film_actor.actor_id) as ID,
	film_actor.film_id
from film_actor f
right join actor a on 
	f.actor_id = a.actor_id


-- When is 'Academy Dinosaur' due?
select customer.customer
-- What is the average runtime of all films?
-- List the average runtime for every film category.
-- List all movies featuring a robot.
-- How many movies were released in 2010?
-- Find the titles of all the horror movies.
-- List the full name of the staff member with the ID of 2.
-- List all the movies that Fred Costner has appeared in.
-- How many distinct countries are there?
-- List the name of every language in reverse-alphabetical order.
-- List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
-- Which category contains the most films?