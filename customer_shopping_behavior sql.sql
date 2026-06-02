create database customer_behaviour;
use customer_behaviour;
select * from customer1
 limit 5;
CREATE TABLE customer1 (
    Customer_ID INT,
    Age INT,
    age_group varchar(100),
    Gender VARCHAR(20),
    Item_Purchased VARCHAR(100),
    Category VARCHAR(100),
    Purchase_Amount DECIMAL(10,2),
    Location VARCHAR(100),
    Size VARCHAR(10),
    Color VARCHAR(50),
    Season VARCHAR(50),
    Review_Rating DECIMAL(3,1),
    Subscription_Status VARCHAR(20),
    Shipping_Type VARCHAR(50),
    Discount_Applied VARCHAR(10),
    Promo_Code_Used VARCHAR(10),
    Previous_Purchases INT,
    Payment_Method VARCHAR(50),
    Frequency_of_Purchases VARCHAR(50)
);

desc customer1;

SELECT gender, SUM(`Purchase Amount (USD)`) AS revenue
FROM customer1
GROUP BY gender;

select 'Customer ID', 'purchase amount'
from customer1
where 'discount applied' = 'Yes' and 'purchase_amount' >= (select AVG('purchase_amount') from customer1);

desc customer1;
select 'Item Purchased', round(avg('Review Rating'),2) 
from customer1
group by 'item_purchased'
order by avg('review_rating') desc
limit 5;

select * from customer1;
show databases;

show create table customer1;

show columns from customer1;

select count(*) from customer1;
