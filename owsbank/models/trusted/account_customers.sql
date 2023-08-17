{{ config(materialized='table') }}

SELECT
  a.account_id,
  a.customer_id,
  c.customer_city AS city_id,
  a.created_at    AS account_created_at,
  a.status        AS account_status,
  a.account_branch,
  a.account_check_digit,
  a.account_number,
  c.first_name    AS customer_first_name,
  c.last_name     AS customer_last_name,
  c.cpf           AS customer_cpf
FROM {{ source('raw', 'accounts') }} AS a
  LEFT JOIN {{ source('raw', 'customers') }} AS c
    ON c.customer_id = a.customer_id