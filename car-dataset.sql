SELECT * FROM carprice;
-- Q1. Which brands have the highest average selling price?
select brand, round(avg(price),2) as avg_price
from carprice
group by brand
order by avg_price desc ;

-- Q2. What are the top 10 most expensive cars?
select carname, brand, price
from carprice
order by price desc
limit 10;

-- Q3. Which car body type generates the highest revenue?
select carbody, round(avg(price),2) as highest_revenue
from carprice
group by carbody
order by highest_revenue desc;

-- Q4. Do diesel and gas vehicles differ in price?
select fueltype, round(avg(price),2) as avg_price
from carprice
group by fueltype;

-- Q5. Which brands offer the best fuel efficiency?
select brand, round(avg(avg_mpg),2) as avg_milage
from carprice
group by brand
order by avg_milage desc;

-- Q6. Which drivetrain is associated with higher prices?
select drivewheel,  round(avg(price),2) as avg_price
from carprice
group by drivewheel
order by avg_price desc;

-- Q7. Which engine type commands the highest average price?
select enginetype, round(avg(price),2) as avg_price
from carprice
group by enginetype order by avg_price desc;

-- Q8. Which cars have above-average prices?
select carname, brand, price
from carprice
where price > (select avg(price) from carprice)
order by price desc;

-- Q9. What is the distribution of cars across price categories?


-- Q10. Which brands provide the best balance of performance and price?
select brand, round(avg(horsepower),2) as avg_hp, round(avg(price),2) as avg_price
from carprice
group by brand
order by avg_hp desc;


-- Q11. Top 5 brands by average horsepower
select  brand,  round(avg(horsepower),2) as avg_hp
from carprice
group by brand
order by avg_hp desc
limit 5;