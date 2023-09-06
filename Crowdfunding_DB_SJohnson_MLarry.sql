-- Drop table if exists
DROP TABLE IF EXISTS campaign;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS subcategory;

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

-- Insert data into the tables
-- View the tables to ensure all data has been imported correctly

-- Import data from campaign.csv
SELECT * FROM campaign;

-- Import data from category.csv
SELECT * FROM category;

-- Import data from subcategory.csv
SELECT * FROM subcategory;

