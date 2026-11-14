drop database if exists employee;
create database employee;
use employee;
create table Departments(
 department_id int primary key ,
 department_name varchar(100) unique not null
 );
create table Location(
location_id int auto_increment primary key ,
location_name varchar(30) unique not null
);

create table Employees(
employee_id int Primary Key,
Employee_name varchar(50) not null,
Gender enum('M','F') check (gender IN ('M','F')),
Age int check (age >= 18),
Hire_date date default(current_date),
Designation varchar(100),
Salary decimal(10,2),
department_id int,
Foreign Key(department_id) references Departments(department_id),
location_id int,
Foreign Key(location_id) references Location(location_id)
);


