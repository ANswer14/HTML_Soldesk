-- 사과 테이블 : 지역 / 색 / 맛 / 가격 / 소개 		정보 


-- 데이터 2개 넣기

create table jun26_apple(
a_location varchar2(10 char) primary key,
a_color varchar2(10 char)not null,
a_taste varchar2(10 char)not null,
a_price number(10)not null,
a_introduce varchar2(100 char)not null
);

drop table apple cascade constraint purge;
create sequence apple_seq;
drop sequence apple_seq;

insert into jun26_apple values('안동', 'red', '단맛', '1000', '안동에서 갓 딴 사과 단돈 1000원');
insert into jun26_apple values('언양', 'green', '신맛', '900', '언양에서 갓 딴 사과 단돈 900원');

select * from jun26_apple;



