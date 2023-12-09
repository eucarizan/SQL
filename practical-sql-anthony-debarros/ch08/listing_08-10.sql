-- Listing 8-10: A NOT NULL constraint example

CREATE TABLE not_null_example (
    student_id bigint GENERATED ALWAYS AS IDENTITY,
    first_name text NOT NULL,
    last_name text NOT NULL,
    CONSTRAINT student_id_key PRIMARY KEY (student_id)
);

-- This will fail:
INSERT INTO not_null_example (first_name, last_name)
VALUES ('Sting', NULL);

