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

--SELECT (months * salary),  COUNT(employee_id )
--FROM employee
--	WHERE employee_id IN
--	(
--	SELECT employee_id
--	FROM employee


--yeah the output to the previous query is bugging me out.
--I really have to keep challenging.

--ok so here we have the question of what is the outer query?

--SELECT (months * salary), count

USE top_earners;
SELECT *
	FROM employee;

--I am running into bottle necks.
--I need to address the points that I do not  understand as I seem them
--make a note of them
--I need to strike at them specifically

--the problems I am runiing into are very specific.
--next time I really need to see this through

--ok, so boolean type is only for WHERE

--SELECT (months * salary),  employee_id
--FROM employee
--WHERE employee_id,


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

USE top_earners;
SELECT name, months * salary AS total_earnings
	FROM employee;
--It has been amazing getting the current result set.

--Ok, now.  What else does the question want?

--Now, I am looking for 
--"as well as the total number of employees 
--who have maximum total earnings."

--I believe I am burnt out.
--so, what else can I do?

--let me slowly scope out the next part of the problem.
--yeah, my brain is toast.

--How can I approach "the total number"  using max function?

--USE top_earners;
--SELECT COUNT(total_number_employees_who_have_max_total_earnings), months * salary AS max_total_earnings
	--FROM employee
	--WHERE total_number_employees_who_have_max_total_earnings =
	--	(max(salary));

--ok, my initial attempt has failed miserably.
--I loved the idea of crafting a subquery but I failed misserably.
--I will love coming back to this with a fresh mind.

--08 27 2024
--I am officially going to be dating these lines.

--I think may have skipped a step last time.
--I may have gone to number of employees

--when what I need to start with is, maximum total earnings.

--what is the definition for that?
--"maximum total earnings is the maximum total earning for any employee in the employee table"

--again, horrible.

--so the key is "for any employee" ... "in the employee table."

--so, do I need to just run the MAX function what.  the Select line.

--USE top_earners;
--SELECT name, MAX(total_earnings)
--	FROM employee
--	WHERE total_earnings =
--(SELECT months * salary AS total_earnings
--	FROM employee);

	--I will need to look at aggregators again.
	--I am sad that I couldn't make more progress.
	--But I think anything is progress at this point.

	--Thursday, I will look at column naming, using, calling
	--I keep getting error about "Invalid column name 'total_earnings'"

	--there must be something.

	--I am definitely excited to build upon this.

--08 29 2024

--ok,
--I am going to attampt at solving the second part of the problem.
--but I am now breaking the problem down into three parts.

	--part 1. total_earnings column.
	--part 2. maximum total earnings

--actually, I need to ammend the above.

	--part 2. maximum total earning for all employees.

--shouldn't that just be a sum?  sum of the total_earnings.

USE top_earners;
SELECT SUM(months * salary) AS max_total_earnings
	FROM employee;

--total_earnings isn't a column.
		
--Ok, I solved that. 
--That was quite an issue there.
--using the AS as an actual column
--when it is an alias.
--aliases only exist for the duration of that query.

--ok, I have done part 2.

--I will now move on to part 3.

--  part 3. total number of employees who have maximum total earnings.

--ok, I am getting tired.

--I will now investigate the next step to solving part 3.

--how do I run a max on total_earnings.

--I will run the MAX on months x salry.

USE top_earners;
SELECT MAX(months * Salary) AS max_total_employee
	FROM employee;

--ok, I am very close.
--I am very excited to continue.

--really enjoyed remembering that AS doesn't make a column.  
--or specifically, it only lasts the duration of the query it is used in.

--09 01 2024
--is this the best way or should I make a new file everyday I work on this problem
--this is so that each attempt is clearer?

--I may look around or do a google search
--ok, I looked quickly and a best practice was to limit the amount of files.

--on with the show

--alright,

--I believe that I am at part 3.

--well, part 3 was two parts.

--so this is officially part 4.

--		part 1. total_earnings column.
--		part 2. maximum total earnings for all employees
--		part 3. max total earnings is run on all employees to get MAX function output
--		part 4. the total number of employees who have part 3.

--I believe that I will need to use the count function.
--I will start by making the count function.
--I might need to start with the subquery first?

--I guess the subquery is already written.
--it is part 3.

--USE top_earners;
--SELECT COUNT(MAX(months * Salary)) AS max_total_employee
--	FROM employee;

--Gosh, I got confused and had to solve the answer by trying to look at the select * from employee result set.
--I was on the right path.
--I think the lesson is to label columns as clearly as possible.

--OK, I learned that I will not be able to use a subquery with what I had imagined.

--I have to rewrite this.

--My new approach to getting a count of 
--so wait, can I pass columns aliases?
--I doubt it.

--USE top_earners;
--SELECT max_total_employee
--	FROM employee
--SELECT MAX(months * Salary) AS max_total_employee
--	FROM employee;

--ok, I leave with this new lesson learned.
--I need to start citing the specific lines.

--		Msg 130, Level 15, State 1, Line 233
--		Cannot perform an aggregate function on an expression containing an aggregate or a subquery.

--current error.
--I am super excited to keep working on this.

--09 02 2024

--I am starting to think that them saying 
--"the maximum total earnings to be 
--the maximum total earnings 
--for any employee in the employee table"
--is literally the MAX function on salary x months.

--then, I now need to count how many have 
--that maximum total earnings.

--the use of max is ruining the legibility 
--from my commom use of how I would word this

--how would I word this?

--write a query to find the total number of employee who have earned the most.
--and we also want to know what every employee's ... this one is harder to write 
--in my own words.

--anyways,
--let me move on to solving the last part.

--now my stomach is flexing at the possibility of using GROUP BY()
--I don't think ir is the right approach
--becuase I would want to use COUNT() in the SELECT statement.
--and I don't think I can use two agregate functions on the same select statement
--so I do two but in a subquery
--but a subquery is also not allowed.

--so, I need to split the tasks.

--count is separate from max.
--can I do max in a different way?

--is there a function that does this already?
--I honeslty don't think so
--and I have ran out of ideas.

--so let me get back to separating

USE top_earners;
SELECT COUNT(months * salary)
FROM employee;

USE top_earners;
SELECT DISTINCT(employee_id)
FROM employee;

--Stumped yet again.

--I am unsure how I will be able to do what I think I need to do.

--somehow COUNT(MAX(months * salary))

--can't do that.

--so, I need to do MAX(months * salary)) 
--and then count the max.

--can I just write a new column?
--insert into.

--that might be a way.

--why can't I float (if I even think I know what that means) variables like in Python?
--the best way I know right now is to create a new row or a new view.

--can you do opeations on view?  I kinda doubt it.

--either way, I am really excited to be able to calmly work on this problem
--while at the same time documenting it.
