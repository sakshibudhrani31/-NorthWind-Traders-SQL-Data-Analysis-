--revenue by country 
with cte_country_rev as (
select 
c.country,
sum(od.unitprice*od.quantity) as total_revenue 
from orders as o
join order_details as od 
on o.OrderID=od.OrderID
join customers as c
on c.CustomerID=o.CustomerID
group by c.country 

) 
select * ,
round(total_revenue * 100/(select sum(total_revenue) from cte_country_rev),2) as percent_distribution
from cte_country_rev
order by total_revenue desc

--average order value 
with cte as (
select
orderid,
sum(unitprice*quantity) as avg_order_value 
from [dbo].[order_details]
group by orderid)
select avg(avg_order_value) as avg_value_order  from cte  ;

--monthly sales trend 
with cte_monthly_rev as (
select 
format(o.OrderDate,'yyyy-MM') as months,
sum(od.unitprice*od.quantity) as revenue 
from orders as o 
join order_details as od
on o.OrderID=od.OrderID 
GROUP BY format(o.OrderDate,'yyyy-MM') 
 )
 select *,
 concat(round(revenue*100/(select sum(revenue) from cte_monthly_rev) ,2),'%') as percent_contribution
 from cte_monthly_rev 
 order by percent_contribution desc 

 --percent contribution of each employee
 with cte_revenue as (
 select 
 e.EmployeeID ,
 sum(od.unitprice*od.quantity) as revenue
 from employees as e 
 join orders as o
 on o.EmployeeID=e.EmployeeID
 join order_details  as od
 on od.OrderID=o.OrderID
 group by e.EmployeeID
 ) 
 select *,
 round(revenue*100/(select sum(revenue) from cte_revenue ),2) as percent_contribution,
 rank() over(order by revenue desc) as ranking
 from cte_revenue 
 order by percent_contribution desc 


 --top supplier by revenue 
 select top 5 
 s.CompanyName,
 sum(od.unitprice*od.quantity) as revenue 
 from suppliers as s 
 join products as p 
 on p.SupplierID=s.SupplierID
 join order_details as od 
 on od.ProductID=p.ProductID
 group by s.CompanyName
 order by revenue desc; 

 --avg time between orders per customer 
 with cte_days as (
 select 
 customerid as customerid  ,
 orderdate as orderdate ,
 lag(orderdate) over(partition by customerid order by orderdate) as prev_date ,
 datediff(day,lag(orderdate) over(partition by customerid order by orderdate),orderdate) as dayss 
 from orders
 )
 select customerid,
 avg(dayss) as avg_days  
 from cte_days 
 where dayss is not null 
 group by customerid 
 order by avg_days 
 