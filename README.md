# SQL practice

## Knowledge Map
- [SQL practice](#sql-practice)
  - [Knowledge Map](#knowledge-map)
    - [1: Practical SQL (book)](#1-practical-sql-book)
      - [Ch01: Setting Up Your Coding Environment](#ch01-setting-up-your-coding-environment)
      - [Ch02: Creating Your First Database and Table](#ch02-creating-your-first-database-and-table)
      - [Ch03: Beginning Data Exploration with SELECT](#ch03-beginning-data-exploration-with-select)
      - [Ch04: Understading Data Types](#ch04-understading-data-types)
      - [Ch05: Importing and Exporting Data](#ch05-importing-and-exporting-data)
      - [Ch06: Basic Math and Stats with SQL](#ch06-basic-math-and-stats-with-sql)
      - [Ch07: Joining Tables in a Relational Database](#ch07-joining-tables-in-a-relational-database)
      - [Ch08: Table Design That Works for You](#ch08-table-design-that-works-for-you)
      - [Ch09: Extracting Information by Grouping and Summarizing](#ch09-extracting-information-by-grouping-and-summarizing)
      - [Ch10: Inspecting and Modifying Data](#ch10-inspecting-and-modifying-data)
      - [Ch11: Statistical Functions in SQL](#ch11-statistical-functions-in-sql)
      - [Ch12: Working with Dates and Times](#ch12-working-with-dates-and-times)
      - [Ch13: Advanced Query Techniques](#ch13-advanced-query-techniques)
      - [Ch14: Mining Text to Find Meaningful Data](#ch14-mining-text-to-find-meaningful-data)
    - [2: SoftUni](#2-softuni)
    - [3: Hyperskill](#3-hyperskill)
      - [Projects](#projects)
    - [4: SQL Puzzles and Answers (book)](#4-sql-puzzles-and-answers-book)

### 1: Practical SQL (book)
- Anthony DeBarros, No Starch Press
#### Ch01: Setting Up Your Coding Environment
listing|solution|num
:-:|:-:|:-:
01-01|[check postgress version](./practical-sql-anthony-debarros/ch01/listing01-01.sql)|1
<hr/>

#### Ch02: Creating Your First Database and Table
listing|solution|num
:-:|:-:|:-:
02-01|[create a database - analysis](./practical-sql-anthony-debarros/ch02/listing_02-01.sql)|2
02-02|[create table - teachers](./practical-sql-anthony-debarros/ch02/listing_02-02.sql)|3
02-03|[insert data - teachers](./practical-sql-anthony-debarros/ch02/listing_02-03.sql)|4
<hr/>

#### Ch03: Beginning Data Exploration with SELECT
listing|solution|num
:-:|:-:|:-:
03-01|[querying all rows and columns - teachers](./practical-sql-anthony-debarros/ch03/listing_03-01.sql)|5
03-02|[querying a subset of columns](./practical-sql-anthony-debarros/ch03/listing_03-02.sql)|6
03-03|[sorting a column with order by](./practical-sql-anthony-debarros/ch03/listing_03-03.sql)|7
03-04|[sorting multiple columns with order by](./practical-sql-anthony-debarros/ch03/listing_03-04.sql)|8
03-05|[querying distinct values](./practical-sql-anthony-debarros/ch03/listing_03-05.sql)|9
03-06|[querying distinct pairs of values](./practical-sql-anthony-debarros/ch03/listing_03-06.sql)|10
03-07|[filtering rows using where](./practical-sql-anthony-debarros/ch03/listing_03-07.sql)|11
03-08|[filtering with like and ilike](./practical-sql-anthony-debarros/ch03/listing_03-08.sql)|12
03-09|[combining operators using and & or](./practical-sql-anthony-debarros/ch03/listing_03-09.sql)|13
03-10|[a select statement including where and order by](./practical-sql-anthony-debarros/ch03/listing_03-10.sql)|14
<hr/>

#### Ch04: Understading Data Types
listing|solution|num
:-:|:-:|:-:
04-01|[character data types in aciton](./practical-sql-anthony-debarros/ch04/listing_04-01.sql)|15
04-02|[number data types in action](./practical-sql-anthony-debarros/ch04/listing_04-02.sql)|16
04-03|[rounding issues with float columns](./practical-sql-anthony-debarros/ch04/listing_04-03.sql)|17
04-04|[the timestamp and interval types in action](./practical-sql-anthony-debarros/ch04/listing_04-04.sql)|18
04-05|[using the interval data type](./practical-sql-anthony-debarros/ch04/listing_04-05.sql)|19
04-06|[three cast() examples](./practical-sql-anthony-debarros/ch04/listing_04-06.sql)|20
<hr/>

#### Ch05: Importing and Exporting Data
listing|solution|num
:-:|:-:|:-:
05-01|[using copy for data import](./practical-sql-anthony-debarros/ch05/listing_05-01.sql)|21
05-02|[create table statement for census county population estimates](./practical-sql-anthony-debarros/ch05/listing_05-02.sql)|22
05-03|[importing census data using copy](./practical-sql-anthony-debarros/ch05/listing_05-03.sql)|23
05-04|[creating a table to track superviser salaries](./practical-sql-anthony-debarros/ch05/listing_05-04.sql)|24
05-05|[importing salaries data from csv to three table columns](./practical-sql-anthony-debarros/ch05/listing_05-05.sql)|25
05-06|[importing a subset of rows with where](./practical-sql-anthony-debarros/ch05/listing_05-06.sql)|26
05-07|[using a temporary table to add a defalt value to a column during import](./practical-sql-anthony-debarros/ch05/listing_05-07.sql)|27
05-08|[exporting an entire table with copy](./practical-sql-anthony-debarros/ch05/listing_05-08.sql)|28
05-09|[exporting selected columns from a table with copy](./practical-sql-anthony-debarros/ch05/listing_05-09.sql)|29
05-10|[exporting query result with copy](./practical-sql-anthony-debarros/ch05/listing_05-10.sql)|30
<hr/>

#### Ch06: Basic Math and Stats with SQL
listing|solution|num
:-:|:-:|:-:
06-01|[basic addition, subtraciton and multiplicatin with sql](./practical-sql-anthony-debarros/ch06/listing_06-01.sql)|31
06-02|[integer and decimal division with sql](./practical-sql-anthony-debarros/ch06/listing_06-02.sql)|32
06-03|[exponents, roots, and factorials with sql](./practical-sql-anthony-debarros/ch06/listing_06-03.sql)|33
06-04|[selecting census population estimate columns with aliases](./practical-sql-anthony-debarros/ch06/listing_06-04.sql)|34
06-05|[subtracting two columns in us_counties_pop_est_2019](./practical-sql-anthony-debarros/ch06/listing_06-05.sql)|35
06-06|[checking census data totals](./practical-sql-anthony-debarros/ch06/listing_06-06.sql)|36
06-07|[calculating the percent of a county's area that is water](./practical-sql-anthony-debarros/ch06/listing_06-07.sql)|37
06-08|[calculating the percent change](./practical-sql-anthony-debarros/ch06/listing_06-08.sql)|38
06-09|[using the sum() and avg() aggregate functions](./practical-sql-anthony-debarros/ch06/listing_06-09.sql)|39
06-10|[testing sql percentile functions](./practical-sql-anthony-debarros/ch06/listing_06-10.sql)|40
06-11|[using sum(), avg(), and percentile_cont() aggregate functions](./practical-sql-anthony-debarros/ch06/listing_06-11.sql)|41
06-12|[passing an array of values to percentile_cont()](./practical-sql-anthony-debarros/ch06/listing_06-12.sql)|42
06-13|[using unnest() to turn an array into rows](./practical-sql-anthony-debarros/ch06/listing_06-13.sql)|43
06-14|[finding the most frequent value with mode()](./practical-sql-anthony-debarros/ch06/listing_06-14.sql)|44
<hr/>

#### Ch07: Joining Tables in a Relational Database
listing|solution|num
:-:|:-:|:-:
07-01|[creating the departments and employees table](./practical-sql-anthony-debarros/ch07/listing_07-01.sql)|45
07-02|[joining the employees and departments table](./practical-sql-anthony-debarros/ch07/listing_07-02.sql)|46
07-03|[creating two tables to explore join types](./practical-sql-anthony-debarros/ch07/listing_07-03.sql)|47
07-04|[using join](./practical-sql-anthony-debarros/ch07/listing_07-04.sql)|48
07-05|[join with using](./practical-sql-anthony-debarros/ch07/listing_07-05.sql)|49
07-06|[using left join](./practical-sql-anthony-debarros/ch07/listing_07-06.sql)|50
07-07|[using right join](./practical-sql-anthony-debarros/ch07/listing_07-07.sql)|51
07-08|[using full outer join](./practical-sql-anthony-debarros/ch07/listing_07-08.sql)|52
07-09|[using cross join](./practical-sql-anthony-debarros/ch07/listing_07-09.sql)|53
07-10|[filtering to show missing values with is null](./practical-sql-anthony-debarros/ch07/listing_07-10.sql)|54
07-11|[querying specific columns in a join](./practical-sql-anthony-debarros/ch07/listing_07-11.sql)|55
07-12|[simplifying code with table aliases](./practical-sql-anthony-debarros/ch07/listing_07-12.sql)|56
07-13|[joining multiple tables](./practical-sql-anthony-debarros/ch07/listing_07-13.sql)|57
07-14|[combining query results with union](./practical-sql-anthony-debarros/ch07/listing_07-14.sql)|58
07-15|[combining query results with union all](./practical-sql-anthony-debarros/ch07/listing_07-15.sql)|59
07-16|[customizing a union query](./practical-sql-anthony-debarros/ch07/listing_07-16.sql)|60
07-17|[combining query results with intersect and except](./practical-sql-anthony-debarros/ch07/listing_07-17.sql)|61
07-18|[performing math on joined census tables](./practical-sql-anthony-debarros/ch07/listing_07-18.sql)|62
<hr/>

#### Ch08: Table Design That Works for You
listing|solution|num
:-:|:-:|:-:
08-01|[declaring a single-column natural key as a primary key](./practical-sql-anthony-debarros/ch08/listing_08-01.sql)|63
08-02|[an example of a primary key violation](./practical-sql-anthony-debarros/ch08/listing_08-02.sql)|64
08-03|[declaring a composite primary key as a natural key](./practical-sql-anthony-debarros/ch08/listing_08-03.sql)|65
08-04|[example of a composite primary key violation](./practical-sql-anthony-debarros/ch08/listing_08-04.sql)|66
08-05|[declaring a bigint column as a surrogate key using identity](./practical-sql-anthony-debarros/ch08/listing_08-05.sql)|67
08-06|[restarting an identity sequence](./practical-sql-anthony-debarros/ch08/listing_08-06.sql)|68
08-07|[a foreign key example](./practical-sql-anthony-debarros/ch08/listing_08-07.sql)|69
08-08|[examples of check constraints](./practical-sql-anthony-debarros/ch08/listing_08-08.sql)|70
08-09|[a unique constraint example](./practical-sql-anthony-debarros/ch08/listing_08-09.sql)|71
08-10|[a not null constraint example](./practical-sql-anthony-debarros/ch08/listing_08-10.sql)|72
08-11|[dropping and adding a primary key and a not null constraint](./practical-sql-anthony-debarros/ch08/listing_08-11.sql)|73
08-12|[importing new york city address data](./practical-sql-anthony-debarros/ch08/listing_08-12.sql)|74
08-13|[benchmark queries for index performance](./practical-sql-anthony-debarros/ch08/listing_08-13.sql)|75
08-14|[creating a b-tree index on the new_york_addresses table](./practical-sql-anthony-debarros/ch08/listing_08-14.sql)|76
<hr/>

#### Ch09: Extracting Information by Grouping and Summarizing
listing|solution|num
:-:|:-:|:-:
09-01|[creating and filling the 2018 public libraries survey table](./practical-sql-anthony-debarros/ch09/listing_09-01.sql)|77
09-02|[creating and filling the 2017 and 2016 public libraries survey table](./practical-sql-anthony-debarros/ch09/listing_09-02.sql)|78
09-03|[using count() for table row counts](./practical-sql-anthony-debarros/ch09/listing_09-03.sql)|79
09-04|[using count() for the number of values in a column](./practical-sql-anthony-debarros/ch09/listing_09-04.sql)|80
09-05|[using count() for the number of distinct values in a column](./practical-sql-anthony-debarros/ch09/listing_09-05.sql)|81
09-06|[finding the most and fewest vists using max() and min()](./practical-sql-anthony-debarros/ch09/listing_09-06.sql)|82
09-07|[using group by on the stabr column](./practical-sql-anthony-debarros/ch09/listing_09-07.sql)|83
09-08|[using group by on the city and stabr columns](./practical-sql-anthony-debarros/ch09/listing_09-08.sql)|84
09-09|[using group by with count() on the stabr column](./practical-sql-anthony-debarros/ch09/listing_09-09.sql)|85
09-10|[using group by with count() of the stabr and stataddr columns](./practical-sql-anthony-debarros/ch09/listing_09-10.sql)|86
09-11|[using the sum() aggregate function to total visits to libraries in 2016, 2017, and 2018](./practical-sql-anthony-debarros/ch09/listing_09-11.sql)|87
09-12|[using sum() to total visits on joined 2018, 2017, and 2016 tables](./practical-sql-anthony-debarros/ch09/listing_09-12.sql)|88
09-13|[using group by to track percent change in library visits by state](./practical-sql-anthony-debarros/ch09/listing_09-13.sql)|89
09-14|[using a having clause to filter the results of an aggregate query](./practical-sql-anthony-debarros/ch09/listing_09-14.sql)|90
<hr/>

#### Ch10: Inspecting and Modifying Data
listing|solution|num
:-:|:-:|:-:
10-01|[importing the fsis meat, poultry, and egg inspection directory](./practical-sql-anthony-debarros/ch10/listing_10-01.sql)|91
10-02|[finding multiple companies at the same address](./practical-sql-anthony-debarros/ch10/listing_10-02.sql)|92
10-03|[grouping and counting states](./practical-sql-anthony-debarros/ch10/listing_10-03.sql)|93
10-04|[using is null to find missing values in the st column](./practical-sql-anthony-debarros/ch10/listing_10-04.sql)|94
10-05|[using group by and count() to find inconsistent company names](./practical-sql-anthony-debarros/ch10/listing_10-05.sql)|95
10-06|[using length() and count() to test the zip column](./practical-sql-anthony-debarros/ch10/listing_10-06.sql)|96
10-07|[filtering with length() to find short zip values](./practical-sql-anthony-debarros/ch10/listing_10-07.sql)|97
10-08|[backing up a table](./practical-sql-anthony-debarros/ch10/listing_10-08.sql)|98
10-09|[creating and filling the st_copy column with alter table and update](./practical-sql-anthony-debarros/ch10/listing_10-09.sql)|99
10-10|[checking values in the st and st_copy columns](./practical-sql-anthony-debarros/ch10/listing_10-10.sql)|100
10-11|[updating the st column for the three establishments](./practical-sql-anthony-debarros/ch10/listing_10-11.sql)|101
10-12|[restoring original st column values](./practical-sql-anthony-debarros/ch10/listing_10-12.sql)|102
10-13|[creating and filling the company_standard column](./practical-sql-anthony-debarros/ch10/listing_10-13.sql)|103
10-14|[using an update statement to modify column values that match a string](./practical-sql-anthony-debarros/ch10/listing_10-14.sql)|104
10-15|[creating and filling the zip_copy column](./practical-sql-anthony-debarros/ch10/listing_10-15.sql)|105
10-16|[modifying codes in the zip column missing two leading zeros](./practical-sql-anthony-debarros/ch10/listing_10-16.sql)|106
10-17|[modifying codes in the zip column missing one leading zero](./practical-sql-anthony-debarros/ch10/listing_10-17.sql)|107
10-18|[creating and filling a state_regions table](./practical-sql-anthony-debarros/ch10/listing_10-18.sql)|108
10-19|[adding and updating an inspection_deadline column](./practical-sql-anthony-debarros/ch10/listing_10-19.sql)|109
10-20|[viewing updated inspection_date values](./practical-sql-anthony-debarros/ch10/listing_10-20.sql)|110
10-21|[deleting rows matching an expression](./practical-sql-anthony-debarros/ch10/listing_10-21.sql)|111
10-22|[removing a column from a table using drop](./practical-sql-anthony-debarros/ch10/listing_10-22.sql)|112
10-23|[removing a table from a databse using drop](./practical-sql-anthony-debarros/ch10/listing_10-23.sql)|113
10-24|[demonstrating a transaction block](./practical-sql-anthony-debarros/ch10/listing_10-24.sql)|114
10-25|[backing up a table while adding and filling a new column](./practical-sql-anthony-debarros/ch10/listing_10-25.sql)|115
10-26|[swapping table names using alter table](./practical-sql-anthony-debarros/ch10/listing_10-26.sql)|116
<hr/>

#### Ch11: Statistical Functions in SQL
listing|solution|num
:-:|:-:|:-:
11-01|[creating a 2014-2018 acs 5-year estimates table and importing data](./practical-sql-anthony-debarros/ch11/listing_11-01.sql)|119
11-02|[using corr(y, x) to measure the relationship between educaiton and income](./practical-sql-anthony-debarros/ch11/listing_11-02.sql)|120
11-03|[using corr(y, x) on additional variables](./practical-sql-anthony-debarros/ch11/listing_11-03.sql)|121
11-04|[regression slope and intercept function](./practical-sql-anthony-debarros/ch11/listing_11-04.sql)|122
11-05|[calculating the coefficient of determination, or r-squared](./practical-sql-anthony-debarros/ch11/listing_11-05.sql)|123
11-06|[using the rank() and dense_rank() window functions](./practical-sql-anthony-debarros/ch11/listing_11-06.sql)|124
11-07|[applying rank() within groups using partition by](./practical-sql-anthony-debarros/ch11/listing_11-07.sql)|125
11-08|[creating and filling a table for census county business pattern data](./practical-sql-anthony-debarros/ch11/listing_11-08.sql)|126
11-09|[finding business rates per thousand population in counties with 50,000 or more people](./practical-sql-anthony-debarros/ch11/listing_11-09.sql)|127
11-10|[creating a rolling average for export data](./practical-sql-anthony-debarros/ch11/listing_11-10.sql)|128
<hr/>

#### Ch12: Working with Dates and Times
listing|solution|num
:-:|:-:|:-:
12-01|[extracting the components of a timestamp value](./practical-sql-anthony-debarros/ch12/listing_12-01.sql)|129
12-02|[three functions for making datetimes from components](./practical-sql-anthony-debarros/ch12/listing_12-02.sql)|130
12-03|[comparing current_timestamp and clock_timestamp() during row insert](./practical-sql-anthony-debarros/ch12/listing_12-03.sql)|131
12-04|[viewing your current time zone setting](./practical-sql-anthony-debarros/ch12/listing_12-04.sql)|132
12-04|[showing time zone abbreviations and names](./practical-sql-anthony-debarros/ch12/listing_12-05.sql)|133
12-05|[setting the time zone for a client session](./practical-sql-anthony-debarros/ch12/listing_12-06.sql)|134
12-06|[creating a table and importing nyc yellow taxi data](./practical-sql-anthony-debarros/ch12/listing_12-07.sql)|135
12-07|[counting taxi trips by hour](./practical-sql-anthony-debarros/ch12/listing_12-08.sql)|136
12-08|[exporting taxi pickups per hour to a csv file](./practical-sql-anthony-debarros/ch12/listing_12-09.sql)|137
12-09|[calculating median trip time by hour](./practical-sql-anthony-debarros/ch12/listing_12-10.sql)|138
12-10|[creating a table to hold train trip data](./practical-sql-anthony-debarros/ch12/listing_12-11.sql)|139
12-11|[calculating the length of each trip segment](./practical-sql-anthony-debarros/ch12/listing_12-12.sql)|140
12-12|[calculating cumulative intervals using over](./practical-sql-anthony-debarros/ch12/listing_12-13.sql)|141
12-13|[using justify_interval() to better format cumulative trip duration](./practical-sql-anthony-debarros/ch12/listing_12-14.sql)|142
<hr/>

#### Ch13: Advanced Query Techniques
listing|solution|num
:-:|:-:|:-:
13-01|[using a subquery in a where clause](./practical-sql-anthony-debarros/ch13/listing_13-01.sql)|117
13-02|[using a subquery in where clause with delete](./practical-sql-anthony-debarros/ch13/listing_13-02.sql)|118
13-03|[subquery as a derived table in a from clause](./practical-sql-anthony-debarros/ch13/listing_13-03.sql)|143
13-04|[joining two derived tables](./practical-sql-anthony-debarros/ch13/listing_13-04.sql)|144
13-05|[adding a subquery to a column list](./practical-sql-anthony-debarros/ch13/listing_13-05.sql)|145
13-06|[using a subquery in a calculation](./practical-sql-anthony-debarros/ch13/listing_13-06.sql)|146
13-07|[creating and filling a retirees table](./practical-sql-anthony-debarros/ch13/listing_13-07.sql)|147
13-08|[generating values for the in operator](./practical-sql-anthony-debarros/ch13/listing_13-08.sql)|148
13-09|[using a correlated subquery with where exists](./practical-sql-anthony-debarros/ch13/listing_13-09.sql)|149
13-10|[using a correlated subquery with where not exists](./practical-sql-anthony-debarros/ch13/listing_13-10.sql)|150
13-11|[using lateral subqueries in the from clause](./practical-sql-anthony-debarros/ch13/listing_13-11.sql)|151
13-12|[using a subquery with a lateral join](./practical-sql-anthony-debarros/ch13/listing_13-12.sql)|152
13-13|[using a simple cte to count large counties](./practical-sql-anthony-debarros/ch13/listing_13-13.sql)|153
13-14|[using ctes in a table join](./practical-sql-anthony-debarros/ch13/listing_13-14.sql)|154
13-15|[using ctes to minimize redundant code](./practical-sql-anthony-debarros/ch13/listing_13-15.sql)|155
13-16|[creating and filling the ice_cream_survey.csv](./practical-sql-anthony-debarros/ch13/listing_13-16.sql)|156
13-17|[generating the ice cream survey crosstab](./practical-sql-anthony-debarros/ch13/listing_13-17.sql)|157
13-18|[creating and filling a temperature_readings table](./practical-sql-anthony-debarros/ch13/listing_13-18.sql)|158
13-19|[generating the temperature readings crosstab](./practical-sql-anthony-debarros/ch13/listing_13-19.sql)|159
13-20|[reclassifying temperature data with case](./practical-sql-anthony-debarros/ch13/listing_13-20.sql)|160
13-21|[using case in a cte](./practical-sql-anthony-debarros/ch13/listing_13-21.sql)|161
<hr/>

#### Ch14: Mining Text to Find Meaningful Data
listing|solution|num
:-:|:-:|:-:
14|[using regular expressions in a where clause](./practical-sql-anthony-debarros/ch14/listing_14-01.sql)|162
14|[regular expression functions to replace and split text](./practical-sql-anthony-debarros/ch14/listing_14-02.sql)|163
14|[finding an array length](./practical-sql-anthony-debarros/ch14/listing_14-03.sql)|164
14|[creating and loading the crime_reports table](./practical-sql-anthony-debarros/ch14/listing_14-05.sql)|165
14|[using regexp_match() to find the first date](./practical-sql-anthony-debarros/ch14/listing_14-06.sql)|166
14|[using the regexp_matches() function with the 'g' flag](./practical-sql-anthony-debarros/ch14/listing_14-07.sql)|167
14|[using regexp_match() to find the second date](./practical-sql-anthony-debarros/ch14/listing_14-08.sql)|168
14|[using a capture group to return only the date](./practical-sql-anthony-debarros/ch14/listing_14-09.sql)|169
14|[matching case number, date, crime type, and city](./practical-sql-anthony-debarros/ch14/listing_14-10.sql)|170
14|[retrieving a value from within an array](./practical-sql-anthony-debarros/ch14/listing_14-11.sql)|171
14|[updating the crime_reports date_1 column](./practical-sql-anthony-debarros/ch14/listing_14-12.sql)|172
<hr/>
14|[updating all crime_reports columns](./practical-sql-anthony-debarros/ch14/listing_14-13.sql)|173
14|[viewing selected crime data](./practical-sql-anthony-debarros/ch14/listing_14-14.sql)|174
<hr/>
<!-- 14|[](./practical-sql-anthony-debarros/ch14/listing_14-0.sql)|0
-->


<!-- #### Ch15: Analyzing Spatial Data with PostGIS
-->
<!-- #### Ch16: Working with JSON Data
-->
<!-- #### Ch17: Saving Time with Views, Functions, and Triggers
-->
<!-- #### Ch18: Using PostgreSQL from the Command Line
-->
<!-- #### Ch19: Maintaining Your Database
-->
<!-- #### Ch20: Telling Your Data's Story
-->

<!-- listing|solution|num
-->
<!-- :-:|:-:|:-:
-->

### 2: SoftUni
- SoftUni DB exercises

### 3: Hyperskill
- Hyperskill DB exercises
#### Projects
- [x] [Electronics Store Customer](./hyperskill/projects/electronics-store-customer/README.md) `⭐4.4` `3hr`
  - Stages
    - [x] [1 - Fast PCs](./hyperskill/projects/electronics-store-customer/s01.sql)
    - [x] [2 - Average printer price](./hyperskill/projects/electronics-store-customer/s02.sql)
    - [x] [3 - Total cost of laptops](./hyperskill/projects/electronics-store-customer/s03.sql)
    - [x] [4 - PCs and laptops](./hyperskill/projects/electronics-store-customer/s04.sql)
    - [x] [5 - High-end laptop vs. PC Prices](./hyperskill/projects/electronics-store-customer/s05.sql)
    - [x] [6 - Ranking PCs by RAM](./hyperskill/projects/electronics-store-customer/s06.sql)
- [ ] [Databases for Sales](./README.md) `⭐4.2` `7hr`
- [ ] [Hacker Attack](./hyperskill/projects/hacker-attack/README.md) `⭐4.5` `7hr`
  - Stages
    - [x] [1 - School members](./hyperskill/projects/hacker-attack/s01.sql)
    - [x] [2 - Who are you?](./hyperskill/projects/hacker-attack/s02.sql)
    - [x] [3 - You are a student](./hyperskill/projects/hacker-attack/s03.sql)
    - [x] [4 - Plenty of files](./hyperskill/projects/hacker-attack/s04.sql)
    - [x] [5 - I know your score](./hyperskill/projects/hacker-attack/s05.sql)
    - [ ] [6 - Grade codes](./hyperskill/projects/hacker-attack/s06.sql)
    - [ ] [7 - Land ho!](./hyperskill/projects/hacker-attack/s07.sql)
- [ ] [Library Management System](./README.md) `⭐4.0` `6hr`
- [ ] [School of Wizards and Magic Wars](./README.md) `⭐4.3` `9hr`

### 4: SQL Puzzles and Answers (book)
- Joe Celko's book
