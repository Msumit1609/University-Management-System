## University Management System – Villanova University Portal

**Overview:**

The University Management System is a Python + PostgreSQL project that provides a menu-driven interface to manage various aspects of university operations.
It is designed for students, faculty, and administrators to access academic details, manage admissions, check fees, and contact student support services in one place.

---

**Features**
- University Info – Displays history, ranking, placements, and facilities.
- Courses & Fees – Lists bachelor’s, master’s, and postgraduate courses with duration and fee details.
- Admissions – Allows students to apply for bachelor’s and master’s courses via admission forms.
- Faculty Management – View faculty details with department, designation, and contact information.
- Student Records – Display bachelor’s and master’s student details (summary view or full detailed view).
- Accounts & Fees – Track total fees and pending fees for each student.
- Student Support – Provides contact details for academic advising, counseling, IT support, library, and emergency services.
- Clean Exit – Safely closes the PostgreSQL connection on exit.

---

**Tech Stack**
- Programming Language: Python
- Database: PostgreSQL
- Python Libraries:
- psycopg2 → PostgreSQL connection
- tabulate → Pretty table formatting for better readability

--- 

**Database Schema**
- Courses Table
```
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    coursename VARCHAR(100) NOT NULL,
    duration VARCHAR(50),
    fees NUMERIC(10,2),
    coursetype VARCHAR(50) NOT NULL
);
```
- Faculty Table
```
CREATE TABLE faculty (
    faculty_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    designation VARCHAR(100),
    email VARCHAR(100),
    contactno VARCHAR(20)
);
```
- Bachelor Students Table
```
CREATE TABLE bachler (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    mothersname VARCHAR(100),
    fathersname VARCHAR(100),
    dob DATE,
    permanentaddress TEXT,
    contactnumber VARCHAR(20),
    mailid VARCHAR(100),
    nationality VARCHAR(50),
    board VARCHAR(100),
    total_fee NUMERIC(10,2) DEFAULT 0,
    pending_fee NUMERIC(10,2) DEFAULT 0
);
```
- Master Students Table
```
CREATE TABLE master (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    mothersname VARCHAR(100),
    fathersname VARCHAR(100),
    dob DATE,
    permanentaddress TEXT,
    contactnumber VARCHAR(20),
    mailid VARCHAR(100),
    nationality VARCHAR(50),
    board VARCHAR(100),
    total_fee NUMERIC(10,2) DEFAULT 0,
    pending_fee NUMERIC(10,2) DEFAULT 0
);
```

---

**How to Run**
- Install PostgreSQL and create a database named university.
- Create required tables (courses, faculty, bachler, master).
- Insert sample data (courses, faculty, students).
- Install dependencies: pip install psycopg2 tabulate


Run the program in IDLE or terminal:

python university_portal.py
