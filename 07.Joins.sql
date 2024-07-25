-- Joins
-- Inner Join
select * from employee_demographics;
select * from employee_salary;

select d.employee_id, age, salary from employee_demographics d
inner join employee_salary s
	On d.employee_id = s.employee_id
;

-- Outer Joins
-- Left Outer Join
select * from employee_demographics d
left join employee_salary s
	On d.employee_id = s.employee_id
;

-- Right Outer Join
select * from employee_demographics d
right join employee_salary s
	On d.employee_id = s.employee_id
;

-- Self join
select emp1.first_name,
emp2.first_name santa
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
-- joining Multiple Tables
select s.employee_id, s.first_name, s.last_name, d.age, s.occupation, pd.department_name, s.salary from employee_demographics d
right join employee_salary s
	On d.employee_id = s.employee_id
inner join parks_departments pd
	on s.dept_id = pd.department_id
;

select * from parks_departments;