create table spring_member(
	userid varchar2(50) not null primary key,
	userpw varchar2(100) not null,
	username varchar(100) not null,
	regdate date default sysdate,
	updatedate date default sysdate,
	enabled char(1) default '1'
);

create table spring_member_auth(
	userid varchar2(50) not null,
	auth varchar2(50) not null,
	constraint fk_member_auth foreign key(userid) references spring_member(userid)
);

select * from user_tables;

select * from spring_member;

select * from spring_member where userid='admin90';
select * from spring_member_auth where userid='admin90';

--admin 90 ROLE_MEMBER 권한 추가
insert into spring_member_auth values('admin90', 'ROLE_MEMBER');

--스프링 시큐리티에서 remember me를 위해 "기본적으로" 구현하는 테이블
---정해진 형식
create table persistent_logins(
	username varchar2(64) not null,
	series varchar2(64) primary key,
	token varchar2(64) not null,
	last_used timestamp not null
);