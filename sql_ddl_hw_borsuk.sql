create table employees_12(
id serial primary key,
employee_name varchar (50) not null
)

select * from employees_12;

insert into employees_12 (employee_name)
values  ('Alex'),
		('Nik'),
		('Natan'),
		('Kim'),
		('Sylvia'),
		('Lexa'),
		('Slam'),
		('Alexander'),
		('Jacob'),
		('Evan'),
		('Nika'),
		('Verona'),
		('Erica'),
		('Chris'),
		('Todd'),
		('Angel'),
		('Rick'),
		('Ted'),
		('Guf'),
		('Slim'),
		('Paul'),
		('Devon'),
		('Voit'),
		('Lindsey'),
		('Ashton'),
		('Donna'),
		('Stefan'),
		('Nisha'),
		('Sam'),
		('Klaus'),
		('Dean'),
		('Hanzel'),
		('Danzel'),
		('Greta'),
		('Greg'),
		('Lil'),
		('Glenn'),
		('Susy'),
		('Soler'),
		('Sasi'),
		('Egor'),
		('Kirill'),
		('Daryl'),
		('Kane'),
		('Chan'),
		('Andrew'),
		('Steven'),
		('Avar'),
		('Cristian'),
		('Ronny'),
		('Mark'),
		('Ronald'),
		('Trisha'),
		('Snadro'),
		('Leo'),
		('Stewart'),
		('Nataly'),
		('Sergey'),
		('Ben'),
		('David'),
		('Keran'),
		('Alvin'),
		('Simon'),
		('Daria'),
		('Sven'),
		('Peter'),
		('Eric'),
		('Damon'),
		('Sean'),
		('Ceara'),
		('Kira');
		
	
create table salary_11(
id serial primary key,
monthly_salary int not null
);

insert into salary_11(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500)
	;

create table employee_salary_11(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);
select * from employee_salary_11;

insert into employee_salary_11(id, employee_id,salary_id)
values
(default, 1,7),(default, 11,9),(default, 3,5),(default, 9,43),(default, 17,67),(default, 8,46),(default, 13,40),(default, 15,38),(default, 46,36),(default, 19,34),(default, 21,32),(default, 23,30),(default, 25,28),(default, 27,25),
(default, 29,23),(default, 31,21),(default, 33,19),(default, 35,17),(default, 37,15),(default, 39,13),(default, 2,40),(default, 4,38),(default, 6,36),(default, 98,34),
(default, 10,32),(default, 12,30),(default, 14,28),(default, 62,26),(default, 184,28),(default, 103,51),(default, 105,53),(default, 107,55),(default, 109,57),(default, 111,59),
(default, 113,61),(default, 115,63),(default, 117,65),(default, 119,33),(default, 121,21),(default, 161,77);


create table roles_11(
id serial primary key,
role_name int not null unique
);

select * from roles_11;

alter table roles_11
alter column role_name type varchar(30);
-- default as we have column 'role_name' while creating
insert into roles_11 (id,role_name)
values(default,'Junior Python developer'), (default,'Middle Python developer'), (default,'Senior Python developer'), (default,'Junior Java developer'),
(default,'Middle Java developer'), (default,'Senior Java developer'), (default,'Junior JavaScript developer'), (default,'Middle JavaScript developer'),
(default,'Senior JavaScript developer'), (default,'Junior Manual QA engineer'), (default,'Middle Manual QA engineer'), (default,'Senior Manual QA engineer'),
(default,'Project Manager'), (default,'Designer'), (default,'HR'), (default,'CEO'), (default,'Sales manager'), (default,'Junior Automation QA engineer'), (default,'Middle Automation QA engineer'),
(default,'Senior Automation QA engineer')

select * from roles_11;

create table roles_employee







	