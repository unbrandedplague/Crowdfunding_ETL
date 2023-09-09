# Crowdfunding_ETL

Marvina and I extracted and transformed the crowdfunding Excel data. 
We split the category and subcategory to create two separate DataFrames.

In the category DataFrame, we created a category ID labeled as cat1, cat2, and so on. 
We created columns containing the category information.
Category was then exported into a CSV file.

In the subcategory, we proceeded to do the same. 
Creating unique IDs of scat1, scat2, and so on. 
Creating columns containing only the subcategory information.
that was then exported into a CSV file.

We then extracted and transferred the crowdfunding Excel data.
That was then turned into a DataFrame with unique identifiers for the cf ID, contact, company, and so on. 
That data was then exported into another CSV file.

We finally extracted the contacts Excel data using Pandas.
We imported that into a DataFrame with its own unique identities. 
Extracting dictionaries and creating comprehensive lists.
We created a unique Dataframe with clean data and split each name by first and last. 
The data was then exported into its own CSV.

1. Create tables in category, subcategory, contacts, campaign order
2. Import csv files into tables using the psAdmin4 User Interface (UI) in the same table order as in Step 1
    a. right-click on the table
    b. select Import/Export Data
    c. click on folder icon to Navigate to csv file to be imported
    d. select the csv file, click ok
3. View table columns and datatypes and imported data by running SELECT * FROM 