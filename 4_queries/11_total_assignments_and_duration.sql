SELECT day, count(assignments) AS num_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;