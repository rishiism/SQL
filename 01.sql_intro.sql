show databases;
create database sql_intro;
use sql_intro;
create table emp_details (Name varchar(25), Age int, sex char(1), doj date, city varchar(15), salary float);
insert into emp_details values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Meghna", 28, "F", "2012-05-03", "Varanasi", 30000),
("Sahil", 30, "M", "2007-06-30", "Mumbai", 50000),
('John Doe', 30, 'M', '2022-01-15', 'New York', 75000.00),
('Jane Smith', 28, 'F', '2021-03-22', 'Los Angeles', 68000.00),
('Alice Johnson', 35, 'F', '2019-07-11', 'Chicago', 82000.00),
('Robert Brown', 42, 'M', '2018-11-02', 'Houston', 95000.00),
('Michael Davis', 25, 'M', '2020-09-25', 'Phoenix', 59000.00);
desc emp_details;
select * from emp_details;
select count(name) count from emp_details;
select sum(salary) from emp_details;
select avg(salary) from emp_details;
select * from emp_details where age >= 30;
select name, city, sex from emp_details where sex = 'F';
select * from emp_details
where city = 'chicago' or city = 'Mumbai';
select distinct city from emp_details;
select * from emp_details
where city in ('Chicago');
select * from emp_details where 
doj between '2000-01-01' and '2019-07-11';

select * from emp_details where age>30 and sex = 'M';

select sex, sum(salary) total_salary, avg(salary) average_salary 
from emp_details
where salary <= 70000
group by sex
order by average_salary;

select * from emp_details order by salary desc;

select (10+20) sum;

select length('India');

select trim("         India          ") trimed, length(trim("         India          ")) length;

select repeat('10', 10);

select upper('india');

SELECT DATEDIFF(CURDATE(), '2000-03-26');

select replace("Orange is a vegetable", "vegetable", "fruit");

select day(curdate());

select now();

select position('Rishi' in 'Gupta Rishi') name;

select ascii('*');