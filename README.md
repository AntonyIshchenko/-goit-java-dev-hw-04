## Briefing

You are working at **MegaSoft**, a company that develops custom software solutions. The simplified business model is as follows:

 - The company has employees. For each employee, the following information is known:
   - Date of birth
   - Technical level (can be one of the following: Trainee, Junior, Middle, Senior)
   - Monthly salary in USD

- Clients reach out with a project. Specialists from the company evaluate the project and fill in the following details:
  - Project start date
  - Project end date
  - After that, employees are assigned to the project.

### Entity Relationships:

- One client can order 0, 1, or multiple projects. A project always has exactly one client.
- One employee can work on 0, 1, or multiple projects. At the same time, one project can involve 0, 1, or multiple employees.

---

## Task #1 – Design the Database

Create a file named `init_db.sql` where you will model the database structure for the company **MegaSoft** according to the briefing. The database should contain the following tables:

### `worker` – table for employees

This table should include the following fields:

- `ID` – employee identifier, integer, surrogate primary key.
- `NAME` – employee name, string. Constraints: must not be NULL, length must be between 2 and 1000 characters (inclusive).
- `BIRTHDAY` – date of birth. The year must be greater than 1900.
- `LEVEL` – technical level of the employee. Constraints: must not be NULL, value must be one of the following – `Trainee`, `Junior`, `Middle`, `Senior`.
- `SALARY` – monthly salary of the employee. Constraint: integer, must be no less than 100 and no more than 100,000.

### `client` – table for clients

This table should include the following fields:

- `ID` – client identifier, integer, surrogate primary key.
- `NAME` – client name, string. Constraints: must not be NULL, length must be between 2 and 1000 characters (inclusive).

### `project` – table for projects

This table should include the following fields:

- `ID` – project identifier, integer, surrogate primary key.
- `NAME` – project name, string.
- `CLIENT_ID` – identifier of the client who ordered this project.
- `START_DATE` – project start date.
- `FINISH_DATE` – project end date.

### `project_worker` – table that maps which employees are assigned to which projects

This table should include the following fields:

- `PROJECT_ID` – project identifier. Foreign key referencing `project(id)`.
- `WORKER_ID` – employee identifier. Foreign key referencing `worker(id)`.

The primary key for this table is a composite key consisting of the pair (`PROJECT_ID`, `WORKER_ID`).

---

## Task #2 – Populate the Database

Create a file named `populate_db.sql`, where you will write SQL statements to populate the tables. After executing the SQL script, the database should be in the following state:

- At least **10 employees** must be added.
    - The **minimum salary** must be less than **1,000**, and the **maximum salary** must be more than **5,000**.
    - All technical levels (`Trainee`, `Junior`, `Middle`, `Senior`) must be represented.

- At least **5 clients** must be added.

- At least **10 projects** must be added.
    - The **duration** of each project (difference between `START_DATE` and `FINISH_DATE`) must be between **1 and 100 months**.

- **Employees must be assigned to each project**.
    - Each project must have between **1 and 5 employees** working on it.

---

## Task #3 – Find the Employee with the Highest Salary

Create a file named `find_max_salary_worker.sql`. Write SQL in this file that retrieves the employee(s) with the highest salary.  
If there are multiple employees with the same highest salary, all of them should be included in the result.

### Example of the resulting table:

| NAME      | SALARY |
|-----------|--------|
| John Doe  | 1000   |

---

## Task #4 – Find the Client with the Most Projects

Create a file named `find_max_projects_client.sql`. Write SQL that retrieves the client(s) with the highest number of projects.  
If there are multiple clients with the same number, all of them should be included in the result.

### Example of the resulting table:

| NAME    | PROJECT_COUNT |
|---------|----------------|
| John Doe | 3             |
| Mix Max  | 3             |

---

## Task #5 – Find the Project with the Longest Duration

Create a file named `find_longest_project.sql`. Write SQL that retrieves the project(s) with the longest duration in months.  
If there are multiple projects with the same duration, include all of them in the result.

### Example of the resulting table:

| NAME       | MONTH_COUNT |
|------------|-------------|
| Project A  | 27          |
| Project B  | 27          |

---

## Task #6 – Find the Youngest and Eldest Employees

Create a file named `find_youngest_eldest_workers.sql`. Write SQL that selects the youngest and eldest employees and outputs them in the following format:

- `TYPE` – either `YOUNGEST` or `OLDEST`
- `NAME` – employee name
- `BIRTHDAY` – employee's date of birth

If there are multiple youngest/eldest employees, all should be included.

### Example of the resulting table:

| TYPE     | NAME      | BIRTHDAY   |
|----------|-----------|------------|
| YOUNGEST | John Doe  | 2000-01-07 |
| YOUNGEST | John Doe  | 2000-01-07 |
| ELDEST   | Maxim     | 1980-06-17 |

---

## Task #7 – Output the Price of Each Project

Create a file named `print_project_prices.sql`. Write SQL that outputs a list of projects along with the price of each project.

**Project price** is calculated as the total sum of the salaries of all employees working on the project, multiplied by the project duration in months.

For example, if employees Max (salary 1000) and Joe (salary 1500) work on Project A, and the project lasts 17 months,  
then the price of Project A = 17 × (1000 + 1500) = 42,500.

Sort the projects in descending order, showing the most expensive ones first.

### Example of the resulting table:

| NAME       | PRICE  |
|------------|--------|
| Project A  | 42500  |
| Project B  | 18000  |