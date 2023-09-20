use freshtables;
create table employee(e_id int,e_name varchar(20),e_role varchar(30),e_location varchar(30),salary int);
insert into employee values(101,'saiganesh','developer','hyderabad',30000),(102,'naveenkumar','developer','hyderabad',40000),(103,'veerabhadra','manager','banglore',50000);
insert into employee values(104,'chanukya','manager','banglore',60000),(105,'premsai','developer','banglore',70000),(106,'hareesh','manager','hyderabad',90000),(107,'raviteja','manger','banglore',100000);
select * from employee;
/* write quary employee location hydb or bal and sal >40000*/
select * from employee where (e_location = 'hyderabad' or e_location= 'banglore') and salary>40000;
/*write quary role manger or developer location hyd*/
select e_name,e_role,e_location from employee where (e_role = 'manager' or e_role = 'developer') and e_location = 'hyderabad';