# Employment & Population Ratio in India (1961–1988)

This project explores employment trends and population ratios in India from 1961 to 1988 using data sourced from [WorldData](https://www.worlddata.info). I cleaned the raw data in Excel, structured it into a PostgreSQL table, and ran multiple queries to understand employment patterns across industries, genders, and age groups.

## 📂 Files in This Repository
- `population_ratio_data.sql`: SQL dump of the cleaned and structured data table (`popudata`)
- `queries.sql`: SQL queries for exploring and analyzing the dataset (to be added)

## 🧠 What I Did
- Collected raw data from a public source
- Cleaned and structured the data in Excel
- Imported the cleaned CSV into PostgreSQL
- Wrote and executed SQL queries:
  - Aggregate functions: `AVG()`, `MAX()`, `MIN()`, `AVG()`, `ORDER BY()`,`UNION ALL()`, `GROUP BY()`
  - Filtering using `WHERE` clauses
  - Extracting trends based on gender, age, and employment sector

## 📌 Tools Used
- Excel
- PostgreSQL
- SQL
- GitHub
## 🔍 Sample Queries
Here are examples of the SQL queries used in this project:

- **Average Employment in Agriculture (1980):**
```sql
SELECT AVG(y1980) AS avg_employment_agriculture_1980
FROM popudata
WHERE indicator_name ILIKE '%agriculture%' AND indicator_name ILIKE '%total%';

## 📈 Key Insights
- Employment in agriculture saw a steady decline post-1975.
- Female employment in the services sector began catching up in the 1980s.
- Industry-based employment stayed relatively consistent across genders.



## 📎 Data Source
[WorldData.info](https://www.worlddata.info)


