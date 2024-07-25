-- WHERE clause
SELECT * FROM parks_and_recreation.employee_salary
where first_name = 'Leslie';

SELECT * FROM parks_and_recreation.employee_salary
where salary <= 50000;

SELECT * FROM parks_and_recreation.employee_demographics
where gender != 'female';

SELECT * FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01';

-- Logical Operators -- AND, OR, NOT
SELECT * FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and gender = 'male';

SELECT * FROM parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';

SELECT * FROM parks_and_recreation.employee_demographics
where first_name = 'Leslie' and age = 44 or age >55;

-- LIKE statement
-- % = anything and _ = specific value

SELECT * FROM parks_and_recreation.employee_demographics
where first_name like 'Jer%'; -- returns after Jer(anything)

SELECT * FROM parks_and_recreation.employee_demographics
where first_name like '%er%'; -- returns (anything)er(anything)

SELECT * FROM parks_and_recreation.employee_demographics
where first_name like 'a%'; -- returns whose name starts with 'A' and ends with (anything)

SELECT * FROM parks_and_recreation.employee_demographics
where first_name like 'a___'; -- returns name starts with 'A' with (specific value) after 'A'

SELECT * FROM parks_and_recreation.employee_demographics
where first_name like 'a___%'; -- returns name starts with 'A' and (specific value) after 'A' + (anything) after specific value

SELECT * FROM parks_and_recreation.employee_demographics
where birth_date like '1989%'; -- returns birth_date starts with '1989(anything)'