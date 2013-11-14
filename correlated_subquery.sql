select film_title, usa_gross
from movies
where usa_gross > (
  select avg(usa_gross)
  from movies)
order by usa_gross desc;
  
