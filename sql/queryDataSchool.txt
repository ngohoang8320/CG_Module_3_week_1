USE quanlysinhvien;

SELECT * FROM student
WHERE StudentName LIKE '%h%';

SELECT * FROM student
JOIN quanlysinhvien.class c on student.ClassID = c.ClassID
WHERE MONTH(c.StartDate) = 12;

SELECT * FROM subject
WHERE Credit BETWEEN 3 AND 5;

UPDATE student SET ClassID = 2 WHERE StudentName = 'Hung';
SELECT * FROM student;

SELECT s.StudentName, s2.SubName, m.Mark FROM student s
LEFT JOIN quanlysinhvien.mark m on s.StudentID = m.StudentID
LEFT JOIN quanlysinhvien.subject s2 on s2.SubID = m.SubID
ORDER BY m.Mark DESC, s.StudentName ASC;