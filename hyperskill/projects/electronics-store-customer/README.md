# Electronics Store Customer

- [Electronics Store Customer](#electronics-store-customer)
  - [Learning outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: Fast PCs](#1-fast-pcs)
      - [1.1 Description](#11-description)
      - [1.2 Objectives](#12-objectives)
      - [1.3 Examples](#13-examples)

## Learning outcomes
Starting with basic SQL operations like `SELECT`, `FROM`, `GROUP BY`, and `WHERE`, we'll explore summation functions, logical operators, and comparison operators and advance into more complex concepts like window functions, subqueries, and join statements. This learning journey will empower you with the skills necessary for proficient information retrieval in SQL.

## About
As a customer of an electronic store, the main objective is to utilize the store's interface to acquire information. This will assist in discovering the most functional and affordable devices that match the individual's specific requirements and preferences.

## Stages
### 1: Fast PCs
#### 1.1 Description
As a customer interested in PCs, you are determined to find models that provide a well-balanced mix of adequate RAM and high-speed performance. You prefer computers with at least 16 GB of RAM but are unaware of the fastest models. To ensure a quick and effective computing experience, you aim to discover the optimal PCs that satisfy both requirements.

#### 1.2 Objectives
- Identify the `pc_code`, `model`, `speed`, and `ram` of PCs from the market database with 16 GB of RAM or more. Ensure the results are sorted primarily by `ram` in ascending order and secondarily by `speed` in descending order. The column order is essential.

Take a look at the following database structure:
![database-structure](./computer_store.png)

Explanation of the database:

- The `Product`** table stores information about manufacturers (`maker`), model numbers (`model`), and product types (`type`). The model numbers in the `Product` table are unique across all manufacturers and product types.
- The `PC`** table contains information about each personal computer, identified by a unique code (`pc_code`). A PC model is indicated with a foreign key to the Product table (`model`). Other specifications include processor speed (`speed`) in megahertz, memory size (`ram`) in megabytes, hard disk capacity (`hd`) in gigabytes, the CD reader speed (`cd`) such as `DVD`, `Blu-ray`, or `None`, and the price (`price`) in dollars.
- The `Laptop`** table is similar to the `PC` table, but instead of the CD reader speed, it includes the screen size (`screen`) in inches.
- The `Printer`** table provides information about each printer model, such as whether it is color (`color`, indicated by `C` for color printers and `B` for black printers), the printer type (`type`, which can be `Laser` for laser printers, `Inkjet` for inkjet printers, and `Matrix` for matrix printers), and the price (`price`) in dollars.

** _Table names are case sensitive_

Click on the [link](https://cogniterra.org/media/attachments/lesson/30429/Updated_Electronic_Store_Database.sql) to download the SQL query for creating the database.

#### 1.3 Examples
_PC Table Example_
pc_code|model|speed|ram
:-:|:-:|:-:|:-:
1|101|2200|8
2|102|2000|16
3|101|2300|8
4|103|2500|16
5|104|2100|8

_From the data presented in the table above, it is evident that PCs with pc_codes 2 and 4 possess ram sizes equal to or greater than 16 GB. The output of the table after identifying PCs having ram sizes equal to or greater than 16 GB:_
pc_code|model|speed|ram
:-:|:-:|:-:|:-:
4|103|2500|16
2|102|2000|16

_From the output above, it can be seen that the order of the columns is pc_code-> model -> speed -> ram_

_Query template:_
```sql
SELECT pc_code, model, speed, ram ...;
```

<hr/>
