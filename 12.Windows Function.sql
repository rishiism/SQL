
select gender, avg(salary) avg_salary
from employee_demographics d
join employee_salary s
	on d.employee_id = s.employee_id
group by gender;

select d.first_name, d.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics d
join employee_salary s
	on d.employee_id = s.employee_id;
    
select gender, sum(salary) total
from employee_demographics d
inner join employee_salary s
on d.employee_id = s.employee_id
group by gender;

select * from parks_departments;

select d.first_name, d.last_name, gender, salary,
sum(salary) over(partition by gender order by d.employee_id) rolling_total
from employee_demographics d
join employee_salary s
on d.employee_id = s.employee_id;

select d.first_name, d.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) row_num,
rank() over(partition by gender order by salary desc) rank_num,
dense_rank() over(partition by gender order by salary desc) dense_rank_num
from employee_demographics d
join employee_salary s
on d.employee_id = s.employee_id;