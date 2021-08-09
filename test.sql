-- 0
-- 1
-- 1

select * from books where released_year < 1980;
select * from books where author='Eggers' or author='Chabon'; select * from books where author in ('Eggers', 'Chabon');
select * from books where author='Lahiri' and released_year > 2000;
select * from books where pages between 100 and 200;
select * from books where author_lname like 'c%' or author_lname like 's%';
select *, case
when title like '%stories%' then 'Short stories'
when title like 'just kids and a heartbreaking work' then 'Memoir'
else 'Novel'
end as 'Type';
