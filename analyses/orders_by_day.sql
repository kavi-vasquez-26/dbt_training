with orders as (
    select * from {{ref('stg_orders')}}
),

daily as (
    select
        order_date
        , count(*) as order_num
    from orders
    group by order_date
),

-- Compare to number of order from previous day
compared as (
    select
        *
    , lag(order_num) over (order by order_date) as previous_day_orders
    from daily
)
select * from compared