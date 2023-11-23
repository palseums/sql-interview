create table cinema(seatno int, avail int)

with table1 as (select seatno,avail, LAG(avail) over(order by seatno asc) as previous1, lead(avail) over(order by seatno asc) as next1   from cinema)
select * from table1 where avail =1 and previous1 =1 union select * from table1 where avail =1 and next1 =1

select * from cinema order by seatno asc;

truncate table cinema;

insert into cinema values(1,0);
insert into cinema values(2,1);
insert into cinema values(3,1);
insert into cinema values(4,0);
insert into cinema values(5,1);
insert into cinema values(6,0);
insert into cinema values(7,1);
insert into cinema values(8,1);
insert into cinema values(9,0);
insert into cinema values(10,1);
insert into cinema values(11,0);
insert into cinema values(12,0);
insert into cinema values(13,1);
insert into cinema values(14,0);
insert into cinema values(15,1);
insert into cinema values(16,1);