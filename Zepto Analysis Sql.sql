SELECT * FROM zepto_project.`zepto_v2 (1)`;

RENAME TABLE `zepto_v2 (1)` TO zepto1;


SELECT * FROM zepto1 LIMIT 10;


ALTER TABLE zepto1
ADD COLUMN sku_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;
SELECT * FROM zepto1 LIMIT 10;

select count(*) from zepto1;

SELECT * FROM zepto1
WHERE name IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;


SHOW COLUMNS FROM zepto1;

ALTER TABLE zepto1
RENAME COLUMN `ï»¿Category` TO `category`;


select distinct category from zepto1
order by category;



select outOfStock , count(sku_id)
from zepto1
group by outOfStock;



select name, count(sku_id) as "No of Products"
from zepto1
group by name
having count(sku_id) > 1
order by count(sku_id) desc;


select * from zepto1
where mrp = 0 or discountedSellingPrice = 0;



SET SQL_SAFE_UPDATES = 0;

DELETE FROM zepto1
WHERE mrp = 0;

SET SQL_SAFE_UPDATES = 1;


update zepto1
set mrp=mrp/100.0 ,
discountedSellingPrice= discountedSellingPrice/100.0;

select mrp, discountedSellingPrice from zepto1;

-- Q1. Find the top 10 best-value products based on the discount percentage.

select name,mrp,discountedSellingPrice from zepto1
order by discountedSellingPrice desc
limit 10;

--Q2.What are the Products with High MRP but Out of Stock

SELECT DISTINCT name, mrp  
FROM zepto  
WHERE outOfStock = TRUE AND mrp > 300  
ORDER BY mrp DESC  
LIMIT 0, 1000;
SELECT DISTINCT outOfStock FROM zepto;


--Q3.Calculate Estimated Revenue for each category

select category,
sum(discountedSellingPrice * availableQuantity) as total_revenue
from zepto1
group by category
order by total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

select name,mrp,discountpercent
from zepto1
where mrp>500 and discountPercent<10
order by mrp desc, discountPercent desc;


-- Q5. Identify the top 5 categories offering the highest average discount percentage.

select category,
round(avg(discountpercent),2) as avg_discount
from zepto1
group by category
order by avg_discount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.

select name , weightInGms , discountedSellingPrice,
round((discountedSellingPrice/weightInGms),3) as price_per_gram
from zepto1
where weightInGms>=100
order by price_per_gram;

--Q7.Group the products into categories like Low, Medium, Bulk.

select distinct name, weightInGms,
case when weightInGms <1000 then 'Low'
when weightInGms<5000 then 'Medium'
else 'Bulk'
end as Weight_Category
from zepto1;

--Q8.What is the Total Inventory Weight Per Category 

select category,
sum(weightInGms*availableQuantity) as total_inventory_weight
from zepto1
group by category
order by total_inventory_weight;

show tables;