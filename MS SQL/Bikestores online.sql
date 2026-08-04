
select * from sales.order_items
select * from production.products 

select ord.order_id,
concat(cus.first_name, ' ' , cus.last_name) as 'cust name',
cus.city,
cus.state,
ord.order_date,
pro.product_name,
Cat.category_name,
sto.Store_name,
ord.shipped_date,
concat(sta.first_name, ' ' , sta.last_name) as 'sales rep',
sum(ite.QUANTITY) AS 'TOTAL_UNITS',
SUM(ite.QUANTITY * ite.list_price) AS 'REVENUE'
from sales.orders ord
join sales.customers cus
on ord.customer_id =cus.customer_id
join sales.order_items ite
on ord.order_id = ite.order_id
JOIN production.products pro
on ite.product_id=pro.product_id
join production.categories cat
on pro.category_id = cat.category_id 
join sales.stores sto
on ord.store_id =sto.store_id
join sales.staffs sta
on ord.staff_id = sta.staff_id
group by 
ord.order_id,
concat(cus.first_name, ' ', cus.last_name),
cus.city,
cus.state,
ord.order_date,
pro.product_name,
Cat.category_name,
sto.Store_name,
concat(sta.first_name, ' ' , sta.last_name),
ord.shipped_date

select * from sales.order_items
select * from sales.stores
select * from sales.staffs
select * from production.brands
select * from production.stocks
select * from sales.order_items
select * from production.categories
select * from sales.customers
select * from sales.orders