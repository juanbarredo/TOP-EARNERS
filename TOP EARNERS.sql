--STYLE GUIDE
--Action words are all CAPITALIZED
--Indentation after FROM.  So, WHERE will be indented once.
--
--This will be used to practice the query from hackerrank.com
--top earners

--We define an employee's total earnings to be their monthly salary x months worked, 
--and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 

--Write a query 
--to find the maximum total earnings for all employees
--as well as the total number of employees who have maximum total earnings. 
--Then print these values as space-separated integers.
--
--the use of the maximum really throew me off since there is a MAX.

--maybe I can still the previeous

--SELECT list: max_total_earnings_for_all_employees, 
--total_number_of_employees_who_have_maximum_total_earnings.

--selections: it seems that "for all employees" is already ideologically biased to knowing how the query-queries.
--so, "for all employees" means that a calculation is done where the operation is operated on each colums row matrix.
--here there are two columns.  the salary and the months worked.

SELECT (months * salary),  COUNT(employee_id )
FROM employee
	WHERE employee_id IN
	(
	SELECT employee_id
	FROM employee


--yeah the output to the previous query is bugging me out.
--I really have to keep challenging.

--ok so here we have the question of what is the outer query?

--SELECT (months * salary), count

--I am running into bottle necks.
--I need to address the points that I do not  understand as I seem them
--make a note of them
--I need to strike at them specifically

--the problems I am runiing into are very specific.
--next time I really need to see this through

--ok, so boolean type is only for WHERE

SELECT (months * salary),  employee_id
FROM employee
WHERE employee_id,


--Generally speaking, this is a really confusing problem.

--total earnings = salary x months

--then why do they also have maximum total earnings?

--maximum total earnings = maximum total earnings for any employee in the Employee table.

--so confusing.  maximum total earnings = maximum total earnings but this time "for any employee".

--I wish they used the "each" instead of "any".

--Either way, i am to write a query to find the maximum total earnings for all employees.

--This last one seems simple enough.  I have to do maximum total earning for each employee.  
--and when they say "all", it makes it feel like excel functions SUM().  But it isn't.

--so, now they are also asking for the - and get this - "total number of employees who have maximum total earnings."

--What is this?!

--"total number of employees who have maximum total earnings"

--I think it's just weird and I have to.  

--I think I have to prove to myself step 1.  Step one is maximum total earnings.

--I must write a query to solve this one first.

--I will test that.
