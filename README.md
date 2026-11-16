# School Management System – SQL Project

## Project Overview
The **School Management System** is a MySQL-based database project designed to manage school information efficiently. It stores and manages student details, teacher information, classes, subjects, attendance, examinations, marks, and fee payments.

This project demonstrates SQL concepts such as table creation, data insertion, joins, subqueries, aggregate functions, views, stored procedures, and user-defined functions.

## Objectives
- Manage student and teacher information.
- Maintain class and subject details.
- Track student attendance.
- Store examination results and marks.
- Manage student fee payments.
- Generate useful reports using SQL queries.

## Technologies Used
- **Database:** MySQL
- **Language:** SQL
- **Tools:** MySQL Workbench / MySQL Command Line

## Database Name
```sql
CREATE DATABASE school_management;
USE school_management;
```

## Database Tables

The project contains 8 main tables:

| Table Name | Description |
|---|---|
| teachers | Stores teacher details |
| classes | Stores class and section details |
| students | Stores student information |
| subjects | Stores subject details |
| attendance | Stores daily attendance |
| exams | Stores examination details |
| marks | Stores student examination marks |
| fees | Stores student fee details |

## Entity Relationships

- One teacher can be assigned to multiple classes.
- One class can have multiple students.
- One teacher can teach multiple subjects.
- One student can have multiple attendance records.
- One student can have multiple fee records.
- One student can have multiple marks records.
- One exam can contain multiple marks records.
- One subject can have multiple marks records.

## Project Folder Structure

```text
School-Management-System/
│
├── create_tables.sql
├── insert_tables.sql
├── mixed_queries.sql
├── views.sql
├── procedures.sql
├── functions.sql
└── README.md
```

## SQL Concepts Used

1. CREATE DATABASE and CREATE TABLE
2. INSERT, UPDATE and DELETE
3. SELECT, WHERE and ORDER BY
4. GROUP BY and HAVING
5. Aggregate Functions – SUM, AVG, COUNT, MAX and MIN
6. Joins – INNER JOIN, LEFT JOIN and RIGHT JOIN
7. Subqueries
8. CASE Statements
9. Views
10. Stored Procedures
11. User-Defined Functions

## Business Problems Solved

This project includes SQL queries to solve practical school management problems:

- Find the top 5 students based on total marks.
- Identify students with pending fees above ₹5,000.
- Calculate student attendance percentages.
- Find students who have not paid any fees.
- Display student marks with grades.
- Find subjects with an average score above 80.
- Calculate the number of students in each class.

## How to Run the Project

**Step 1:** Install MySQL and open MySQL Workbench or MySQL Command Line.

**Step 2:** Create the database.

```sql
CREATE DATABASE school_management;
USE school_management;
```

**Step 3:** Execute the SQL files in this order:

1. `create_tables.sql`
2. `insert_tables.sql`
3. `mixed_queries.sql`
4. `views.sql`
5. `procedures.sql`
6. `functions.sql`

**Step 4:** Run SELECT queries to verify the inserted data and test the project.

## Learning Outcomes

Through this project, I gained practical knowledge of:

- Relational database design.
- Primary keys and foreign keys.
- SQL queries and data manipulation.
- Joins and subqueries.
- Views and stored procedures.
- Database relationships and data integrity.
- Solving real-world business problems using SQL.

## Conclusion

The School Management System demonstrates how MySQL can be used to organize and manage school-related information. It helped me improve my SQL knowledge and understand how relational databases are designed and used in real-world applications.

---

**Project Type:** Database Management System  
**Domain:** Education  
**Database:** MySQL  
**Author:** Murali
