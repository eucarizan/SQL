-- Stage 7: Calculate the average score where grade code is GD-12

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

SELECT st.person_id, ROUND(AVG(sc.score), 2) AS avg_score
FROM student st LEFT JOIN score sc ON st.person_id = sc.person_id
WHERE st.grade_code = 'GD-12'
GROUP BY sc.person_id
ORDER BY avg_score DESC;
