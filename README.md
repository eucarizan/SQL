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
    - [2: SoftUni](#2-softuni)
    - [3: Hyperskill](#3-hyperskill)
    - [4: SQL Puzzles and Answers (book)](#4-sql-puzzles-and-answers-book)

### 1: Practical SQL (book)
- Anthony DeBarros, No Starch Press
#### Ch01: Setting Up Your Coding Environment
chapter|solution|num
:-:|:-:|:-:
01|[check postgress version](./practical-sql-anthony-debarros/ch01/listing01-01.sql)|1
<hr/>

#### Ch02: Creating Your First Database and Table
chapter|solution|num
:-:|:-:|:-:
02|[create a database - analysis](./practical-sql-anthony-debarros/ch02/listing_02-01.sql)|2
02|[create table - teachers](./practical-sql-anthony-debarros/ch02/listing_02-02.sql)|3
02|[insert data - teachers](./practical-sql-anthony-debarros/ch02/listing_02-03.sql)|4
<hr/>

#### Ch03: Beginning Data Exploration with SELECT
chapter|solution|num
:-:|:-:|:-:
03|[querying all rows and columns - teachers](./practical-sql-anthony-debarros/ch03/listing_03-01.sql)|5
03|[querying a subset of columns](./practical-sql-anthony-debarros/ch03/listing_03-02.sql)|6
03|[sorting a column with order by](./practical-sql-anthony-debarros/ch03/listing_03-03.sql)|7
03|[sorting multiple columns with order by](./practical-sql-anthony-debarros/ch03/listing_03-04.sql)|8
03|[querying distinct values](./practical-sql-anthony-debarros/ch03/listing_03-05.sql)|9
03|[querying distinct pairs of values](./practical-sql-anthony-debarros/ch03/listing_03-06.sql)|10
03|[filtering rows using where](./practical-sql-anthony-debarros/ch03/listing_03-07.sql)|11
03|[filtering with like and ilike](./practical-sql-anthony-debarros/ch03/listing_03-08.sql)|12
03|[combining operators using and & or](./practical-sql-anthony-debarros/ch03/listing_03-09.sql)|13
03|[a select statement including where and order by](./practical-sql-anthony-debarros/ch03/listing_03-10.sql)|14
<hr/>

#### Ch04: Understading Data Types
chapter|solution|num
:-:|:-:|:-:
04|[character data types in aciton](./practical-sql-anthony-debarros/ch04/listing_04-01.sql)|15
04|[number data types in action](./practical-sql-anthony-debarros/ch04/listing_04-02.sql)|16
04|[rounding issues with float columns](./practical-sql-anthony-debarros/ch04/listing_04-03.sql)|17
04|[the timestamp and interval types in action](./practical-sql-anthony-debarros/ch04/listing_04-04.sql)|18
04|[using the interval data type](./practical-sql-anthony-debarros/ch04/listing_04-05.sql)|19
04|[three cast() examples](./practical-sql-anthony-debarros/ch04/listing_04-06.sql)|20
<hr/>

#### Ch05: Importing and Exporting Data
chapter|solution|num
:-:|:-:|:-:
05|[using copy for data import](./practical-sql-anthony-debarros/ch05/listing_05-01.sql)|21
05|[create table statement for census county population estimates](./practical-sql-anthony-debarros/ch05/listing_05-02.sql)|22
05|[importing census data using copy](./practical-sql-anthony-debarros/ch05/listing_05-03.sql)|23
05|[creating a table to track superviser salaries](./practical-sql-anthony-debarros/ch05/listing_05-04.sql)|24
05|[importing salaries data from csv to three table columns](./practical-sql-anthony-debarros/ch05/listing_05-05.sql)|25
05|[importing a subset of rows with where](./practical-sql-anthony-debarros/ch05/listing_05-06.sql)|26
05|[using a temporary table to add a defalt value to a column during import](./practical-sql-anthony-debarros/ch05/listing_05-07.sql)|27
05|[exporting an entire table with copy](./practical-sql-anthony-debarros/ch05/listing_05-08.sql)|28
05|[exporting selected columns from a table with copy](./practical-sql-anthony-debarros/ch05/listing_05-09.sql)|29
05|[exporting query result with copy](./practical-sql-anthony-debarros/ch05/listing_05-10.sql)|30
<hr/>

#### Ch06: Basic Math and Stats with SQL
chapter|solution|num
:-:|:-:|:-:
06|[basic addition, subtraciton and multiplicatin with sql](./practical-sql-anthony-debarros/ch06/listing_06-01.sql)|31
06|[integer and decimal division with sql](./practical-sql-anthony-debarros/ch06/listing_06-02.sql)|32
06|[exponents, roots, and factorials with sql](./practical-sql-anthony-debarros/ch06/listing_06-03.sql)|33
06|[selecting census population estimate columns with aliases](./practical-sql-anthony-debarros/ch06/listing_06-04.sql)|34
06|[subtracting two columns in us_counties_pop_est_2019](./practical-sql-anthony-debarros/ch06/listing_06-05.sql)|35
06|[checking census data totals](./practical-sql-anthony-debarros/ch06/listing_06-06.sql)|36
06|[calculating the percent of a county's area that is water](./practical-sql-anthony-debarros/ch06/listing_06-07.sql)|37
06|[calculating the percent change](./practical-sql-anthony-debarros/ch06/listing_06-08.sql)|38
06|[using the sum() and avg() aggregate functions](./practical-sql-anthony-debarros/ch06/listing_06-09.sql)|39
06|[testing sql percentile functions](./practical-sql-anthony-debarros/ch06/listing_06-10.sql)|40
06|[using sum(), avg(), and percentile_cont() aggregate functions](./practical-sql-anthony-debarros/ch06/listing_06-11.sql)|41
06|[passing an array of values to percentile_cont()](./practical-sql-anthony-debarros/ch06/listing_06-12.sql)|42
06|[using unnest() to turn an array into rows](./practical-sql-anthony-debarros/ch06/listing_06-13.sql)|43
06|[finding the most frequent value with mode()](./practical-sql-anthony-debarros/ch06/listing_06-14.sql)|44
<hr/>

#### Ch07: Joining Tables in a Relational Database
chapter|solution|num
:-:|:-:|:-:
07|[creating the departments and employees table](./practical-sql-anthony-debarros/ch07/listing_07-01.sql)|45
07|[joining the employees and departments table](./practical-sql-anthony-debarros/ch07/listing_07-02.sql)|46
07|[creating two tables to explore join types](./practical-sql-anthony-debarros/ch07/listing_07-03.sql)|47
07|[using join](./practical-sql-anthony-debarros/ch07/listing_07-04.sql)|48
07|[join with using](./practical-sql-anthony-debarros/ch07/listing_07-05.sql)|49
07|[using left join](./practical-sql-anthony-debarros/ch07/listing_07-06.sql)|50
07|[using right join](./practical-sql-anthony-debarros/ch07/listing_07-07.sql)|51
07|[using full outer join](./practical-sql-anthony-debarros/ch07/listing_07-08.sql)|52
07|[using cross join](./practical-sql-anthony-debarros/ch07/listing_07-09.sql)|53
07|[filtering to show missing values with is null](./practical-sql-anthony-debarros/ch07/listing_07-10.sql)|54
07|[querying specific columns in a join](./practical-sql-anthony-debarros/ch07/listing_07-11.sql)|55
07|[simplifying code with table aliases](./practical-sql-anthony-debarros/ch07/listing_07-12.sql)|56
<hr/>
<!-- 07|[](./practical-sql-anthony-debarros/ch07/listing_07-0.sql)|0 -->

<!-- chapter|solution|num -->
<!-- :-:|:-:|:-: -->

<!-- #### Ch08: Table Design That Works for You <hr/> -->
<!-- #### Ch09: Extracting Information by Grouping and Summarizing <hr/> -->
<!-- #### Ch10: Inspecting and Modifying Data <hr/> -->
<!-- #### Ch11: Statistical Functions in SQL <hr/> -->
<!-- #### Ch12: Working with Dates and Times <hr/> -->
<!-- #### Ch13: Advanced Query Techniques <hr/> -->
<!-- #### Ch14: Mining Text to Find Meaningful Data <hr/> -->
<!-- #### Ch15: Analyzing Spatial Data with PostGIS <hr/> -->
<!-- #### Ch16: Working with JSON Data <hr/> -->
<!-- #### Ch17: Saving Time with Views, Functions, and Triggers <hr/> -->
<!-- #### Ch18: Using PostgreSQL from the Command Line <hr/> -->
<!-- #### Ch19: Maintaining Your Database <hr/> -->
<!-- #### Ch20: Telling Your Data's Story <hr/> -->

### 2: SoftUni
- SoftUni DB exercises

### 3: Hyperskill
- Hyperskill DB exercises

### 4: SQL Puzzles and Answers (book)
- Joe Celko's book
