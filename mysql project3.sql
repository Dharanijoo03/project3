create database BooksDB;
create table BooksDB.Books(id int primary key auto_increment, book_title varchar(20), author varchar(20), genre varchar(20), publication_year int ,price int);
insert into BooksDB.Books values (1, "Human Anatomy" , "dharani" , "biology" , 2003 , 8000),(3, "python" , "prithika" , "physics" , 2006 , 5000),(4, "chemistry" , "nesi" , "biology" , 2023 , 8000),(5, "physiotherphy" , "joo" , "botony" , 2036 , 4000),(6, "maths" , "swetha" , "science" , 20068 , 9000);
create table BooksDB.Authors(id int primary key, Author varchar(20), Publication int);
insert into BooksDB.Authors values (2, "siva" , 2007 ), (3 , "sabi" , 2098) , (4 , "lavanya" , 2008);
select book_title from BooksDB.Books;
update BooksDB.Books set price= 10000 where id=2;
delete from BooksDB.Books where  id=5;
select avg(price) from BooksDB.Books;
select *from BooksDB.Books;
select * from BooksDB.Authors;
use BooksDB;
select Books.id,Books.book_title,Books.author,Books.genre,Books.publication_year,Books.price, Authors.id
from Books
inner join Authors
on Books.id=Authors.id;

