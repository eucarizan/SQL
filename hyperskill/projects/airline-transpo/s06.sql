-- Stage 06: ABC Passenger Segmentation
WITH passenger_income AS (
  SELECT
    p.ID_psg,
    p.passenger_name,
    ROUND(SUM(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in) * 0.6), 0) AS pasenger_income_dollars
    SUM(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in) * 0.6) / SUM(SUM(TIMESTAMPDIFF(MINUTE, t.time_out, t.time_in) * 0.6)) OVER() * 100 AS percent
  FROM Passenger p 
    JOIN Pass_in_trip pit ON p.ID_psg = pit.ID_psg
    JOIN Trip t ON t.trip_no = pit.trip_no
  GROUP BY p.ID_psg
  ORDER BY percent DESC
),

cum_income AS (
  SELECT
    ID_psg,
    passenger_name,
    passenger_income_dollars,
    ROUND(SUM(percent) OVER (ORDER BY percent DESC), 2) AS cumulative_share_percent
  FROM passenger_income
)

SELECT
  *,
  CASE
    WHEN cumulative_share_percent <= 80 THEN 'A'
    WHEN cumulative_share_percent <= 95 THEN 'B'
    ELSE 'C'
  END AS category
FROM cum_income;

/*
Query result:
+--------+----------------+--------------------------+--------------------------+----------+
| ID_psg | passenger_name | passenger_income_dollars | cumulative_share_percent | category |
+--------+----------------+--------------------------+--------------------------+----------+
| 1      | John Smith     | 2223                     | 24.51                    | A        |
| 2      | Mary Johnson   | 2196                     | 48.73                    | A        |
| 6      | Jennifer Davis | 2124                     | 72.15                    | A        |
| 4      | Patricia Jones | 1206                     | 85.44                    | B        |
| 7      | Richard Wilson | 381                      | 89.65                    | B        |
| 3      | James Williams | 315                      | 93.12                    | B        |
| 10     | Barbara Taylor | 243                      | 95.80                    | C        |
| 8      | Linda Martinez | 138                      | 97.32                    | C        |
| 9      | David Anderson | 126                      | 98.71                    | C        |
| 5      | Michael Brown  | 117                      | 100.00                   | C        |
+--------+----------------+--------------------------+--------------------------+----------+
Affected rows: 10

query upto line 20
*/
