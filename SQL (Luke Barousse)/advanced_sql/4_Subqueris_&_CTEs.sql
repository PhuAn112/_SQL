WITH january_job AS (
    SELECT *
    FROM job_postings_fact
    Where Extract (MONTH FROM job_posted_date) = 1
)

SELECT *
FROM january_job;

/*
Look at companies that don’t require a degree 
- Degree requirements are in the job_posting_fact table
- Use subquery to filter this in the company_dim table for company_names
- Order by the company name alphabetically
*/
SELECT
    company_id,
    name AS company_name 
FROM 
    company_dim
WHERE company_id IN (
    SELECT 
            company_id
    FROM 
            job_postings_fact 
    WHERE 
            job_no_degree_mention = true
    ORDER BY
            company_id
)
ORDER BY
    company_id ASC;


/*
Find the companies that have the most job openings. 
- Get the total number of job postings per company id (job_posting_fact)
- Return the total number of jobs with the company name (company_dim)
*/
WITH company_job_count AS (
SELECT
    company_id,
    COUNT(*) AS total_job
FROM
    job_postings_fact
GROUP BY 
    company_id
) 
SELECT
    cd.name AS company_name,
    cjc.total_job
FROM company_dim cd
LEFT JOIN company_job_count AS cjc ON cjc.company_id = cd.company_id
ORDER BY    
    total_job DESC;


