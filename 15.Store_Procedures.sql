-- Store Procedures

create procedure large_salaries()
select * from employee_salary
where salary >= 50000;

call large_salaries();

delimiter //
create procedure large_salaries2()
begin
	select * from employee_salary
    where salary >= 50000;
    select * from employee_salary
    where salary >= 80000;
end //
delimiter ;

call large_salaries2();

delimiter //
create procedure large_salaries3(emp_id int)
begin
	select * from employee_demographics
    where employee_id = emp_id;
end //
delimiter ;

call large_salaries3(7);