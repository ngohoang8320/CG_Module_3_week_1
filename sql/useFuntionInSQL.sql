USE QuanLySinhVien;

SELECT * FROM class;
SELECT * FROM mark;
SELECT * FROM student;
SELECT * FROM subject;

SELECT Address, COUNT(*) FROM student
GROUP BY Address;

/*INSERT INTO student (StudentID, StudentName, Address, Status, ClassID)
VALUES (4, 'Test', 'Ha Noi', false, 2);

DELETE FROM student WHERE StudentID = 4;*/

SELECT s.StudentName, AVG(m.Mark) FROM mark m
JOIN quanlysinhvien.student s on s.StudentID = m.StudentID
JOIN quanlysinhvien.subject s2 on s2.SubID = m.SubID
GROUP BY s.StudentName;

/*UPDATE mark
SET Mark = 6
WHERE StudentID = (SELECT StudentID FROM student WHERE StudentName = 'Hung')
AND SubID = 2;*/

SELECT s.StudentName, AVG(m.Mark) avg FROM mark m
JOIN quanlysinhvien.student s on s.StudentID = m.StudentID
JOIN quanlysinhvien.subject s2 on s2.SubID = m.SubID
GROUP BY s.StudentName
HAVING avg > 15;


SELECT s.StudentName, AVG(m.Mark) avg FROM mark m
    JOIN quanlysinhvien.student s on s.StudentID = m.StudentID
    JOIN quanlysinhvien.subject s2 on s2.SubID = m.SubID
GROUP BY s.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM mark m GROUP BY m.StudentID); #Save this