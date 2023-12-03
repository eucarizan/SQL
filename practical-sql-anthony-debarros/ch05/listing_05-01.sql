-- Listing 5-1: Using COPY for data import
COPY table_name FROM 'C:\YourDirectory\your_file.csv'
WITH (FORMAT CSV, HEADER);
