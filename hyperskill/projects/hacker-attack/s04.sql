-- Stage 4: Your friends created score files for you. Merge the scores and display them.
CREATE TABLE score1 (
    person_id varchar(9),
    score int
);

CREATE TABLE score2 (
    person_id varchar(9),
    score int
);

CREATE TABLE score3 (
    person_id varchar(9),
    score int
);

COPY score1
FROM 'C:\YourDirectory\score1.csv'
WITH (FORMAT CSV, HEADER);

COPY score2
FROM 'C:\YourDirectory\score2.csv'
WITH (FORMAT CSV, HEADER);

COPY score3
FROM 'C:\YourDirectory\score3.csv'
WITH (FORMAT CSV, HEADER);

SELECT * FROM score1
UNION ALL
SELECT * FROM score2
UNION ALL
SELECT * FROM score3;
