
  
    

  create  table "postgres"."public"."source_address_table__dbt_tmp"
  
  
    as
  
  (
    -- models/source_address_table.sql
select 
    address_id,
    district
from 
    public.address
  );
  