INSERT INTO teachers
(teacher_name, gender, email, phone, hire_date, salary)
VALUES
('Ramesh', 'Male', 'ramesh@gmail.com', '9876500001', '2018-06-10', 45000),
('Suresh', 'Male', 'suresh@gmail.com', '9876500002', '2019-07-15', 42000),
('Priya', 'Female', 'priya@gmail.com', '9876500003', '2020-01-20', 40000),
('Anjali', 'Female', 'anjali@gmail.com', '9876500004', '2017-05-12', 50000),
('Kiran', 'Male', 'kiran@gmail.com', '9876500005', '2021-06-18', 38000),
('Divya', 'Female', 'divya@gmail.com', '9876500006', '2022-02-10', 35000),
('Rahul', 'Male', 'rahul@gmail.com', '9876500007', '2020-08-25', 43000),
('Meena', 'Female', 'meena@gmail.com', '9876500008', '2016-04-05', 55000);

INSERT INTO classes
(class_name, section, academic_year, class_teacher_id)
VALUES
('Class 6', 'A', '2026-2027', 1),
('Class 7', 'A', '2026-2027', 2),
('Class 8', 'A', '2026-2027', 3),
('Class 9', 'A', '2026-2027', 4),
('Class 10', 'A', '2026-2027', 5),
('Class 10', 'B', '2026-2027', 6);

INSERT INTO students
(student_name, gender, date_of_birth, email, phone, admission_date, class_id)
VALUES
('Arjun', 'Male', '2014-05-12', 'arjun@gmail.com', '9000000001', '2020-06-10', 1),
('Sneha', 'Female', '2014-08-15', 'sneha@gmail.com', '9000000002', '2020-06-10', 1),
('Rahul', 'Male', '2013-03-20', 'rahul.s@gmail.com', '9000000003', '2019-06-12', 2),
('Priya', 'Female', '2013-11-25', 'priya.s@gmail.com', '9000000004', '2019-06-12', 2),
('Karthik', 'Male', '2012-07-18', 'karthik@gmail.com', '9000000005', '2018-06-15', 3),
('Divya', 'Female', '2012-09-10', 'divya.s@gmail.com', '9000000006', '2018-06-15', 3),
('Vijay', 'Male', '2011-02-14', 'vijay@gmail.com', '9000000007', '2017-06-10', 4),
('Anu', 'Female', '2011-12-05', 'anu@gmail.com', '9000000008', '2017-06-10', 4),
('Manoj', 'Male', '2010-04-22', 'manoj@gmail.com', '9000000009', '2016-06-12', 5),
('Keerthi', 'Female', '2010-06-30', 'keerthi@gmail.com', '9000000010', '2016-06-12', 5),
('Nikhil', 'Male', '2010-08-19', 'nikhil@gmail.com', '9000000011', '2016-06-12', 6),
('Lavanya', 'Female', '2010-10-11', 'lavanya@gmail.com', '9000000012', '2016-06-12', 6);

INSERT INTO subjects (subject_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2),
('Science', 3),
('Social Studies', 4),
('Computer Science', 5),
('Telugu', 6),
('Hindi', 7),
('Physical Education', 8);

INSERT INTO attendance
(student_id, attendance_date, status)
VALUES
(1, '2026-10-01', 'Present'),
(2, '2026-10-01', 'Present'),
(3, '2026-10-01', 'Absent'),
(4, '2026-10-01', 'Present'),
(5, '2026-10-01', 'Present'),
(6, '2026-10-01', 'Absent'),
(7, '2026-10-01', 'Present'),
(8, '2026-10-01', 'Present'),
(9, '2026-10-01', 'Absent'),
(10, '2026-10-01', 'Present'),
(11, '2026-10-01', 'Present'),
(12, '2026-10-01', 'Present'),
(1, '2026-10-02', 'Present'),
(2, '2026-10-02', 'Absent'),
(3, '2026-10-02', 'Present'),
(4, '2026-10-02', 'Present'),
(5, '2026-10-02', 'Absent'),
(6, '2026-10-02', 'Present'),
(7, '2026-10-02', 'Present'),
(8, '2026-10-02', 'Absent');

INSERT INTO exams
(exam_name, class_id, exam_date, academic_year)
VALUES
('Unit Test 1', 1, '2026-07-15', '2026-2027'),
('Unit Test 1', 2, '2026-07-16', '2026-2027'),
('Unit Test 1', 3, '2026-07-17', '2026-2027'),
('Unit Test 1', 4, '2026-07-18', '2026-2027'),
('Unit Test 1', 5, '2026-07-19', '2026-2027'),
('Unit Test 1', 6, '2026-07-20', '2026-2027');

INSERT INTO marks
(student_id, exam_id, subject_id, marks_obtained, max_marks)
VALUES
(1, 1, 1, 85, 100),
(1, 1, 2, 78, 100),
(2, 1, 1, 92, 100),
(2, 1, 2, 88, 100),

(3, 2, 1, 75, 100),
(3, 2, 2, 80, 100),
(4, 2, 1, 95, 100),
(4, 2, 2, 91, 100),

(5, 3, 1, 68, 100),
(5, 3, 2, 72, 100),
(6, 3, 1, 89, 100),
(6, 3, 2, 94, 100),

(7, 4, 1, 82, 100),
(7, 4, 2, 76, 100),
(8, 4, 1, 96, 100),
(8, 4, 2, 90, 100),

(9, 5, 1, 88, 100),
(9, 5, 2, 79, 100),
(10, 5, 1, 97, 100),
(10, 5, 2, 93, 100),

(11, 6, 1, 70, 100),
(11, 6, 2, 75, 100),
(12, 6, 1, 91, 100),
(12, 6, 2, 95, 100);

INSERT INTO fees
(student_id, fee_type, amount, amount_paid,
 due_date, payment_date, status)
VALUES
(1, 'Tuition Fee', 20000, 20000, '2026-07-10', '2026-07-05', 'Paid'),
(2, 'Tuition Fee', 20000, 15000, '2026-07-10', '2026-07-08', 'Partial'),
(3, 'Tuition Fee', 22000, 22000, '2026-07-10', '2026-07-06', 'Paid'),
(4, 'Tuition Fee', 22000, 10000, '2026-07-10', '2026-07-09', 'Partial'),
(5, 'Tuition Fee', 24000, 24000, '2026-07-10', '2026-07-04', 'Paid'),
(6, 'Tuition Fee', 24000, 0, '2026-07-10', NULL, 'Pending'),
(7, 'Tuition Fee', 26000, 26000, '2026-07-10', '2026-07-07', 'Paid'),
(8, 'Tuition Fee', 26000, 15000, '2026-07-10', '2026-07-08', 'Partial'),
(9, 'Tuition Fee', 28000, 28000, '2026-07-10', '2026-07-05', 'Paid'),
(10, 'Tuition Fee', 28000, 0, '2026-07-10', NULL, 'Pending'),
(11, 'Tuition Fee', 28000, 28000, '2026-07-10', '2026-07-06', 'Paid'),
(12, 'Tuition Fee', 28000, 20000, '2026-07-10', '2026-07-09', 'Partial');

SELECT * FROM teachers;

SELECT * FROM classes;

SELECT * FROM students;

SELECT * FROM subjects;

SELECT * FROM attendance;

SELECT * FROM exams;

SELECT * FROM marks;

SELECT * FROM fees;