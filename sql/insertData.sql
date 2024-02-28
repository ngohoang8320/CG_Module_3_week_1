USE quanlysinhvien;

INSERT INTO class (ClassID, ClassName, StartDate, Status)
    VALUE (1, 'A1', 20081220, 1);
INSERT INTO class (ClassID, ClassName, StartDate, Status)
    VALUE (2, 'A2', 20081222, 1);
INSERT INTO class (ClassID, ClassName, StartDate, Status)
    VALUE (3, 'B3', CURRENT_DATE, 1);

SELECT * FROM class;

# SHOW CREATE TABLE student;

# DESCRIBE quanlysinhvien.class; -- use to show structure of a table

# SHOW COLUMNS FROM quanlysinhvien.student;

UPDATE class SET Status = 0 WHERE ClassID = 3;

INSERT INTO student (StudentID, StudentName, Address, Phone, Status, ClassID)
    VALUES (1, 'Hung', 'Ha Noi', 0912113113,1,1);
INSERT INTO student (StudentID, StudentName, Address, Status, ClassID)
    VALUES (2, 'Hoa', 'Hai Phong',1,1);
INSERT INTO student (StudentID, StudentName, Address, Phone, Status, ClassID)
    VALUES (3, 'Manh', 'HCM', 0123123123,0,2);

SELECT * FROM student;

INSERT INTO subject (SubID, SubName, Credit, Status)
    VALUES (1, 'CF', 5, 1);
INSERT INTO subject (SubID, SubName, Credit, Status)
    VALUES (2, 'C', 6, 1);
INSERT INTO subject (SubID, SubName, Credit, Status)
    VALUES (3, 'HDJ', 5, 1);
INSERT INTO subject (SubID, SubName, Credit, Status)
    VALUES (4, 'RDBMS', 10, 1);

SELECT * FROM subject;

INSERT INTO mark (MarkID, SubID, StudentID, Mark, ExamTimes)
    VALUES (1, 1, 1, 8, 1);
INSERT INTO mark (MarkID, SubID, StudentID, Mark, ExamTimes)
    VALUES (2, 1, 2, 10, 2);
INSERT INTO mark (MarkID, SubID, StudentID, Mark, ExamTimes)
    VALUES (3, 2, 1, 12, 1);