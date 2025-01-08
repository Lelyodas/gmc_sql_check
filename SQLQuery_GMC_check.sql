create table  Department
( Num_S int primary key ,
labed varchar(255),
Manager_name varchar(255));

create table  Employee 
( Num_E INT Primary Key,
Num_S int,
Name_E VARCHAR(255),
Position VARCHAR(255),
Salary  DECIMAL(10,2),
Foreign Key (Num_S) REFERENCES Department); 

create table project 
( Num_P int Primary key,
Title varchar(255),
StART_date date,
End_Date date,
Num_S int,
foreign key (Num_S) references Department); 

create table Employee_Project
(
Num_E int,
Num_P int,
Foreign key (Num_E) references Employee,
foreign key (Num_P) references Project);

alter table  Employee_Project
add ROLES VARCHAR(255);

select *
from Department;
select *
from Employee;
select *
from project;
select *
from Employee_Project;

