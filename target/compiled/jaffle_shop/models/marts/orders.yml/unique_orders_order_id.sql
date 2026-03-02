
    
    

select
    order_id as unique_field,
    count(*) as n_records

from FY26_TASK_FORCE_KIMBARA.DBT.orders
where order_id is not null
group by order_id
having count(*) > 1


