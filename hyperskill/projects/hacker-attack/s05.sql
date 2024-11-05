-- Stage 5: You listed the scores, now create the score table. 
CREATE TABLE score1 ( person_id VARCHAR(9), score INTEGER );
CREATE TABLE score2 ( person_id VARCHAR(9), score INTEGER );
CREATE TABLE score3 ( person_id VARCHAR(9), score INTEGER );

.mode csv
.import person.csv person
.import teacher.csv teacher
.import --skip 1 score1.csv score1
.import --skip 1 score2.csv score2
.import --skip 1 score3.csv score3
.mode column

CREATE TABLE student ( person_id VARCHAR(9) PRIMARY KEY, grade_code TEXT );

INSERT INTO student (person_id) SELECT person_id
FROM person WHERE person_id NOT IN (SELECT person_id FROM teacher);

CREATE TABLE score ( person_id VARCHAR(9), score INTEGER );
INSERT INTO score (person_id, score)
SELECT * FROM score1 UNION ALL SELECT * FROM score2 UNION ALL SELECT * FROM score3;

DROP TABLE score1; DROP TABLE score2; DROP TABLE score3;

SELECT * FROM score ORDER BY person_id LIMIT 5;
.print
SELECT person_id, count(score) FROM score
GROUP BY person_id HAVING count(score) = 3
ORDER BY person_id LIMIT 5;

-- postgresql
-- CREATE TABLE score (
--     person_id varchar(9),
--     score int
-- );
-- 
-- INSERT INTO score (person_id, score)
-- SELECT person_id, score FROM score1
-- UNION ALL
-- SELECT person_id, score FROM score2
-- UNION ALL
-- SELECT person_id, score FROM score3;
-- 
-- DROP TABLE score1;
-- DROP TABLE score2;
-- DROP TABLE score3;
-- 
-- SELECT *
-- FROM score
-- ORDER BY person_id
-- LIMIT 5;
-- 
-- SELECT
--     person_id,
--     count(score)
-- FROM score
-- GROUP BY person_id
-- HAVING count(score) = 3
-- ORDER BY person_id
-- LIMIT 5;
