/*show tables; */
select*from college;
select*from students; 
select*from company;
select*from employee;
#joins
# inner join
#select college.cl_name,college.cl_address,college.cl_fee,students.st_name,students.st_address,students.st_branch from college inner join students on college.cl_id = students.st_id;
# left join(left join works on entire left side table all properties import )
#select company.cp_name,company.cp_address,employee.ep_name,employee.ep_address from company left join employee on company.cp_id = employee.ep_id;
#right join(right join works on entire right side table all properties import )
select  employee.ep_name,employee.ep_address ,company.cp_name,company.cp_address  from company right join employee on  employee.ep_id = company.cp_id ; 
use saiganesh;
show tables;

use saiganesh;
SELECT * FROM emp 
FULL JOIN dep
ON emp.deptno = dep.deptno;
    
select *from emp;
select *from dep;
show tables;
select * FROM students;
select * from students s1
inner join students s2
on s1.st_id = s2.st_id;
#cl_addresscl_addresscl_addresscl_fees1.st_id <s2.st_id;
use saiganesh;
select * from students;
alter table students add column salary int;
update students 
set salary = 20000
where st_id = 103;
use saiganesh;
select students.salary,students.st_name, company.cp_name from students  inner join company 
on students.st_id = company.cp_id ;
CREATE TABLE Worker (
	WORKER_ID INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);
describe students;
DESCRIBE Worker;
select * from Worker;
INSERT INTO Worker 
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
	CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
	REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),	
 (003, 'Lead', '2016-06-11 00:00:00');
 select * from Title;
 
alter table students
add column timest timestamp;   
update students
set timest = '2023-07-03 07:07:03'
where st_id = 103;
update students
set salary = 3000
where st_id = 103;

show databases;
create user today identified by 'ganesh';
select user from mysql.user;
drop user today;
drop user umasai@localhost;
show tables;
show index from dep;
show char set;
show collation;
show binary logs;
show variables;
show grants;
show privileges;
show engines;
show errors;
show table status;
use saiganesh;
select user, host,db,command from  information_schema.processlist;
/* new notes starts with new cycle;*/
create user today identified by 'ganesh';
select user from mysql.user;
select  current_user();
drop user today;
update user set password = password('ganesh') where user = 'root' and host = 'localhost';
set password for 'saiganesh'@'localhost' = 'ganesh';
alter user password identified by  'ganesh';
/* database creations */

use saiganesh;
create database example;
show databases;
show databases like 'pattern';
 show databases like 'sai';
 show triggers from saiganesh;
create user sample identified by 'ganesh';
select user from mysql.user;
drop user  sample;  
update user  set password = password('ganesh') where user = 'root' and host = '@localhost';
set password for 'root' = 'ganesh';
alter user passsword identified by 'ganesh';
show databases;
use saiganesh;
show tables;
create database saiganesh_copy;
use saiganesh_copy;
show tables;
drop database saiganesh_copy;
drop database example;
create table su (su_id int not null , su_address varchar(30) not null , su_company varchar(30));
create table su_details( su_id int not null, su_firstname varchar(20) not null, su_lastname varchar(20), su_contact int not null);
insert into su values (1,'venkatagiri','tracxn'),(2,'bangarupeta','digitral'),(3,'nellore','wipro'),(4,'nellore','tcs');
insert into su_details values (1,'saiganesh','pellakuru',58001),(2,'naveenkumar','pathapati',14907),(3,'veerabhadra','doparthi',000000000),(4,'hareesh','sajja',0000000);
select * from su;
select * from su_details;
select su.su_company, su_details.su_firstname,su_details.su_lastname from su inner join su_details on su.su_id = su_details.su_id;
select su.su_company ,su_details.su_firstname,su_details.su_lastname from su left outer join su_details on su.su_id = su_details.su_id ;
select su_details.su_firstname,su_details.su_lastname , su.su_company from su_details right outer join su on su_details.su_id = su.su_id ;
select su.su_id,su.su_company ,su_details.su_firstname,su_details.su_lastname from su cross join su_details order by su_id;
insert into su values(5,'',''),(6,'','');
update su 
set su_company = 'infoTech'
where su_id = 5;
UPDATE su
SET su_company = 'infoTech'
WHERE su_id = 6;
create table std (roll_un int primary key not null, name varchar(20),address varchar(20) unique key,contact long, age int not null);
create table std_cr ( roll_un_cr int, cr_name varchar(20), roll_un int);
insert into std  values(1,'saiganesh','venkatagiri',8186058001,23);
insert into std  values(2,'naveenkymar','tirupati',7093214907,23),(3,'veerabhadra','nellore',999999999,24),(4,'premsai','onegol',998828882,25);
alter table  std_cr add constraint fk_roll foreign key( roll_un_cr) references std(roll_un);
select * from std;
show tables;
drop table std_cr;
drop table std;
drop table title;
drop table worker;
create database freshtables;
show databases;
use freshtables;
select user from mysql.user;
create table fresh1 ( f_id int primary key not null,f_name varchar(20) unique key not null);
create table fresh22 (ff_id int not null,ff_address varchar(20),ff_contact long, constraint fk_f_id foreign key(ff_id) references fresh1(f_id));
#alter table fresh2 add primary key (ff_address,ff_contact);
#ALTER TABLE fresh2 add primary key(ff_address, ff_contact);  
rename  table fresh2 to fresh22;
show tables;
alter table fresh22 add unique key (ff_address);
insert into fresh1 values(1,'saiganesh'),(2,'naveenkumar'),(3,'veerabhadra'),(4,'premsai'),(5,'chanukya');
insert into fresh22 values (1,'nellore',8186058001),(2,'bangarupeta',93290202);
insert into fresh22 values( 10,'uuuu','ssss');
select * from fresh22;
select * from fresh1 order by f_id;
create table fresh33 ( id int , name varchar(30), address varchar(40),  primary key(name,address));
describe fresh33;
describe fresh22;
describe fresh1;
select fresh1.f_id,fresh1.f_name , fresh22.ff_contact from fresh1 cross join fresh22 order by f_name;
select fresh1.f_id,fresh1.f_name,fresh22.ff_contact,fresh22.ff_address from fresh1 join fresh22 where f_name is null;
create table aggrigate (a_id int primary key not null,a_name varchar(20) unique key not null, a_location varchar(20) not null, a_contact double not null, a_salary double); 
alter table  aggrigate add primary key( a_contact,a_salary);
insert into  aggrigate values( 1,'saiganesh','venkatagiri',8186058001,5000),(2,'naveenkumar','bangarupeta',7093214907,10000),(3,'veerabhadra','nellore',9999999999,15000),(4,'premsai','tirupati',88888888,20000),(5,'chanukya','skht',77777777,250000);
select * from aggrigate;
describe aggrigate;
select count(a_id) from aggrigate as all_a_id;
select avg(a_salary) from aggrigate as salary;
select a_name from aggrigate limit 1;
select a_name from aggrigate order by a_name desc limit 1;
SELECT a_name FROM aggrigate ORDER BY a_name asc LIMIT 1;    
select min(a_salary) from aggrigate;
select max(a_salary) from aggrigate;
select sum(a_salary) from aggrigate;

