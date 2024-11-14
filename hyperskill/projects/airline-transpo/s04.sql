-- Stage 04: Compare flight durations and frequenices between Boeing and Airbus aircraft types
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
