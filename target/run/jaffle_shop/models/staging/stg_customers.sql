
  create or replace   view FY26_TASK_FORCE_KIMBARA.DBT.stg_customers
  
   as (
    with

source as (

    select * from FY26_TASK_FORCE_KIMBARA.raw.raw_customers

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
  );

