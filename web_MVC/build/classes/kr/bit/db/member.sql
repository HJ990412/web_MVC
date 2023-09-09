-- member table
create table member(
 num int primary key auto_increment,
 id varchar(20) not null,
 pass varchar(20) not null,
 name varchar(30) not null,
 age int not null,
 email varchar(30) not null,
 phone varchar(30) not null,
 unique key(id)
);
--SQL(CRUD), JDBC
--검색
select * from member;

--insert(저장)
insert into member(id, pass, name, age, email, phone)
values('admin', 'admin', '관리자', 20, 'hongjunpark1@naver.com','010-9349-1996');

--update(수정)
update member set age = 45, phone = '010-2222-2222' where id = 'admin';

--delete(삭제)
delete from member; --전체삭제
delete from member where id = 'admin';

drop table member;

drop table member1;

create table member1(
 num int primary key auto_increment,
 id varchar(20) not null,
 pass varchar(20) not null,
 name varchar(30) not null,
 age int not null,
 email varchar(30) not null,
 phone varchar(30) not null,
 filename varchar(100),
 unique key(id)
);

insert into member1(id, pass, name, age, email, phone, filename)
values('admin', 'admin', '관리자', 20, 'hongjunpark1@naver.com','010-9349-1996','image.png');

select * from member1;