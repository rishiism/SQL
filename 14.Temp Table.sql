-- Temp Tables

create temporary table temp_table
(first_name varchar(30),
last_name varchar(30),
favorite_movie varchar(30)
);

select * from temp_table;

insert into temp_table
values('Rishi', 'Gupta', '3Idiots');

select * from temp_table;

select * from employee_salary;

create temporary table salary_over_50k
select * from employee_salary 
where salary >= 50000;

select * from salary_over_50k;