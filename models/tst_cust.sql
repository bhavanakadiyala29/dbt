{{
    config(
        materialized='table'
       )
}}
SELECT
    customer_id, name as customer_name
FROM
customers
    