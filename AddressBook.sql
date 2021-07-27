#Uc1
CREATE DATABASE address_book_system;
show databases;
USE address_book_system;
SELECT DATABASE();

CREATE TABLE Add_Book (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(150),
    city VARCHAR(200) NOT NULL,
    address VARCHAR(200) NOT NULL,
    state VARCHAR(200) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phone_no VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
    
	DESCRIBE Add_Book;
#Uc3

	INSERT INTO Add_Book(first_name, last_name, address, city , state , zip , phone_number, email) VALUES
	    ('Stuti','Saurya','Rajgir', 'Delhi', 'abc',560058, 9695592954, 'stuti@gmail.com'),
		('Sakshi','Priyal','Gaya','Goa','ghi', 560057,9745277712,'sakshi123@gmail.com'),
    	('Sahil','Anand','Rajgir','Bangalore','pqr',560059,9864727523,'sahil12@gmail.com');
	SELECT 
    *
FROM
    add_Book;
        DROP TABLE add_book;
UPDATE add_book 
SET 
    city = 'Agra'
WHERE
    first_name = 'Sahil';	
SELECT 
    *
FROM
    add_book;
     
DELETE FROM add_book 
WHERE
    first_name = 'Sahil';
	SELECT 
    *
FROM
    add_book;
SELECT 
    *
FROM
    add_book
WHERE
    city = 'Bangalore' AND state = 'Kar';

SELECT 
    state, COUNT(first_name)
FROM
    add_book
GROUP BY state;
	SELECT 
    city, COUNT(first_name)
FROM
    add_book
GROUP BY city;			
SELECT 
    *
FROM
    add_book
WHERE
    city = 'Bangalore'
ORDER BY first_name ASC;       
#Uc9
	 alter table add_book add addbook_type varchar(150);	
	SELECT 
    *
FROM
    add_book;
       
	UPDATE add_book 
SET 
    addbook_type = 'family'
WHERE
    first_name = 'Stuti';
	UPDATE add_book 
SET 
    addbook_type = 'family'
WHERE
    first_name = 'Sakshi';
	UPDATE add_book 
SET 
    addbook_type = 'friend'
WHERE
    first_name = 'Sahil';	
	SELECT 
    *
FROM
    add_book;
SELECT 
    first_name, addbook_type, COUNT(addbook_type)
FROM
    add_book
GROUP BY first_name;	
UPDATE add_book 
SET 
    addbook_type = 'family'
WHERE
    first_name = 'Sakshi';
		UPDATE add_book 
SET 
    addbook_type = 'family'
WHERE
    first_name = 'Stuti';

CREATE TABLE book_user (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);
	CREATE TABLE addressbook (
    user_id INT PRIMARY KEY,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip VARCHAR(10) NOT NULL
);
    ALTER TABLE addressbook
	ADD FOREIGN KEY(user_id) REFERENCES book_user(user_id);
    
CREATE TABLE Contact (
    user_id INT,
    phone VARCHAR(15),
    email VARCHAR(40),
    FOREIGN KEY (user_id)
        REFERENCES book_user (user_id)
);
 
CREATE TABLE contact_business (
    type_id INT,
    type_of_contact VARCHAR(20)
);
 ALTER TABLE contact_business
    ADD PRIMARY KEY(type_id);
 
CREATE TABLE address_book_user (
    user_id INT,
    type_id INT,
    FOREIGN KEY (user_id)
        REFERENCES book_user (user_id),
    FOREIGN KEY (type_id)
        REFERENCES contact_business (type_id)
);
     
#Uc13
 INSERT INTO book_user(user_id, first_name, last_name) VALUES
	(1, 'Sakshi', 'Saingh'),
	(2, 'Stuti', 'Sauryar'),
    (3, 'Sahil', 'sinha');
SELECT 
    *
FROM
    book_user;

INSERT INTO address_book(user_id, address,city,state,zip) VALUES
   (1,'shyam nagar', 'kanpur', 'rohini', '134556'),
   (2,'lal banglow', 'fatehpur','kamla nagar', '123457'),
   (3,'faridabad', 'delhi', 'delhi', '223457');
SELECT 
    *
FROM
    address_book;

INSERT INTO contact(user_id,phone,email) VALUES
	(1,'9876543210', 'abc@email.com'),
    (2,'9876543222', 'xyz@email.com'),
	(3,'8876543210', 'klm@email.com');

    SELECT 
    *
FROM
    contact;
	
    INSERT INTO contact_business(type_id,type_of_contact) VALUES
    (101,'Friend'),
    (102,'Family');
    SELECT 
    *
FROM
    contact_business;
     
     INSERT INTO address_book_user(user_id,type_id) VALUES
     (1,101),
     (1,102),
     (2,101),
     (3,102);
     
     select*from address_book_user;
     SELECT city,COUNT(City) FROM addressbook;






		


	



