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

## SQL vs NoSQL Databases
**SQL Database:**
- Relational database management system
- Predefined Schema
- Suited for complex queries
- Vertically scalable

**NoSQL database:**
- Non-relational database system
- Dynamic Schema
- Suited for hierarchical data storage
- Horizontally scalable

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

## Create Table
- **CREATE TABLE:** This is the SQL statement that tells PostgreSQL you want to create a new table.
- **table_name:** This is the name you want to give to your table. It should be unique within the schema.
- **column1, column2, ...:** These are the names of the columns in your table. You can have as many columns as needed, each separated by a comma.
- **datatype:** For each column, you specify a data type to define what kind of data the column will store (e.g., integer, text, date, etc.). Here are some common data types:
- **integer:** Whole numbers.
- **text:** Variable-length character strings.
- **date:** Date values.
- **boolean:** True or false values.
- **decimal(precision, scale):** Decimal numbers with a specified number of digits.
<br>

**constraint:** Constraints are optional rules that you can apply to columns to enforce data integrity. Some common constraints include:
- **PRIMARY KEY:** Ensures the values in the column are unique identifiers for each row.
- **NOT NULL:** Requires that a column cannot have a NULL (empty) value.
- **UNIQUE:** Ensures that all values in the column are unique.
- **CHECK:** Allows you to define custom rules for column values.
- **FOREIGN KEY:** Establishes a relationship with another table's primary key.
- Example:
```
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    ...
    table_constraints
);
```

## Some common SQL string functions and operators
**1.SELECT**
- The most basic SQL function, used to retrieve data from a database table.
- Example:
  ```
  SELECT
    column1,
    column2
  FROM
    table_name;
  ```

**2.WHERE**
- Used to filter rows based on a specified condition.
- Example:
  ```
  SELECT
    column1
  FROM
    table_name
  WHERE
    condition;
  ```

**3.COUNT()**
- Counts the number of rows that meet a specified condition.
- Example: 
```
SELECT
  COUNT(column1)
FROM
  table_name
WHERE
  condition;
```
<br>

**4.SUM()**
- Calculates the sum of values in a numeric column.
- Example:
```
SELECT
  SUM(column1)
FROM
  table_name
WHERE
  condition;
```
<br>

**5.AVG()**
- Calculates the average value of a numeric column.
- Example:
```
SELECT
  AVG(column1)
FROM
  table_name
WHERE
  condition;
```
<br>

**6.MAX()**
- Returns the maximum value in a column.
- Example:
```
SELECT
  MAX(column1)
FROM
  table_name
WHERE
  condition;
```
<br>

**7.MIN()**
- Returns the minimum value in a column.
- Example:
```
SELECT
  MIN(column1)
FROM
  table_name
WHERE
  condition;
```
<br>

**8.ROUND()**
- In PostgreSQL, the **ROUND** function is used to round a numeric value to a specified number of decimal places. It is commonly used for rounding off numeric values to make them more readable or to control the precision of the result.
- Example
  - ROUND(numeric_expression, decimal_places)
    
  - **Rounding to a Specific Number of Decimal Places:**
    - SELECT ROUND(3.14159265, 2) AS rounded_value;
    - This query rounds the value 3.14159265 to two decimal places, resulting in 3.14.
      
  - **Rounding to the Nearest Integer:**
    - SELECT ROUND(7.8) AS rounded_integer;
    - This query rounds the value 7.8 to the nearest integer, resulting in 8.

  - **Rounding to the Nearest Ten:**
    - SELECT ROUND(46, -1) AS rounded_ten;
    - This query rounds the value 46 to the nearest ten, resulting in 50.

- **Rounding Negative Values:**
  - SELECT ROUND(-123.456, 1) AS rounded_negative;
  - This query rounds the value -123.456 to one decimal place, resulting in -123.5.
    
- The **ROUND** function is handy for controlling the precision of numeric values in SQL queries and ensuring that the output meets your formatting or calculation requirements.

