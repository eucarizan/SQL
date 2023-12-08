-- Listing 8-3: Declaring a composite primary key as a natural key
CREATE TABLE natural_key_composite_example (
	student_id text,
	school_day date,
	present boolean,
	CONSTRAINT student_key PRIMARY KEY (student_id, school_day)
);
