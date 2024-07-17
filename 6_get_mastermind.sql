WITH sql_symphony_concert AS (SELECT Count(*),
  person_id AS 'ID'
  FROM   facebook_event_checkin
  WHERE  event_name = 'SQL Symphony Concert'
  AND date BETWEEN 20171130 AND 20180101
  GROUP  BY person_id
  HAVING Count(*) = 3)
SELECT pt.NAME
FROM sql_symphony_concert AS mst
JOIN person AS pt ON mst.id = pt.id
JOIN drivers_license AS dlt ON pt.license_id = dlt.id
WHERE  dlt.height BETWEEN 64 AND 68
AND dlt.hair_color = 'red'
AND dlt.gender = 'female'
AND car_make = 'Tesla'
AND car_model = 'Model S';

-- output

-- Miranda Priestly
