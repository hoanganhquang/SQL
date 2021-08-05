use test;
-- create table books(
-- 	id int not null auto_increment primary key,
--     title varchar(100), 
--     author_fname varchar(100),
--     author_lname varchar(100),
--     release_year int,
--     stock_quantity int,
--     pages int
-- );

-- INSERT INTO books
--     (title, author_fname, author_lname, release_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 100); 
--            -- ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
-- --            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
		
select count(*) from books;
select release_year, count(*) as 'The number of books were released' from books group by release_year;
select sum(stock_quantity) as 'The total number of books in stock' from books;
select concat(author_fname, ' ', author_lname) as 'Author', avg(release_year) from books group by author_lname, author_fname;
select concat(author_fname, ' ', author_lname) as 'Author', max(pages) as 'Longest Book' from books where pages = (select max(pages) from books);
select release_year as 'Year', count(*) as 'Books', avg(pages) as 'Avg pages' from books group by release_year order by release_year;



