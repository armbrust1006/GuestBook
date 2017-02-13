
create table guest_book
(
	num			number(3) primary key,
	name		varchar2(20) not null,
	password	varchar2(20) not null,
	content		varchar2(20) not null,
	inputdate	date default sysdate
);

create sequence guest_book_seq;

insert into guest_book
(num, name, password, content)
values(guest_book_seq.nextval, 'aaa', 'aaa', '즐거운 금요일');

select TO_CHAR(inputdate, 'YYYY/MM/DD') from guest_book;

update guest_book
set password='qwe', content='zzz'
where num=22;