-- Stage 1: Create your first table that contains teachers and students
CREATE TABLE person (
    person_id varchar(9),
    full_name text,
    address text,
    building_number text,
    phone_number text,
    CONSTRAINT person_id_key PRIMARY KEY (person_id)
);

COPY person
FROM 'C:\YourDirectory\person.csv'
WITH (FORMAT CSV, HEADER);

SELECT person_id, full_name FROM person ORDER BY person_id LIMIT 5;
