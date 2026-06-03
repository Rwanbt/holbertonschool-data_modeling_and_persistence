SELECT courses.title AS course_title
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.coruse_id
GROUP BY courses.id, courses.title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(course_counts.student_count)
    FROM (
        SELECT COUNT(student_id) AS student_count
        FROM enrollments
        GROUP BY course_id
    ) AS course_counts
)
ORDER BY course_title ASC;
