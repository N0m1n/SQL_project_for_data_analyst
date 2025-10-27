
-- SELECT  job_posted_date::DATE AS date_column
-- FROM job_postings_fact
-- LIMIT 10;

-- SELECT job_title_short AS title,
--     job_location AS location,
--     job_posted_date::DATE AS date
-- FROM job_postings_fact

-- LIMIT 50 ;

-- SELECT job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST'
-- FROM job_postings_fact

-- LIMIT 10 ;

-- SELECT job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
--     EXTRACT (MONTH FROM job_posted_date) AS month,
--     EXTRACT (YEAR FROM job_posted_date) AS year
-- FROM job_postings_fact

-- LIMIT 10 ;

-- SELECT  
--     COUNT(job_id) AS job_posted_count,
--     EXTRACT(MONTH FROM job_posted_date) AS month
-- FROM job_postings_fact
-- WHERE job_title_short='Data Analyst'
-- GROUP BY month
-- ORDER BY job_posted_count DESC;

--Problem solving-- 

-- SELECT 
-- job_schedule_type,
--  AVG (salary_year_avg) AS total_year_avg,
--  AVG (salary_hour_avg) AS total_hour_avg

-- FROM job_postings_fact

-- WHERE job_posted_date::DATE > '2023-06-01'

-- GROUP BY job_schedule_type;

-- SELECT COUNT(job_title_short) AS job_title,

-- EXTRACT (MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS month

-- FROM job_postings_fact

-- WHERE 
-- EXTRACT (YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') = 2023

-- GROUP BY month

-- ORDER BY month;

-- SELECT job_postings.job_title_short,
-- companies.name

-- FROM job_postings_fact AS job_postings
-- LEFT JOIN company_dim AS companies ON job_postings.company_id=companies.company_id

-- WHERE job_postings.job_health_insurance = 'TRUE'
-- ANd EXTRACT (QUARTER FROM job_postings.job_posted_date)=2
-- -- AND  EXTRACT (MONTH FROM job_postings.job_posted_date) BETWEEN 4 AND 6
-- AND  EXTRACT (YEAR FROM job_postings.job_posted_date) = 2023;


--Create january job table 
-- CREATE TABLE january_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date)=1
--     AND EXTRACT(YEAR FROM job_posted_date)=2023;

-- SELECT job_posted_date
-- FROM january_jobs;

-- Create february job table 
-- CREATE TABLE february_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date)=2
--     AND EXTRACT(YEAR FROM job_posted_date)=2023;

-- SELECT job_posted_date
-- FROM february_jobs;

-- Create march job table 
-- CREATE TABLE march_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date)=3
--     AND EXTRACT(YEAR FROM job_posted_date)=2023;

-- SELECT job_posted_date
-- FROM march_jobs;