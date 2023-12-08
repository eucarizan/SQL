-- Listing 8-2: Example of a primary key violation
-- Note: You will need to create the natural_key_example table
-- using either of the two statements in Listing 8-1.

INSERT INTO natural_key_example (license_id, first_name, last_name)
VALUES ('T229901', 'Gem', 'Godfrey');

INSERT INTO natural_key_example (license_id, first_name, last_name)
VALUES ('T229901', 'John', 'Mitchell');
