-- Case Statements

select  first_name, last_name, age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then 'Older'
end age_bracket
from employee_demographics;

-- Pay increase and bonus
select first_name, last_name, salary,
case
	when salary <= 50000 then salary + (salary * 0.05)
	when salary > 50000 then salary + (salary * 0.07)  
end increment,
case
	when dept_id = 6 then salary * 0.10
end bonus
from employee_salary;