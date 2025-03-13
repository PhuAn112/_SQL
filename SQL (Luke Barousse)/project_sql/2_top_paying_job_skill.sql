/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles.
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/
WITH top_paying_jobs AS (
    SELECT	
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact 
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND 
        job_location = 'Anywhere' AND 
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC;


SELECT	
    j.job_id,
    j.job_title,
    j.salary_year_avg,
    c.name AS company_name,
    s.skills
FROM job_postings_fact j
JOIN company_dim c ON j.company_id = c.company_id
JOIN skills_job_dim sj ON j.job_id = sj.job_id
JOIN skills_dim s ON sj.skill_id = s.skill_id
WHERE
    j.job_title_short = 'Data Analyst' AND 
    j.job_location = 'Anywhere' AND 
    j.salary_year_avg IS NOT NULL
ORDER BY
    j.salary_year_avg DESC
LIMIT 10;
