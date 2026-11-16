-- Student performance report

SELECT
    UPPER(s.student_name) AS student_name,
    COUNT(m.subject_id) AS total_subjects,
    SUM(m.marks_obtained) AS total_marks,
    ROUND(AVG(m.marks_obtained), 2) AS average_marks
FROM students s
JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name;

-- Student details and age report

SELECT
    CONCAT(s.student_name, ' - Student') AS student_details,
    c.class_name,
    TIMESTAMPDIFF(YEAR, s.date_of_birth, CURDATE()) AS age,
    IFNULL(s.phone, 'Not Available') AS phone
FROM students s
LEFT JOIN classes c
    ON s.class_id = c.class_id;

-- Subject-wise marks analysis

SELECT
    UPPER(sub.subject_name) AS subject_name,
    LENGTH(sub.subject_name) AS name_length,
    MAX(m.marks_obtained) AS highest_marks,
    MIN(m.marks_obtained) AS lowest_marks,
    ROUND(AVG(m.marks_obtained), 2) AS average_marks
FROM subjects sub
JOIN marks m
    ON sub.subject_id = m.subject_id
GROUP BY sub.subject_id, sub.subject_name;

-- Student fee report

SELECT
    s.student_name,
    SUM(f.amount) AS total_fees,
    SUM(IFNULL(f.amount_paid, 0)) AS total_paid,
    ROUND(ABS(SUM(f.amount - IFNULL(f.amount_paid, 0))), 2)
        AS pending_amount,
    IF(
        SUM(f.amount - IFNULL(f.amount_paid, 0)) = 0,
        'Paid',
        'Pending'
    ) AS payment_status
FROM students s
JOIN fees f
    ON s.student_id = f.student_id
GROUP BY s.student_id, s.student_name;

-- Teacher salary and experience report 

SELECT
    CONCAT('Mr/Ms. ', teacher_name) AS teacher_name,
    YEAR(hire_date) AS hiring_year,
    TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS experience,
    salary AS monthly_salary,
    CEIL(salary * 12) AS annual_salary
FROM teachers;