USE quanlysinhvien;

#------------------------
SELECT * FROM subject;

SELECT * FROM subject
WHERE Credit = (SELECT MAX(Credit) FROM subject);
#------------------------

SELECT * FROM mark;

SELECT s.StudentName, m.Mark FROM student s
JOIN quanlysinhvien.mark m on s.StudentID = m.StudentID
WHERE Mark = (SELECT MAX(m.Mark) FROM mark m);

#------------------------
SELECT * FROM student;

SELECT s.StudentName, AVG(m.Mark) avg FROM student s
LEFT JOIN quanlysinhvien.mark m on s.StudentID = m.StudentID
GROUP BY s.StudentName
ORDER BY avg DESC;