/* 
Label new column as follows based on job_location:
- 'Anywhere' jobs as 'Remote'
- 'Melbourne VIC, Australia' jobs as  'Local_1'
- 'Sydney NSW, Australia' job as 'Local_2'
- Otherwise 'Onsite'
*/
SELECT
    Count(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        When job_location = 'Melbourne VIC, Australia' THEN 'Local_1'
        When job_location = 'Sydney NSW, Australia' THEN 'Local_2'
        ELSE 'Onesite'
    END AS Location_category
FROM
    job_postings_fact
WHERE   
    COALESCE(job_title_short, job_title) LIKE '%Analyst%' --returns the first non-null value
GROUP BY location_category;



