-- Drop table if exists
DROP TABLE IF EXISTS campaign;

-- DROP TABLE IF EXISTS category;

-- DROP TABLE IF EXISTS subcategory;

-- DROP TABLE IF EXISTS contacts;

-- Create a new tables 

CREATE TABLE category (
	category_id VARCHAR (4) PRIMARY KEY,
	category_name VARCHAR (15)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR (6) PRIMARY KEY,
	subcategory_name VARCHAR (25)
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name CHAR (100),
	last_name CHAR (100),
	email VARCHAR (255) 
);

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
	subcategory_id VARCHAR (6) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
 	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) 
);

-- To disable constraints on the child table (campaign)
ALTER TABLE campaign DISABLE TRIGGER ALL

-- Insert data into the tables
-- Import data from category.csv
" "\\copy public.campaign (cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launched_date, end_date, category, subcategory, category_id, subcategory_id) FROM '/Users/marvinalarry/Documents/Education/Tulsa Community College/Data Visualization/Homework/Challenge #13 - Project 2/Crowdfunding_ETL/Resources/campaign.csv' DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';""


-- Import data from subcategory.csv

-- Import data from contacts.csv

-- Import data from campaign.csv



-- View table columns and datatypes
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

-- Insert data into the tables

-- Import data from campaign.csv


-- Import data from category.csv

-- Import data from subcategory.csv

-- Import data from contacts.csv

-- View the tables to ensure all data has been imported correctly
-- View table columns and datatypes
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;