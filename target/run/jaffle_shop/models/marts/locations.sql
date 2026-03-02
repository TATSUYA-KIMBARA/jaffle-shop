
  
    

        create or replace transient table FY26_TASK_FORCE_KIMBARA.DBT.locations
         as
        (with

locations as (

    select * from FY26_TASK_FORCE_KIMBARA.DBT.stg_locations

)

select * from locations
        );
      
  