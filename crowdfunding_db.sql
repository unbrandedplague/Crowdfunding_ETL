-- Drop table if exists
DROP TABLE IF EXISTS campaign;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS subcategory;

DROP TABLE IF EXISTS contacts;

-- Create a new tables 
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR (255) NOT NULL,
	goal REAL NOT NULL,
	pledged REAL NOT NULL,
	outcome CHAR (15) NOT NULL,
	backers_count INT NOT NULL,
	country CHAR (2) NOT NULL,
	currency CHAR (3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category VARCHAR (50) NOT NULL,
	subcategory VARCHAR (50) NOT NULL,
	category_id VARCHAR (4) NOT NULL,
	subcategory_id VARCHAR (6) NOT NULL
);

CREATE TABLE category (
	category_id INT PRIMARY KEY,
	category_name VARCHAR (15)
);

CREATE TABLE subcategory (
	subcategory_id INT PRIMARY KEY,
	subcategory_name VARCHAR (25)
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name CHAR (100),
	last_name CHAR (100),
	email VARCHAR (255)
);

-- View table columns and datatypes
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

-- Insert data into the tables
-- View the tables to ensure all data has been imported correctly
-- Import data from campaign.csv

-- Import data from category.csv

-- Import data from subcategory.csv

-- Import data from contacts.csv

-- View table columns and datatypes
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

