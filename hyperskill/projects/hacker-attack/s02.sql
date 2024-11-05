-- Stage 2: Find out who the students are
-- creates table if not exists
.import person.csv person --csv
.import teacher.csv teacher --csv
.mode column

SELECT person_id, full_name
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher)
ORDER BY full_name
LIMIT 5;

.print

SELECT COUNT(person_id)
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher);

-- sqlite 
-- CREATE TABLE person (
--     person_id VARCHAR(9) PRIMARY KEY,
--     full_name TEXT,
--     address TEXT,
--     building_number TEXT,
--     phone_number TEXT
-- );
-- 
-- CREATE TABLE teacher (
--     person_id VARCHAR(9) PRIMARY KEY,
--     class_code TEXT
-- );
-- 
-- .mode csv
-- .import --skip 1 teacher.csv teacher
-- .mode column
-- 
-- SELECT person_id, full_name
-- FROM person
-- WHERE person_id NOT IN (SELECT person_id FROM teacher)
-- ORDER BY full_name
-- LIMIT 5;
-- 
-- SELECT COUNT(person_id)
-- FROM person
-- WHERE person_id NOT IN (SELECT person_id FROM teacher);

-- postgresql
-- CREATE TABLE teacher (
--     person_id varchar(9),
--     class_code text,
--     CONSTRAINT person_id_key PRIMARY KEY (person_id)
-- );
-- 
-- COPY teacher
-- FROM 'C:\YourDirectory\teacher.csv'
-- WITH (FORMAT CSV, HEADER);
-- 
-- SELECT person_id, full_name
-- FROM person
-- WHERE person_id NOT IN (SELECT person_id FROM teacher)
-- ORDER BY full_name
-- LIMIT 5;
-- 
-- SELECT count(*)
-- FROM person
-- WHERE person_id NOT IN (SELECT person_id FROM teacher);
