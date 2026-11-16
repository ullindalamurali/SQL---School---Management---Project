-- The accounts department wants to identify students whose pending fees are greater than ₹5,000 to follow up on payments.

SELECT s.student_name,
       c.class_name,
       SUM(f.amount - f.amount_paid) AS pending_fees
FROM students s
INNER JOIN classes c
ON s.class_id = c.class_id
INNER JOIN fees f
ON s.student_id = f.student_id
GROUP BY s.student_id, s.student_name, c.class_name
HAVING SUM(f.amount - f.amount_paid) > 5000
ORDER BY pending_fees DESC;


-- The school management wants to identify the top 5 students based on their total marks to recognize academic excellence.

SELECT s.student_name,
       c.class_name,
       SUM(m.marks_obtained) AS total_marks
FROM students s
INNER JOIN classes c
ON s.class_id = c.class_id
INNER JOIN marks m
ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name, c.class_name
ORDER BY total_marks DESC
LIMIT 5;


-- Find students who have not paid any fees.

SELECT s.student_name
FROM students s
LEFT JOIN fees f
ON s.student_id = f.student_id
WHERE f.fee_id IS NULL;

-- Display student names, marks, and grades.

SELECT s.student_name,
       m.marks_obtained,
       CASE
           WHEN m.marks_obtained >= 90 THEN 'A'
           WHEN m.marks_obtained >= 80 THEN 'B'
           WHEN m.marks_obtained >= 70 THEN 'C'
           WHEN m.marks_obtained >= 60 THEN 'D'
           ELSE 'Fail'
       END AS grade
FROM students s
INNER JOIN marks m
ON s.student_id = m.student_id
ORDER BY m.marks_obtained DESC;

-- Display students who scored more than 90 marks in Mathematics.

SELECT s.student_name, m.marks_obtained
FROM students s
INNER JOIN marks m
ON s.student_id = m.student_id
WHERE m.subject_id IN
      (SELECT subject_id
       FROM subjects
       WHERE subject_name = 'Mathematics')
AND m.marks_obtained > 90;

-- Display subjects whose average marks are greater than 80.

SELECT sub.subject_name,
       AVG(m.marks_obtained) AS average_marks
FROM subjects sub
INNER JOIN marks m
ON sub.subject_id = m.subject_id
GROUP BY sub.subject_id, sub.subject_name
HAVING AVG(m.marks_obtained) > 80;

-- The school management wants to identify students whose attendance percentage is below 75% to take necessary action.

SELECT s.student_name,
       c.class_name,
       COUNT(a.attendance_id) AS total_days,
       SUM(CASE
               WHEN a.status = 'Present' THEN 1
               ELSE 0
           END) AS present_days,
       ROUND(
           SUM(CASE
                   WHEN a.status = 'Present' THEN 1
                   ELSE 0
               END) * 100.0 / COUNT(a.attendance_id),
           2
       ) AS attendance_percentage
FROM students s
INNER JOIN classes c
ON s.class_id = c.class_id
INNER JOIN attendance a
ON s.student_id = a.student_id
GROUP BY s.student_id, s.student_name, c.class_name
HAVING attendance_percentage < 75
ORDER BY attendance_percentage ASC;

-- Find the total number of students in each class.

SELECT c.class_name, c.section,
       COUNT(s.student_id) AS total_students
FROM classes c
INNER JOIN students s
ON c.class_id = s.class_id
GROUP BY c.class_id, c.class_name, c.section;

-- Display students who belong to Class 10.

SELECT s.student_name, c.class_name, c.section
FROM students s
INNER JOIN classes c
ON s.class_id = c.class_id
WHERE c.class_name = 'Class 10';