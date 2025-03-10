/* 
Categorize salarues from each job posting. To see fits my desired salary range.
- Put salary into different buckets
- Define high, standard, low 
- Only analyst role
- Order from highest to lowest
*/
WITH rounded_salaries AS (
    SELECT 
        job_title,
        job_title_short,
        job_location,
        -- Round salaries to the nearest 5,000 for better grouping
        ROUND(salary_year_avg / 5000) * 5000 AS rounded_salary_year_avg,
        salary_year_avg,
        job_country
    FROM 
        job_postings_fact
    WHERE 
        (job_title LIKE '%Analyst%' OR job_title_short LIKE '%Analyst%')
        AND salary_year_avg IS NOT NULL
),

salary_distribution AS (
    SELECT 
        job_title,
        job_title_short,
        job_location,
        job_country,
        rounded_salary_year_avg,
        salary_year_avg,
        COUNT(*) OVER (PARTITION BY rounded_salary_year_avg) AS salary_population,
        NTILE(100) OVER (ORDER BY rounded_salary_year_avg) AS percentile_rank
    FROM 
        rounded_salaries
),

median_salary_cte AS (
    SELECT 
        PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_year_avg) AS median_salary
    FROM 
        job_postings_fact
    WHERE 
        job_title_short LIKE '%Analyst%'
        AND salary_year_avg IS NOT NULL
)

SELECT 
    sd.job_title,
    sd.job_location,
    sd.salary_population,
    sd.salary_year_avg,
    CASE
        WHEN sd.salary_year_avg >= ms.median_salary * 2 
            THEN 'Elite Salary'
        WHEN sd.percentile_rank > 70 AND sd.salary_population >= 20 
            THEN 'Popular Salary'
        WHEN sd.percentile_rank > 70 AND sd.salary_population < 20 
            THEN 'Elite Salary'
        WHEN sd.percentile_rank BETWEEN 26 AND 70 AND sd.salary_population >= 20 
            THEN 'Market Salary'
        WHEN sd.percentile_rank BETWEEN 26 AND 70 AND sd.salary_population < 20 
            THEN 'Hidden Gem Salary'
        WHEN sd.percentile_rank <= 25 AND sd.salary_population >= 20 AND sd.salary_year_avg < ms.median_salary 
            THEN 'Common Salary'
        WHEN sd.percentile_rank <= 25 AND sd.salary_population < 20 AND sd.salary_year_avg < ms.median_salary 
            THEN 'Scam/Emerging Salary'
        ELSE 'Uncategorized'
    END AS salary_category 
FROM
    salary_distribution sd 
CROSS JOIN
    median_salary_cte ms 
WHERE
    sd.job_country = 'Australia'
ORDER BY
    sd.rounded_salary_year_avg DESC;