-- retrieve crime scene report

SELECT
  description
FROM
  crime_scene_report
WHERE
  date = 20180115
AND city = 'SQL City'
AND type = 'murder';

-- output

-- Security footage shows that there were 2 witnesses. The first witness
-- lives at the last house on "Northwestern Dr". The second witness, named
-- Annabel, lives somewhere on "Franklin Ave".
