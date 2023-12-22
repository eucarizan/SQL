-- Stage 6: Find out the grade code of the students and update the student table. 
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
