use movielens;
-- List the titles and release dates of movies released between 1983-1993 in reverse chronological order.
select title,
	release_date
from movies
where release_date between'1983-01-01' and '1992-12-31'
order by release_date desc;
-- Without using LIMIT, list the titles of the movies with the lowest average rating.
select m.title,
    r.rating
from movies m
right join ratings r on m.id = r.movie_id
group by m.title
having min(avg(r.rating));     
	
-- List the unique records for Sci-Fi movies where male 24-year-old students have given 5-star ratings.

-- List the unique titles of each of the movies released on the most popular release day.
-- Find the total number of movies in each genre; list the results in ascending numeric order.