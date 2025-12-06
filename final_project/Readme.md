# LMS Database Project 

A database schema for a **Learning Management System (LMS)** — designed for managing students, instructors, courses, enrollments, assignments, and submissions. Implemented in PostgreSQL, with full schema definition, sample data, and example queries written by Ali Khantszian(ka12438) for the final project of course Database.

## Stucture

| File / Folder | Description |
|---------------|-------------|
| `ER-diagram.png` | Visual ER diagram of the schema (tables + relationships) for easy understanding. |
| `README.md` | (This file) Explanation of project, how to set up and use the database. |
| `queries/`| Example SQL queries: basic retrievals, advanced reporting, statistics, etc. |
| `data_insertion`  | Example data insertion statements — sample students, instructors, courses, enrollments, assignments and submissions. |
| `lms_database` | Main script that defines all tables, relationships, constraints, and indexing. |
| `indexing ` | Demostration of indexing. |
| `transactions ` | Demostration of transactions. |

---

### Features
- Student management
- Instructor management
- Course management
- Enrollment tracking
- Assignment creation
- Submission tracking
- Grade management
- Indexed columns for performance
- Transaction support
- Backup and restore support

## Setup & Installation

### Requirements
- PostgreSQL (v12 or later)  
- `psql` command-line tool (or a GUI like pgAdmin, DBeaver, etc.)

### Steps

1. Clone the repository:

```bash
git clone https://github.com/khatszianAli/database.git
cd database/final_project
```
2. Create the database and run the schema script:
Open your terminal and run:
```bash
psql -U username
```
Inside PostgreSQL:
```bash
CREATE DATABASE lms_db;
```
Inside database:
```bash
\c lms_db
```
Load the schema:
```bash
\i lms_database.sql
```
3.    (Optional) Load sample data:
```bash
\i data_insertion.sql
```
### Backup and Restore

1. Backup Database:
```bash
pg_dump -U username -d lms_db -F c -f lms_backup.dump
```
2. Restore Database:
```bash
pg_restore -U username -d lms_db -c lms_backup.dump
```
Author Developed by Ali Khantszian
   
   



