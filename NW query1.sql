select * from dbo.categories
select count(distinct customerid) from dbo.customers
select max(orderdate) ,min(orderdate) from dbo.orders
select * from employees
alter table employees 
drop column column14
select * from order_details
--update dbo.order_details
--set UnitPrice=round(unitprice,2)
select count(distinct orderid) from orders 
select * from orders 
select * from products 
select * from region
select * from territories
select * from shippers
select * from suppliers 
