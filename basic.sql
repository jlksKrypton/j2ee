use sys;
select * from sys_config;

create table student(id int, name character);
Insert into student values(1,'a');
Insert into student values(2,'b');
Insert into student values(3,'c');
 
select * from student; 



create table address(id int, name character, sid int references student.id);
Insert into address values(1,'p',3);
Insert into address values(2,'q',1);
Insert into address values(3,'r',2);
 
select * from address;

create table sJoinA(sId int,aId int);
INSERT INTO sJoinA (sId, aId) select student.id,address.id from student join address on student.id = address.sid;

select * from sJoinA;

select student.name, address.name
from student, sJoinA, address
where student.id= sJoinA.sId
and sJoinA.aId = address.id
order by student.name DESC;




drop table student;
drop table address; 
drop table sJoinA; 
