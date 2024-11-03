CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    building VARCHAR(50)
);

CREATE TABLE Professor (
    professor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    email VARCHAR(100),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    credits INT,
    department_id INT,
    professor_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id),
    FOREIGN KEY (professor_id) REFERENCES Professor(professor_id)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    major VARCHAR(100),
    year INT
);

CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

INSERT INTO Department (name, building) VALUES
('Computer Science', 'Building A'),
('Mathematics', 'Building B'),
('Physics', 'Building C'),
('Engineering', 'Building D');

INSERT INTO Professor (name, department_id, email) VALUES
('Dr. Smith', 1, 'smith@university.edu'),
('Dr. Johnson', 2, 'johnson@university.edu'),
('Dr. Williams', 3, 'williams@university.edu'),
('Dr. Brown', 4, 'brown@university.edu');

INSERT INTO Course (title, credits, department_id, professor_id) VALUES
('Intro to Computer Science', 3, 1, 1),
('Data Structures', 4, 1, 1),
('Calculus I', 3, 2, 2),
('Linear Algebra', 4, 2, 2),
('Classical Mechanics', 3, 3, 3),
('Quantum Physics', 4, 3, 3),
('Thermodynamics', 4, 4, 4),
('Fluid Mechanics', 3, 4, 4);

INSERT INTO Student (name, email, major, year) VALUES
('Alice', 'alice@university.edu', 'Computer Science', 2),
('Bob', 'bob@university.edu', 'Mathematics', 3),
('Charlie', 'charlie@university.edu', 'Physics', 1),
('David', 'david@university.edu', 'Engineering', 2),
('Eve', 'eve@university.edu', 'Computer Science', 4),
('Frank', 'frank@university.edu', 'Mathematics', 1),
('Grace', 'grace@university.edu', 'Physics', 2),
('Hank', 'hank@university.edu', 'Engineering', 3);

INSERT INTO Enrollment (student_id, course_id, grade)VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 3, 'B+'),
(2, 4, 'A'),
(3, 5, 'A-'),
(3, 6, 'B'),
(4, 7, 'A'),
(4, 8, 'B+'),
(5, 1, 'A'),
(5, 2, 'A-'),
(6, 3, 'B'),
(6, 4, 'A-'),
(7, 5, 'A'),
(7, 6, 'B+'),
(8, 7, 'B+'),
(8, 8, 'A');









