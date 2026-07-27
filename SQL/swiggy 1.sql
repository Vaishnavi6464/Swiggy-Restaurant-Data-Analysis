select * from swiggy_data;
----------------------------------------------
/*total restaurant*/
select count(distinct Restaurant_Name) from swiggy_data ;
---------------------------------------------------------
/*total restaurant locations*/
select count(distinct Location) from swiggy_data;
---------------------------------------------------------
/*total Restaurants per City*/
select 
	distinct City,
	count(distinct Restaurant_Name) as restaurant_per_city 
from swiggy_data 
group by City 
order by restaurant_per_city desc;
-----------------------------------------------------------
/*total Restaurants per State*/
select 
	distinct State,
	count(distinct Restaurant_Name) as restaurant_per_state 
from swiggy_data 
group by State 
order by restaurant_per_state desc;
-------------------------------------------------------------
/*total_dishes*/
select count(distinct Dish_Name) from swiggy_data ;
--------------------------------------------------------------
/*total_categories*/
select count(distinct Category) from swiggy_data;
--------------------------------------------------------------
/* Average Dishes price*/---
select Restaurant_Name,
	round(avg(Price_INR),2) 
from swiggy_data group by Restaurant_Name;
------------------------------------------------------------
/*average resturant rating*/ 
select Restaurant_Name,
	avg(Rating) as avg_rating 
from swiggy_data group by Restaurant_Name;
------------------------------------------------------------
/*average rating count*/
select 
	Restaurant_Name,
	avg(Rating_Count) as avg_rating 
from swiggy_data
group by Restaurant_Name;
-------------------------------------------------------------
/* Average Number of Dishes per Restaurant*/
with bss as (select 
	Restaurant_Name,
	count(Dish_Name) as total_dish 
from swiggy_data group by Restaurant_Name)
select 
	avg(total_dish) as avg_dish_count 
from bss ;
-------------------------------------------------------------
/*Top Restaurant by Rating count*/
select top 10
	Restaurant_Name,
	avg(Rating_Count) as total_rating 
from swiggy_data
group by Restaurant_Name
order by total_rating desc
;
-------------------------------------------------------------
/*top 10 restaurant by Rating*/
select top 10
	Restaurant_Name,
	round(avg(Rating),2) as rating
	from swiggy_data group by Restaurant_Name
	order by round(avg(Rating),2) desc;
--------------------------------------------------------------
/*Restaurant with Largest Menus*/
select top 1
	Restaurant_Name,
	count(distinct Dish_Name) as total_meanu
from swiggy_data group by Restaurant_Name 
order by count(Dish_Name) desc;
--------------------------------------------------------------
/*Most Expensive Category*/
select top 10
	Category,
	round(avg(Price_INR),2) as cost 
from swiggy_data 
group by Category 
order by cost desc;
--------------------------------------------------------------
/*Cheapest Category*/
select 
	Category,
	round(avg(Price_INR),2) as cost 
from swiggy_data 
group by Category 
having  round(avg(Price_INR),2)<=100
order by cost ;
--------------------------------------------------------------
/*Average Price by Category*/
select Category,round(avg(Price_INR),2) as cost
from swiggy_data group by Category;
--------------------------------------------------------------
/*Most Expensive Restaurants*/
select top 10 
	Restaurant_Name,
	round(avg(Price_INR),2) as total
from swiggy_data group by Restaurant_Name
order by round(avg(Price_INR),2) desc;
--------------------------------------------------------------
/*average price by city*/
select City,round(avg(Price_INR),2) as cost
from swiggy_data group by City;
--------------------------------------------------------------
/*cities with above average cost */
select city,round(avg(Price_INR),2) as avg_cost 
from swiggy_data 
group by city 
having round(avg(Price_INR),2)>(select 
									avg(Price_INR) 
								from swiggy_data);
--------------------------------------------------------------
/*monthly revenue*/
select format(Order_Date,'yyyy-MMM'),
round(sum(Price_INR),2) as cost from swiggy_data
group by format(Order_Date,'yyyy-MMM') 
order by round(sum(Price_INR),2) desc;
------------------------------------------------------------
/*Highest Rated Categories*/
select Category,round(avg(Rating),2) as rating 
from swiggy_data group by Category
having round(avg(Rating),2)>=4
order by round(avg(Rating),2) desc;
-------------------------------------------------------------
/*top 10 Rated Categories*/
select top 10
 Category,round(avg(Rating),2) as rating 
from swiggy_data group by Category
order by round(avg(Rating),2) desc;
------------------------------------------------------------
/*Rating distribution*/
select Rating,count(*) as Resturant from swiggy_data 
group by Rating order by Rating;
-------------------------------------------------------------
/*Category distibution*/
select Category,count(*) from swiggy_data 
group by Category order by Category;
-------------------------------------------------------------
/*Price by State*/
select 
	State,
	round(avg(Price_INR),2) as price 
from swiggy_data 
group by State 
order by round(avg(Price_INR),2) desc;
--------------------------------------------------------------
/*top 10 citys by rating*/
select top 10
	City,
	avg(Rating) as rating 
from swiggy_data
group by City
order by avg(Rating) desc;
---------------------------------------------------------------
/*top 10 most category restaurant*/
select top 10
	Restaurant_Name,
	count(distinct Category) from swiggy_data
group by Restaurant_Name
order by count(Category) desc;
------------------------------------------------------------
/*top 3 ranked restaurant from each state*/
with ass as (select 
				State,
				Restaurant_Name,
				avg(Price_INR) as cost 
			from swiggy_data
			group by state,Restaurant_Name),
bss as (select 
	State,
	Restaurant_Name,
	cost,
	RANK()over(partition by State
				order by cost desc)as rank 
from ass 
)
select * from bss where rank<=3
order by State,cost
;
----------------------------------------------------------------
/*restaurants whose average price is higher than the average price of their state.*/
select state,Restaurant_Name,
round(avg(Price_INR),2) as avg_cost
from swiggy_data s1
group by State,Restaurant_Name
having avg(Price_INR)>(select round(avg(Price_INR),2) 
from swiggy_data s2 where s1.state=s2.state );
