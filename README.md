# sql-assignment-1
# MySQL Assignment 1 – DDL Commands and Constraints

## 1. Project Overview

This project focuses on understanding and implementing **Data Definition Language (DDL) commands** and **constraints** in MySQL. It involves creating and modifying databases and tables, managing table structures, and applying constraints to maintain data accuracy, consistency, and integrity.

## 2. Technologies Used

- Database: MySQL
- Tool: MySQL Workbench
- Language: SQL

## 3. Database Details

**Database Name:** `employee`

The project consists of three main tables:

1. Departments
2. Locations
3. Employees

## 4. DDL Commands Implemented

### 4.1 CREATE
- Created the `employee` database.
- Created Departments, Locations, and Employees tables.
- Defined appropriate data types and relationships.

### 4.2 ALTER
- Added an `email` column to the Employees table.
- Modified the data type of the `designation` column.
- Dropped the `age` column from the Employees table.
- Renamed the `hire_date` column to `date_of_joining`.

### 4.3 RENAME
- Renamed the `Departments` table to `Departments_Info`.
- Renamed the `Location` table to `Locations`.

### 4.4 TRUNCATE
- Removed all records from the Employees table while retaining its structure.

### 4.5 DROP
- Dropped the Employees table.
- Dropped the `employee` database.

## 5. Constraints Implemented

The database was recreated with appropriate constraints to maintain data integrity.

### 5.1 Departments Table

- **PRIMARY KEY:** Ensures that each department has a unique `department_id`.
- **UNIQUE:** Prevents duplicate department names.
- **NOT NULL:** Ensures that department names cannot be NULL.

### 5.2 Locations Table

- **AUTO_INCREMENT:** Automatically generates sequential unique location IDs.
- **PRIMARY KEY:** Ensures that each location has a unique identifier.
- **UNIQUE:** Prevents duplicate location names.
- **NOT NULL:** Prevents NULL location names.

### 5.3 Employees Table

- **PRIMARY KEY:** Ensures that every employee has a unique identifier.
- **NOT NULL:** Ensures that employee names are mandatory.
- **ENUM('M','F'):** Restricts gender values to M or F.
- **CHECK (age >= 18):** Ensures that employees are at least 18 years old.
- **DEFAULT (CURRENT_DATE):** Automatically assigns the current date to the hire_date field when no date is provided.
- **FOREIGN KEY:** Establishes relationships between Employees, Departments, and Locations tables using department_id and location_id.

## 6. Key Concepts Learned

- Creating and managing databases using SQL.
- Creating tables with appropriate data types.
- Modifying table structures using ALTER.
- Renaming tables and columns.
- Removing records using TRUNCATE.
- Deleting tables and databases using DROP.
- Implementing PRIMARY KEY and FOREIGN KEY constraints.
- Applying UNIQUE, NOT NULL, CHECK, DEFAULT, and AUTO_INCREMENT constraints.
- Establishing relationships between multiple tables.
- Maintaining data integrity and consistency.

## 7. Conclusion

I learned how to create, modify, rename, truncate, and drop database objects. I also implemented different constraints to ensure data accuracy, uniqueness, and consistency while establishing relationships between tables.
