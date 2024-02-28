USE quanlysinhvien;

SELECT * FROM student;

SELECT * FROM student
WHERE Status = true;

SELECT * FROM subject
WHERE Credit < 10;

SELECT s.StudentID, s.StudentName, c.ClassName FROM student s
JOIN quanlysinhvien.class c ON c.ClassID = s.ClassID
WHERE c.ClassName = 'A1';

/*SELECT * FROM student;
SELECT * FROM class;
SELECT * FROM student JOIN quanlysinhvien.class c on c.ClassID = student.ClassID;*/

# SHOW CREATE TABLE student; --Use when you want to show (the structure) include the relation of a table with others.

SELECT * FROM student;
SELECT * FROM class;
SELECT * FROM mark;
SELECT * FROM subject;

SELECT s.StudentName, m.Mark, s2.SubName FROM student s
JOIN quanlysinhvien.mark m on s.StudentID = m.StudentID
JOIN quanlysinhvien.subject s2 on m.SubID = s2.SubID
WHERE s2.SubName = 'CF';