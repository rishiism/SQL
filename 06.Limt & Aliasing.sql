-- Limit

select *
from parks_and_recreation.employee_demographics
order by age desc
limit 2, 1
;

-- Aliasing

select gender, avg(age) as avg_age -- will run with or without 'AS'
from parks_and_recreation.employee_demographics
group by gender
Having avg_age > 40
;