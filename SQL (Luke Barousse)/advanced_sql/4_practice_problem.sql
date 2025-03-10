/* 
Top 5 skills most mentioned in job postings: 
- Use subquery to find the highest skill ID count 
- Join with skills_dim to get names
*/
WITH skill_count AS (
SELECT 
    skill_id,
    COUNT (*) as total_skill
FROM 
    skills_job_dim sjd
GROUP BY
    skill_id
)
SELECT 
    sd.skills skill_name,
    sc.total_skill
FROM 
    skills_dim sd
LEFT JOIN skill_count sc ON sc.skill_id = sd.skill_id
ORDER BY
    sc.total_skill DESC
LIMIT 5;


SELECT
    sd.skills AS skill_name,
    COUNT (sjd.skill_id) AS total_skill
FROM 
    skills_dim AS sd 
LEFT JOIN skills_job_dim AS sjd ON sd.skill_id = sjd.skill_id
GROUP BY
    sd.skill_id
ORDER BY
    total_skill DESC
LIMIT 5;


/*
Determine the size category based on the number of job postings: 
- Use a subquery to calculate the total job postings per company.
- 'Small' company =< 10 posting
- 10 =< 'Medium' company  >= 50
- 'Large' company > 50 job postings
* Implement a subquery to aggregate the job count/company before classifying their size.
*/
SELECT 
    cd.name as company_name,
    COUNT (*) AS total_job,
        Case 
        When Count (*) < 10 then 'Small company'
        When Count (*) between 10 and 50 then 'Medium company'
        Else 'Large company'
    End as category_company_size
FROM job_postings_fact as jpf
LEFT JOIN company_dim AS cd ON cd.company_id = jpf.company_id
GROUP BY
    jpf.company_id,
    cd.name
ORDER BY
    total_job DESC;