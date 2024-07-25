-- CTEs

With CTE_example as (
select gender, 
avg(salary) as avg_salary, 
max(salary) as max_salary, 
min(salary) as min_salary, 
count(salary) as count_salary 
from employee_demographics d
join employee_salary s
on d.employee_id = s.employee_id
group by gender
)
select *
from CTE_example;

With CTE_example as (
select employee_id, first_name, gender, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
CTE_example2 as (
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from CTE_example
join CTE_example2
on CTE_example.employee_id = CTE_example2.employee_id
;

select d.employee_id, d.first_name, d.gender, d.birth_date, s.salary
from employee_demographics d
join employee_salary s
on d.employee_id = s.employee_id
where d.birth_date > '1985-01-01' and s.salary > 50000;
