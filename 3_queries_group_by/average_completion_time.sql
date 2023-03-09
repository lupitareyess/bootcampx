SELECT students.name AS student_name, AVG(assignment_submissions.duration) AS average_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_duration DESC;