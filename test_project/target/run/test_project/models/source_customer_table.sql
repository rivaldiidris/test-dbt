
  
    

  create  table "postgres"."public"."source_customer_table__dbt_tmp"
  
  
    as
  
  (
    -- models/source_customer_table.sql
select 
    customer_id,
    first_name,
    last_name,
    address_id
from 
    public.customer
  );
  