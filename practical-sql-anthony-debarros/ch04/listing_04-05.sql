-- Listing 4-5: Using the interval data type
SELECT timestamp_column, interval_column, timestamp_column - interval_column AS new_date
FROM date_time_types;
