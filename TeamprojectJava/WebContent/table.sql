drop table board_info_table;
drop table user_table;
drop table content_table;
drop sequence user_seq;
drop sequence content_seq;

create sequence user_seq
start with 0
increment by 1
minvalue 0;

create sequence content_seq
start with 0
increment by 1
minvalue 0;

create table board_info_table(
	board_info_idx number constraint BOARD_INFO_PK primary key,
	board_info_name varchar2(500) not null
);

insert into board_info_table(board_info_idx, board_info_name) values (1, '1자유게시판');
insert into board_info_table(board_info_idx, board_info_name) values (2, '2게시판');
insert into board_info_table(board_info_idx, board_info_name) values (3, '3게시판');
insert into board_info_table(board_info_idx, board_info_name) values (4, '4게시판');



commit;

create table user_table(
	user_idx number constraint USER_PK primary key,
	user_name varchar2(50) not null,
	user_id varchar2(100) not null,
	user_pw varchar2(100) not null
);

create table content_table(
	content_idx number constraint CONTENT_PK primary key,
	content_subject varchar2(500) not null,
	content_text long not null,
	content_file varchar2(500),
	content_writer_idx number not null
	                   constraint CONTENT_FK1 references user_table(user_idx),
	content_board_idx number not null
	                  constraint CONTENT_FK2 references board_info_table(board_info_idx),
	content_date date not null
);
insert into content_table(content_subject,content_text,content_file,content_writer_i)values();

select * from board_info_table;
select * from user_table;
select * from content_table;

select a1.content_idx, a1.content_subject, a2.user_name as content_writer_name,
   to_char(a1.content_date, 'YYYY-MM-DD') as content_date
   from content_table a1, user_table a2 
   where a1.content_writer_idx = a2.user_idx  and a1.content_board_idx = 1 
   order by a1.content_idx desc;


-- =================================================================
drop sequence user_seq;
drop sequence context_seq;
drop table board_info_table;
drop table user_table;
drop table content_table;

create sequence user_seq
start with 1
increment by 1
minvalue 0;

create sequence context_seq
start with 1
increment by 1
minvalue 0;

create table board_info_table(
	board_info_idx number constraint board_info_pk primary key,-- 게시판 번호
	board_info_name varchar2(500) not null-- 게시판 이름
);
create table user_table(
	user_idx number constraint user_pk primary key,-- 유저번호
	user_name varchar2(50) not null,-- 유저이름
	user_id varchar2(100) not null,--유저아이디
	user_pw varchar2(100) not null--유저비번
);
create table content_table(
	content_idx number constraint content_pk primary key,-- 게시글 번호
	content_subject varchar2(500) not null,-- 게시글 제목
	content_text long not null,-- 게시글 내용
	content_file varchar2(500),-- 게시글 첨부파일
	content_writer_idx number not null constraint content_fk1 references user_table(user_idx),-- 작성자(유저)번호
	content_board_idx number not null constraint content_fk2 references board_info_table(board_info_idx),-- 게시판 번호 
	content_date date not null-- 게시글 등록 날짜
);


insert into board_info_table(board_info_idx,board_info_name)values(1,'1자유게시판');
insert into board_info_table(board_info_idx,board_info_name)values(2,'2게시판');
insert into board_info_table(board_info_idx,board_info_name)values(3,'3게시판');
insert into board_info_table(board_info_idx,board_info_name)values(4,'4게시판');
commit;

insert into user_table(user_idx,user_name,user_id,user_pw)values(USER_SEQ.nextval,'name','asdf','1234');
select user_name from user_table where user_id='asdf';
select a1.content_idx, a1.content_subject, a2.user_name as content_writer_name,
   to_char(a1.content_date, 'YYYY-MM-DD') as content_date
   from content_table a1, user_table a2 
   where a1.content_writer_idx = a2.user_idx  and a1.content_board_idx = 1 
   order by a1.content_idx desc;

select a1.content_idx, a1.content_subject, a2.user_name as content_writer_name, 
	       to_char(a1.content_date, 'YYYY-MM-DD') as content_date 
	from content_table a1, user_table a2 
	where a1.content_writer_idx = a2.user_idx 
	      and a1.content_board_idx = 1
	order by a1.content_idx desc;

delete from user_table;

commit;
select * from board_info_table;
select * from user_table;
select * from content_table;
