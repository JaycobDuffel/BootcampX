SELECT AVG(total_duration) AS average_total_duration
FROM (SELECT SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration) AS total_duration;