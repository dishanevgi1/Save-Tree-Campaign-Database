# Save Tree Campaign – DBMS Project

## Project Overview

This project is a database management system designed to support a tree plantation and environmental awareness campaign. It manages data related to campaigns, volunteers, trees, events, organizations, NGOs, government agencies, suppliers, sponsors, social media activity, and donors.

The system is intended to improve organization, tracking, and reporting of campaign activities in a structured and efficient way.

---

## Database Structure

The database consists of the following tables:

* Campaign_1
* Organizations_
* Volunteers_
* Trees_
* Events_
* Government_Agency_
* Environmental_NGO_
* Supplier_
* Tree_Planting_Sites_
* Sponsor_
* Social_Media_Post_
* Donar_

Primary keys are defined for all tables, and foreign key relationships are used where required (for example, Volunteers and Events reference Campaigns).

---

## Features Implemented

* Creation of tables using DDL statements
* Insertion of sample data using DML statements
* Data retrieval using SELECT queries
* Use of JOIN operations and filtering
* Aggregate functions such as COUNT
* Stored Procedure to count volunteers
* Function to count total trees
* Trigger to validate tree age before insertion

---

## Sample Queries

```sql
SELECT * FROM Campaign_1;

SELECT Name, Role FROM Volunteers_ WHERE CampaignId = 'C0001';

SELECT COUNT(*) FROM Trees_;

SELECT E.EventName, C.Name
FROM Events_ E
JOIN Campaign_1 C ON E.CampaignID = C.CampaignId;

SELECT * FROM Trees_ WHERE Age > 20;

SELECT NGO_name, NGO_email FROM Environmental_NGO_;

SELECT COUNT(*) FROM Volunteers_;

SELECT Supplier_name FROM Supplier_;

SELECT * FROM Sponsor_ ORDER BY Sponsor_name;

SELECT * FROM Social_Media_Post_ WHERE Like_count > 30000;
```

---

## Stored Procedure

```sql
CALL GetVolunteerCount();
```

---

## Function

```sql
SELECT GetTreeCount();
```

---

## Trigger Test

```sql
INSERT INTO Trees_ VALUES ('T999','Test Location',-5,'Test','Healthy');
```

---

## Technologies Used

* MySQL
* SQL (DDL, DML, Queries)
* Stored Procedures, Functions, Triggers

---

## How to Run the Project

1. Open MySQL Workbench or any MySQL client
2. Create a new database or use an existing one
3. Run the provided SQL script file
4. Execute the queries, procedure, and function to verify outputs

---

## Notes

* The trigger prevents insertion of invalid tree age values
* The procedure returns the total number of volunteers
* The function returns the total number of trees
* Sample data is included for all tables

---

## Summary

This project demonstrates the use of relational database concepts along with practical implementation using MySQL. It covers schema design, data manipulation, querying, and the use of procedural extensions such as functions, procedures, and triggers.
