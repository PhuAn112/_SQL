/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/
SELECT 
    job_id,
	job_title,
    name as company_name,
	job_location,
	job_schedule_type,
	salary_year_avg,
	job_posted_date
FROM
    job_postings_fact as jpf
LEFT JOIN company_dim as cd ON jpf.company_id = cd.company_id
WHERE
    job_title = 'Data Analyst'
    AND  salary_year_avg IS NOT NULL
    AND (job_work_from_home = 'True' OR job_location = 'Anywhere')
ORDER BY
    salary_year_avg DESC
LIMIT 10;
