CREATE DATABASE University;
USE University;

--Creating two tables with name Student and Subject
CREATE TABLE Student(
ID int identity primary key,
Name varchar(30) not null,
Contact varchar(30) not null,
Department varchar(30) not null,
Year varchar(10) not null);
SELECT * FROM Student;

CREATE TABLE Subject(
ID int not null,
Subject_Name varchar(30) not null,
Semester varchar(30) not null
);
SELECT * FROM Subject;

--Insert Records into table
INSERT INTO Student(Name,Contact,Department,Year) VALUES
('Suraj','9049091231','Computer','2021'),
('Sanket','9087561231','Civil','2018'),
('Mayuresh','9049091633','Computer','2021'),
('Saket','9046634554','Electrical','2020');
SELECT * FROM Student;
INSERT INTO Student(Name,Contact,Department,Year) VALUES
('Sandip','9049876541','Mechanical','2017');

INSERT INTO Subject(ID,Subject_Name,Semester) VALUES
('1','Advance Java','Fourth'),
('2','Construction Tech','Second'),
('1','Data Structure','Third'),
('4','Basic Electrical','Second'),
('3','CPP','Second');
SELECT * FROM Subject;
INSERT INTO Subject(ID,Subject_Name,Semester) VALUES
('5','Building Material','Third'),
('2','Advance Electrical','Fifth');

--Inner Join
SELECT ST.Name, SB.Subject_Name
FROM Student ST JOIN Subject SB
ON ST.ID = SB.ID;

--Left Join
SELECT ST.Name, SB.Subject_Name
FROM Student ST LEFT JOIN Subject SB
ON ST.ID = SB.ID;

--Right Join
SELECT ST.Name, SB.Subject_Name
FROM Student ST RIGHT JOIN Subject SB
ON ST.ID = SB.ID;

--Full Join
SELECT ST.Name, SB.Subject_Name
FROM Student ST FULL JOIN Subject SB
ON ST.ID = SB.ID;

--Cross Join
SELECT ST.Name, SB.Subject_Name
FROM Student ST CROSS JOIN Subject SB;

-- Creating One to One Relation
ALTER TABLE Subject ADD CONSTRAINT FK_Student FOREIGN KEY(ID) REFERENCES Student(ID) ON DELETE CASCADE;
DELETE FROM Student WHERE Name='Saket';




