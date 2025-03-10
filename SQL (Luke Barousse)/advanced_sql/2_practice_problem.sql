--Practice Problem
/* Find the avg salary both yearly and hoursly for job postings that posted after June 1, 2023. Group by job schedule type */
SELECT 
    job_schedule_type,
    ROUND(AVG(salary_hour_avg),2)  as avg_hourly_salary,
    ROUND(AVG(salary_year_avg) ,2) as avg_yearly_salary
FROM
    job_postings_fact
WHERE
    job_posted_date >= '2023-06-01' 
    AND (salary_hour_avg is NOT NULL OR salary_year_avg is NOT NULL )    
GROUP BY    
    job_schedule_type
ORDER BY
    avg_hourly_salary DESC;


/* Count job posting each month in 2023, adjust US/NY time zone. Asume job_posted_date is UTC. Group by month */
SELECT
    EXTRACT(MONTH FROM  job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') as job_posted_month,
    COUNT(*) as count_posted_month
FROM
    job_postings_fact
WHERE   
    EXTRACT(YEAR FROM job_posted_date) = '2023' AND
GROUP BY
    job_posted_month
ORDER BY
    count_posted_month DESC;


/* Find company offering health insurance in the second quarter of 2023. Use date extraction to filter quarter */
SELECT
    company_dim.name as company_name,
    DATE(job_postings_fact.job_posted_date) as posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_postings_fact.job_health_insurance = 'True' 
    AND EXTRACT(quarter FROM job_posted_date) = 2
    AND EXTRACT(YEAR FROM job_posted_date) =2023
