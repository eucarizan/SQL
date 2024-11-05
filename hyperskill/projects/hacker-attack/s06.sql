-- Stage 6: Find out the grade code of the students and update the student table. 
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

UPDATE student SET grade_code = 'GD-10'
WHERE person_id IN (
    SELECT person_id FROM score
    GROUP BY person_id HAVING count(score) = 1
); 

UPDATE student SET grade_code = 'GD-11'
WHERE person_id IN (
    SELECT person_id FROM score
    GROUP BY person_id HAVING count(score) = 2
); 

UPDATE student SET grade_code = 'GD-12'
WHERE person_id IN (
    SELECT person_id FROM score
    GROUP BY person_id HAVING count(score) = 3
); 

UPDATE student SET grade_code = 'GD-09'
WHERE grade_code IS NULL;

SELECT * FROM student ORDER BY person_id LIMIT 5;

-- postgresql, unfinished
/*
-- UPDATE student
-- SET grade_code = CASE WHEN (SELECT count(person_id) OVER(PARTITION BY person_id) FROM 

-- sample1
-- WITH score_count (person_id, count) AS (
-- SELECT person_id, count(*) FROM score GROUP BY person_id ORDER BY person_id)
-- SELECT person_id, count FROM score_count;

WITH score_count (person_id, count) AS (
    SELECT person_id, count(*)
    FROM score
    GROUP BY person_id
)

-- UPDATE student
-- SET grade_code = CASE WHEN (SELECT
--SELECT
--   person_id,
--    'GD-09' AS grade_code
--FROM student
--WHERE person_id IN (SELECT person_id FROM score_count WHERE count = 1);
, student_score (person_id, count) AS (
    SELECT
        s.person_id,
	sc.count
    FROM student s
    FULL JOIN score_count sc ON s.person_id = sc.person_id
)

SELECT
    person_id,
    CASE WHEN count = 1 THEN 'GD-10'
         WHEN count = 2 THEN 'GD-11'
         WHEN count = 3 THEN 'GD-12'
         ELSE 'GD-09' END AS grade_code
FROM student_score
ORDER BY person_id;
*/
