create schema cars;
use cars;
-- READ DATA --
select * from car_dekho;
-- Total cars:  To get a count of total Records --
select count(*) from car_dekho;
-- The manager asked the employee how many cars will be available in 2023 --
select count(*) from car_dekho
where year = 2023;
-- The manager asked the employee how many cars will be available in 2020,2021,2022 --
select count(*) from car_dekho #74
where year = 2020;
select count(*) from car_dekho #7
where year = 2021;
select count(*) from car_dekho #7
where year = 2022;
-- GROUPBY --
select count(*)
from car_dekho
where year in (2020,2021,2022) group by year;
-- Client asked me to print the total of all cars by year.I dont see all the details--
select year, count(*)
from car_dekho
group by year;
-- Client asked the dealer agent how many diesel cars will be there in 2020? --
select count(*)
from car_dekho
where year = 2020 and fuel ="Diesel"; #20
-- Client requested the dealer agent how many diesel cars will be there in 2020?--
select count(*)
from car_dekho
where year = 2020 and fuel ="Petrol"; #51
-- The manager told the employee to give a print of all the fuel cars of all years --
select year,count(*) 
from car_dekho
where fuel ="Petrol" 
group by year;
select year,count(*) 
from car_dekho
where fuel ="Diesel" 
group by year;
select year,count(*) 
from car_dekho
where fuel ="CNG" 
group by year;
-- Manager said there were more than 100 cars in a given year which year hhad moe than 100 cars?--
select year, count(*)
from car_dekho
group by year having count(*) > 100;
select year, count(*)
from car_dekho
group by year having count(*) <50;
-- The manager asked the employee about all car count details between 2015 and 2023; as we need a complete list--
select count(*) 
from car_dekho
where year between 2015 and 2023;
-- The manager asked the employee about all car details between 2015 and 2023; as we need a complete list--
select * from car_dekho
where year between 2015 and 2023;

 -- END --