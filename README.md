Here's a revised version of the description, formatted to be more concise and suitable for a GitHub README file:

---

# SQL and JDBC Integration Project

This project demonstrates the use of the SQL programming language alongside Java and the JDBC interface to interact with relational databases. The Oracle DBMS is used as the backend, with the COMPANY database schema provided in earlier coursework.

## Objectives
1. **Explore SQL Queries**: Retrieve and manipulate data using SQL and Java with JDBC.
2. **Develop JDBC Applications**: Implement programs to perform database operations, enforce business rules, and handle user interactions via a GUI.

---

## Project Overview

### Part 1: SQL Queries with JDBC
1. **Retrieve Research Department Employees**  
   Write a program to list the last name and SSN of employees working in the Research department.

2. **Find ProjectZ Participants in Houston**  
   Write a program to list the last name, SSN, and hours worked for employees in Houston working on the `ProductZ` project.

### Part 2: Manager-Driven Employee Addition
Develop a JDBC program allowing managers to:
- Add a new employee to the COMPANY database.
- Assign the employee to one or more projects, ensuring total hours do not exceed 40 per week.
- Optionally add dependents for the new employee.

#### Features:
- Validate manager credentials via SSN before proceeding.
- Ensure projects comply with time allocation constraints.
- Allow managers to interactively assign projects and input dependents via a GUI.
- Generate and display a summary report for the new employee.

### Extra Credit: Business Rule Enforcement
Implement rules not enforceable through database constraints:
1. Employees cannot work on more than two projects managed by their department.
2. Employees must work on at least one project controlled by their department.

#### Scenarios:
- Scan the database to ensure compliance with rules.
- Validate assignments during insert, update, or delete operations, and provide feedback for violations.
- Suggest alternatives when operations cannot proceed.

---

## Deliverables
1. **Source Code**: Provide Java files or, if using a web-based GUI, all necessary HTML, JS, JSP, and related files.
2. **Screenshots**: Document the program's functionality through screenshots.
3. **Demo Video**: Record a walkthrough demonstrating all features.
4. **Reports**: Generate a detailed report for new employees.

---

## Setup
1. Include the `OJDBC14.jar` file to enable JDBC connectivity.
2. Add the JAR file to your project's build path using Eclipse or your preferred IDE.
3. Refer to the provided PowerPoint for detailed setup instructions.

---

## Resources
- [Oracle at GMU](https://labs.vse.gmu.edu/index.php/Services/Oracle)

--- 

Feel free to modify further if you'd like to customize specific sections or add additional details!
