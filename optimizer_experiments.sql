analyze table movies estimate statistics;

SELECT /*+ FIRST_ROWS(10) */ film_title, usa_gross
from movies
where usa_gross > 10000000;
-- consistent gets	23
 
SELECT /*+ ALL_ROWS */ film_title, usa_gross
from movies
where usa_gross > 10000000;
-- consistent gets	4