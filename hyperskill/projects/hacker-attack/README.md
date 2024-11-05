# Hacker Attack

- [Hacker Attack](#hacker-attack)
  - [Learning outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: School members](#1-school-members)
      - [1.1 Description](#11-description)
      - [1.2 Objectives](#12-objectives)
      - [1.3 Example](#13-example)
    - [2: Who are you?](#2-who-are-you)
      - [2.1 Description](#21-description)
      - [2.1 Objectives](#21-objectives)
      - [2.3 Example](#23-example)
    - [3: You are a student](#3-you-are-a-student)
      - [3.1 Description](#31-description)
      - [3.2 Objectives](#32-objectives)
      - [3.3 Example](#33-example)
    - [4: Plenty of files](#4-plenty-of-files)
      - [4.1 Description](#41-description)
      - [4.2 Objectives](#42-objectives)
      - [4.3 Example](#43-example)
    - [5: I know your score](#5-i-know-your-score)
      - [5.1 Description](#51-description)
      - [5.2 Objectives](#52-objectives)
      - [5.3 Example](#53-example)
    - [6: Grade codes](#6-grade-codes)
      - [6.1 Description](#61-description)
      - [6.2 Objectives](#62-objectives)
      - [6.3 Example](#63-example)

## Learning outcomes
Get familiar with SQL commands, and work with _csv_ files. Import data from files, learn how to merge data from different tables, and study how to use various SQL commands.

## About
A hacker has attacked the IT system of your school and destroyed the database. As a leader of the Science Club, your school has asked for your help. The situation is grave. There is only one week before the final annual exams. You need to recover the annual scores of the students. The school management provides the data from the archive, and the Science Club members help you with csv files. Your task is to create the school database and calculate the annual score.

## Stages
### 1: School members
#### 1.1 Description
Create the person table and fill it with data from the person.csv file. This table contains teachers and students.

#### 1.2 Objectives
Let's break the task into several steps:

- Create the `person` table;
- Change the mode to `csv`;
- Import data from _person.csv_ to the `person` table;
- Change the mode to `column`;
- Select the `person_id` and `full_name` fields from the `person` table. Sort the results by `person_id` in ascending order. Limit the results to `5`;

> [SQLite commands and statements](https://sqlite.org/cli.html) will be used in this project. All files are already present in your working directory. Use appropriate commands to work with them. Additionally, you can find all the files in the links below. In this way, you can work with SQLite CLI if you wish.

You can create a table with SQL statements. The code snippet below is an example of how you can do it.
```sql
CREATE TABLE "person"(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "full_name" TEXT,
  "address" TEXT,
  "building_number" TEXT,
  "phone_number" TEXT
);
```

You can also import data with SQL commands. The code snippet below is an example of how to do it:
```
.import --skip 1 file_name table_name
```

To change the mode with SQL commands, follow the code snippet below:
```
.mode csv
.mode column
```

Hint

Use the `.print` command between statements to print a text or to create a new line.

Please find the _.csv_ files you will use in this project:

- [person.csv](https://stepik.org/media/attachments/lesson/781042/person.csv)
- [teacher.csv](https://stepik.org/media/attachments/lesson/781042/teacher.csv)
- [score1.csv](https://stepik.org/media/attachments/lesson/781042/score1.csv)
- [score2.csv](https://stepik.org/media/attachments/lesson/781042/score2.csv)
- [score3.csv](https://stepik.org/media/attachments/lesson/781042/score3.csv)


#### 1.3 Example
```
CREATE TABLE "person"(
  "person_id" VARCHAR(9) PRIMARY KEY,
  "full_name" TEXT,
  "address" TEXT,
  "building_number" TEXT,
  "phone_number" TEXT
);
.mode csv
.import --skip 1 person.csv person
.mode column
SELECT ...
FROM ...
ORDER BY ...
LIMIT ...;
```

**Example 1:**
_Output:_
```
person_id  full_name
---------  ---------------
AA-990456  Ian Powers MD
AC-744667  Sarah Howard
AE-227862  Laura Fleming
AE-640140  Steve Mckinney
AF-906227  Mckenzie Bryant
```

<hr/>

### 2: Who are you?
#### 2.1 Description
Your friend created another file. Now you know who the teachers are. First, create the `teacher` table from *teacher.csv*. Then compare the `teacher` table with the `person` table and find out who the students are.

#### 2.1 Objectives
Let's break the task into several steps:
- Keep table creation statements from the previous step;
- Create the `teacher` table;
- Change the mode to `csv`;
- Import data from *teacher.csv* to the teacher `table`;
- Change the mode to `column`;
- Select every record from the person table that is missing in the `teacher` table. This will give you the student's list. Sort the results by `full_name` in ascending order. Limit results to `5`;
- Use a `select` statement to find out the number of the students;
- Count all entries from combined table.

The `teacher` table will have two columns:
```
"person_id" VARCHAR(9) PRIMARY KEY,
"class_code" TEXT
```

You can use a subquery while getting results from different tables. The code snippet below is an example of how you can do it:
```
SELECT id_field, name_field FROM first_table
WHERE
id_field not in
(SELECT id_field FROM second_table) ORDER BY name_field LIMIT 5;
```

#### 2.3 Example
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

**Example 1:**

*Output:*
```
person_id  full_name
---------  --------------
DC-711801  Adrian Anthony
BA-441588  Adrian Rowe
EF-444609  Andrea Hubbard
CG-998149  Andrew Wilson
FE-915587  Andrew Wood

COUNT(person_id)
----------------
90
```
<hr/>

### 3: You are a student
#### 3.1 Description
In the last stage, you listed the students. Now create the `student` table and fill it with data.

#### 3.2 Objectives
Let's break the task into several steps:

- Keep table creation statements from the previous steps;
- Create a `student` table;
- Insert the correct data into it;
- Select all columns from `student` table. Order the results by `person_id` ascending. Limit results to `5`;

The student table will have two columns.
```
"person_id" VARCHAR(9) PRIMARY KEY,
"grade_code" TEXT
```

> `VALUES` is not needed when using `SELECT`.

#### 3.3 Example
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

**Example 1:**
*Output:*
```
person_id  grade_code
---------  ----------
AA-990456
AC-744667
AE-227862
AE-640140
AF-906227
```

<hr/>

### 4: Plenty of files
#### 4.1 Description
Your friends created three more csv files for you. These files contain the `person_id` of the students and the `annual score`. But, unfortunately, your friends didn't tell you the `grade_code` of the results. You need to find it out in the following steps.

Now, for this step, first create three temporary tables with the csv files. And then, with the union command, merge them all together.

#### 4.2 Objectives
Let's break the task into several steps:

- Keep table creation statements from the previous steps;
- Create three tables. With the name `score1`, `score2`, and `score3`;
- Change mode to csv;
- Import data from csv files to the tables. Files names are `score1.csv`, `score2.csv`, and `score3.csv`;
- Change mode to `column`;
- Select all the data from the score tables and merge them together with the `UNION ALL` command;

The tables will have two columns:
```
"person_id" VARCHAR(9),
"score" INTEGER
```

#### 4.3 Example
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

**Example 1:**

*Output:*
```
person_id  score
---------  -----
BH-465461  86
DG-884779  78
CB-137658  93
DC-711801  56
HE-489451  65
CF-172009  79
DD-100740  85
BH-465461  88
DG-884779  83
CB-137658  89
DC-711801  67
HE-489451  71
CF-172009  83
DD-100740  81
CA-115055  83
BB-744852  82
FB-862964  98
CF-662375  79
AE-640140  96
EH-816864  87
FH-270930  91
BH-465461  86
DG-884779  87
CB-137658  83
DC-711801  75
HE-489451  79
CF-172009  79
DD-100740  85
CA-115055  87
BB-744852  88
FB-862964  99
CF-662375  77
AE-640140  97
EH-816864  88
FH-270930  95
CF-256627  75
GH-845670  87
FE-915587  86
HH-077706  93
HH-849834  88
BE-538433  96
AF-992719  99
```

<hr/>

### 5: I know your score
#### 5.1 Description
You've learned how to merge the scores. Now, create the `score` table. Insert the scores into the `score` table. When everything is done, delete `score1`, `score2`, and `score3` tables with the `DROP` command.

#### 5.2 Objectives

Let's break the task into several steps:

- Keep table creation statements from the previous steps;
- Create the `score` table;
- Insert data from the `score1`, `score2`, and `score3` tables into the `score` table;
- Use the DROP command and delete `score1`, `score2`, and `score3` tables;
- Select all columns from the `score` table. Order the results by `person_id`. Limit results to `5`;
- Select `person_id`, `count(score)` from the `score` table. Group by `person_id`. Having `count(score)` value `3` and order the results by `person_id`. Limit results to `5`;

The score tables will have two columns.
```
"person_id" VARCHAR(9),
"score" INTEGER
```

#### 5.3 Example
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

**Example 1:**
*Output:*
```
person_id  score
---------  -----
AE-640140  96
AE-640140  97
AF-992719  99
BB-744852  82
BB-744852  88

person_id  count(score)
---------  ------------
BH-465461  3
CB-137658  3
CF-172009  3
DC-711801  3
DD-100740  3
```

<hr/>

### 6: Grade codes
#### 6.1 Description
You have the `score` table that contains the student's annual scores. But you don't know the students `grade_code`. First-year students do not have an annual score. Sophomores have one score and so on. With this information, fill in `grade_code` in the `student` table.

#### 6.2 Objectives
Let's break the task into several steps:

- Keep table creation statements from the previous steps;
- Update `grade_code` in the `student` table;
- Select all records from the `student` table, order by `person_id`, and limit by `5`;

You can use the following statement as an example to update the `student` table.
```
update student
set grade_code = 'put the grade code here'
where student.person_id in
(use the query from the previous step);
```

**Hint**
- If there is no `score` in the `score` table, the grade code is `GD-09`;
- If the score count is `1` in the `score` table, the grade code is `GD-10`;
- If the score count is `2` in the `score` table, the grade code is `GD-11`;
- If the score count is `3` in the `score` table, the grade code will be `GD-12`.

#### 6.3 Example
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

**Example 1:**
*Output:*
```
person_id  grade_code
---------  ----------
AA-990456  GD-09
AC-744667  GD-09
AE-227862  GD-09
AE-640140  GD-11
AF-906227  GD-09
```

### 7: Land ho!
#### 7.1 Description
You've created your database. For the last-year students who have grade code `GD-12` in the `student` table, calculate the average score.

#### 7.2 Objectives
Let's break the task into several steps:
- Keep table createion statements from previous steps;
- Sellect all records from the `score` table. Calculate the average score as `avg_score`. Round to `2` decimal places. Display it if the `grade_code` is `GD-12` in the `student` table. Group by `person_id` and order resutls by `avg_score` in descending order;

#### 7.3 Example
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

**Example 1:**
*Output:*
```sql
person_id  avg_score
---------  ---------
CB-137658  88.33
BH-465461  86.67
DD-100740  83.67
DG-884779  82.67
CF-172009  80.33
HE-489451  71.67
DC-711801  66.0
```

<hr/>

[<<](../../../README.md)