**9.GROUP BY**
- Groups rows based on the values in one or more columns and applies aggregate functions to each group.
- Example:
```
SELECT
  column1,
  SUM(column2)
FROM
  table_name
GROUP BY
  column1;
```
<br>

**10.LIMIT**
- It is used to limit the number of rows returned by a query.
- Example:
  - SELECT column1, column2, ... FROM table_name LIMIT number_of_rows;
 
  - **Retrieve the First N Rows:**
    - SELECT * FROM employees LIMIT 10;

  - **Retrieve the First Row:**
    - SELECT * FROM products LIMIT 1;
 
  - **Paginate Query Results:**
    - SELECT * FROM orders LIMIT 20 OFFSET 40;
    - This query retrieves 20 rows from the "orders" table, starting from the 41st row (offset of 40). This is commonly used for implementing pagination in web applications.
 
  - **Limit to 0 Rows (Empty Result Set):**
    - SELECT * FROM customers LIMIT 0;

- The **LIMIT** clause in PostgreSQL, like in standard SQL, is a valuable tool for controlling the size of result sets and avoiding the retrieval of unnecessary data. It is often used in combination with other clauses like **ORDER BY** for sorting and **OFFSET** for pagination to perform more advanced data retrieval tasks.


**11.HAVING**
- Used with **GROUP BY** to filter groups based on aggregate values.
- Example:
```
SELECT
  column1,
  SUM(column2)
FROM
  table_name
GROUP BY
  column1
HAVING
  SUM(column2) > 100;
```
<br>

**12.ORDER BY**
- Sorts the result set by one or more columns in ascending (ASC) or descending (DESC) order.
- Example:
```
SELECT
  column1,
  column2
FROM
  table_name
ORDER BY
  column1 ASC,
  column2 DESC;
```
<br>

**13.CONCAT()**
- The CONCAT() function is used to concatenate two or more strings together. It works similarly to the || operator.
- Example: **SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;**
<br>

**14.LENGTH() or LEN()**
- **LENGTH()** in PostgreSQL and **LEN()** in some other databases are used to find the length (number of characters) of a string.
- Example: **SELECT LENGTH('Hello, World!') AS length;**
<br>

**15.UPPER() or UCASE()**
- **UPPER()** in PostgreSQL and **UCASE()** in some other databases are used to convert a string to uppercase.
- Example: **SELECT UPPER('hello') AS uppercase_string;**
<br>

**16.LOWER() or LCASE()**
- **LOWER()** in PostgreSQL and **LCASE()** in some other databases are used to convert a string to lowercase.
- Example: **SELECT LOWER('WORLD') AS lowercase_string;**
<br>

**17.LEFT()**
- The **LEFT()** function is used to extract a specified number of characters from the beginning (left) of a string.
- Example: **SELECT LEFT('Hello, World!', 5) AS left_string;**
<br>

**18.RIGHT()**
- The **RIGHT()** function is used to extract a specified number of characters from the end (right) of a string.
- Example: **SELECT RIGHT('Hello, World!', 6) AS right_string;**
<br>

**19.SUBSTRING() or SUBSTR()**
- **SUBSTRING()** in PostgreSQL and **SUBSTR()** in some other databases are used to extract a substring from a string.
- Example: **SELECT SUBSTRING('Hello, World!', 7, 5) AS substring;** (Extracts 'World')
<br>

**20.TRIM()**
- The **TRIM()** function is used to remove leading and trailing spaces (or other specified characters) from a string.
- Example: **SELECT TRIM(' Hello, World! ') AS trimmed_string;**
<br>

**21.REPLACE()**
- The **REPLACE()** function is used to replace all occurrences of a substring within a string with another substring.
- Example: **SELECT REPLACE('Hello, World!', 'Hello', 'Hi') AS replaced_string;**
<br>

