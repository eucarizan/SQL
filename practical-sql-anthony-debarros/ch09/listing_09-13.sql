-- Listing 9-13: Using GROUP BY to track percent change in library visits by state
SELECT
    pls18.stabr,
    sum(pls18.visits) AS visits_2018,
    sum(pls17.visits) AS visits_2017,
    sum(pls16.visits) AS visits_2016,
    round((sum(pls18.visits::numeric) - sum(pls17.visits)) / sum(pls17.visits) * 100, 1) AS chg_2018_17,
    round((sum(pls17.visits::numeric) - sum(pls16.visits)) / sum(pls16.visits) * 100, 1) AS chg_2017_16
FROM pls_fy2018_libraries pls18 
JOIN pls_fy2017_libraries pls17 ON pls18.fscskey = pls17.fscskey
JOIN pls_fy2016_libraries pls16 ON pls18.fscskey = pls16.fscskey
WHERE pls18.visits >= 0 AND pls17.visits >= 0 AND pls16.visits >= 0
GROUP BY pls18.stabr
ORDER BY chg_2018_17 DESC;
