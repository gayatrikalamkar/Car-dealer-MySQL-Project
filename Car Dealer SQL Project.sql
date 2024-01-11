create database cars;

use cars;

-- 1.read car data
select * from car_dealer_company;

-- 2.Total no of cars: to get a count of all records
select count(*) from car_dealer_company;

-- 3.The manager asked the employ How many cars will be available in 2023?
select count(*) from car_dealer_company where year = 2023;

-- 4.The manager asked the employee How many cars were available in 2020, 2021, 2022?
select count(*) from car_dealer_company where year = 2020;
select count(*) from car_dealer_company where year = 2021;
select count(*) from car_dealer_company where year = 2022;

-- 5.Client asked me to print the total of all cars by year?
select year, count(*) from car_dealer_company group by year;

-- 6.Client asked to car dealer agent How many diesel cars were there in 2020?
select count(*) from car_dealer_company where year = 2020 and fuel = 'diesel';

-- 7.Client requested a car dealer agent How many petrol cars were there in 2020?
select count(*) from car_dealer_company where year = 2020 and fuel = 'petrol';

-- 8.The manager told the employee to give a print of all the fuel cars (petrol, diesel, and CNG) come by all year.
select year, count(*) from car_dealer_company where fuel = 'diesel' group by year;
select year, count(*) from car_dealer_company where fuel = 'petrol' group by year;
select year, count(*) from car_dealer_company where fuel = 'CNG' group by year;

-- 9.Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
select year, count(*) from car_dealer_company group by year having count(*)>100;

-- 10.The manager said to the employes all cars count details between 2015 and 2023; we need a complete list.
select count(*) from car_dealer_company where year between 2015 and 2023;

-- 11.The manager said to the employes All cars details between 2015  in 2023 we need complete list.
select * from car_dealer_company where year between 2015 and 2023;