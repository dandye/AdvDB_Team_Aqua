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