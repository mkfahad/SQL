CREATE DATABASE employee;
use employee;
create TABLE departments(department_id int primary key not null,department_name VARCHAR(100) not null);
select * from departments;

create table location(location_id int primary key not null,location VARCHAR(30));
select * from location;
DESCRIBE location;

create table employees(employee_id int primary key not null, employee_name VARCHAR(50) , 
gender ENUM("M","F") , age int , hire_date date , designation varchar(100) , department_id int , location_id int , salary decimal(10,2));
DESCRIBE employees;
alter TABLE employees
add email VARCHAR(50);

DESCRIBE employees;

ALTER TABLE employees
MODIFY column designation VARCHAR(200);

describe employees;

alter table employees
drop COLUMN age;

DESCRIBE employees;

alter TABLE employees
RENAME column hire_date  TO date_of_joining;

describe employees;

alter table departments
RENAME TO Departments_Info;

alter table location
RENAME TO Locations;

truncate table employees;

DROP TABLE employees;

DROP DATABASE employee;

create database employee;
use employee;

create table Departments(department_id int primary key, department_name varchar(100) not null unique);

Create table Location(location_id int auto_increment primary key,location varchar(30) not null unique);

create table Employees(employee_id int primary key,employee_name varchar(50) not null , gender enum("M","F") 
,age int check(age>=18) , hire_date Date default (CURRENT_DATE) , designation varchar(100), department_id int , location_id int , salary decimal(10,2) , 
foreign key(department_id) references departments(department_id) ,
foreign key(location_id) references location(location_id));

DEScribe Employees;
describe Departments;
Describe Location;



