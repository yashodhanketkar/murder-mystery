-- retrieve witness primary info

SELECT
  *
FROM
  person 
WHERE
  address_street_name = 'Northwestern Dr'
ORDER BY
  address_number DESC
LIMIT 1;

SELECT
  *
FROM
  person 
WHERE
  address_street_name = 'Franklin Ave'
AND name LIKE 'Annabel%';

-- output

-- 14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949
-- 16371	Annabel Miller	490173	103	Franklin Ave	318771143
