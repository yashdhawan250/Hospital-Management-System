
--Hospital Mangement System--
--Employee Table

create table employee (
eid varchar2(5) primary key , 
ename varchar2(10),
eaddress varchar2(10),
ecno number(10),
ejob varchar2(10),
esal number(6));


--Patient Table
create table patient (
pid varchar2(5) primary key , 
eid varchar2(5)  references employee(eid),
name varchar2(10),
address varchar2(10),
cno number(10),
d_o_ad date,
d_o_dis date);

--Doctor Table

create table doctor (
eid   varchar2(5)  references employee(eid),
pid   varchar2(5)  references patient(pid),
dname varchar2(10),
d_sp  varchar2(10));

--Nurse Table

create table nurse (
eid   varchar2(5)  references employee(eid),
pid   varchar2(5)  references patient(pid),
nname varchar2(10));

--Rooms Table

create table rooms (
ReID varchar2(5) primary key,
RoNo number(3),
RType varchar2(8),
pid   varchar2(5)  references patient(pid),
eid   varchar2(5)  references employee(eid),
etype varchar2(10));


--Receptionist Table

create table receptionist (
eid   varchar2(5)  references employee(eid),
rname varchar2(10));

--Records Table

create table rec(
RNo varchar2(5) primary key,
pid   varchar2(5)  references employee(eid),
eid   varchar2(5)  references employee(eid),
etype varchar2(10),
Rdetails varchar2(10));

--Medicines Table

create table medicines(
mid varchar2(5) primary key,
pid   varchar2(5)  references employee(eid),
quantity number(4),
mname varchar2(10));