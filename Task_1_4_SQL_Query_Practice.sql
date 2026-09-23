
-- Task 1.4: SQL Query Practice

-- Filtering
SELECT * FROM students
WHERE department = 'CSE';

-- JOIN
SELECT students.student_id, students.name, students.department,
       marks.maths, marks.python, marks.dbms
FROM students
JOIN marks
ON students.student_id = marks.student_id;

-- Aggregation
SELECT department, COUNT(*) AS student_count
FROM students
GROUP BY department;

-- Average Marks
SELECT AVG(maths) AS average_maths,
       AVG(python) AS average_python,
       AVG(dbms) AS average_dbms
FROM marks;

-- Maximum and Minimum
SELECT MAX(maths) AS highest_maths,
       MIN(maths) AS lowest_maths,
       MAX(python) AS highest_python,
       MIN(python) AS lowest_python,
       MAX(dbms) AS highest_dbms,
       MIN(dbms) AS lowest_dbms
FROM marks;

-- ORDER BY
SELECT students.name, marks.maths
FROM students
JOIN marks
ON students.student_id = marks.student_id
ORDER BY marks.maths DESC;

-- Subquery: Students above average Maths
SELECT students.name, marks.maths
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.maths > (
    SELECT AVG(maths)
    FROM marks
);
