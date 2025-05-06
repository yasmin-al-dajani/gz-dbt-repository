select
a.margin+b.shipping_fee-b.ship_cost-b.logcost as operational_margin
from 
{{ref("int_sales_margin")}} a
join
{{ref("stg_raw__ship")}} b
on (a.orders_id=b.orders_id)