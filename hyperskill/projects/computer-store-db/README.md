# Computer Store Database

- [Computer Store Database](#computer-store-database)
  - [Learning outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: Expensive printers](#expensive-printers)
      - [1.1 Description](#11-description)
      - [1.2 Objectives](#12-objectives)
      - [1.3 Examples](#13-examples)
      - [1.4 Solution](#14-solution)

## Learning outcomes
Learn to write basic queries on MySQL and master the SELECT, FROM, GROUP BY, and WHERE clauses, including summation functions, logical operators, and comparison operators. It will help you learn basic information retrieval in SQL.

## About
As the manager of the computer hardware shop, your primary responsibility is to retrieve data from the existing database efficiently. Accurate data retrieval is crucial for creating reliable financial documents, accounting records, and business reports.

## Stages
### 1: Expensive printers 
<details>
<summary>problem</summary>

#### 1.1 Description
As a computer store manager, staying informed about the store's condition and the products is crucial. It's vital to gather information about expensive items, such as printers, available in limited quantities. This will help you manage inventory effectively and ensure you offer your customers the best products possible.

#### 1.2 Objectives
- Identify printers in your inventory that are priced over $200;
- Find the `model` number, `type`, and `price` of the `Printer`. The order of the columns matters.

Take a look at the following database structure:
![er-diagram](./db-structure.png)

Explanation of database
The `Product` table stores information about manufacturers (`maker`), model numbers (`model`), and product types (`type`). The model numbers in the `Product` table are unique across all manufacturers and product types.

The `PC` table contains information about each personal computer, identified by a unique code (`pc_code`). A PC model is indicated using a foreign key to the Product table (`model`). Other specifications include the processor speed (`speed`) in megahertz, memory size (`ram`) in megabytes, hard disk capacity (`hd`) in gigabytes, the CD reader speed (`cd`) such as `DVD`, and the price (`price`) in dollars.

The `Laptop` table is similar to the PC table, but instead of the CD reader speed, it includes the screen size (`screen`) in inches.

The `Printer` table provides information about each printer model, such as whether it is color (`color`, indicated by `C` for color printers and `B` for black printers), the printer type (`type`, which can be `Laser` for laser printers, `Jet` for inkjet printers, or `Matrix` for matrix printers), and the price (`price`) in dollars.

Click on the [link](https://stepik.org/media/attachments/lesson/853275/Computer_Store.sql) to download the SQL query for creating the database.

#### 1.3 Examples
```sql
SELECT model, ...;
```

#### 1.4 Solution
[s01](./s01.sql)

</details>

[<<](../../../README.md)

<!--
:%s/\(Sample \(Input\|Output\) \d:\)\n\(.*\)/```\r\r**\1**\r```\3/gc
<details>
<summary></summary>

### 0:  
#### 0.1 Description

#### 0.2 Objectives

#### 0.3 Examples

#### 0.4 Solution

</details>
-->

