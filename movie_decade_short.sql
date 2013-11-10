select substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade", 
count(*)
from movies
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';