
select count(*) from movies;

ALTER TABLESPACE COLORS OFFLINE;
ALTER TABLESPACE COLORS ONLINE;
ALTER SYSTEM FLUSH BUFFER_CACHE;
/* 4 Cases:
1. No;No (No List Partition; No || Hint)	
2. Yes;No (Yes List Partition; No || Hint)	
3. No;Yes (No List Partition; Yes || Hint)	
4. Yes;Yes (Yes List Partition; Yes || Hint)
*/

/* 1. No;No (No List Partition; No || Hint)	 */
select count(*),
substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade"
from casts
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';

/* 2. Yes;No (Yes List Partition; No || Hint)	*/
insert into casts_decade
select * from casts;
select 
count(*),
substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade"
from casts_decade
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';

/* 3. No;Yes (No List Partition; Yes || Hint)	*/
select /*+ PARALLEL(casts_decade, 4, 1) */
count(*),
substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade"
from casts
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';

/* 4. Yes;Yes (Yes List Partition; Yes || Hint) */
insert into casts_decade
select * from casts;
ALTER TABLE casts_decade PARALLEL (DEGREE 4);
select /*+ PARALLEL(casts_decade, 4, 1) */
count(*),
substr(cast((film_year) as char(4)),1,3) || '0' AS "Decade"
from casts_decade
group by substr(cast((film_year) as char(4)),1,3) || '0'
order by substr(cast((film_year) as char(4)),1,3) || '0';

select * 
from dba_tables
where table_name='CASTS_DECADE';

select * 
from dba_tables
where table_name='CASTS';


select owner, table_name, tablespace_name
from dba_tables
where table_name='casts_decade'
and tablespace_name IN ('casts_decade',
'ANIMALS',
'COLORS',
'DM',
'DM_ARCHIVE',
'STUDENTS',
'SYSAUX',
'SYSTEM',
'UNDOTBS1',
'USERS');


SELECT dd.tablespace_name tablespace_name, dd.file_name file_name, dd.bytes/1024 TABLESPACE_KB, SUM(fs.bytes)/1024 KBYTES_FREE, MAX(fs.bytes)/1024 NEXT_FREE
FROM sys.dba_free_space fs, sys.dba_data_files dd
WHERE dd.tablespace_name = fs.tablespace_name
AND dd.file_id = fs.file_id
GROUP BY dd.tablespace_name, dd.file_name, dd.bytes/1024
ORDER BY dd.tablespace_name, dd.file_name;

