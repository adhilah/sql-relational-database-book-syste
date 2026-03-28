create database bookDB;
use bookDB;
create table authors(
aId int identity(1,1) primary key,
author varchar(25),
bookName varchar(50)
);
insert into authors(author,bookName)
values
('athila','jeevan'),
('meera','sleep'),
('rana','knowledge')

CREATE TABLE publisher (
    pId INT IDENTITY(1,1) PRIMARY KEY,
    pName VARCHAR(25) NOT NULL,
    aId INT,
    bookName VARCHAR(50),
    FOREIGN KEY (aId)
    REFERENCES authors(aId)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

insert into publisher
values('neena',2,'flood'),
('prem',3,'knowledge'),
('sumidha',2,'sleep');

select * from publisher;
select * from authors;

--join 
select * from authors join publisher
on authors.aId=publisher.aId;


select * from authors left join publisher
on authors.aId = publisher.aId;

select * from authors full join publisher
on authors.aId = publisher.aId;

UPDATE authors SET aId = 10 WHERE aId = 3;

--UNION 
select bookName from authors
union
select bookName from publisher

--union all
select bookName from authors
union all
select bookName from publisher

alter table authors
alter column bookName varchar

DROP TABLE publisher;
DROP TABLE authors;

