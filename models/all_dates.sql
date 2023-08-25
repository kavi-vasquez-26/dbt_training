{{ config (
    materialized="table"
)}}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="to_date('01/01/2022', 'mm/dd/yyy'",
    end_date="to_date('01/01/2023', 'mm/dd/yyy'")

}}