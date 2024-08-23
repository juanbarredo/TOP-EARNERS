--Here the only table used in the top_earners problem
--is created.

--I figured out what the table would need from reading the
--problem on the hacker rank website where the problem
--top_earners is hosted.

--https://www.hackerrank.com/challenges/earnings-of-employees/problem

USE top_earners;
CREATE TABLE employee		(employee_id INTEGER NOT NULL,
												name CHAR(100) NULL,
												months INTEGER NULL,
												salary INTEGER NULL);

USE top_earners;
SELECT *
FROM employee;

--The insert into was done through the import export wizard.