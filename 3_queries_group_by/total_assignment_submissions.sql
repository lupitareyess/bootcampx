SELECT cohorts.name as cohort_name, count(assignment_submissions.*) AS total_assignment_submissions
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_assignment_submissions DESC;