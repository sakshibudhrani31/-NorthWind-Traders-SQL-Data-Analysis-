--year wise total revenue 
with cte_year_sales as (
select 
year(o.orderdate) as years,
sum(od.unitprice*od.quantity) as total_revenue
from orders as o
join order_details as od
on od.OrderID=o.OrderID
group by year(o.orderdate ) 
) 
, cte_previous_year_sales as (select *,
round((total_revenue *100 /(select sum(total_revenue) from cte_year_sales)),2) as percent_wise_sales ,
lag(round((total_revenue *100 /(select sum(total_revenue) from cte_year_sales)),2)) over(order by years) as previous_year_sales 
from cte_year_sales 
) 

select * ,
round((percent_wise_sales-previous_year_sales) ,2) as percentage_change 

from cte_previous_year_sales
order by years

--top 5 customers by revenue 
with cte_top_cust as (
select 
c.contactname,
sum(od.unitprice*od.quantity) as total_revenue 
from orders as o
join order_details as od
on od.OrderID=o.OrderID
join customers as c
on c.CustomerID=o.CustomerID
group by c.contactname
) 
select top 5  *,
round(total_revenue * 100.0 /(select sum(total_revenue) from cte_top_cust) ,2) as percentage_contribution 
from cte_top_cust 
order by total_revenue desc


--best selling products by quantity  and revenue 
with cte_best_selling_products as(
select 
p.productname,
sum(od.quantity) as total_quantity
from products as p 
join order_details as od 
on od.ProductID=p.ProductID
group by p.ProductName
),
cte_best_sellingby_revenue as (
select 
p.productname,
sum(od.quantity*od.unitprice) as total_rev 
from products as p
join order_details as od 
on od.ProductID=p.ProductID
group by p.ProductName
)
---top 10 products by quantity
--select top 10 * from cte_best_selling_products
--order by total_quantity desc

--top 10 products by revenue 
--select  top 10 * from cte_best_sellingby_revenue 
--order by total_rev desc 

--top 10 products by revenue and quantity both
/*select top 10 
q.productname,
q.total_quantity,
r.total_rev 
from cte_best_selling_products  as q
join cte_best_sellingby_revenue  as r
on r.ProductName=q.ProductName
order by q.total_quantity desc*/




