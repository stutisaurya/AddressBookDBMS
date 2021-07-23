#Uc1
CREATE DATABASE address_book_system;
show databases;
USE address_book_system;                               
SELECT DATABASE();

#Uc2

	CREATE TABLE address_book
	(
    	id               INT unsigned NOT NULL AUTO_INCREMENT,	
    	first_name       VARCHAR(50) NOT NULL,			
    	last_name        VARCHAR(50),				
    	address          VARCHAR(150) NOT NULL,			
    	city             VARCHAR(30) NOT NULL,			
    	state            VARCHAR(30) NOT NULL,			
    	zip              INT(6) NOT NULL,				
    	phone_number     INT(13) NOT NULL,		
    	email            VARCHAR(50) NOT NULL,			
    	PRIMARY KEY(id)					
	);
    
	DESCRIBE address_book;
