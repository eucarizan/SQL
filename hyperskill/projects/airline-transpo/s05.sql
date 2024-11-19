-- Stage 05: Top Routes by Duration for Each Company
WITH top_routes AS (
  SELECT
    a.company_name,
    t.town_from AS departure_city,
    t.town_to AS arrival_city,
    AVG(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in)) AS avg_flight_duration,
    ROW_NUMBER() over w AS `rank`
  FROM
    Trip t JOIN Airline_company a ON t.ID_comp = a.ID_comp
  GROUP BY
    a.company_name, t.town_from, t.town_to
  window 
    w AS (PARTITION BY a.company_name ORDER BY AVG(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in)) DESC)
)

SELECT
  company_name,
  departure_city,
  arrival_city,
  avg_flight_duration
FROM top_routes
WHERE `rank` in (1, 2)
ORDER BY company_name, avg_flight_duration DESC;

/*
Query result:
+--------------------+----------------+--------------+---------------------+
| company_name       | departure_city | arrival_city | avg_flight_duration |
+--------------------+----------------+--------------+---------------------+
| American Airlines  | Los Angeles    | Tokyo        | 1350.0000           |
| American Airlines  | Los Angeles    | Chicago      | 270.0000            |
| Delta Airlines     | New York       | London       | 720.0000            |
| Delta Airlines     | New York       | Los Angeles  | 247.5000            |
| JetBlue Airways    | Miami          | Dubai        | 2010.0000           |
| JetBlue Airways    | Miami          | New York     | 210.0000            |
| Southwest Airlines | Dallas         | Sydney       | 810.0000            |
| Southwest Airlines | New York       | Paris        | 360.0000            |
| United Airlines    | Chicago        | Paris        | 1155.0000           |
| United Airlines    | Chicago        | Dallas       | 255.0000            |
+--------------------+----------------+--------------+---------------------+
Affected rows: 10
*/
