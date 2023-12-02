-- Listing 4-1: Character data types in action
CREATE TABLE char_data_types (
	char_column char(10),
	varchar_column varchar(10),
	text_column text);
INSERT INTO char_data_types VALUES 
    ('abc', 'abc', 'abc'),
    ('defghi', 'defghi', 'defghi');
COPY char_data_types TO 'C:\Engg\sql\practical-sql-anthony-debarros\ch04\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');
