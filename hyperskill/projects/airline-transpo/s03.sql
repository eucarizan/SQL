-- Stage 03: Analyze flight routes by calculating average flight duration, total passengers, and income generated per route.
SELECT
    CONCAT(t.town_from, '-', t.town_to) AS route,
    SUM(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in)) AS avg_flight_duration,
    COUNT(p.ID_psg) as total_passengers,
    SUM(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in)) * 0.6 AS total_income
FROM Trip t JOIN Pass_in_trip p ON t.trip_no = p.trip_no
GROUP BY route
ORDER BY total_income DESC;

/*
Query result:
+----------------------+---------------------+------------------+--------------+
| route                | avg_flight_duration | total_passengers | total_income |
+----------------------+---------------------+------------------+--------------+
| Miami-Dubai          | 4020                | 2                | 2412.0       |
| New York-London      | 1440                | 2                | 864.0        |
| Los Angeles-Tokyo    | 1350                | 1                | 810.0        |
| New York-Paris       | 1200                | 2                | 720.0        |
| Chicago-Paris        | 1155                | 1                | 693.0        |
| Los Angeles-Chicago  | 1080                | 4                | 648.0        |
| Chicago-Dallas       | 1020                | 4                | 612.0        |
| New York-Los Angeles | 990                 | 4                | 594.0        |
| Dallas-Miami         | 850                 | 4                | 510.0        |
| Miami-New York       | 840                 | 4                | 504.0        |
| Dallas-Sydney        | 810                 | 1                | 486.0        |
| Chicago-Miami        | 255                 | 1                | 153.0        |
| Dallas-Los Angeles   | 195                 | 1                | 117.0        |
| Los Angeles-New York | 195                 | 1                | 117.0        |
| Miami-Los Angeles    | 195                 | 1                | 117.0        |
+----------------------+---------------------+------------------+--------------+
*/

/*
SELECT
    route,
    avg_flight_duration,
    total_passengers,
    ROUND(SUM(avg_flight_duration * total_passengers * 60 * 0.01), 0) AS total_income
FROM (
    SELECT
        CONCAT(t.town_from, '-', t.town_to) AS route,
        AVG(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in)) AS avg_flight_duration,
        COUNT(DISTINCT p.ID_psg) as total_passengers
    FROM Trip t JOIN Pass_in_trip p ON t.trip_no = p.trip_no
    GROUP BY route
) AS subquery
ORDER BY total_income DESC;

query up to line 9
*/
