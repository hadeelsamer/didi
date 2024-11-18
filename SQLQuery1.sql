create database menager
create table task 
(
TID int primary key identity(1,1),
title  nvarchar(100) not null,
Descriptions  nvarchar(100) not null,
Statuss  nvarchar(100) not null,
duedata datetime
)

create table users
(
UsID int primary key identity(1,1),
UName nvarchar(100) not null,
Upass  nvarchar(100) not null,
UEmail  nvarchar(100) unique not null ,
Urole  nvarchar(100) not null,
taskID int,
foreign key (taskID ) references task(TID)
)
select * 
from task

select *
from users
