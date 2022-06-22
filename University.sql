CREATE DATABASE University;
USE University;

--Creating two tables with name Student and Subject
CREATE TABLE Student(
ID int identity primary key,
Name varchar(30) not null,
Contact varchar(30) not null,
Department varchar(30) not null,
Year varchar(10) not null);

CREATE TABLE Subject(
ID int not null,
Subject_Name varchar(30) not null,
Semester varchar(30) not null
);

