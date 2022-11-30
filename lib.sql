create table librarians(id int primary key,name varchar(200),email varchar(200) unique, telephone int unique,shift varchar(100));
create table authors(id int primary key ,name varchar(200) not null,email varchar(255) unique, bio varchar(255) not null,contact int unique not null,company_id int not null, foreign key (company_id) references company(id));
create table company(id int primary key,name varchar(255) not null);
create table books(id int primary key,title varchar(255) unique,price money not null, description varchar(255) not null, publish_date date not null, publish_year int not null,author_id int not null, foreign key(author_id) references authors(id));
create table students(id int primary key, name varchar(200)not null,address varchar(255) not null,contact int  not null unique);
create table borrowing(id int primary key, date_of_borrowing date not null, date_of_return date not null,student_id int, foreign key (student_id)references students(id),book_id int,foreign key(book_id) references books(id));

insert into librarians(id,name,email,telephone,shift)
values(1,'Amito Tracy','racytami4@gmail.com',0788906921,'Morning'),(2,'Gerald Okumu','kennrald5@gmail.com',0725670914,'Morning'),(3,'Albert Nick','nikalbr8@gmail.com',0700892147,'Evening'),(4,'Martha Nabukenya','nakismart66@gmail.com',0741667790,'Evening'),(5,'Lydia Kasha','akashlidy90@gmail.com',0759088501,'Morning'),(6,'Amongin Sharon','shanamong111@gmail.com',0722553480,'morning');
select * from librarians;
select * from librarians where shift='Morning';

insert into authors(id ,name,email, bio,contact ,company_id)
values(01,'Henry Nickson','hnrynic@gmail.com','Social scientist focused on human nature',078890124,20),(02,'Harriet Skunks','skunkharrit56@gmail.com','Mother to three, loves family matters',0743219078,21),(03,'Mercy helton','heltmarcy22@gmail.com','Therapist and medic and loves research for human behavior',078890718,22);
select * from authors;

insert into company(id,name)
values(20,'Carina Press'),(22,'Entangled publishing'),(21,'Lyrical Press');
select * from company;

insert into books(id,title,price, description, publish_date , publish_year,author_id)
values(30,'Stay with me',12000,'about loyalty','20/10/2000',2000,03),(31,'Utmost hope',24000,'Pain and Sorrow','20/10/2007',2007,03),(32,'Accomplished',30000,'Success','07/08/1990',1990,01),(33,'Together',70000,'Love and Betrayal','03/01/1788',1788,01),(34,'Deal with the devil',5000,'Wickedness','11/08/2001',2001,02),(35,'The Lord',10000,'Miracles','12/05/1788',1788,03);
select * from books;

insert into borrowing(1,)

insert into students(id, name,address,contact)
values(11,'Cathy Namubiru','Yuasa plot9',0788456703),(12,'Anthony Jude','Kamwesi Rd',0743218901),(13,'Onesmus Kelly','Murchsion avenue',0723167890);
select * from students;
