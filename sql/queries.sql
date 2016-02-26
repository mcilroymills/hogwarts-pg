\connect "hogwarts_mills_mcilroy"

--Display subjects table
SELECT * FROM subjects;

--Display parents table
SELECT * FROM parents;

--Display students table
SELECT * FROM students;

--Display students_parents table
SELECT * from students_parents;

--Display classes table
SELECT * FROM classes;

--Display students_classes table
SELECT * FROM students_classes;

--Display teachers table
SELECT * FROM teachers;

--Display houses table
SELECT * FROM houses;

--How many students attend Hogwarts?
SELECT COUNT(*) FROM students;

--List each student's name and his/her house
SELECT students.name, houses.name
FROM students
JOIN houses
ON students.house_id = houses.id;

--How many students are in Hufflepuff?
SELECT COUNT(*)
FROM houses
JOIN students
ON students.house_id = houses.id
WHERE houses.name LIKE '%Hufflepuff%';

--List all students in Gryffindor
SELECT *
FROM houses
JOIN students
ON students.house_id = houses.id
WHERE houses.name LIKE '%Gryffindor%';

--How many students are year 5?
SELECT *
FROM students
WHERE students.year = 5;

--List names of parents that have students in Gryffindor
SELECT parents.name
FROM parents
JOIN students_parents
ON parents.id = students_parents.parent_id
JOIN students
ON students.id = students_parents.student_id
JOIN houses
ON houses.id = students.house_id
WHERE houses.name LIKE '%Gryffindor%';



