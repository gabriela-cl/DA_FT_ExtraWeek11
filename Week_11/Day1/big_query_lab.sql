-- total number of incidents by year
SELECT year, COUNT(case_number) AS total_cases
FROM bigquery-public-data.chicago_crime.crime
GROUP BY year
ORDER BY total_cases DESC
LIMIT 5;

-- retrieve the unique districts of chicago
SELECT DISTINCT district
FROM bigquery-public-data.chicago_crime.crime;

-- how many people arrested or not in district 24
SELECT arrest, COUNT(unique_key)
FROM bigquery-public-data.chicago_crime.crime
WHERE district = 24
GROUP BY arrest;