**22.EXTRACT()**
- **EXTRACT** function is used to extract parts (fields) of a date or timestamp value, such as year, month, day, hour, minute, second, etc.
- It is particularly useful when you want to retrieve specific components of a date or timestamp for further analysis or reporting.
- Example:
 ```
 SELECT EXTRACT(field FROM source) AS result
 ```
  - **Extracting the Year from a Date:**
     ```
     SELECT EXTRACT(YEAR FROM '2023-09-15'::DATE) AS year;
     ```
      - This query will extract the year (2023) from the given date and return it as "year."
  <br>

  - **Extracting the Month from a Timestamp:**
    ```
    SELECT EXTRACT(MONTH FROM '2023-09-15 14:30:00'::TIMESTAMP) AS month;
    ```
    - This query will extract the month (9) from the given timestamp and return it as "month."
  <br>

  - **Extracting the Day of the Week from a Date:**
    ```
    SELECT EXTRACT(DOW FROM '2023-09-15'::DATE) AS day_of_week;
    ```
    - This query will extract the day of the week (0 for Sunday, 1 for Monday, etc.) from the given date and return it as "day_of_week."
  <br>

  - **Extracting the Timezone Offset from a Timestamp:**
      ```
      SELECT EXTRACT(TIMEZONE_HOUR FROM '2023-09-15 14:30:00-05:00'::TIMESTAMPTZ) AS timezone_hour;
      ```
      - This query will extract the timezone offset in hours (-5) from the given timestamp with timezone information and return it as "timezone_hour."
<br>

**23.POSITION() or CHARINDEX()**
- **POSITION()** in PostgreSQL and CHARINDEX() in some other databases are used to find the position of a substring within a string.
- Example: **SELECT POSITION('l' IN 'Hello, World!') AS position;**
<br>

**24.AGE()**
- In PostgreSQL, the AGE function is used to calculate the difference in years, months, and days between two date or timestamp values. It is often used to determine the age of a person or the duration between two events.
- Example: **SELECT AGE(end_date, start_date) AS age_difference;**
  - **Calculating the Age of a Person:**
    ```
    SELECT AGE(end_date, start_date) AS age_difference;
    ```
    - This query calculates the age of a person born on May 15, 1990, as of September 20, 2023.
  <br>

  - **Calculating the Time Since an Event:**
    ```
    SELECT AGE(NOW(), '2022-01-01'::DATE) AS time_since_event;
    ```
    - This query calculates the time duration between the current date and January 1, 2022.
  <br>

  - **Calculating the Duration Between Two Timestamps:**
    ```
    SELECT AGE('2023-09-20 15:30:00'::TIMESTAMP, '2023-09-15 12:00:00'::TIMESTAMP) AS duration;
    ```
    - This query calculates the duration between two timestamps.
<br>

**25.DISTINCT**
- In PostgreSQL, the DISTINCT keyword is used in conjunction with the SELECT statement to retrieve unique values from one or more columns of a table. It eliminates duplicate values and returns only distinct (unique) values.
- Example:
```
SELECT DISTINCT column1, column2, ...
FROM table_name;
```
  - **Selecting Distinct Values from a Single Column:**
    ```
    SELECT DISTINCT city FROM customers;
    ```
    - This query retrieves unique city names from the "customers" table, eliminating duplicates.
  <br>

  - **Selecting Distinct Values from Multiple Columns:**
    ```
    SELECT DISTINCT first_name, last_name FROM employees;
    ```
    - This query retrieves unique combinations of first names and last names from the "employees" table, eliminating rows with the same first name and last name.
  <br>

  - **Selecting Distinct Values with Aggregation Functions:**
    ```
    SELECT DISTINCT department_id, COUNT(*) AS employee_count
    FROM employees
    GROUP BY department_id;
    ```
    - This query retrieves distinct department IDs along with the count of employees in each department. It uses the **DISTINCT** keyword in combination with the **GROUP BY** clause to ensure each department ID appears only once.
  <br>

  - **Selecting Distinct Values with Order By:**
    - SELECT DISTINCT product_category FROM products ORDER BY product_category;
    - This query retrieves distinct product categories from the "products" table and orders them alphabetically using the **ORDER BY** clause.
  - The **DISTINCT** keyword is valuable when you want to identify unique values within one or more columns of a table. It's commonly used for data deduplication and aggregation tasks in SQL queries.
