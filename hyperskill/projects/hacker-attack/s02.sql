-- Stage 2: Find out who the students are
CREATE TABLE teacher (
    person_id varchar(9),
    class_code text,
    CONSTRAINT person_id_key PRIMARY KEY (person_id)
);

COPY teacher
FROM 'C:\YourDirectory\teacher.csv'
WITH (FORMAT CSV, HEADER);

SELECT person_id, full_name
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher)
ORDER BY full_name
LIMIT 5;

SELECT count(*)
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher);
