create table SysUser(
	id Integer primary key,
	username varchar2(20) not null,
	password varchar2(40) not null	
);

create sequence seq_sysuser start with 10000;

insert into sysuser
select seq_sysuser.nextval , dbms_random.string('l',  dbms_random.value(5, 6))
, '6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2' from dual connect by level <= 1000;


select count(1) from sysuser;


create sequence seq_profile start with 10000;


create table profile(
     id number primary key,
     name varchar2(20 char) not null, 
     birthday varchar2(20 char)not null, 
     gender varchar2(4 char), 
     career varchar2(20 char), 
     address varchar2(50 char), 
     mobile varchar2(20 char)
);



insert into profile values(seq_profile.nextval,'����','1982-07-07','��','����Ա','����','1234566');
insert into profile values(seq_profile.nextval,'����','1982-07-07','��','����Ա','����','1234566');
insert into profile values(seq_profile.nextval,'����','1982-07-07','��','����Ա','����','1234566');
insert into profile values(seq_profile.nextval,'����','1982-07-07','��','����Ա','����','1234566');

commit;

select * from profile;

select * from SYSUSER;

select dbms_random.string('l',dbms_random.value(5, 20)) from dual;
select to_char(add_months(sysdate, dbms_random.value(12*18, 12*50) * -1), 'yyyy-MM-dd')  from dual;
select decode(ceil(dbms_random.value(0, 2)), 1, '��', 'Ů') from dual;
select decode(ceil(dbms_random.value(0, 6)), 1, '����Ա', 2, '����Ա', 3, '����Ա', 4, '���Ա', 5, '����Ա', '����Ա') from dual;
select decode(ceil(dbms_random.value(0, 6)), 1, '����', 2, '����', 3, '�㶫', 4, '����', 5, '����', '�Ϻ�') from dual;
select '180'||ceil(dbms_random.value(10000000,99999999)) from dual;

insert into PROFILE
select seq_profile.nextval,
dbms_random.string('l',dbms_random.value(5, 20)),
to_char(add_months(sysdate, dbms_random.value(12*18, 12*50) * -1), 'yyyy-MM-dd'),
decode(ceil(dbms_random.value(0, 2)), 1, '��', 'Ů'),
decode(ceil(dbms_random.value(0, 6)), 1, '����Ա', 2, '����Ա', 3, '����Ա', 4, '���Ա', 5, '����Ա', '����Ա'),
decode(ceil(dbms_random.value(0, 6)), 1, '����', 2, '����', 3, '�㶫', 4, '����', 5, '����', '�Ϻ�'),
'180'||ceil(dbms_random.value(10000000,99999999)) from dual connect by level <= 1000;

select count(1) from profile;