-- Listing 12-3: Comparing current_timestamp and clock_timestamp() during row insert
CREATE TABLE current_time_example (
	time_id integer GENERATED ALWAYS AS IDENTITY,
	current_timestamp_col timestamptz,
	clock_timestamp_col timestamptz
);

INSERT INTO current_time_example (current_timestamp_col, clock_timestamp_col)
(SELECT current_timestamp, clock_timestamp() FROM generate_series(1, 1000));

SELECT * FROM current_time_example;
