select substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade", 
count(film_title) as "Films",
count(case when mpaa_rating = 'G' then '1' END) AS "G",
count(case when mpaa_rating = 'PG' then '1' END) AS "PG",
count(case when mpaa_rating = 'PG-13' then '1' END) AS "PG-13",
count(case when mpaa_rating = 'R' then '1' END) AS "R",
count(case when mpaa_rating = 'NC-17' then '1' END) AS "NC-17",
count(case when mpaa_rating = 'Approved' then '1' END) AS "Approved",
count(case when mpaa_rating = 'NR' then '1' END) AS "NR",
count(case when mpaa_rating is null then 1 END) AS "No Rating"
from casts
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';
