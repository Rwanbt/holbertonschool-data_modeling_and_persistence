SELECT students.name AS student_name, courses.title AS course_title,
FROM students
INNER JOIN enrollments ON student.id = enrollements.student_id
INNER JOIN courses ON enrollments.course_id = course.id
ORDER BY student_name ASC, course_title ASC;
