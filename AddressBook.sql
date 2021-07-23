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
	    SELECT * FROM Add_Book;
        DROP TABLE add_book;
#Uc4

     UPDATE add_book set city = 'Agra' WHERE first_name = 'Sahil';	
     SELECT * FROM add_book;

