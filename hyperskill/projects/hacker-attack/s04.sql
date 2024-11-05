-- Stage 4: Your friends created score files for you. Merge the scores and display them.
CREATE TABLE score1 (
    person_id VARCHAR(9),
    score INTEGER
);

CREATE TABLE score2 (
    person_id VARCHAR(9),
    score INTEGER
);

CREATE TABLE score3 (
    person_id VARCHAR(9),
    score INTEGER
);

.mode csv
.import person.csv person
.import teacher.csv teacher
.import --skip 1 score1.csv score1
.import --skip 1 score2.csv score2
.import --skip 1 score3.csv score3
.mode column

CREATE TABLE student (
    person_id VARCHAR(9) PRIMARY KEY,
    grade_code TEXT
);

INSERT INTO student (person_id)
SELECT person_id
FROM person
WHERE person_id NOT IN (SELECT person_id FROM teacher);

SELECT * FROM score1
UNION ALL
SELECT * FROM score2
UNION ALL
SELECT * FROM score3

-- postgresql
-- CREATE TABLE score1 (
--     person_id varchar(9),
--     score int
-- );
-- 
-- CREATE TABLE score2 (
--     person_id varchar(9),
--     score int
-- );
-- 
-- CREATE TABLE score3 (
--     person_id varchar(9),
--     score int
-- );
-- 
-- COPY score1
-- FROM 'C:\YourDirectory\score1.csv'
-- WITH (FORMAT CSV, HEADER);
-- 
-- COPY score2
-- FROM 'C:\YourDirectory\score2.csv'
-- WITH (FORMAT CSV, HEADER);
-- 
-- COPY score3
-- FROM 'C:\YourDirectory\score3.csv'
-- WITH (FORMAT CSV, HEADER);
-- 
-- SELECT * FROM score1
-- UNION ALL
-- SELECT * FROM score2
-- UNION ALL
-- SELECT * FROM score3;
