select film_title, film_year

from movies

where film_year in ('2000','2001','2002','2003','2004','2005','2006','2007','2008','2009')

order by film_year asc;