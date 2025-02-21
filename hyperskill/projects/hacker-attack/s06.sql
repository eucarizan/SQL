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

WITH stu_sc AS (
    SELECT 
        st.person_id AS person_id,
        CASE count(sc.score) 
            WHEN 0 THEN 'GD-09' 
            WHEN 1 THEN 'GD-10' 
            WHEN 2 THEN 'GD-11' 
            WHEN 3 THEN 'GD-12'
        END AS grade_code
    FROM student st LEFT JOIN score sc ON st.person_id = sc.person_id
    GROUP BY st.person_id
)

UPDATE student SET grade_code = stu_sc.grade_code
FROM stu_sc
WHERE stu_sc.person_id = student.person_id;

SELECT * FROM student ORDER BY person_id LIMIT 5;

-- sqlite, window function
/*
UPDATE student
SET grade_code = CASE
    WHEN score_count = 0 THEN 'GD-09'
    WHEN score_count = 1 THEN 'GD-10'
    WHEN score_count = 2 THEN 'GD-11'
    WHEN score_count = 3 THEN 'GD-12'
END
FROM (
    SELECT 
        st.person_id,
        count(sc.score) OVER (PARTITION BY sc.person_id) AS score_count
    FROM student st LEFT JOIN score sc ON st.person_id = sc.person_id
) AS student_score
WHERE student.person_id = student_score.person_id;
*/

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
