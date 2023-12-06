-- Listing 7-3: Creating two tables to explore JOIN types
CREATE TABLE district_2020 (
	id integer CONSTRAINT id_key_2020 PRIMARY KEY,
	school_2020 text);
CREATE TABLE district_2035 (
	id integer CONSTRAINT id_key_2035 PRIMARY KEY,
	school_2035 text);

INSERT INTO district_2020
VALUES
    (1, 'Oak Street School'),
    (2, 'Roosevelt High School'),
    (5, 'Dover Middle School'),
    (6, 'Webutuck High School');
INSERT INTO district_2035
VALUES
    (1, 'Oak Street School'),
    (2, 'Roosevelt High School'),
    (3, 'Morrison Elementary'),
    (4, 'Chase Magnet Academy'),
    (6, 'Webutuck High School');
