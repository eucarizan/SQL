-- Stage 04: Compare flight durations and frequenices between Boeing and Airbus aircraft types
SELECT
  CASE
    WHEN plane_type LIKE 'Boeing%' THEN 'Boeing'
    WHEN plane_type LIKE 'Airbus%' THEN 'Airbus'
  END AS aircraft_type,
  AVG(TIMESTAMPDIFF(MINUTE, time_out, time_in)) AS avg_flight_duration,
  COUNT(*) AS num_flights
FROM Trip
GROUP BY aircraft_type;

/*
WITH plane_duration AS (
  SELECT 
    CASE
      WHEN plane_type LIKE 'Boeing%' THEN 'Boeing'
      WHEN plane_type LIKE 'Airbus%' THEN 'Airbus'
    END AS aircraft_type,
    TIMESTAMPDIFF(MINUTE, time_out, time_in) AS duration
  FROM Trip)

SELECT
  aircraft_type,
  AVG(duration) AS avg_flight_duration,
  COUNT(aircraft_type) AS num_flights
FROM plane_duration
GROUP BY aircraft_type;

query up to line 10
*/
