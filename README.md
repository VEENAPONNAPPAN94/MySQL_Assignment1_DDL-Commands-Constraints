## MySQL Assignment 1 – DDL Commands & Constraints

SQL scripts covering DDL operations and table constraints for an employee database schema (`departments`, `location`, and `employees`).

### What’s Included

* **DDL Commands**: Creating the `employee` database and tables (`CREATE`), modifying columns (`ALTER` for adding `email`, modifying `designation`, dropping `age`, and renaming `hire_date` to `date_of_joining`), renaming tables (`RENAME` for `departments` to `Departments_Info` and `location` to `Locations`), clearing data (`TRUNCATE` on `employees`), and removing objects (`DROP` for `employees` and `employee`).
* **Constraints**: Recreating the `employee` database and enforcing `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `AUTO_INCREMENT`, `ENUM('M', 'F')`, `CHECK (age >= 18)`, `DEFAULT (CURRENT_DATE)`, and `FOREIGN KEY` relationships across `departments`, `location`, and `employees`.

### How to Execute

1. Open **MySQL Workbench** or the **MySQL CLI** and connect to your server (MySQL **8.0.16+** recommended for `CHECK` constraints and `DEFAULT (CURRENT_DATE)`).
2. Run table creation statements in dependency order (`departments` and `location` before `employees`) so foreign key constraints are satisfied.
3. Run `ALTER`, `RENAME`, `TRUNCATE`, and `DROP` statements as needed.
