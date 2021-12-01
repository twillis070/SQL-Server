
--inner join-- 

select salesrep. empnum, fname, amount 
from salesrep
 inner join sales on salesrep.empnum = sales.empnum
where amount  > 20 

select R.empnum, R.fname, S.amount 
from salesrep R  
 inner join sales S on R.empnum =s.empnum


-----Left / Left Outer Join --  
select R.empnum, R.fname, S.amount
from salesrep R
Left outer join sales S on R.empnum =s.empnum

---Right Outer Join-----
select r.empnum, R.fname, S.amount
from salesrep R
Right outer  join sales S on R.empnum =s.empnum

----Full outer join---- 
select r.empnum as RepID , s.empnum saleID,  fname, amount
from salesrep R
Full outer  join sales S on R.empnum =s.empnum


select coalesce (r.empnum , s.empnum) as Empnum,  fname, amount
from salesrep R
Full outer  join sales S on R.empnum =s.empnum

--cross join ---
select salesrep.empnum, fname, amount
from salesrep cross join sales

---Joining more than two tables--------
select * from seminar
select * from course
select * from register 
select * from students
select * from register2 order by progcode 

select course.progcode, title, register.stunum
from seminar 
 inner join course on seminar.semcode = course.semcode
 inner join register on course.progcode = register.progcode
where register.progcode = 'A1002' 

select *
from seminar 
 inner join course on seminar.semcode = course.semcode
 inner join register on course.progcode = register.progcode


select course.progcode,firstname, lastname, title, register.stunum
from seminar 
 inner join course on seminar.semcode = course.semcode
 inner join register on course.progcode = register.progcode
 Inner join students on register.stunum = students.stunum
where register.progcode = 'A1002'