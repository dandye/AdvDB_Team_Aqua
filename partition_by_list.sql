drop table casts_decade;
create table casts_decade
(IMDB_RANK	NUMBER(10,0)
,IMDB_RATING	NUMBER(10,1)
,FILM_TITLE	VARCHAR2(100 BYTE)
,IMDB_VOTES	NUMBER(10,0)
,FILM_YEAR	NUMBER(4,0)
,RUNTIME	NUMBER(10,0)
,BUDGET	NUMBER(12,0)
,WORLDWIDE_GROSS	NUMBER(12,0)
,FILM_ID	NUMBER(10,0)
,USA_GROSS	NUMBER(12,0)
,AFI_RANK	NUMBER(10,0)
,MPAA_RATING	VARCHAR2(10 BYTE)
,RELEASE_DATE	DATE
,GROSS_DATE	DATE)
partition by list (film_year)
(
partition fy_1910 values 
(1910,1911,1912,1913,1914,1915,1916,1917,1918,1919),
partition fy_1920 values 
(1920,1921,1922,1923,1924,1925,1926,1927,1928,1929),
partition fy_1930 values 
(1930,1931,1932,1933,1934,1935,1936,1937,1938,1939),
partition fy_1940 values 
(1940,1941,1942,1943,1944,1945,1946,1947,1948,1949),
partition fy_1950 values 
(1950,1951,1952,1953,1954,1955,1956,1957,1958,1959),
partition fy_1960 values 
(1960,1961,1962,1963,1964,1965,1966,1967,1968,1969),
partition fy_1970 values 
(1970,1971,1972,1973,1974,1975,1976,1977,1978,1979),
partition fy_1980 values 
(1980,1981,1982,1983,1984,1985,1986,1987,1988,1989),
partition fy_1990 values 
(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999),
partition fy_2000 values 
(2000,2001,2002,2003,2004,2005,2006,2007,2008,2009),
partition fy_2010 values 
(2010,2011,2012,2013,2014,2015,2016,2017,2018,2019)
);

insert into casts_decade
select * from casts;

select count(*),
substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade"
from casts
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';

select count(*),
substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade"
from casts_decade
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';
