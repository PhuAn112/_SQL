/*
Question: What skills are most frequently required for the top-paying remote data analyst jobs, and what's their average salary impact?
- Identifies the top 10 highest-paying remote Data Analyst jobs
- Analyzes which specific skills are required for these high-paying roles
- Calculates how frequently each skill appears and the average salary associated with each skill
- Why? This helps job seekers understand which skills to prioritize for maximizing earning potential in remote data analyst positions
*/
WITH job_highest_salary as (
SELECT 
    job_id,
    salary_year_avg
FROM job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg is NOT NULL 
    AND job_location = 'Anywhere'
ORDER BY
    salary_year_avg DESC
LIMIT 10
)    
SELECT
    sd.skills as skill_name,
    COUNT (sjd.skill_id) as total_learned,
    ROUND(AVG (jhs.salary_year_avg),0) as skill_earning
FROM skills_job_dim as sjd
INNER JOIN skills_dim as sd ON sd.skill_id = sjd.skill_id
INNER JOIN job_highest_salary as jhs ON jhs.job_id = sjd.job_id
GROUP BY    
    sd.skill_id
ORDER BY
    skill_earning DESC;


