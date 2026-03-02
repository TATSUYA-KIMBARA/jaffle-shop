
  
    

        create or replace transient table FY26_TASK_FORCE_KIMBARA.DBT.products
         as
        (with

products as (

    select * from FY26_TASK_FORCE_KIMBARA.DBT.stg_products

)

select * from products
        );
      
  