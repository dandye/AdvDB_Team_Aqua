select 
  case
    when m.FILM_YEAR between '1910' and '1919' then '1910''s'
    when m.FILM_YEAR between '1920' and '1929' then '1920''s'
    ...
    when m.FILM_YEAR between '2010' and '2019' then '2010''s'
    else ''
end as Decade, count(m.film_title) as Films
from movies m
group by (case
    when m.FILM_YEAR between '1910' and '1919' then '1910''s'
    when m.FILM_YEAR between '1920' and '1929' then '1920''s'
    ...
    when m.FILM_YEAR between '2010' and '2019' then '2010''s'
    else ''
end)
order by (case
    when m.FILM_YEAR between '1910' and '1919' then '1910''s'
    when m.FILM_YEAR between '1920' and '1929' then '1920''s'
    ...
    when m.FILM_YEAR between '2010' and '2019' then '2010''s'
    else ''
end);