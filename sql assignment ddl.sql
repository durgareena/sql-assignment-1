create database if not exists employee;
use employee;
create table Departments(
 department_id int primary key ,
 department_name varchar(100)
 );
create table Location(
location_id int primary key ,
location_name varchar(30)
);
create table Employees(
employee_id int Primary Key,
Employee_name varchar(50),
Gender enum('M','F'),
Age int,
Hire_date date,
Designation varchar(100),
Salary decimal(10,2),
department_id int,
Foreign Key(department_id) references Departments(department_id),
location_id int,
Foreign Key(location_id) references Location(location_id)
);

alter table employees add column email varchar(100);
alter table employees modify column Designation varchar(200);
alter table employees drop column age;
alter table employees rename column Hire_date to date_of_joining;

Rename table Departments to Departments_info;
Rename table Location to Locations;

Truncate table Employees;
drop table Employees;
drop database if exists employee;