-- Stage 1: Alter the passenger's trip table to adjust date data types and synchronize trip dates with departure times to ensure data consistency.
ALTER TABLE Pass_in_trip
MODIFY COLUMN trip_date DATE;

UPDATE Pass_in_trip
SET trip_date = DATE(trip_date);

SELECT * FROM Pass_in_trip;