<br>

**26.JOIN**
- In SQL, the JOIN operation is used to combine rows from two or more tables based on a related column between them. The JOIN operation allows you to retrieve data from multiple tables in a single query, and it is a fundamental concept in relational databases. There are several types of joins in SQL, including INNER JOIN, LEFT JOIN (or LEFT OUTER JOIN), RIGHT JOIN (or RIGHT OUTER JOIN), and FULL JOIN (or FULL OUTER JOIN).
- Overview of each type of join:
  - **INNER JOIN:**
    - An INNER JOIN returns only the rows that have matching values in both tables.
    - It filters out rows that do not have a match in the other table.
    - The result contains only the common data shared between the two tables.
    ```
    SELECT employees.name, departments.department_name
    FROM employees
    INNER JOIN departments ON employees.department_id = departments.id;
    ```
<br>

- **LEFT JOIN (LEFT OUTER JOIN):**
  - A LEFT JOIN returns all rows from the left table (the first table specified) and the matching rows from the right table (the second table specified).
  - If there is no match in the right table, NULL values are returned for columns from the right table.
  ```
  SELECT customers.name, orders.order_number
  FROM customers
  LEFT JOIN orders ON customers.id = orders.customer_id;
  ```
<br>

- **RIGHT JOIN (RIGHT OUTER JOIN):**
  - A RIGHT JOIN is the opposite of a LEFT JOIN. It returns all rows from the right table and the matching rows from the left table.
  - If there is no match in the left table, NULL values are returned for columns from the left table.
  ```
  SELECT employees.name, departments.department_name
  FROM employees
  RIGHT JOIN departments ON employees.department_id = departments.id;
  ```
<br>

- **FULL JOIN (FULL OUTER JOIN):**
  - A FULL JOIN returns all rows from both tables.
  - It includes rows from the left table that have no match in the right table and rows from the right table that have no match in the left table.
  - NULL values are returned for columns from the table with no match.
 ```
  SELECT employees.name, departments.department_name
  FROM employees
  RIGHT JOIN departments ON employees.department_id = departments.id;
 ```
- **CROSS JOIN**
    - Multiplication of each row in the first table with each in the second one
    - The result is a Cartesian product when there's no condition in the WHERE clause
    ```
    SELECT
        d.department_id, d.name,
        e.employee_id, e.first_name
    FROM
        departments AS d CROSS JOIN employees AS e;
    ```
- **JOIN** operations are powerful tools for combining data from multiple tables in complex ways, enabling you to extract meaningful information from a database that is distributed across multiple related tables. The choice of which type of join to use depends on your specific data retrieval requirements.
<br>

**27.CASE**
- A **CASE** expression allows you to conditionally return different values or perform different actions based on a specified condition. It's often used to implement branching logic similar to a switch case statement in other programming languages.
- Example:
```
SELECT
    CASE
        WHEN grade = 'A' THEN 'Excellent'
        WHEN grade = 'B' THEN 'Good'
        WHEN grade = 'C' THEN 'Average'
        WHEN grade = 'D' THEN 'Below Average'
        ELSE 'Fail'
    END AS result
FROM student_grades;
```

- In this example, the CASE expression evaluates the grade column and returns a corresponding result based on the grade value. If none of the conditions match, the ELSE clause provides a default result of "Fail."
- While SQL's CASE expression allows you to achieve similar conditional branching as a switch case statement in other programming languages, it's important to note that SQL is primarily designed for data retrieval and manipulation, so its use of control flow and branching logic is somewhat limited compared to traditional programming languages. Nonetheless, CASE expressions are a powerful tool for conditional data transformation and retrieval within SQL queries.
<br>

