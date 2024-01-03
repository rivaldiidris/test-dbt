-- models/test_dbt_model.sql


with customer_address as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        a.district
    from {{ ref('source_customer_table') }} c
    left join {{ ref('source_address_table') }} a
        on c.address_id = a.address_id
)

select
    customer_id,
    first_name,
    last_name,
    district
from customer_address
where district = 'Central Java'

