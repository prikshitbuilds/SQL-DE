create database practice;

use practice;


--- Question 1
select * from city_table WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA' ;


--- Question 2
select NAME from city_table WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA' ;

--- Question 3
select * from city_table;

--- QUestion 4 
select * from city_table WHERE ID = 1661;

--- Question 5
select * from city_table WHERE COUNTRYCODE='JPN';

--- Questiom 6
SELECT NAME FROM city_table WHERE COUNTRYCODE='JPN';

--- Question 7
SELECT CITY , STATE FROM stationdataa;

--- Question 8
SELECT DISTINCT CITY FROM stationdataa WHERE ID % 2= 0;

--- Question 9
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS difference FROM stationdataa;


