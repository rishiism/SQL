-- Group By function
select * from parks_and_recreation.employee_demographics
group by gender;

select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
from parks_and_recreation.employee_demographics
group by gender;

select occupation 
from parks_and_recreation.employee_salary
group by occupation;

-- Order By
select * from parks_and_recreation.employee_demographics
order by gender, age;
select * from parks_and_recreation.employee_demographics
order by 5, 4; -- returns same as above but not a good practice