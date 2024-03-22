DROP TABLE IF EXISTS Campaign;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Subcategory;

CREATE TABLE Contacts(
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
)
								
SELECT * FROM Contacts;

CREATE TABLE Category(
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(30) NOT NULL
)

SELECT * FROM Category;

CREATE TABLE Subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	sub_category VARCHAR(30) NOT NULL
)

SELECT * FROM Subcategory;

CREATE TABLE Campaign(
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(200) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30),
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
)

SELECT * FROM Campaign;
