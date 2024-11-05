-- Stage 3: You listed the students. Time to create the student table
.import person.csv person --csv
.import teacher.csv teacher --csv
.mode column

CREATE TABLE student (
    person_id VARCHAR(9) PRIMARY KEY,
    grade_code TEXT
);

INSERT INTO student (person_id)
SELECT person_id
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher);

SELECT * FROM student ORDER BY person_id LIMIT 5;

-- postgresql
-- CREATE TABLE student (
--     person_id varchar(9),
--     grade_code TEXT,
--     CONSTRAINT student_id_key PRIMARY KEY (person_id)
-- );
-- 
-- -- Insert values to student table
-- INSERT INTO student (person_id)
-- SELECT person_id 
-- FROM person;
-- 
-- -- Show 5 students ordered by ascending person_id
-- SELECT *
-- FROM student
-- ORDER BY person_id
-- LIMIT 5;
