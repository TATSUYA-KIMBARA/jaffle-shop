
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from FY26_TASK_FORCE_KIMBARA.DBT.customers
where customer_id is not null
group by customer_id
having count(*) > 1


