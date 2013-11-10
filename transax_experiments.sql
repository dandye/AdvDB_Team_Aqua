set transaction name 'gen_trx';
insert into genres
VALUES (60,'Foo');
select count(*) from genres;
-- 128
COMMIT;
select count(*) from genres;
-- 128

/* ------------ */
select count(*) from genres;
set transaction name 'gen_trx';
insert into genres
VALUES (60,'Bar');
select count(*) from genres;
-- 129
ROLLBACK gen_trx;
select count(*) from genres;
-- 128

/*
SET ISOLATION allows a user to change the isolation level. 
Valid levels are: 
 * SERIALIZABLE
 * REPEATABLE REA
 * READ COMMITTED
 * READ UNCOMMITTED. */
 
ROLLBACK;
set transaction name 'gen_trx';
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
/* ------------ */

select count(*) from genres;
-- 128
insert into genres
VALUES (60,'Bar');
select count(*) from genres;
-- 129
COMMIT;
select count(*) from genres;
-- 129




ALTER SESSION SET ISOLATION_LEVEL READ COMMITTED;   
 
ALTER SESSION 
SET ISOLATION LEVEL
READ COMMITTED;
 
 
 
 
 