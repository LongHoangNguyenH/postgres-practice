-- Create the Students table
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL
);

-- Create the Courses table
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    credits INT NOT NULL
);

-- Create the Enrollments table to manage the many-to-many relationship
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
);


-- Insert data into Students table
INSERT INTO Students (first_name, last_name, birth_date, email, enrollment_date) VALUES
('John', 'Doe', '2005-05-15', 'john.doe@example.com', '2022-08-01'),
('Jane', 'Smith', '2006-03-22', 'jane.smith@example.com', '2022-08-01'),
('Michael', 'Johnson', '2004-07-30', 'michael.johnson@example.com', '2021-08-01'),
('Emily', 'Davis', '2005-11-12', 'emily.davis@example.com', '2022-08-01'),
('David', 'Wilson', '2006-02-19', 'david.wilson@example.com', '2022-08-01'),
('Sarah', 'Brown', '2005-12-25', 'sarah.brown@example.com', '2022-08-01'),
('Chris', 'Jones', '2004-09-10', 'chris.jones@example.com', '2021-08-01'),
('Jessica', 'Garcia', '2005-04-05', 'jessica.garcia@example.com', '2022-08-01'),
('Daniel', 'Martinez', '2005-08-30', 'daniel.martinez@example.com', '2022-08-01'),
('Sophia', 'Hernandez', '2006-01-07', 'sophia.hernandez@example.com', '2022-08-01'),
('James', 'Lopez', '2004-05-20', 'james.lopez@example.com', '2021-08-01'),
('Olivia', 'Gonzalez', '2006-03-01', 'olivia.gonzalez@example.com', '2022-08-01'),
('Mason', 'Wilson', '2005-10-10', 'mason.wilson@example.com', '2022-08-01'),
('Isabella', 'Anderson', '2004-06-15', 'isabella.anderson@example.com', '2021-08-01'),
('Liam', 'Thomas', '2005-01-25', 'liam.thomas@example.com', '2022-08-01'),
('Ava', 'Taylor', '2005-02-14', 'ava.taylor@example.com', '2022-08-01'),
('Noah', 'Moore', '2006-04-11', 'noah.moore@example.com', '2022-08-01'),
('Mia', 'Jackson', '2004-08-30', 'mia.jackson@example.com', '2021-08-01'),
('Ethan', 'Martin', '2005-03-05', 'ethan.martin@example.com', '2022-08-01'),
('Charlotte', 'Lee', '2006-05-13', 'charlotte.lee@example.com', '2022-08-01'),
('Lucas', 'Perez', '2005-09-29', 'lucas.perez@example.com', '2022-08-01');

-- Insert data into Courses table
INSERT INTO Courses (course_name, course_code, credits) VALUES
('Mathematics', 'MATH101', 3),
('English Literature', 'ENG102', 3),
('Biology', 'BIO103', 4),
('Chemistry', 'CHE104', 4),
('Physics', 'PHY105', 4),
('History', 'HIS106', 3),
('Computer Science', 'CS107', 3),
('Art History', 'ART108', 3),
('Psychology', 'PSY109', 3),
('Economics', 'ECO110', 3),
('Statistics', 'STAT111', 3),
('Geography', 'GEO112', 3),
('Philosophy', 'PHI113', 3),
('Physical Education', 'PE114', 2),
('Music Theory', 'MUS115', 3),
('Sociology', 'SOC116', 3),
('Environmental Science', 'ENV117', 4),
('Spanish', 'SPA118', 3),
('French', 'FRE119', 3),
('Web Development', 'WD120', 3);

-- Insert data into Enrollments 
('Web Development', 'WD120', 3);table
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2022-08-01'),
(1, 2, '2022-08-01'),
(1, 3, '2022-08-01'),
(2, 1, '2022-08-01'),
(2, 4, '2022-08-01'),
(3, 2, '2021-08-01'),
(3, 5, '2021-08-01'),
(4, 3, '2022-08-01'),
(4, 6, '2022-08-01'),
(5, 4, '2022-08-01'),
(6, 1, '2022-08-01'),
(7, 3, '2021-08-01'),
(8, 5, '2022-08-01'),
(9, 2, '2022-08-01'),
(10, 6, '2022-08-01'),
(11, 1, '2022-08-01'),
(12, 7, '2022-08-01'),
(13, 8, '2021-08-01'),
(14, 9, '2022-08-01'),
(15, 10, '2022-08-01'),
(16, 11, '2022-08-01'),
(17, 12, '2022-08-01'),
(18, 13, '2021-08-01'),
(19, 9, '2022-08-01'),
(20, 14, '2022-08-01'),
(20, 15, '2022-08-01'),
(19, 16, '2021-08-01'),
(18, 17, '2022-08-01'),
(17, 18, '2022-08-01'),
(16, 19, '2022-08-01'),
(15, 20, '2021-08-01');
