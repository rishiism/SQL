-- Triggers and events

select * from employee_demographics;
select * from employee_salary;

delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values (13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 100000, NULL);

-- Events
select * from employee_demographics;

show variables;

delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
	delete
    from employee_demographics
    where age >= 60;
end $$
delimiter ;

SELECT DATEDIFF('2017/08/25', '2011/08/25') AS DateDiff;

insert into employee_demographics
values (14, 'Michael', 'Angelo', 65, 'Male', '1959-06-30');
use parks_and_recreation;
select * from employee_demographics;

delimiter $$
create event delete_entries
on schedule every 30 second
do
begin
	delete
    from employee_demographics
    where age = null;
end $$
delimiter ;