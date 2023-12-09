-- Listing 8-7: A foreign key example 
CREATE TABLE licenses (
	license_id text,
	first_name text,
	last_name text,
	CONSTRAINT licenses_key PRIMARY KEY (license_id)
);

CREATE TABLE registrations (
	registration_id text,
	registration_date timestamp with time zone,
	license_id text REFERENCES licenses (license_id),
	CONSTRAINT registration_key PRIMARY KEY (registration_id, license_id)
);

INSERT INTO licenses (license_id, first_name, last_name)
VALUES ('T229901', 'Steve', 'Rothery');

INSERT INTO registrations (registration_id, registration_date, license_id)
VALUES ('A203391', '2022-03-17', 'T229901');

INSERT INTO registrations (registration_id, registration_date, license_id)
VALUES ('A75772', '2022-03-17', 'T000001');
