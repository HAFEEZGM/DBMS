create table worker(
s_no int,
name char(10),
designation char(10),
branch char(10));
alter table worker
add column branchcode int;
drop table worker;
