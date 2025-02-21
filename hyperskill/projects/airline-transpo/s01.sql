-- Stage 1: Alter the passenger's trip table to adjust date data types and synchronize trip dates with departure times to ensure data consistency.
ALTER TABLE Pass_in_trip
MODIFY COLUMN trip_date DATE;

UPDATE Pass_in_trip
SET trip_date = DATE(trip_date);

SELECT * FROM Pass_in_trip;

/*
Query result:
+---------+------------+--------+-------------+
| trip_no | trip_date  | ID_psg | seat_number |
+---------+------------+--------+-------------+
| 1       | 2024-02-23 | 1      | 01A         |
| 1       | 2024-02-23 | 2      | 01B         |
| 2       | 2024-02-23 | 3      | 02C         |
| 2       | 2024-02-23 | 6      | 02D         |
| 3       | 2024-02-23 | 5      | 03A         |
| 3       | 2024-02-23 | 6      | 13B         |
| 4       | 2024-02-23 | 7      | 24C         |
| 4       | 2024-02-23 | 8      | 34D         |
| 5       | 2024-02-23 | 9      | 15A         |
| 5       | 2024-02-23 | 10     | 05B         |
| 6       | 2024-02-24 | 1      | 11A         |
| 6       | 2024-02-24 | 2      | 13B         |
| 7       | 2024-02-24 | 2      | 32C         |
| 7       | 2024-02-24 | 7      | 42D         |
| 8       | 2024-02-24 | 1      | 23A         |
| 8       | 2024-02-24 | 2      | 53B         |
| 9       | 2024-02-24 | 1      | 24C         |
| 9       | 2024-02-24 | 7      | 14D         |
| 10      | 2024-02-24 | 1      | 25A         |
| 10      | 2024-02-24 | 2      | 05B         |
| 11      | 2024-02-25 | 1      | 73B         |
| 11      | 2024-02-25 | 2      | 13C         |
| 12      | 2024-02-26 | 2      | 84C         |
| 13      | 2024-02-27 | 1      | 34D         |
| 14      | 2024-02-28 | 6      | 45A         |
| 15      | 2024-02-29 | 4      | 95B         |
| 15      | 2024-02-29 | 6      | 08A         |
| 16      | 2024-03-02 | 3      | 02B         |
| 17      | 2024-03-03 | 1      | 35D         |
| 18      | 2024-03-04 | 1      | 13A         |
| 18      | 2024-03-04 | 2      | 28A         |
| 19      | 2024-03-05 | 10     | 15C         |
| 20      | 2024-03-06 | 6      | 17B         |
+---------+------------+--------+-------------+

query up to line 8
*/
