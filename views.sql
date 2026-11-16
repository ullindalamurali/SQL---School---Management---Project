-- Display student details along with their class and section.

CREATE VIEW student_details_view AS
SELECT
    s.student_id,
    s.student_name,
    s.gender,
    s.email,
    s.phone,
    c.class_name,
    c.section
FROM students s
INNER JOIN classes c
ON s.class_id = c.class_id;

SELECT * FROM student_details_view;


-- Display student names, subject names, exam names, and marks.

CREATE VIEW student_marks_view AS
SELECT
    s.student_name,
    sub.subject_name,
    e.exam_name,
    m.marks_obtained,
    m.max_marks
FROM students s
INNER JOIN marks m
ON s.student_id = m.student_id
INNER JOIN subjects sub
ON m.subject_id = sub.subject_id
INNER JOIN exams e
ON m.exam_id = e.exam_id;

SELECT * FROM student_marks_view;

-- Identify students' average marks and academic performance.

CREATE VIEW student_performance_view AS
SELECT
    s.student_id,
    s.student_name,
    ROUND(AVG(m.marks_obtained), 2) AS average_marks,
    CASE
        WHEN AVG(m.marks_obtained) >= 90 THEN 'Excellent'
        WHEN AVG(m.marks_obtained) >= 80 THEN 'Very Good'
        WHEN AVG(m.marks_obtained) >= 70 THEN 'Good'
        WHEN AVG(m.marks_obtained) >= 60 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance
FROM students s
INNER JOIN marks m
ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name;

SELECT * FROM student_performance_view;

-- Help the accounts department monitor fee payments and pending amounts.

CREATE VIEW student_fee_view AS
SELECT
    s.student_id,
    s.student_name,
    f.fee_type,
    f.amount AS total_fee,
    f.amount_paid,
    (f.amount - f.amount_paid) AS pending_amount,
    f.status
FROM students s
INNER JOIN fees f
ON s.student_id = f.student_id;

SELECT * FROM student_fee_view;

-- Display which teachers are responsible for which subjects.

CREATE VIEW teacher_subject_view AS
SELECT
    t.teacher_id,
    t.teacher_name,
    sub.subject_name,
    t.salary
FROM teachers t
INNER JOIN subjects sub 
ON t.teacher_id = sub.teacher_id;

SELECT * FROM teacher_subject_view;