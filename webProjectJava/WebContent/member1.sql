drop table member1;
create table member1(
	code varchar2(10),
	name varchar2(30),
	id varchar2(30),
	pwd varchar2(30),
	age number(5)
);
insert into member1(code,name,id,pwd,age)values('1','이창현','lee','1234',26);
delete from member1 where id='lee' and pwd='1234';
select * from member1;