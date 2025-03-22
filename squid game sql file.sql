create database newproject;
use newproject;
select*from `episode4 marble github dataa`;

#1 find the youngest and oldest person in the dataset
select MIN(Age) AS Youngest_Age, MAX(Age) AS Oldest_Age FROM `episode4 marble github dataa`;

#2 retrieve players details who have monthly income more than 1000 and savings amount more than 5000
SELECT * FROM `episode4 marble github dataa`WHERE Monthly_income > 1000 AND Savings_amount > 5000;

#3 count the no of players who has own car
select own_car,count(Own_car) from `episode4 marble github dataa` where Own_car="yes";

#4 find the total no of players in each occupation
select occupation,count(Occupation) as totalplayers from `episode4 marble github dataa` group by occupation;

#5 find the total no of players in each education level
select Education_level,count(Education_level) as total from `episode4 marble github dataa`group by Education_level;

#6 Calculate the total savings amount for each occupation.
select occupation,sum(Savings_amount) as totalsavings from `episode4 marble github dataa`group by occupation;

#7 Find the Most Common Combination of Education Level and Occupation
SELECT Education_level, Occupation, COUNT(*) AS Count FROM `episode4 marble github dataa` GROUP BY Education_level, Occupation ORDER BY Count DESC LIMIT 1;

#8 Retrieve the average savings amount for each occupation, grouped by marital status and whether they own a car
SELECT Occupation, Marital_status, Own_car, AVG(Savings_amount) AS Avg_Savings FROM `episode4 marble github dataa` GROUP BY Occupation, Marital_status, Own_car ORDER BY Occupation, Marital_status, Own_car;
 
#9 Find the Oldest Person in Each Marital Status Category
SELECT * FROM (SELECT Marital_status, Age, ROW_NUMBER() OVER (PARTITION BY Marital_status ORDER BY Age DESC) AS Row_Num FROM `episode4 marble github dataa`) ranke WHERE Row_Num = 1;

#10 Find the Youngest Person Who Owns Both a Car and a House
SELECT * FROM  `episode4 marble github dataa` WHERE Own_car = 'yes' AND Own_house = 'yes'ORDER BY Age ASC LIMIT 1;

#11 Find the Oldest Person Who Is Still Alive
SELECT * FROM `episode4 marble github dataa` WHERE Dead_or_Alive = 'Alive'ORDER BY Age DESC LIMIT 1;

#12 Find the Youngest Individual with the Highest Savings
SELECT * FROM `episode4 marble github dataa` ORDER BY Savings_amount DESC, Age ASC LIMIT 1;

#13 Find the Occupation with the Highest Number of Alive Individuals
SELECT Occupation, COUNT(*) AS Alive_Count FROM `episode4 marble github dataa` WHERE Dead_or_Alive = 'Alive'GROUP BY Occupation ORDER BY Alive_Count DESC LIMIT 1;

#14 Find the Education Level with the Highest Average Savings
SELECT Education_level, AVG(Savings_amount) AS Avg_Savings FROM `episode4 marble github dataa` GROUP BY Education_level ORDER BY Avg_Savings DESC LIMIT 1;

#15 Identify the Most Common Marital Status Among Car Owners
SELECT Marital_status, COUNT(*) AS Car_Owners FROM `episode4 marble github dataa` WHERE Own_car = 'yes'GROUP BY Marital_status ORDER BY Car_Owners DESC LIMIT 1;

#16 Compare the Average Savings of Alive vs. Deceased Individuals
SELECT Dead_or_Alive, AVG(Savings_amount) AS Avg_Savings FROM `episode4 marble github dataa` GROUP BY Dead_or_Alive;

#17 Find the Three Most Common Occupations Among the Deceased
SELECT Occupation, COUNT(*) AS Death_Count FROM `episode4 marble github dataa` WHERE Dead_or_Alive = 'Dead'GROUP BY Occupation ORDER BY Death_Count DESC LIMIT 3;

#18  Compare Average Income of Car Owners vs. Non-Car Owners by Gender
SELECT Own_car,AVG(Monthly_income) AS Avg_Income FROM `episode4 marble github dataa` GROUP BY  Own_car ORDER BY  Avg_Income DESC;

#19 Find the Youngest Person with the Most Savings
SELECT * FROM `episode4 marble github dataa` ORDER BY Savings_amount DESC, Age ASC LIMIT 1;

#20 Identify the Most Common Age of Homeowners
SELECT Age, COUNT(*) AS Homeowner_Count FROM `episode4 marble github dataa` WHERE Own_house = 'yes'GROUP BY Age ORDER BY Homeowner_Count DESC LIMIT 1;











