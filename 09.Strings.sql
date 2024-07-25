-- String Functions

select length('India');
show databases;
use parks_and_recreation;
show tables;

select first_name, length(first_name) length
from employee_demographics
order by 2; -- this digit here is for column

select upper('india');
select lower('INDIA');

select first_name, upper(first_name)
from employee_demographics;

select trim("               India                 ");

select first_name, 
left(first_name, 4), 
right(first_name, 4),
substring(first_name, 3, 2),
birth_date,
substring(birth_date, 6, 2) as birth_month
from employee_demographics;

select first_name, replace(first_name, 'a', 'z')
from employee_demographics;
	
select locate('s', 'Rishi');

select first_name, locate('An', first_name)
from employee_demographics;

select first_name, last_name,
concat(first_name, ' ', last_name) full_name
from employee_demographics;
