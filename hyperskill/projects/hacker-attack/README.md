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
The greater-than symbol followed by a space (`> `) represents the user input. Note that it's not part of the input.

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

[<<](../../../README.md)
