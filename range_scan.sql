drop index usa_gross_idx;
create index usa_gross_idx
on movies(usa_gross);
select *
from movies
where usa_gross < 500000;
