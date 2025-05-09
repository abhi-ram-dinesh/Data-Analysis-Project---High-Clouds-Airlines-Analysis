use airline;
show tables;

desc maindata;
-- KPI 1

alter table maindata add column Date date;
UPDATE maindata
SET `Date` = STR_TO_DATE(CONCAT(Year, '-', Month, '-', Day), '%Y-%m-%d');
select year,month,day,date from maindata limit 10;
select year,month,monthname(date) as 'Month Name' ,quarter(date) as 'Quarter',concat(year,"-",monthname(date)) as 'Year Month',weekday(date) as 'Weekday no' from maindata;
alter table maindata add column Financial_month int;
UPDATE maindata
SET Financial_Month = CASE 
  WHEN MONTH(date) >= 4 THEN MONTH(date) - 3
  ELSE MONTH(date) + 9
END;
select month,financial_month from maindata limit 10;
alter table maindata add column financial_quarter int;
update maindata
set Financial_Quarter = case
when financial_month <= 3 then 1
when financial_month >3 and financial_month <=6 then 2
when financial_month >6 and financial_month <=9 then 3
else 4
end;
select month,quarter(date),financial_month,financial_quarter from maindata;

-- Ans 1
select Year,Month,monthname(date) as 'Month Name' ,concat("Q",quarter(date)) as 'Quarter',concat(year,"-",monthname(date)) as 'Year Month',weekday(date)+1 as 'Weekday no',dayname(date) as 'Weekday Name', Financial_Month , concat("Q",financial_quarter) as "Financial Quarter" from maindata;
-- KPI 2

-- Yearly Load Factor %

select year(date) as "Year",round((sum(transported_passengers)/sum(available_seats))*100,2) as 'Load Factor %' from maindata group by year(date) order by year(date);

-- Quarterly Load Factor %

select quarter(date) as "Quarter",round((sum(transported_passengers)/sum(available_seats))*100,2) as 'Load Factor %' from maindata group by quarter(date) order by quarter(date);

-- Monthly Load Factor % 

select month(date) as "Month",round((sum(transported_passengers)/sum(available_seats))*100,2) as 'Load Factor %' from maindata group by month(date) order by month(date);


-- KPI 3 

select Carrier_Name , round((sum(transported_passengers)/sum(available_seats))*100,2) as 'Load_Factor' from maindata group by carrier_name order by load_factor desc;

-- KPI 4

select carrier_name,sum(transported_passengers) as "Total Passengers" from maindata group by carrier_name order by sum(transported_passengers) desc limit 10;

-- KPI 5

select From_To_City from maindata group by From_To_City order by count(airline_id) desc limit 10;

-- KPI 6

alter table maindata add column Weekend_Weekday text;

update maindata set Weekend_weekday = case
when weekday(date)<5 then "Weekday"
else "Weekend"
end; 

select dayname(date),weekend_weekday from maindata limit 10;

select weekend_weekday , round((sum(transported_passengers)/sum(available_seats))*100,2) as 'load_factor' from maindata group by weekend_weekday;


-- KPI 7
alter table maindata add column Distance_Interval text;
 update maindata set Distance_Interval = Case
  when Distance_Group_ID = 1 then "Less Than 500 Miles"
  when Distance_Group_ID = 2 then "500-999 Miles"
  when Distance_Group_ID = 3 then "1000-1499 Miles"
  when Distance_Group_ID = 4 then "1500-1999 Miles"
  when Distance_Group_ID = 5 then "2000-2499 Miles"
  when Distance_Group_ID = 6 then "2500-2999 Miles"
  when Distance_Group_ID = 7 then "3000-3499 Miles"
  when Distance_Group_ID = 8 then "3500-3999 Miles"
  when Distance_Group_ID =9 then "4000-4499 Miles"
  when Distance_Group_ID = 10 then "4500-4999 Miles"
  when Distance_Group_ID = 11 then "5000-5499 Miles"
  when Distance_Group_ID = 12 then "5500-5999 Miles"
  when Distance_Group_ID = 13 then "6000-6499 Miles"
  when Distance_Group_ID = 14 then "6500-6999 Miles"
  when Distance_Group_ID = 15 then "7000-7499 Miles"
  when Distance_Group_ID = 16 then "7500-7999 Miles"
  when Distance_Group_ID = 17 then "8000-8499 Miles"
  when Distance_Group_ID = 18 then "8500-8999 Miles"
  when Distance_Group_ID = 19 then "9000-9499 Miles"
  when Distance_Group_ID = 20 then "9500-9999 Miles"
  when Distance_Group_ID = 21 then "10000-10499 Miles"
  when Distance_Group_ID = 22 then "10500-10999 Miles"
  when Distance_Group_ID = 23 then "11000-11499 Miles"
  when Distance_Group_ID = 24 then "11500-11999 Miles"
  when Distance_Group_ID = 25 then "12000 Miles and Greater"
  
  end; 

select distance_interval, count(Airline_ID) as No_Of_Flights from maindata group by distance_interval order by No_Of_Flights desc;
