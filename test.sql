use test;
-- CREATE TABLE students (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(100)
-- );


-- CREATE TABLE papers (
--     title VARCHAR(100),
--     grade INT,
--     student_id INT,
--     FOREIGN KEY (student_id) 
--         REFERENCES students(id)
--         ON DELETE CASCADE
-- );

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), 
-- ('Samantha'), 
-- ('Raj'), 
-- ('Carlos'), 
-- ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);


-- select first_name,
-- ifnull(title, 'MISSING'),
-- ifnull(grade, 0)
-- from students left join papers
-- on students.id = papers.student_id;

-- SELECT
--     first_name,
--     IFNULL(AVG(grade), 0) AS average
-- FROM students
-- LEFT JOIN papers
--     ON students.id = papers.student_id
-- GROUP BY students.id
-- ORDER BY average DESC;

select first_name, 
	ifnull(avg(grade), 0) as average,
    case 
		when avg(grade) >= 75 then 'PASSING'
        when avg(grade) < 75 then 'MISSING'
        else 'MISSING'
        end as 'passing_status'
from students left join papers
on students.id = papers.student_id
group by students.id
order by average desc

