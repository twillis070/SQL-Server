
---Primary Keys -----

create table 9
(
Partnum char(6) primary key, 
Descrip char(13), 
Automake char(4),
Quanity smallint,
Price numeric(6,2) 
)

 
--Constraints on PK's --
create table Inv2
(
Partnum char(6) constraint PK_partnum primary key, 
Descrip char(13), 
Automake char(4),
Quanity smallint,
Price numeric(6,2) 
)

--Multi field Primary Key---
CREATE TABLE PartSales
( Partnum CHAR(6) ,
Qty_Sold SMALLINT,
Customer CHAR(30),
Saledate SMALLDATETIME ,
CONSTRAINT PK_sales PRIMARY KEY (Saledate, Partnum) )


-----Foreign Keys-----
CREATE TABLE mysales2 
( Partnum CHAR(6) constraint FK_mysales2_partnum references inventory(partnum),
Qty_Sold SMALLINT,
Customer CHAR(30),
Saledate SMALLDATETIME ,
CONSTRAINT PK_mysales2 PRIMARY KEY (Saledate, Partnum) )

sp_help mysales2

----alter table for Foreign Keys (p20)-----

Delete from sales where empnum = '004'

select * from salesrep

select * from sales 

alter table sales 

add constraint FK_sales_empnum foreign key(empnum) references salesrep (empnum)

insert into sales values ('004', 55) 

delete from salesrep where empnum = '001'

update sales set empnum = '999' where empnum = '001' 

update salesrep set empnum = '999' where empnum = '001' 

select * from sales
select * from salerep 








