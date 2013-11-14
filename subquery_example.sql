/* subquery */
select film_year, film_title,
  (
  select director
  from directors
  where film_id = 60
  ) as director
from movies
where film_id = 60;