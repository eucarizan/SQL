-- Stage 5: You listed the scores, now create the score table. 
CREATE TABLE score (
    person_id varchar(9),
    score int
);

INSERT INTO score (person_id, score)
SELECT person_id, score FROM score1
UNION ALL
SELECT person_id, score FROM score2
UNION ALL
SELECT person_id, score FROM score3;

DROP TABLE score1;
DROP TABLE score2;
DROP TABLE score3;

SELECT *
FROM score
ORDER BY person_id
LIMIT 5;

SELECT
    person_id,
    count(score)
FROM score
GROUP BY person_id
HAVING count(score) = 3
ORDER BY person_id
LIMIT 5;
