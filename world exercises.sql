use world;
-- Using COUNT, get the number of cities in the USA.
select count(name) as city,
	region
from country
where region = 'North america';
-- Find out the population and life expectancy for people in Argentina.
select `name`, 
	population,
	lifeExpectancy
from country
where `name` = 'Argentina';
-- Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?
select `name`, 
	lifeexpectancy
from country
where LifeExpectancy = (select max(lifeexpectancy)
						from country)
order by LifeExpectancy desc
limit 1;
-- Using JOIN ... ON, find the capital city of Spain.
select ci.`name`,
	co.`name`,
    ci.CountryCode
from city ci
left join country co on ci.CountryCode = co.Code
where co.`name` = 'spain'; 
-- Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
select distinct	cl.language,
	cl.countrycode,
    co.region
-- Using a single query, list 25 cities around the world that start with the letter F.
-- Using COUNT and JOIN ... ON, get the number of cities in China.
-- Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
-- Using aggregate functions, return the number of countries the database contains.
-- What are the top ten largest countries by area?
-- List the five largest cities by population in Japan.
-- List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
-- List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.
-- List every unique world language.
-- List the names and GNP of the worlds top 10 richest countries.
-- List the names of, and number of languages spoken by, the top ten most multilingual countries.
-- List every country where over 50% of its population can speak German.
-- Which country has the worst life expectancy? Discard zero or null values.
-- List the top three most common government forms.
-- How many countries have gained independence since records began?