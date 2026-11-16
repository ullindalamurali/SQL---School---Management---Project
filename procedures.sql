USE school_management;

-- Calculate the average marks obtained by a particular student.

DELIMITER //

CREATE FUNCTION get_student_average(p_student_id INT)
RETURNS DECIMAL(5,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avg_marks DECIMAL(5,2);

    SELECT AVG(marks_obtained)
    INTO avg_marks
    FROM marks
    WHERE student_id = p_student_id;

    RETURN avg_marks;
END //

DELIMITER ;

SELECT get_student_average(1) AS average_marks;

-- Calculate the total marks obtained by a student in all exams.

DELIMITER //

CREATE FUNCTION get_student_total_marks(p_student_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total_marks DECIMAL(10,2);

    SELECT SUM(marks_obtained)
    INTO total_marks
    FROM marks
    WHERE student_id = p_student_id;

    RETURN COALESCE(total_marks, 0);
END //

DELIMITER ;

SELECT get_student_total_marks(1) AS total_marks;

-- Calculate how much fee a student still needs to pay.

DELIMITER //

CREATE FUNCTION get_pending_fees(p_student_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE pending_amount DECIMAL(10,2);

    SELECT SUM(amount - amount_paid)
    INTO pending_amount
    FROM fees
    WHERE student_id = p_student_id;

    RETURN COALESCE(pending_amount, 0);
END //

DELIMITER ;

SELECT get_pending_fees(2) AS pending_fees;


-- Calculate the percentage of days a student attended school

DELIMITER //

CREATE FUNCTION get_attendance_percentage(p_student_id INT)
RETURNS DECIMAL(5,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE attendance_percent DECIMAL(5,2);

    SELECT
        (SUM(CASE
             WHEN status = 'Present' THEN 1
             ELSE 0
         END) * 100.0) / NULLIF(COUNT(*), 0)
    INTO attendance_percent
    FROM attendance
    WHERE student_id = p_student_id;

    RETURN COALESCE(attendance_percent, 0);
END //

DELIMITER ;

SELECT get_attendance_percentage(1) AS attendance_percentage;


-- Convert a student's average marks into a grade.

DELIMITER //

CREATE FUNCTION get_student_grade(p_student_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avg_marks DECIMAL(5,2);

    SELECT AVG(marks_obtained)
    INTO avg_marks
    FROM marks
    WHERE student_id = p_student_id;

    RETURN CASE
        WHEN avg_marks IS NULL THEN 'No Marks'
        WHEN avg_marks >= 90 THEN 'A Grade'
        WHEN avg_marks >= 80 THEN 'B Grade'
        WHEN avg_marks >= 70 THEN 'C Grade'
        WHEN avg_marks >= 60 THEN 'D Grade'
        ELSE 'Fail'
    END;
END //

DELIMITER ;

SELECT get_student_grade(1) AS student_grade;