/* inner */
select *
from movies
inner join directors 
ON movies.film_id = directors.film_id


/* outer */
select *
from movies
left outer join directors 
ON movies.film_id = directors.film_id