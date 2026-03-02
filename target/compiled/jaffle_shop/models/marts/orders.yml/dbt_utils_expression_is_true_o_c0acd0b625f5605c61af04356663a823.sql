



select
    1
from FY26_TASK_FORCE_KIMBARA.DBT.orders

where not(order_items_subtotal = subtotal)