create table aggrigate (a_id int primary key not null,a_name varchar(20) unique key not null, a_location varchar(20) not null, a_contact double not null, a_salary double); 

#TRIGGERS
select  * from today_tr;
select * from freshtables;
create table aggrigate_trigger( id int,name varchar(20));
select* from aggrigate_trigger;
show triggers ;
DELIMITER $$ 
create trigger before_aggrigate_update 
before update on aggrigate for each row
begin
insert into aggrigate_trigger set action ='update',asalary = old.a_salary,changedon = now();
END $$
select * from aggrigate;

delimiter$$
create trigger beffore_insert_salary
before insert on aggrigate for each row
begin
if new.a_salary >=5000 then set new.a_salary=15000;
end if;
end$$
delimeter;

DELIMITER $$
CREATE TRIGGER before_insert_salary
BEFORE INSERT ON aggrigate FOR EACH ROW
BEGIN
  IF NEW.a_salary >= 5000 THEN
    SET NEW.a_salary = 15000;
  END IF;
END$$
DELIMITER ;
insert into aggrigate values(6,'raviteja','hyderabad',999999,4400);
delete  from aggrigate where a_id =6;
show triggers;
update aggrigate set a_salary = 100 where a_id=1;

use freshtables;
select * from aggrigate;
DELIMITER $$
CREATE TRIGGER before_insert_avalues
BEFORE INSERT ON aggrigate FOR EACH ROW
BEGIN
SET NEW.a_name = UPPER(NEW.a_name);
SET NEW.a_location = UPPER(NEW.a_location);
END ;
DELIMITER;

DELIMITER //
CREATE TRIGGER before_insert_avalues
BEFORE INSERT ON aggrigate FOR EACH ROW
BEGIN
    SET NEW.a_name = UPPER(NEW.a_name);
    SET NEW.a_location = UPPER(NEW.a_location);
END //
DELIMITER ;

INSERT INTO aggrigate VALUES(7,'krishna','hyderabad',999999,4400),(8,'venkata','hyderabad',999999,4400);

SELECT * FROM aggrigate;

SHOW triggers;
DROP trigger if exists freshtables.before_insert_salary;
DROP TRIGGER IF EXISTS freshtables.before_aggrigate_update;
DELIMITER $$
CREATE TRIGGER before_update_values
BEFORE UPDATE ON aggrigate
FOR EACH ROW
BEGIN
SET NEW.a_name = UPPER(NEW.a_name);
SET NEW.a_location = UPPER(NEW.a_location );
END
DELIMITER ;
update aggrigate 
set a_name = 'pellakuru',a_location = 'vgr'
 where
 a_id = 1;
 select * from aggrigate;

SHOW VARIABLES LIKE 'datadir';
