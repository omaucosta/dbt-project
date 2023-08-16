{{ config(materialized='table') }}

select
  c.city_id,
  c.state_id,
  s.country_id,
  c.city,
  s.state,
  co.country
FROM raw.city c
  left join raw.state s
    on s.state_id = c.state_id
  left join raw.country co
    on co.country_id = s.country_id