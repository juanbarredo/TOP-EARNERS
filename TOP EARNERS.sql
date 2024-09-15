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

--USE top_earners;
---SELECT COUNT(months * salary)
--FROM employee;

-- top_earners;
--SELECT DISTINCT(employee_id)
--FROM employee;

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

--09 05 2024
--no end in sight.

--I am learning what kind of nested functions work.

--apparently I can use HAVING Clause?

--how would that look like?

--it feels very alien at the moment to work in that direction.

--So, why don't I pick up the subquery again but try something different

--USE top_earners; 
--SELECT COUNT(max_total_earnings)
--	FROM employee
--	WHERE max_total_earnings IN (
--SELECT MAX(months * salary) AS max_total_earnings
--	FROM employee; --subquery processes the total_earnings

--Ok, right now I feel is a turning point.
--How can I pass variables or make new variables.
--variables being columns.
--I think the INSERT INTO will work.

--I think that's literally what it is for.
--unless I can't solve it that way.
--But it is the clearest way to get rid of nesting.

--can I do that now?
--what I could do now is to find the page number to build into next time.  Probably, Sunday.

--09 08 2024
--ok, today I am going to attempt to use the INSERT INTO statement
--to solve this problem.

--I can't seem to know how to float or pass variables in SQL.
--I think the main problem is that this isn't Python.

--But I guess passing variables when they are whole columns
--can get overwhelming.

--So, then just adding the desired column (months * salary)
--as a new column to the employees table.
--might just solve that issue
--then all I would need to so is to run a max but wouldn't that leave
-- in the same issue?

--I imagine that I would just make a new column of that.
--then count it.

--There has to be an easier way but this is what I have now.

--USE top_earners;
--INSERT INTO employee (employee_id, name, months, salary, monthsxsalary)

--ok, realized that first I need to ALTER TABLE and add the column 'monthsxsalary'

--USE top_earners;
--ALTER TABLE employee
--ADD monthsxsalary INT NULL;

--INSERT INTO employee (monthsxsalary)
--	SELECT months* salary 
--		FROM employee;

--USE top_earners;
--SELECT * 
--	FROM employee;

--"Msg 515, Level 16, State 2, Line 402
--Cannot insert the value NULL into column 'employee_id', 
--table 'top_earners.dbo.employee'; 
--column does not allow nulls. INSERT fails.
--The statement has been terminated."

--I am very confused as to the new error.
--It seems that for whatever reason
--the 'employee_id' is needed?

--So, I may need to delete the row
--'monthsxsalary'
--and re-alter it but the next time
--add the row as NOT NULL?

--At the very least I have moved in a new direction
--to solve this problem.

--I am getting very frustrated with how this is going
--How else could this be solved?

--09 10 2024
--ok, I believe I may have a solution.
--I believe that I can just not include 'employee_id'.

--It isn't needed after all.
--and it makes the operation more complex.

--USE top_earners;
--INSERT INTO employee (monthsxsalary)
--	SELECT months* salary 
--		FROM employee;

--ok, I was already trying this and it failed.
--I need to change the monthxsalary to be NOT NULL.

--ok, let me look up how to delete a column.

--USE top_earners;
--ALTER TABLE employee DROP COLUMN monthsxsalary;
--GO

--It worked!
--I got rid of the column monthsxsalary NULL used in lines 448 - 450
--for some reason the GO made it work.

--I may need to look into GO.

--Either way,
--let me now try to insert the statement again from lines 398 to 404 I believe.

--USE top_earners;
--ALTER TABLE employee
--ADD monthsxsalary INT NOT NULL; --adding NOT to the NULL this time.
--GO

--INSERT INTO employee (monthsxsalary)
--	SELECT months* salary 
--		FROM employee;

--DANG.
--I am getting a completely new and very complex error message.
--Msg 4901, Level 16, State 1, Line 462
--ALTER TABLE only allows columns to be added that can contain nulls,
--or have a DEFAULT definition specified,
--or the column being added is an identity or timestamp column,
--or alternatively if none of the previous conditions are satisfied the table must be empty to allow addition of this column
--Column 'monthsxsalary' cannot be added to non-empty table 'employee' because it does not satisfy these conditions.

--I am stumped again.
--maybe adding a column won't do?

--ok, let me look more into adding a column and the rules.
--
--makes me look at the previous message so differently.

--could the problem then be.
--the data I am inserting into?

--are any of those values being shown as NULL when they are not?

--USE top_earners;
--ALTER TABLE employee
--ADD monthsxsalary INT NOT NULL;

--I came up with the idea that maybe I don't need the NULL or NOT NULL 
--at the end.

--I was looking at examples and I saw that they didn't include them.

--why don't I need NULL or NOT NULL?

--weird.
--something to look into!

--09 12 2024
--ok, lets see if the last thing I thought about might work

--USE top_earners;
--ALTER TABLE employee
--ADD monthsxsalary INT;

--ok, so not putting in NULL or NOT NULL  defaults to NULL.

--at this point I am completely lost in the details.

--I think I need to look at the INSERT INTO closer.

--INSERT INTO employee (employee_id, name, months, mon)
--	SELECT months* salary 
--		FROM employee;

--that might be a problem in using insert into.
--I might be trying to insert into the same table.
--so the error occurs because of that.
--I need to make a new table.

--Ok, next step.
--make a new table.

--USE top_earners;
--CREATE TABLE employees_monthxsalary 
--	(employee_id INTEGER NOT NULL,
--	name CHAR(100) NULL,
--	months INTEGER NULL,
--	salary INTEGER NULL,
--	monthsxsalary INTEGER NULL);

--INSERT INTO employees_monthxsalary (employee_id, name, months, salary, monthsxsalary)
--	SELECT employee_id, name, months, months*salary
--	FROM employee;

--dang, time is up already.

--I am stumped.
--I am unsure how to multiply two rows and insert the result set into a different row.
--I can't believe how simple yet complicated this is.

--what do I need to search fro next?
--I am also starting to get the feel that I might need a new file.
--specifically since I am coming up with a new table.

--However, I might now need a new table.
--I might just need to learn 
--how to insert the product of two rows into one.
--that is the next step.

-----------------------09 15 2024

--ok,
--I may have found something.

--learn.microsoft.com/en-us/sql/t-sql/statements/insert-transact-sql?view=sql-server-ver16
--I typed out the link above so there may be errors.

--eitherway,

--an example using AdventureWroks2022 is shown.
--I am familiar with that database because we used extensively during my BS in Data Analytics
--from Miami Dade College.

--I slowly worked through reading every line in the example and spotted a possibility.

--"NewCostRate AS CostRate * 1.5,"

--There is a glympse of what I need in line 573.
--this may solve my problem.  
--a problem which is hard to describe but 
--COUNT(MAX(months * salary)))
--is the best way to describe it.

--I am starting to think if I should start a new file?

--USE top_earners;
--ALTER TABLE employee
--ADD monthsxsalary AS months*salary;

--SELECT monthsxsalary AS months*1.5 
--		FROM employee;

USE top_earners;
SELECT *
	FROM employee;

--got it, amazing.
--I am one step closer.
--ok, I think the main thing I learned
--is to continue to work on these problems
--as carefully as possible.
--each step can take a variable amount of time.

--defenitely have to look at examples as well.


