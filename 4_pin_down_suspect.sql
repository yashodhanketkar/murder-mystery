SELECT
  mt.id,
  mt.name,
  cit.check_in_time,
  cit.check_out_time,
  dlt.plate_number
FROM get_fit_now_member AS mt
JOIN get_fit_now_check_in AS cit ON mt.id = cit.membership_id
JOIN person AS pt ON mt.person_id = pt.id
JOIN drivers_license AS dlt on pt.license_id = dlt.id
WHERE mt.id LIKE '%48Z%' AND dlt.plate_number LIKE '%H42W%' AND check_in_date = 20180109;

-- output

-- 48Z55	Jeremy Bowers	1530	1700	0H42W2
