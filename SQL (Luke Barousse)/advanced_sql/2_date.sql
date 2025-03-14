SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date::DATE as date
FROM job_postings_fact;

--
SELECT
    job_title_short,
    job_location,
	job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'AEST' AS date_time
FROM
    job_postings_fact
LIMIT 15;

--
SELECT
    job_title_short,
    job_location,
	job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'AEST' AS date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact
LIMIT 15;

--
SELECT
    COUNT(job_id) as job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS MONTH
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    MONTH
ORDER BY
    job_posted_count DESC;




