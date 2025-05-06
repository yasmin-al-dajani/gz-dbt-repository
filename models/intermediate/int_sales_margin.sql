-- Where is the data about quantity? product 
-- Where is the data about purchase_price? product 
-- Where is the data about revenue? sales 
-- margin = revenue - purchase_cost
-- purchase_cost = quantity * purchase_price

select
p.purchase_price
p.purchase_price*q.quantity as purchase_cost
r.revenue-purchase_cost as sales_margin 
from
 {{ref("stg_raw__product")}} p 
join
 {{ref("stg_raw__sales")}} q
 on (products_id)
 join
 {{ref("stg_raw__sales", )}} r
 on (products_id)
