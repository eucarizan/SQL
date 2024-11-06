-- Stage 02: Identify the names of passengers who frequently fly with specific airline companies.
SELECT 
    p.passenger_name, 
    count(t.ID_comp) AS num_flights, 
    a.company_name
FROM Trip t 
LEFT JOIN Airline_company a ON t.ID_comp = a.ID_comp
LEFT JOIN Pass_in_trip pt ON t.trip_no = pt.trip_no
LEFT JOIN Passenger p ON pt.ID_psg = p.ID_psg
GROUP BY p.passenger_name, a.company_name HAVING num_flights > 1;

/*
Query result:
+----------------+-------------+--------------------+
| passenger_name | num_flights | company_name       |
+----------------+-------------+--------------------+
| John Smith     | 3           | Delta Airlines     |
| Mary Johnson   | 3           | Delta Airlines     |
| Mary Johnson   | 2           | American Airlines  |
| John Smith     | 2           | United Airlines    |
| Richard Wilson | 2           | Southwest Airlines |
| John Smith     | 2           | Southwest Airlines |
| Barbara Taylor | 2           | JetBlue Airways    |
+----------------+-------------+--------------------+
*/
