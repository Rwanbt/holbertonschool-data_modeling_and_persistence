SELECT courses.title AS course_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(assign_counts.assign_count)
    FROM (
        SELECT COUNT(id) AS assign_count
        FROM assignments
        GROUP BY course_id
    ) AS assign_counts
)
ORDER BY course_title ASC;
