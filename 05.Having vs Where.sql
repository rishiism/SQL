-- Having vs Where
select * from parks_and_recreation.employee_demographics;

select gender, avg(age) 
from parks_and_recreation.employee_demographics
group by gender;

select gender, avg(age) 
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40;

select * from parks_and_recreation.employee_salary;

select occupation, avg(salary) 
from parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;
-- Having runs only after (Group By) with an aggregate function