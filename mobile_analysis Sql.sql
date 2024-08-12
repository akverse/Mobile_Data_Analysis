Create  Schema mobile_data;
use mobile_data;
SELECT 
    *
FROM
    mobile_data.mobile_analysis;

-- Check mobile features & price list
SELECT 
    Phone_name, Price
FROM
    mobile_analysis;

-- Find out the price of 5 most expensive  phones
SELECT 
    Phone_name, Price
FROM
    mobile_analysis
ORDER BY Price DESC
LIMIT 5;

-- Find out the price of 5 most cheapest  phones
SELECT 
    Phone_name, Price
FROM
    mobile_analysis
ORDER BY Price ASC
LIMIT 5;

--  List  of top 5  Samsung with price & all features
SELECT 
    Phone_name, Price
FROM
    mobile_analysis
WHERE
    Brands = 'Samsung'
ORDER BY Price DESC
LIMIT 5;

-- Must have android phone list then top 5 high price android phones
SELECT 
    *
FROM
    mobile_analysis
WHERE
    Operating_System_Type = 'Android'
ORDER BY Price DESC
LIMIT 5;

-- Must have android phone list then top 5 lower price android phones
SELECT 
    *
FROM
    mobile_analysis
WHERE
    Operating_System_Type = 'Android'
ORDER BY Price ASC
LIMIT 5;

-- Must have IOS phone list then top 5 high price IOS phones
SELECT 
    *
FROM
    mobile_analysis
WHERE
    Operating_System_Type = 'IOS'
ORDER BY Price DESC
LIMIT 5;

-- Must have IOS phone list then top 5 lower price IOS phones
SELECT 
    *
FROM
    mobile_analysis
WHERE
    Operating_System_Type = 'IOS'
ORDER BY Price ASC
LIMIT 5;

-- Find top 5 phones with 5G support
SELECT 
    Phone_name, Price
FROM
    mobile_analysis
WHERE
    5G_Availability = 'Yes'
ORDER BY Price DESC
LIMIT 5;

-- Total price of all mobiles is to be found with Brand name
SELECT 
    Brands, SUM(Price)
FROM
    mobile_analysis
GROUP BY Brands;