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