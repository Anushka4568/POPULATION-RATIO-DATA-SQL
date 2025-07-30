-- 🟢 1. View all data from the table
SELECT * FROM popudata;

-- 🟢 2. Find average employment in agriculture (overall)
SELECT AVG(y1980) AS avg_employment_agriculture_1980
FROM popudata
WHERE indicator_name ILIKE '%agriculture%' AND indicator_name ILIKE '%total%';

-- 🟢 3. Get maximum male employment in services in 1988
SELECT MAX(y1988) AS max_male_service_employment
FROM popudata
WHERE indicator_name ILIKE '%services%' AND indicator_name ILIKE '%male%';

-- 🟢 4. Compare female vs male employment in industry in 1975
SELECT country_name, indicator_name, y1975
FROM popudata
WHERE indicator_name ILIKE '%industry%' AND (indicator_name ILIKE '%male%' OR indicator_name ILIKE '%female%');

-- 🟢 5. Filter only female-related employment rows
SELECT *
FROM popudata
WHERE indicator_name ILIKE '%female%';

-- 🟢 6. Sort employment in agriculture (1980) in descending order
SELECT indicator_name, y1980
FROM popudata
WHERE indicator_name ILIKE '%agriculture%'
ORDER BY y1980 DESC;

-- 🟢 7. Group example (even if all values are from India, just for practice)
SELECT indicator_name, AVG(y1980) AS avg_1980
FROM popudata
GROUP BY indicator_name;

-- 🟢 8. Union All: Combine two sets — male & female service employment (just to demonstrate)
SELECT indicator_name, y1985
FROM popudata
WHERE indicator_name ILIKE '%services%' AND indicator_name ILIKE '%male%'
UNION ALL
SELECT indicator_name, y1985
FROM popudata
WHERE indicator_name ILIKE '%services%' AND indicator_name ILIKE '%female%';

SELECT indicator_name, y1985
FROM popudata
WHERE indicator_name ILIKE '%services%' AND indicator_name ILIKE '%male%'
UNION ALL
SELECT indicator_name, y1985
FROM popudata
WHERE indicator_name ILIKE '%services%' AND indicator_name ILIKE '%female%';

