-- system/123456
drop table memtable;
create table memtable(
	id varchar2(100) primary key,
	name varchar2(100),
	pw varchar2(100)
);

select * from memtable;