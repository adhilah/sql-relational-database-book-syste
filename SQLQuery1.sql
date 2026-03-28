use empDB;

select * from employees;

create table accounts(
Id int identity(1,1) primary key,
aName varchar(20)not null,
balance int,
);

insert into accounts (aName,balance)
values
('athila',120000),
('neena',10000),
('ashvin',100000000)


Begin transaction;
update accounts
set balance = balance + 1000
where Id =2;
rollback;

select * from accounts;