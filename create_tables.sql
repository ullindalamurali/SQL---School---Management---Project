use school_management;


-- 1. Teachers table
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    salary DECIMAL(10,2)
);

-- 2. Classes table
CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(30) NOT NULL,
    section VARCHAR(5),
    academic_year VARCHAR(15),
    class_teacher_id INT,
    FOREIGN KEY (class_teacher_id)
        REFERENCES teachers(teacher_id)
);

-- 3. Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    admission_date DATE,
    class_id INT,
    FOREIGN KEY (class_id)
        REFERENCES classes(class_id)
);

-- 4. Subjects table
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id)
        REFERENCES teachers(teacher_id)
);

-- 5. Attendance table
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    attendance_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    UNIQUE (student_id, attendance_date)
);

-- 6. Exams table
CREATE TABLE exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(50),
    class_id INT,
    exam_date DATE,
    academic_year VARCHAR(15),
    FOREIGN KEY (class_id)
        REFERENCES classes(class_id)
);

-- 7. Marks table
CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    exam_id INT,
    subject_id INT,
    marks_obtained DECIMAL(5,2),
    max_marks DECIMAL(5,2),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (exam_id)
        REFERENCES exams(exam_id),
    FOREIGN KEY (subject_id)
        REFERENCES subjects(subject_id),
    UNIQUE (student_id, exam_id, subject_id)
);

-- 8. Fees table
CREATE TABLE fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    fee_type VARCHAR(50),
    amount DECIMAL(10,2),
    amount_paid DECIMAL(10,2),
    due_date DATE,
    payment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id)
);

-- Check all tables
SHOW TABLES;