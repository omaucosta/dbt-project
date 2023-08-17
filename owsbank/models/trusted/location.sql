{{ config(materialized='table') }}

SELECT
  c.city_id,
  c.state_id,
  s.country_id,
  c.city,
  s.state,
  co.country
FROM {{ source('raw', 'city') }} AS c
  LEFT JOIN {{ source('raw', 'state') }} AS s
    ON s.state_id = c.state_id
  LEFT JOIN {{ source('raw', 'country') }} AS co
    ON co.country_id = s.country_id