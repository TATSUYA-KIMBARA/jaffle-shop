
  
    

        create or replace transient table FY26_TASK_FORCE_KIMBARA.DBT.supplies
         as
        (with

supplies as (

    select * from FY26_TASK_FORCE_KIMBARA.DBT.stg_supplies

)

select * from supplies
        );
      
  