/*
Find job postings from the first quarter that have a salary greater than $70K
- Combine job posting tables from the first quarter of 2023 (Jan-Mar)
- Gets job postings with an average yearly salary > $70,000 
- Filter for Data Analyst Jobs and order by salary
*/

SELECT
    job_title_short,
    job_location,
    job_via,
    job_posted_date::Date,
    salary_year_avg
FROM (
    SELECT *
    FROM january_job
    UNION ALL
    SELECT *
    FROM february_job
    UNION ALL
    SELECT *
    FROM march_job
) AS quarter1_job_postings
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg > 70000
ORDER BY
    salary_year_avg DESC;


SELECT
    job_title_short,
    job_location,
    job_via,
    job_posted_date::Date,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg > 70000
    AND EXTRACT (quarter FROM job_posted_date) =1
ORDER BY
    salary_year_avg DESC;