**28.Subqueries**
- Query Manipulation On Multiple Levels
- Subqueries – SQL query inside a larger one
- Can be nested in **SELECT**, **INSERT**, **UPDATE**, **DELETE**
    - Usually added within a WHERE clause
- **Using a Subquery in the SELECT Clause:**
    - You can use a subquery in the SELECT clause to retrieve a single value or column based on a condition. For example, to find the total number of orders for each customer:
  ```
  SELECT customer_name, (SELECT COUNT(*) FROM orders WHERE customer_id = customers.id) AS order_count
  FROM customers;
  ```
- **Using a Subquery in the FROM Clause:**
    - You can use a subquery in the FROM clause to treat its result as a temporary table. For example, to find customers who have placed more than 5 orders:
  ```
  SELECT customer_name
  FROM (SELECT customer_id, COUNT(*) AS order_count FROM orders GROUP BY customer_id) AS subquery
  WHERE order_count > 5;
  ```
- **Using a Subquery in the WHERE Clause:**
    - Subqueries are often used in the WHERE clause to filter rows based on a condition from another table. For example, to find products with prices higher than the average price:
    ```
    SELECT product_name, price
    FROM products
    WHERE price > (SELECT AVG(price) FROM products);
    ```
- **Using a Subquery in the HAVING Clause:**
    - The HAVING clause is used with GROUP BY to filter grouped rows. You can use a subquery in the HAVING clause to filter groups based on a condition. For example, to find departments with more than 10 employees:
    ```
    SELECT department_name, COUNT(*) AS employee_count
    FROM employees
    GROUP BY department_name
    HAVING COUNT(*) > 10;
    ```
## Database Programability

**1.Functions**
- Създаваме си наши фукции подобно на view-та
- Създаваме функцията
- Казваме какво връща като тип
- Функциите в postgres биват 3 типа
 - STABLE - това са фунцкиите, които при една и съща таблица връщат един и същ резултат, ф-ция за броя редове
 - IMMUTABLE - функцията винаги ще връща един и същи резултат, независима от таблици, пример квадрат на число
 - VOLATILE - това са функциите по-подразбиране, променливи
- Можем да достъпваме променливи чрез $цифра, но не е преопоръчително

```
CREATE [OR REPLACE] FUNCTION function_name (arguments)
RETURNS return_datatype
AS variable_name
$$
DECLARE
      declaration;
BEGIN
    < function_body >
RETURN {variable_name | value}
END;
$$
LANGUAGE language_name;
```
  
**2.Procedures**
- повечето случаи void фунцкции
- execute by CALL


**3.Transactions**
- Дейстивия, които извършваме върху базата и можем да върнем, ако пожелаем
```
-- Start a transaction
BEGIN;

-- Deduct $100 from Alice's account
UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;

-- Add $100 to Bob's account
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

-- Check Bob's new balance
DECLARE
    bob_balance DECIMAL(20,2);
BEGIN
    SELECT balance INTO bob_balance FROM accounts WHERE account_id = 2;
    IF bob_balance > 1000 THEN
        RAISE NOTICE 'Bob has too much money. Rolling back transaction.';
        ROLLBACK;
        RETURN;
    END IF;
END;
```
- Savepoint Example:
```
-- Start the transaction
BEGIN;

-- Add some amount
UPDATE accounts SET balance = balance + 50 WHERE id = 1;

-- Create a savepoint
SAVEPOINT my_savepoint;

-- Deduct some amount
UPDATE accounts SET balance = balance - 30 WHERE id = 1;

-- Decide for some reason to rollback to the savepoint
ROLLBACK TO SAVEPOINT my_savepoint;

END;
```
**4.Trigger**
- Functions executed Before/After a DELETE/UPDATE/INSERT query
- Example:
```
CREATE OR REPLACE FUNCTION update_last_modified()
RETURNS TRIGGER AS $$
BEGIN
    NEW.last_modified = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_last_modified
BEFORE UPDATE ON products
FOR EACH ROW EXECUTE FUNCTION update_last_modified();
```
*plpgsql - Procedural Language/PostgreSQL
