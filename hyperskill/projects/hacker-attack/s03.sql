-- Stage 3: You listed the students. Time to create the student table

-- Create table student
CREATE TABLE student (
    person_id varchar(9),
    grade_code TEXT,
    CONSTRAINT student_id_key PRIMARY KEY (person_id)
);

-- Insert values to student table
INSERT INTO student (person_id)
SELECT person_id 
FROM person;

-- Show 5 students ordered by ascending person_id
SELECT *
FROM student
ORDER BY person_id
LIMIT 5;
