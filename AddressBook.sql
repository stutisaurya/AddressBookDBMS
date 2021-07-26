#Uc1
CREATE DATABASE address_book_system;
show databases;
USE address_book_system;                               
SELECT DATABASE();

#Uc2

	CREATE TABLE Add_Book
	(
    	id               INT unsigned NOT NULL AUTO_INCREMENT,	
    	first_name       VARCHAR(50) NOT NULL,			
    	last_name        VARCHAR(50),				
    	address          VARCHAR(150) NOT NULL,			
    	city             VARCHAR(30) NOT NULL,			
    	state            VARCHAR(30) NOT NULL,			
    	zip              INT(6) NOT NULL,				
    	phone_number     VARCHAR(13) NOT NULL,		
    	email            VARCHAR(50) NOT NULL,			
    	PRIMARY KEY(id)					
	);
    
	DESCRIBE Add_Book;
#Uc3

	INSERT INTO Add_Book(first_name, last_name, address, city , state , zip , phone_number, email) VALUES
	    ('Stuti','Saurya','Rajgir', 'Delhi', 'abc',560058, 9695592954, 'stuti@gmail.com'),
		('Sakshi','Priyal','Gaya','Goa','ghi', 560057,9745277712,'sakshi123@gmail.com'),
    	('Sahil','Anand','Rajgir','Bangalore','pqr',560059,9864727523,'sahil12@gmail.com');
	    SELECT * FROM add_Book;
        DROP TABLE add_book;
#Uc4

     UPDATE add_book set city = 'Agra' WHERE first_name = 'Sahil';	
     SELECT * FROM add_book;
     
#Uc5

	 DELETE from add_book WHERE first_name = 'Sahil';
	 SELECT * FROM add_book;
#Uc6
	 SELECT * FROM add_book WHERE city="Bangalore" AND state="Kar";

#Uc7
	 SELECT state, COUNT(first_name) FROM add_book GROUP BY state;
	 SELECT city, COUNT(first_name) FROM add_book GROUP BY city;			
#UC8 
	 SELECT * FROM add_book WHERE city="Bangalore"  ORDER BY first_name ASC;       
#Uc9
	 alter table add_book add addbook_type varchar(150);	
	 select * from add_book;
       
	UPDATE add_book SET addbook_type="family" WHERE first_name="Stuti";
	UPDATE add_book SET addbook_type="family" WHERE first_name="Sakshi";
	UPDATE add_book SET addbook_type="friend" WHERE first_name="Riya";	
	select * from add_book;
#Uc10 
	SELECT first_name,addbook_type,COUNT(addbook_type) FROM add_book GROUP BY first_name;	
#Uc11
    	UPDATE add_book SET addbook_type="family" WHERE first_name="Sakshi";
		UPDATE add_book SET addbook_type="family" WHERE first_name="Stuti";


	



