# PostgreSQL
PostgreSQL course at SoftUni September - 2023

[Click Here for more information about the course PostgreSQL](https://softuni.bg/trainings/4244/postgresql-september-2023)

![Add a subheading](https://github.com/HristianBalevski/PostgreSQL/assets/114162692/61fc5e9a-0dfe-44ff-b18a-20da7a1d7625)

## What is PostgreSQL?
- Object–Relational Database Management System (ORDBMS)

## What Makes PostgreSQL Stand Out?'
- First DBMS that implements multi-version concurrency control feature
- Data can be safely read and updated at the same time
- Able to add custom functions
- Designed to be extensible
- Defining custom data types, plugins, etc.
- Very active community

## What is SQL?
- Programming language
- Designed for managing data in a relational database
- Access many records with one single command
- Eliminates the need to specify how to reach a record

## SQL Queries
- We communicate with the database engine using SQL
- Queries provide greater control and flexibility
- To create a database using SQL:
**CREATE DATABASE** database_name;
- SQL keywords are conventionally capitalized

## Data Types in SQL
- Integer types --> SMALLINT, INTEGER/INT, BIGINT
- Arbitrary Precision Numbers --> DECIMAL, NUMERIC
- Floating-Point Types --> REAL, DOUBLE PRECISION
- Serial Types --> SMALLSERIAL, SERIAL, BIGSERIAL

## String Data Types
- **CHARACTER/CHAR[(M)]**
- Fixed-length e.g., CHAR(30)
- CHAR without the length specifier (m) is the same as CHAR(1)

- **CHARACTER VARYING/VARCHAR[(N)]**
- Variable-length with limit e.g., VARCHAR(30)
- VARCHAR without (n) can store a string with unlimited length

- **TEXT** --> Stores strings of any lengt

## Date Types
- **DATE** - for values with a date part but no time part --> 2016-06-23
- **TIME** - for values with time but no date part --> 14:01:10
- **TIMESTAMP** - both date and time parts --> 2020-10-05 14:01:10
- **TIMESTAMPTZ** - both date and time parts with time zone --> 2020-10-05 14:01:10+02:00

## Some common SQL string functions and operators
- **CONCAT()**
- The CONCAT() function is used to concatenate two or more strings together. It works similarly to the || operator.
- Example: **SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;**
<br>

- **LENGTH() or LEN()**
- **LENGTH()** in PostgreSQL and **LEN()** in some other databases are used to find the length (number of characters) of a string.
- Example: **SELECT LENGTH('Hello, World!') AS length;**
<br>

- **UPPER() or UCASE()**
- **UPPER()** in PostgreSQL and **UCASE()** in some other databases are used to convert a string to uppercase.
- Example: **SELECT UPPER('hello') AS uppercase_string;**
<br>

- **LOWER() or LCASE()**
- **LOWER()** in PostgreSQL and **LCASE()** in some other databases are used to convert a string to lowercase.
- Example: **SELECT LOWER('WORLD') AS lowercase_string;**
<br>

- **LEFT()**
- The **LEFT()** function is used to extract a specified number of characters from the beginning (left) of a string.
- Example: **SELECT LEFT('Hello, World!', 5) AS left_string;**
<br>

- **RIGHT()**
- The **RIGHT()** function is used to extract a specified number of characters from the end (right) of a string.
- Example: **SELECT RIGHT('Hello, World!', 6) AS right_string;**
<br>

- **SUBSTRING() or SUBSTR()**
- **SUBSTRING()** in PostgreSQL and **SUBSTR()** in some other databases are used to extract a substring from a string.
- Example: **SELECT SUBSTRING('Hello, World!', 7, 5) AS substring;** (Extracts 'World')
<br>

- **TRIM()**
- The **TRIM()** function is used to remove leading and trailing spaces (or other specified characters) from a string.
- Example: **SELECT TRIM(' Hello, World! ') AS trimmed_string;**
<br>

- **REPLACE()**
- The **REPLACE()** function is used to replace all occurrences of a substring within a string with another substring.
- Example: **SELECT REPLACE('Hello, World!', 'Hello', 'Hi') AS replaced_string;**
<br>

- **POSITION() or CHARINDEX()**
- **POSITION()** in PostgreSQL and CHARINDEX() in some other databases are used to find the position of a substring within a string.
- Example: **SELECT POSITION('l' IN 'Hello, World!') AS position;**
