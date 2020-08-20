drop table member;
create table member(
	memberid varchar(10) not null primary key,
	password varchar(10) not null,
	name varchar(20),
	email varchar(80)
);

insert into member(memberid,password,name,email) values('n','1234','이창','hyun@gmail.com');
delete from member where memberid='m';
select * from member;