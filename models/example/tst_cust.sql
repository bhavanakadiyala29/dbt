{{
    config(
        materialized='table'
    )
}}

WITH tst_cust AS (
    SELECT
        customer_id,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        address AS billing_address
    FROM
        dbt_bkadiyala.CustomerDetails 
)

SELECT * FROM tst_cust
