/*
Find the count of the number of remote job postings per skill
    - Display the top 5 skills by their demand in remote jobs
    - Include skill ID, name, and count of postings requiring the skill
*/
WITH remote_job_count As (
SELECT 
    skill_id,
    count (*) as skill_count
FROM 
    skills_job_dim as sjd
INNER JOIN job_postings_fact as jpf ON jpf.job_id = sjd.job_id
WHERE
    jpf.job_country = 'Australia'
GROUP BY
    skill_id
) 
SELECT
    sd.skill_id,
    sd.skills as skill_name,
    rjc.skill_count
FROM skills_dim as sd
INNER JOIN remote_job_count as rjc ON sd.skill_id = rjc.skill_id
ORDER BY
    rjc.skill_count DESC
LIMIT 5;



SELECT
    sd.skill_id,
    sd.skills as skill_name,
    COUNT(*) as skill_count
FROM
    skills_job_dim as sjd
INNER JOIN job_postings_fact as jpf ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim as sd ON sd.skill_id = sjd.skill_id
WHERE
    jpf.job_country = 'Australia'
    AND job_title_short = 'Data Analyst'
GROUP BY
    sd.skill_id,
    sd.skills
ORDER BY
    skill_count DESC
LIMIT 5;


WITH remote_job_skills AS (
    SELECT 
        skill_id,
        COUNT(*) AS skill_count
    FROM
        skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
    WHERE
        job_postings.job_work_from_home = True AND
        job_postings.job_title_short = 'Data Analyst'
    GROUP BY
        skill_id
)

SELECT 
    skills.skill_id,
    skills AS skill_name,
    skill_count  
FROM remote_job_skills
INNER JOIN skills_dim AS skills ON skills.skill_id = remote_job_skills.skill_id
ORDER BY
    skill_count DESC
LIMIT 5;