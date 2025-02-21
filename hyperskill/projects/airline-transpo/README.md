# Airline Transportation

- [Airline Transportation](#airline-transportation)
  - [Learning outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: Updating Passenger Trip Dates](#1-updating-passenger-trip-dates)
    - [2: Identifying Key Passengers](#2-identifying-key-passengers)
    - [3: Route Performance Analysis](#3-route-performance-analysis)
    - [4: Boeing vs Airbus Comparison](#4-boeing-vs-airbus-comparison)
    - [5: Top Routes by Duration For Each Company](#5-top-routes-by-duration-for-each-company)
    - [6: ABC Passenger Segmentation](#6-abc-passenger-segmentation)

## Learning outcomes
Embark on a journey of SQL mastery with the Airline Transportation Database project! Explore Intermediate topics including JOINs, set operations, window functions, and table manipulation techniques such as UPDATE and ALTER TABLE commands. Learn to analyze data comprehensively, employ WITH statements for temporary result sets, utilize string operations for data manipulation, and leverage window functions for deeper insights. This project offers a platform to refine your SQL skills, equipping you to tackle complex analytical tasks, optimize airline operations efficiently, and manipulate database structures effectively. Furthermore, to assist you in grasping the topics and efficiently crafting queries, we'll provide examples of ChatGPT prompts. These examples will help you understand how to use the AI tools in you work effectively.

## About
Welcome to the Airline Transportation Database! Here, you'll dive into detailed records about airline companies, trip specifics, and passenger details. Your task as a novice data analyst is to analyze this wealth of data to improve airline operations and enhance passenger experiences. Additionally, with advanced AI tools like ChatGPT at your disposal, you will be able effortlessly craft queries to extract valuable insights and make informed decisions. Let's embark on this journey to optimize air travel together!

## Stages
### 1: Updating Passenger Trip Dates 
<details>
<summary>Alter the passenger's trip table to adjust date data types and synchronize trip dates with departure times to ensure data consistency.</summary>

#### 1.1 Description
As a new data analyst, you're just getting started with the air transportation database. This stage helps you clean up dates and match trip dates with departure times, making the data neat and ready for analysis as you move forward.

#### 1.2 Objectives
- ALTER TABLE the `Pass_in_trip` to change the data type of the `trip_date` column from `DATETIME` to `DATE` for consistency.

- Then, `UPDATE` the `trip_date` in `Pass_in_trip` to adapt it to the new datatype, meaning that you need to change all column values from `DATETIME`("'2024-02-23 00:00:00'") to only `DATE`("2024-02-23").

- Verify the changes by selecting all columns from the updated rows in updated the `Pass_in_trip` table.

- Making multiple queries is allowed.

##### ChatGPT prompts that help to write the query
- How would you modify the data type of a column in a database table to ensure consistency? Consider the scenario where you need to change the data type of a column from one type to another for better alignment across the database.

- Now, assuming you've altered the structure of a database table, how would you use the UPDATE function to modify specific column values, ensuring they align with the new data type?

- After making structural changes to a database table and updating specific column values, how would you verify that the changes were applied correctly? Consider the approach to select and examine the affected rows to ensure the integrity of the data

Take a look at the following database structure:

![database structure](./db.png)

##### Explanation of the database:
The *`Airline Transportation Database`* encompasses four main tables: `Airline_Company,` `Trip,` `Passenger,` and `Pass_in_trip`. It facilitates the management of airline operations, storing critical information about airline companies, flights, passengers, and trip details.

In-depth details of each table are as follows:

`Airline_company`**: Serves as a repository for airline company information, providing a unique identifier for each company along with their respective names.
- `ID_comp`: Primary key representing the unique identifier for each airline company.
- `company_name`: Stores the name of the airline company, enabling identification and association with flight operations.

`Trip`**: Contains detailed information about each flight trip.
- `trip_no`: Primary key serving as a unique identifier for each flight trip.
- `ID_comp`: Foreign key referencing the `ID_comp` in the `Airline_Company` table, establishing a relationship between flights and airline companies.
- `plane_type`: Records the type of aircraft used for the flight.
- `town_from`: Indicates the departure city of the flight.
- `town_to`: Specifies the arrival city of the flight.
- `time_out`: Stores the departure time of the flight.
- `time_in`: Records the arrival time of the flight.

`Passenger`**: Maintains records of individual passengers.
- `ID_psg`: Primary key representing the unique identifier for each passenger.
- `passenger_name`: Stores the name of the passenger, facilitating passenger identification and management.

`Pass_in_trip`**: Serves as a bridge between passengers and trip details.
- `trip_no`: Foreign key referencing the `trip_no` in the Trip table, establishing a relationship between passengers and flights.
- `trip_date`: Records the date of the trip, allowing for chronological organization of passenger-trip associations.
- `ID_psg`: Foreign key referencing the `ID_psg` in the Passenger table, associating passengers with specific trips.
- `seat_number`: Indicates the seat number occupied by the passenger during the trip, providing seating information for passenger tracking and flight organization.

Additional information and rules to consider:
- flights operate daily, and the flight duration of any flight is less than a day; `town_from` <> `town_to`.
- time and date in the `time_out` and `time_in` are taken into account relative to one-time zone.
- `time_out` and `time_in` times are indicated accurate to the minute.
- `passenger_namemay` have namesakes (same name field values).
- the `seat_number` in the cabin is a number with a letter; the number determines the number of the row in the range from 01 to 99, and the letter (a – d) – the place in the row from left to right in alphabetical order.

** *Table names are case-sensitive*.

Click on the [link](https://cogniterra.org/media/attachments/lesson/38148/Database.sql) to download the SQL query for creating the database.

#### 1.3 Examples
*Pass_in_trip Table Example*:

trip_no|trip_date|ID_psg|seat_number
:-:|:-:|:-:|:-:
1|2024-02-23 00:00:00|1|01A
1|2024-02-23 00:00:00|2|21B
2|2024-02-24 00:00:00|1|30D
2|2024-02-24 00:00:00|2|05C
2|2024-02-24 00:00:00|3|86A

From the data presented in the table above, it can be seen that the datatype of the `trip_date` is the `DATETIME` for example '2024-02-23 00:00:00'. The task is to change the `DATETIME` datatype of the column to the `DATE` datatype and then correspondingly the values of this column change from *`DATETIME`*:*2024-02-23 00:00:00* to *`DATE`*:*2024-02-23*.

The final query output after selecting changed rows with all columns from the `Pass_in_trip` table looks like this:

trip_no|trip_date|ID_psg|seat_number
:-:|:-:|:-:|:-:
1|2024-02-23|1|01A
1|2024-02-23|2|21B
2|2024-02-24|1|30D
2|2024-02-24|2|05C
2|2024-02-24|3|86A

From the output above, it can be seen that all columns from updated rows were selected.

##### Query template:
```sql
ALTER TABLE Pass_in_trip ...;

UPDATE Pass_in_trip ...;

SELECT * ...;
```
[solution](./s01.sql)

</details>

### 2: Identifying Key Passengers
<details>
<summary>Identify the names of passengers who frequently fly with specific airline companies.</summary>

#### 2.1 Description
In this stage as a data analyst, your task is to identify passengers who frequently fly with specific airline companies. By analyzing database records, you'll pinpoint passengers who have flown multiple times with particular airlines. This insight aids airlines in tailoring services to meet the needs of loyal customers.

#### 2.2 Objectives
- Combine passenger flight data from the `Passenger`, `Pass_in_trip`, `Trip`, and `Airline_company` tables to create an overview of frequent flyers with specific airlines.
- Output the `passenger_name`, `COUNT` of the passenger's number of flights on a specific airline company as `num_flights`, and airline `company_name`.
- To be listed as a frequent flyer the `num_flights` must be at least more than 1.
- Utilize the `JOIN` function effectively to combine multiple tables accurately.
- Use the `GROUP BY` function to combine according to the `passneger_name` and `company_name`
- The column order is essential.

##### ChatGPT promts that help to write the query
- Consider a scenario where you need to analyze flight data to identify frequent flyers with specific airlines. How would you effectively merge data from multiple sources using SQL JOINs to gather all the necessary information for analysis?
- Once you've combined the relevant data, how would you use SQL aggregation functions to calculate the number of flights each individual has taken with a particular airline? Think about how you would organize the data to facilitate this calculation.
- To identify frequent flyers accurately, you'll need to filter the results based on certain conditions. How would you utilize SQL clauses to ensure that only individuals who meet the criteria for being frequent flyers are included in the final analysis?

#### 2.3 Examples
*Airline_company Table Example*:
ID_comp|company_name
-|-
1|Delta Airlines
2|American Airlines

*Passenger Table Example*:
ID_psg|passenger_name
-|-
1|John Smith
2|Mary Johnson
3|James Williams

*Trip Table Example*:
trip_no|ID_comp|plane_type|town_from|town_to|time_out|time_in
-|-|-|-|-|-|-
1|1|Boeing 737|Chicago|Miami|2024-02-23 08:00:00|2024-02-23 18:45:00
2|2|Airbus A320|New York|Boston|2024-02-24 23:00:00|2024-02-25 08:00:00

*Pass_in_trip Table Example*:
trip_no|trip_date|ID_psg|seat_number
-|-|-|-
1|2024-02-23 00:00:00|1|01A
1|2024-02-23 00:00:00|1|21B
2|2024-02-24 00:00:00|2|30D
2|2024-02-24 00:00:00|2|05C
2|2024-02-24 00:00:00|3|86A

From the data presented in the table above, it is evident that `passenger_name`: **John Smith** with the `ID_psg`: **1** exists in the `Pass_in_trip` table 2 times. In both cases it aligned to the `trip_no`: **1**, consequently that `trip_no` in the Trip table aligned to the `ID_comp`: **1** which has the `company_name`: **Delta Airlines** in the `Airline_company` table.

The output table, after identifying the `passenger_name` having `num_flights` at least 1 on the specific airline companies :

MySQL Query Output

passenger_name|num_flights|company_name
-|-|-
John Smith|2|Delta Airlines
Mary Johnson|2|American Airlines

*From the output above, it can be seen that the order of the columns is* `passenger_name` -> `num_flights` -> `company_name`

##### Query template:
```sql
SELECT
   p.passenger_name, ...;
```

[solution](./s02.sql)

</details>

### 3: Route Performance Analysis
<details>
<summary>Analyze flight routes by calculating average flight duration, total passengers, and income generated per route.</summary>

#### 3.1 Description
In this stage, as a novice data analyst, you need to examine the efficiency of flight routes by computing key metrics such as average flight duration, total passengers served, and income generated per route. This stage focuses on synthesizing data from various sources to derive insights into route profitability and passenger demand, helping optimize airline operations and resource allocation.

#### 3.2 Objectives
- Identify the unique routes by `CONCAT` the `town_from` and `town_to` from the `Trip` table, naming it `route`.
- Calculate the average flight duration in **minutes** for each route, where there may be multiple identical routes with different flight durations. This average is denoted as `avg_flight_duration`.
- `COUNT` the total number of passengers who flew on each route, designated as `total_passengers`.
- Calculate the `SUM` income generated for each route, considering each second of flight as worth **1 cent**, termed `total_income`. The final answer of `total_income` must be in **dollars**.
- Utilize the `JOIN` function to combine multiple tables correctly.
- `ORDER BY` the final result by `total_income` in descending order.
- The column order is essential.

##### ChatGPT promts that help to write the query
- Consider a scenario where you need to analyze data to identify unique routes. How would you approach formulating an SQL query to accomplish this task?
- Now, imagine you've identified the unique routes. How would you proceed to calculate the average flight durations for each route using SQL?
- After determining the average flight durations, how would you go about counting the total number of passengers for each route in the dataset?
- Finally, consider the task of computing the total income generated for each route. How would you formulate an SQL query to achieve this, taking into account factors such as flight duration and passenger counts?

#### 3.3 Examples
*Trip Table Example*:
trip_no|ID_comp|plane_type|town_from|town_to|time_out|time_in
:-:|:-:|:-:|:-:|:-:|:-:|:-:
1|1|Boeing 737|Chicago|Miami|2024-02-23 08:00:00|2024-02-23 18:45:00
2|2|Airbus A320|New York|Boston|2024-02-24 23:00:00|2024-02-25 08:00:00

*Pass_in_trip Table Example*:
trip_no|trip_date|ID_psg|seat_number
:-:|:-:|:-:|:-:
1|2024-02-23 00:00:00|1|01A
1|2024-02-23 00:00:00|1|21B
2|2024-02-24 00:00:00|2|30D
2|2024-02-24 00:00:00|2|05C
2|2024-02-24 00:00:00|3|86A

From the tables, we can observe a `route` from *`town_from`*: ***Chicago*** to *`town_to`*: ***Miami*** with a *`trip_no`*: ***1***. This `route` has two occurrences in the `Trip` table, indicating a *`total_passengers`*: ***2*** .

The `avg_flight_duration` for this route is calculated by subtracting the `time_out` from the `time_in`, resulting in 10 hours and 45 minutes or **645** minutes. The `total_income` for this route is computed by multiplying the `avg_flight_duration` (converted to seconds) by the `total_passengers` and $0.01 per second, yielding **$774**.

Finally, the output table presents each `route`, its corresponding `avg_flight_duration`, `total_passengers`, and `total_income`, ordered by `total_income` in descending order:

MySQL Query Output

route|avg_flight_duration|total_passengers|total_income
:-:|:-:|:-:|:-:
New York-Boston|540|3|972
Chicago-Miami|645|2|774

*From the output above, it can be seen that the order of the columns is `route` -> `avg_flight_duration` -> `total_passengers` -> `total_income`*

##### Query template:
```sql
SELECT 
    CONCAT(... '-' ...) AS route, ...;
```

[solution](./s00.sql)

</details>

### 4: Boeing vs Airbus Comparison
<details>
<summary>Compare flight durations and frequencies between Boeing and Airbus aircraft types.</summary>

#### 4.1 Description
In this stage, imagine you, as a data analyst, want to compare the average flight durations between Boeing and Airbus aircraft to see if there's a notable difference. Before doing that, you'll gather data on flight durations and frequencies for both Boeing and Airbus planes across different airline companies. You aim to collect information on how long these planes fly on average and how often they're used for flights.

#### 4.2 Objectives
- Identify the `aircraft_type` (Boeing or Airbus) based on the `plane_type` recorded in the `Trip` table. For instance, if the `plane_type` is **Boeing 737**, the `aircraft_type` would be **Boeing**.
- Identify the `AVG` flight duration in **minutes** as `avg_flight_duration` and `COUNT` the number of flights as `num_flights` for each `aircraft_type` across all flights recorded in the `Trip` table.
- All **Boeing** aircraft types in the `plane_type` column start with the word "Boeing," and all **Airbus** aircraft types start with the word "Airbus."
- The column order is essential.

##### ChatGPT promts that help to write the query
- Imagine you have a dataset containing various aircraft types recorded in a specific column. How would you formulate an SQL query to categorize these aircraft types into distinct groups based on certain patterns or characteristics?
- Now, assuming you have a dataset with flight records including departure and arrival times, how would you write an SQL query to calculate the average duration of flights for each type of aircraft?
- In addition to calculating average flight durations, how would you formulate an SQL query to count the total number of flights recorded for each type of aircraft in the dataset?

#### 4.3 Examples
Trip Table Example:

trip_no|ID_comp|plane_type|town_from|town_to|time_out|time_in
:-:|:-:|:-:|:-:|:-:|:-:|:-:
1|1|Boeing 737|Chicago|Miami|2024-02-23 08:00:00|2024-02-23 18:45:00
2|2|Airbus A320|New York|Boston|2024-02-25 03:30:00|2024-02-25 15:20:00
3|2|Boeing 777|New York|Los Angeles|2024-02-24 23:00:00|2024-02-25 08:00:00
4|2|Airbus A330|Denver|Chicago|2024-02-24 16:40:00|2024-02-24 23:30:00

From the data provided, we see that both *`plane_type`*: ***Boeing 737*** and ***Boeing 777 fall*** under the *`aircraft_type`*: ***Boeing***, resulting in a total of **2** `num_flights`. The first flight duration is from "2024-02-23 08:00:00" to "2024-02-23 18:45:00," which equals 10 hours and 45 minutes or 645 minutes. The second flight duration is from "2024-02-24 23:00:00" to "2024-02-25 08:00:00," totaling 9 hours or 540 minutes. The average `avg_flight_duration` for these two flights is calculated as (645 + 540) / 2 = **592.5** minutes.

The resulting output table displays each `aircraft_type` alongside its corresponding `avg_flight_duration` and `num_flights`:

MySQL Query Output

aircraft_type|avg_flight_duration|num_flights
:-:|:-:|:-:
Boeing|592.5|2
Airbus|560|2

From the output above, it can be seen that the order of the columns is *`aircraft_type`* -> *`avg_flight_duration`* -> *`num_flights`*

##### Query template:
```sql
SELECT
    'Boeing' AS aircraft_type, ...;
```

[solution](./s04.sql)

</details>

### 5: Top Routes by Duration For Each Company
<details>
<summary>Identify the top two routes with the longest average total flight durations for each airline company</summary>

#### 5.1 Description
In this stage, your goal as a novice data analyst is to pinpoint the top two routes with the lengthiest average flight durations for every airline company. This involves analyzing flight data to determine the average duration between departure and arrival cities. The query will organize the data by company, departure city, and arrival city, calculating the average duration for each route. Finally, it ranks the routes by duration, selecting only the top two routes for each company.

#### 5.2 Objectives
- Identify the `company_name` from the `Airline_company` table and their corresponding `town_from` as `departure_city`, `town_to` as `arrival_city`, and average flight durations in **minutes** for routes from the `Trip` table as `avg_flight_duration`.
- Output only the **top 2** airline companies as `company_name` based on the `avg_flight_duration`.
- Utilize the `JOIN` function to combine multiple tables correctly and it is **recommended** to use the `WITH(CTE)` or `subqueries` with `ROW_NUMBER()` function to correctly rank the airline companies.
- The column order is essential.

*Hint: Use the query from Stage 3 for the calculation of avg_flight_duration.*

##### ChatGPT promts that help to write the query
- Imagine you have data spread across multiple tables containing information about airline companies, routes, and flight durations. How would you formulate an SQL query to extract relevant information such as company names, departure cities, arrival cities, and average flight durations for each route?
- Now, assuming you've extracted the necessary information, how would you utilize SQL to rank the airline companies based on average flight durations for their routes? Consider using techniques like window functions or subqueries to achieve this.
- In addition to ranking airline companies, how would you formulate an SQL query to filter the results and output only the top two airline companies based on average flight durations for their routes?

#### 5.3 Examples
*Airline_company Table Example*:
ID_comp|company_name
:-:|:-:
1|Delta Airlines
2|American Airlines

*Trip Table Example*:
trip_no|ID_comp|plane_type|town_from|town_to|time_out|time_in
:-:|:-:|:-:|:-:|:-:|:-:|:-:
1|2|Boeing 737|Chicago|Miami|2024-02-23 08:00:00|2024-02-23 18:45:00
2|2|Airbus A320|New York|Boston|2024-02-25 03:30:00|2024-02-25 15:20:00
3|2|Boeing 777|New York|Los Angeles|2024-02-24 23:00:00|2024-02-25 08:00:00
4|1|Airbus A330|Denver|Chicago|2024-02-24 16:40:00|2024-02-24 23:30:00

From the data above, we can see that for *`company_name`*: ***American Airlines*** (*`ID_comp`*: ***2***), three routes are **Chicago - Miami**, **New York - Boston**, and **New York - Los Angeles**. The `avg_flight_duration` for these routes are **645 minutes**, **710 minutes**, and **540 minutes** respectively. The top two longest `avg_flight_duration` are **710** and **645 minutes**, corresponding to the routes **New York - Boston** and **Chicago - Miami**.

The resulting output table shows each `company_name` alongside its corresponding `departure_city`, `arrival_city`, and `avg_flight_duration` for the top 2 `avg_flight_duration`:

MySQL Query Output
company_name|departure_city|arrival_city|avg_flight_duration
:-:|:-:|:-:|:-:
American Airlines|New York|Boston|710
American Airlines|Chicago|Miami|645
Delta Airlines|Denver|Chicago|410

*From the output above, it can be seen that the order of the columns is `company_name` -> `departure_city` -> `arrival_city` -> `avg_flight_duration`*

##### Query template:
```sql
WITH RouteDuration AS (
  SELECT
    ac.company_name,
    t.town_from AS departure_city,
    t.town_to AS arrival_city, ...;
```

[solution](./s05.sql)

</details>

### 6: ABC Passenger Segmentation
<details>
<summary>Utilize ABC testing to segment passengers based on their contribution to total income, categorizing them as A, B, or C based on their cumulative share percentage</summary>

#### 6.1 Description
In this final stage, the goal is to utilize ABC testing to segment passengers based on their contribution to total income, recognizing that certain passengers frequently fly and thus play a substantial role in revenue generation. As a data analyst, the objective is to identify these high-contributing passengers by categorizing them as A, B, or C based on their cumulative share percentage of total income. By targeting these passengers, airlines can optimize marketing strategies and loyalty programs to enhance revenue.

#### 6.2 Objectives
- First, retrieve the `ID_psg` and `passenger_name` from the `Passenger` table. Next, calculate the income in **dollars** generated by each passenger from tables `Pass_in_trip` and `Trip` tables, considering that each **second** of flight contributes **one cent**. Name this value as `passenger_income_dollars`. Then, determine the cumulative share percentage `cumulative_share_percent`.
- The `cumulative_share_percent` shows how much of the total income comes from each passenger's income when you add up passenger income one by one, for example, looking at what percentage of total revenue passengers earn, sorted by their income levels.
- Then you need to identify the passenger `category`. To categorize passengers, group them into three `category`: **A**, **B**, and **C**. Category **A** represents up to **80%** of the `cumulative_share_percent`, category **B** covers from **80.01%** to **95%**, and category **C** spans from **95.01%** to **100%**.
- `ROUND` the `cumulative_share_percent` up to 2 decimal places.
- Utilize the `JOIN` function effectively to combine multiple tables accurately, and **consider** using the `CASE` conditional function to properly categorize the passengers. Additionally, it is **recommended** to use the `WITH` (CTE) function to efficiently reuse the same subqueries multiple times throughout the query.
- Employ the `GROUP BY` function to effectively group the income of passengers by `ID_psg` and `passenger_name`.
- The column order is essential.

##### ChatGPT promts that help to write the query
- Imagine you have a dataset containing information about passengers, including their IDs and names. How would you formulate an SQL query to retrieve the passenger ID and name from the dataset?
- Now, assuming you have data on passengers' flight details, how would you write an SQL query to calculate the income generated by each passenger, considering that each second of flight contributes to their income?
- In addition to calculating individual passenger incomes, how would you formulate an SQL query to determine the cumulative share percentage of total income earned by passengers, sorted by their income levels?
- Now, thinking about the passenger income distribution, how would you use SQL to categorize passengers into different categories (A, B, C) based on their income levels? Consider using the CASE conditional function for this task.

#### 6.3 Examples
*Passenger Table Example*:
ID_psg|passenger_name
:-:|:-:
1|John Smith
2|Mary Johnson
3|James Williams

*Pass_in_trip Table Example*:
trip_no|trip_date|ID_psg|seat_number
:-:|:-:|:-:|:-:
1|2024-02-23 00:00:00|1|01A
1|2024-02-23 00:00:00|2|21B
3|2024-02-28 00:00:00|1|30D
2|2024-02-25 00:00:00|1|05C
3|2024-02-28 00:00:00|3|86A
2|2024-02-25 00:00:00|1|57C

*Trip Table Example*:
trip_no|ID_comp|plane_type|town_from|town_to|time_out|time_in
:-:|:-:|:-:|:-:|:-:|:-:|:-:
1|2|Boeing 737|Chicago|Miami|2024-02-23 08:00:00|2024-02-23 18:45:00
2|2|Airbus A320|New York|Boston|2024-02-25 03:30:00|2024-02-25 15:20:00
3|2|Airbus A323|New York|Washington|2024-02-28 05:30:00|2024-02-25 09:00:00

From the given data, we observe that for *`trip_no`*: ***1***, ***2***, and ***3***, the flight durations are **645**, **710**, and **210 minutes**, respectively. These trips generate incomes as follows:
trip|flight_duration (in minutes)|multiplier (60 seconds / 1 min * 1 cent per second)|incomes
:-:|:-:|:-:|:-:
(1)|645|* 60 * 0.01|= 387$
(2)|710|* 60 * 0.01|= 426$
(3)|210|* 60 * 0.01|= 126$

Let's find out how much income each passenger(`passenger_income_dollars`) with *`ID_psg`*: ***1***, ***2***, and ***3*** generated based on their `trip_no` recorded in the `Pass_in_trip` table:
ID_psg|flight_income|passenger_income_dollars
:-:|:-:|:-:
(1)|387 * 1 + 426 * 2 + 126 * 1|= 1365$
(2)|387 * 1 + 426 * 0 + 126 * 0|= 387$
(3)|387 * 0 + 426 * 0 + 126 * 1|= 126$

In total the income which was generated is equal to:

1356 + 387 + 126 = 1878$

Finally, let's calculate the `cumulative_share_percent` of each passenger:
ID_psg|passenger_income/total_income|cumulative_share_percent
:-:|:-:|:-:
(1)|1365 / 1878|= 72.68%
(2)|387 / 1878|= 20.61%
(3)|126 / 1878|= 6.71%

After the sorting according in descending order, the final values of `cumulative_share_percent` are:

(1) : 72.68%
(2) : 72.68 + 20.61 =  93.29%
(3) : 93.29 +  6.71 = 100.00%

Based on the above calculation, the passenger with ID_psg:1 is in category A, the passenger with ID_psg: 2 is in category B, and the passenger with ID_psg: 3 is in category C.

Final output after identifying the ID_psg, passenger_name, with correspondingpassenger_income_dollars, cumulative_share_percent, category:

MySQL Query Output
ID_psg|passenger_name|passenger_income_dollars|cumulative_share_percent|category
:-:|:-:|:-:|:-:|:-:
1|John Smith|1365|72.68|A
2|Mary Johnson|387|93.29|B
3|James Williams|126|100|C

From the output above, it can be seen that the order of the columns is ID_psg -> passenger_name-> passenger_income_dollars -> cumulative_share_percent -> category

```sql
WITH PassengerIncome AS (
  SELECT 
    p.ID_psg,
    p.passenger_name, ...;
```

[solution](./s06.sql)

</details>

[<<](../../../README.md)
<!--
:%s/\(Sample \(Input\|Output\) \d:\)\n\(.*\)/```\r\r**\1**\r```\3/gc
### 0:
<details>
<summary></summary>

#### 0.1 Description

#### 0.2 Objectives

##### ChatGPT promts that help to write the query

#### 0.3 Examples

[solution](./s00.sql)

</details>

-->

