select
    {{ dbt.utils.surrgate(['customer_id', 'order_date']) }} as id
    , customer_id
    , order_date
    , count(*)
from {{ref('stg_orders')}}
group 1, 2, 3