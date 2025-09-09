CREATE TABLE courses(
course_id SERIAL PRIMARY KEY,
coursename VARCHAR(100) NOT NULL,
duration VARCHAR(50),
fees NUMERIC(10,2),
coursetype VARCHAR(50) NOT NULL
);

-- Bachelor Courses
INSERT INTO courses (coursename, duration, fees, coursetype) VALUES
('B.Tech Computer Science', '4 Years', 350000.00, 'bachelor'),
('B.Tech Mechanical Engineering', '4 Years', 340000.00, 'bachelor'),
('B.Tech Civil Engineering', '4 Years', 330000.00, 'bachelor'),
('B.Tech Electrical Engineering', '4 Years', 335000.00, 'bachelor'),
('B.Tech Electronics & Communication', '4 Years', 345000.00, 'bachelor'),
('BBA', '3 Years', 250000.00, 'bachelor'),
('B.Com', '3 Years', 180000.00, 'bachelor'),
('BA English Literature', '3 Years', 150000.00, 'bachelor'),
('B.Sc Mathematics', '3 Years', 160000.00, 'bachelor'),
('B.Sc Physics', '3 Years', 165000.00, 'bachelor'),
('B.Sc Chemistry', '3 Years', 170000.00, 'bachelor');

-- Master Courses
INSERT INTO courses (coursename, duration, fees, coursetype) VALUES
('MBA in Finance', '2 Years', 450000.00, 'master'),
('MBA in Marketing', '2 Years', 440000.00, 'master'),
('MBA in Human Resources', '2 Years', 430000.00, 'master'),
('M.Tech Data Science', '2 Years', 400000.00, 'master'),
('M.Tech Artificial Intelligence', '2 Years', 420000.00, 'master'),
('M.Tech Cyber Security', '2 Years', 410000.00, 'master'),
('MCA', '2 Years', 300000.00, 'master'),
('M.Sc Physics', '2 Years', 220000.00, 'master'),
('M.Sc Chemistry', '2 Years', 225000.00, 'master'),
('M.Sc Mathematics', '2 Years', 215000.00, 'master'),
('MA English Literature', '2 Years', 210000.00, 'master');

-- Post Graduate Diploma Courses
INSERT INTO courses (coursename, duration, fees, coursetype) VALUES
('Post Graduate Diploma in AI', '1 Year', 200000.00, 'pg'),
('Post Graduate Diploma in Management', '1 Year', 220000.00, 'pg'),
('Post Graduate Diploma in Big Data Analytics', '1 Year', 210000.00, 'pg'),
('Post Graduate Diploma in Cloud Computing', '1 Year', 205000.00, 'pg'),
('Post Graduate Diploma in Cyber Security', '1 Year', 215000.00, 'pg'),
('Post Graduate Diploma in Digital Marketing', '1 Year', 180000.00, 'pg');

SELECT * FROM courses;

--FACULTY TABLE
CREATE TABLE faculty(
faculty_id SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 department VARCHAR(100),
 designation VARCHAR(100),
 email VARCHAR(100),
 contactno VARCHAR(20)
);

INSERT INTO faculty (name, department, designation, email, contactno) VALUES
('Dr. Anil Sharma', 'Computer Science', 'Professor', 'anil.sharma@university.edu', '9876543210'),
('Dr. Meera Nair', 'Electronics', 'Associate Professor', 'meera.nair@university.edu', '9876501234'),
('Prof. Rajesh Gupta', 'Mechanical Engineering', 'Assistant Professor', 'rajesh.gupta@university.edu', '9876512345'),
('Dr. Kavita Verma', 'Civil Engineering', 'Professor', 'kavita.verma@university.edu', '9876523456'),
('Prof. Suresh Iyer', 'Electrical Engineering', 'Associate Professor', 'suresh.iyer@university.edu', '9876534567'),
('Dr. Nidhi Kapoor', 'Mathematics', 'Professor', 'nidhi.kapoor@university.edu', '9876545678'),
('Prof. Arvind Menon', 'Physics', 'Assistant Professor', 'arvind.menon@university.edu', '9876556789'),
('Dr. Priya Das', 'Chemistry', 'Professor', 'priya.das@university.edu', '9876567890'),
('Prof. Vivek Singh', 'Management', 'Associate Professor', 'vivek.singh@university.edu', '9876578901'),
('Dr. Renu Joshi', 'Biotechnology', 'Professor', 'renu.joshi@university.edu', '9876589012');


SELECT * FROM faculty;

--BACHELOR STUDENTS TABLE
CREATE TABLE bachler(
student_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
gender VARCHAR(20),
mothersname VARCHAR(100),
fathersname VARCHAR(100),
dob DATE,
permanentaddress TEXT,
contactnumber VARCHAR(15),
mailid VARCHAR(100),
nationality VARCHAR(100),
board VARCHAR(100)
);

INSERT INTO bachler
(name, gender, mothersname, fathersname, dob, permanentaddress, contactnumber, mailid, nationality, board) 
VALUES
('Rohan Singh', 'Male', 'Sita Singh', 'Amit Singh', '2002-03-12', 'Lucknow, Uttar Pradesh', '9896101001', 'rohan.singh01@example.com', 'Indian', 'CBSE'),
('Aarti Verma', 'Female', 'Kavita Verma', 'Rajesh Verma', '2002-07-08', 'Kanpur, Uttar Pradesh', '9896101002', 'aarti.verma02@example.com', 'Indian', 'ICSE'),
('Sameer Khan', 'Male', 'Shabnam Khan', 'Imran Khan', '2001-11-21', 'Aligarh, Uttar Pradesh', '9896101003', 'sameer.khan03@example.com', 'Indian', 'State Board'),
('Nisha Gupta', 'Female', 'Poonam Gupta', 'Sanjay Gupta', '2002-09-15', 'Delhi', '9896101004', 'nisha.gupta04@example.com', 'Indian', 'CBSE'),
('Aman Yadav', 'Male', 'Sunita Yadav', 'Pradeep Yadav', '2001-12-03', 'Gorakhpur, Uttar Pradesh', '9896101005', 'aman.yadav05@example.com', 'Indian', 'CBSE'),
('Swati Sharma', 'Female', 'Meena Sharma', 'Arun Sharma', '2002-04-18', 'Varanasi, Uttar Pradesh', '9896101006', 'swati.sharma06@example.com', 'Indian', 'ICSE'),
('Vivek Patel', 'Male', 'Rekha Patel', 'Ramesh Patel', '2001-08-09', 'Ahmedabad, Gujarat', '9896101007', 'vivek.patel07@example.com', 'Indian', 'State Board'),
('Ankita Mehra', 'Female', 'Anjali Mehra', 'Rohit Mehra', '2002-01-28', 'Jaipur, Rajasthan', '9896101008', 'ankita.mehra08@example.com', 'Indian', 'CBSE'),
('Tarun Kapoor', 'Male', 'Seema Kapoor', 'Ashok Kapoor', '2001-10-14', 'Chandigarh', '9896101009', 'tarun.kapoor09@example.com', 'Indian', 'CBSE'),
('Pallavi Nair', 'Female', 'Latha Nair', 'Prakash Nair', '2002-02-19', 'Kochi, Kerala', '9896101010', 'pallavi.nair10@example.com', 'Indian', 'State Board'),
('Arvind Rathi', 'Male', 'Sarita Rathi', 'Naresh Rathi', '2002-06-22', 'Meerut, Uttar Pradesh', '9896101011', 'arvind.rathi11@example.com', 'Indian', 'CBSE'),
('Snehal Desai', 'Female', 'Geeta Desai', 'Paresh Desai', '2001-07-05', 'Surat, Gujarat', '9896101012', 'snehal.desai12@example.com', 'Indian', 'ICSE'),
('Harshit Tiwari', 'Male', 'Rakhi Tiwari', 'Vivek Tiwari', '2002-09-30', 'Allahabad, Uttar Pradesh', '9896101013', 'harshit.tiwari13@example.com', 'Indian', 'CBSE'),
('Neelam Chawla', 'Female', 'Vandana Chawla', 'Rohit Chawla', '2002-05-27', 'Delhi', '9896101014', 'neelam.chawla14@example.com', 'Indian', 'CBSE'),
('Manoj Rawat', 'Male', 'Kamla Rawat', 'Dinesh Rawat', '2001-11-18', 'Dehradun, Uttarakhand', '9896101015', 'manoj.rawat15@example.com', 'Indian', 'State Board'),
('Kritika Saxena', 'Female', 'Usha Saxena', 'Rakesh Saxena', '2002-08-07', 'Kanpur, Uttar Pradesh', '9896101016', 'kritika.saxena16@example.com', 'Indian', 'ICSE'),
('Naveen Bansal', 'Male', 'Savita Bansal', 'Rohit Bansal', '2002-12-12', 'Delhi', '9896101017', 'naveen.bansal17@example.com', 'Indian', 'CBSE'),
('Rashmi Kulkarni', 'Female', 'Smita Kulkarni', 'Anant Kulkarni', '2001-09-02', 'Nagpur, Maharashtra', '9896101018', 'rashmi.kulkarni18@example.com', 'Indian', 'CBSE'),
('Gaurav Yadav', 'Male', 'Neha Yadav', 'Arvind Yadav', '2002-04-24', 'Noida, Uttar Pradesh', '9896101019', 'gaurav.yadav19@example.com', 'Indian', 'State Board'),
('Isha Roy', 'Female', 'Reema Roy', 'Anirban Roy', '2002-03-13', 'Kolkata, West Bengal', '9896101020', 'isha.roy20@example.com', 'Indian', 'ICSE'),
('Kunal Malhotra', 'Male', 'Seema Malhotra', 'Deepak Malhotra', '2001-05-08', 'Chandigarh', '9896101021', 'kunal.malhotra21@example.com', 'Indian', 'CBSE'),
('Shalini Das', 'Female', 'Anita Das', 'Sanjay Das', '2002-07-20', 'Bhubaneswar, Odisha', '9896101022', 'shalini.das22@example.com', 'Indian', 'CBSE'),
('Adarsh Menon', 'Male', 'Latha Menon', 'Ramesh Menon', '2001-10-16', 'Thiruvananthapuram, Kerala', '9896101023', 'adarsh.menon23@example.com', 'Indian', 'State Board'),
('Ritika Chopra', 'Female', 'Poonam Chopra', 'Ashish Chopra', '2002-01-25', 'Delhi', '9896101024', 'ritika.chopra24@example.com', 'Indian', 'CBSE'),
('Satyam Dubey', 'Male', 'Rekha Dubey', 'Manish Dubey', '2002-09-28', 'Varanasi, Uttar Pradesh', '9896101025', 'satyam.dubey25@example.com', 'Indian', 'ICSE'),
('Anushka Jain', 'Female', 'Sunita Jain', 'Vivek Jain', '2002-02-11', 'Agra, Uttar Pradesh', '9896101026', 'anushka.jain26@example.com', 'Indian', 'CBSE'),
('Raghav Mishra', 'Male', 'Jyoti Mishra', 'Sanjay Mishra', '2001-06-06', 'Patna, Bihar', '9896101027', 'raghav.mishra27@example.com', 'Indian', 'CBSE'),
('Pooja Rani', 'Female', 'Geeta Rani', 'Ajay Rani', '2002-08-19', 'Bhopal, Madhya Pradesh', '9896101028', 'pooja.rani28@example.com', 'Indian', 'State Board'),
('Saurabh Chauhan', 'Male', 'Sarita Chauhan', 'Virender Chauhan', '2002-12-05', 'Shimla, Himachal Pradesh', '9896101029', 'saurabh.chauhan29@example.com', 'Indian', 'CBSE'),
('Mansi Kapoor', 'Female', 'Poonam Kapoor', 'Anil Kapoor', '2002-04-02', 'Pune, Maharashtra', '9896101030', 'mansi.kapoor30@example.com', 'Indian', 'ICSE');
 
 SELECT * FROM bachler;

ALTER TABLE bachler
ADD COLUMN total_fee NUMERIC(10,2) DEFAULT 0,
ADD COLUMN pending_fee NUMERIC(10,2) DEFAULT 0;
-- Update Bachelor students with mixed fees
UPDATE bachler SET total_fee = 350000, pending_fee = 150000 WHERE student_id = 1;
UPDATE bachler SET total_fee = 340000, pending_fee = 340000 WHERE student_id = 2;
UPDATE bachler SET total_fee = 330000, pending_fee = 100000 WHERE student_id = 3;
UPDATE bachler SET total_fee = 335000, pending_fee = 335000 WHERE student_id = 4;
UPDATE bachler SET total_fee = 345000, pending_fee = 200000 WHERE student_id = 5;
UPDATE bachler SET total_fee = 250000, pending_fee = 50000 WHERE student_id = 6;
UPDATE bachler SET total_fee = 180000, pending_fee = 180000 WHERE student_id = 7;
UPDATE bachler SET total_fee = 150000, pending_fee = 50000 WHERE student_id = 8;
UPDATE bachler SET total_fee = 160000, pending_fee = 80000 WHERE student_id = 9;
UPDATE bachler SET total_fee = 165000, pending_fee = 165000 WHERE student_id = 10;
UPDATE bachler SET total_fee = 170000, pending_fee = 100000 WHERE student_id = 11;
UPDATE bachler SET total_fee = 355000, pending_fee = 355000 WHERE student_id = 12;
UPDATE bachler SET total_fee = 360000, pending_fee = 200000 WHERE student_id = 13;
UPDATE bachler SET total_fee = 345000, pending_fee = 345000 WHERE student_id = 14;
UPDATE bachler SET total_fee = 340000, pending_fee = 100000 WHERE student_id = 15;
UPDATE bachler SET total_fee = 330000, pending_fee = 330000 WHERE student_id = 16;
UPDATE bachler SET total_fee = 350000, pending_fee = 150000 WHERE student_id = 17;
UPDATE bachler SET total_fee = 335000, pending_fee = 335000 WHERE student_id = 18;
UPDATE bachler SET total_fee = 345000, pending_fee = 200000 WHERE student_id = 19;
UPDATE bachler SET total_fee = 250000, pending_fee = 50000 WHERE student_id = 20;
UPDATE bachler SET total_fee = 180000, pending_fee = 180000 WHERE student_id = 21;
UPDATE bachler SET total_fee = 150000, pending_fee = 50000 WHERE student_id = 22;
UPDATE bachler SET total_fee = 160000, pending_fee = 80000 WHERE student_id = 23;
UPDATE bachler SET total_fee = 165000, pending_fee = 165000 WHERE student_id = 24;
UPDATE bachler SET total_fee = 170000, pending_fee = 100000 WHERE student_id = 25;
UPDATE bachler SET total_fee = 355000, pending_fee = 355000 WHERE student_id = 26;
UPDATE bachler SET total_fee = 360000, pending_fee = 200000 WHERE student_id = 27;
UPDATE bachler SET total_fee = 345000, pending_fee = 345000 WHERE student_id = 28;
UPDATE bachler SET total_fee = 340000, pending_fee = 100000 WHERE student_id = 29;
UPDATE bachler SET total_fee = 330000, pending_fee = 330000 WHERE student_id = 30;
UPDATE bachler SET total_fee = 345000, pending_fee = 345000 WHERE student_id = 31;



 --MASTER STUDENTS TABLE

CREATE TABLE master(
student_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
gender VARCHAR(20),
mothersname VARCHAR(100),
fathersname VARCHAR(100),
dob DATE,
permanentaddress TEXT,
contactnumber VARCHAR(15),
mailid VARCHAR(100),
nationality VARCHAR(100),
board VARCHAR(100)
);

INSERT INTO master 
(name, gender, mothersname, fathersname, dob, permanentaddress, contactnumber, mailid, nationality, board) 
VALUES
('Amit Kumar', 'Male', 'Sunita Kumar', 'Ramesh Kumar', '2000-01-15', 'Bareilly, Uttar Pradesh', '9876100001', 'amit.kumar01@example.com', 'Indian', 'CBSE'),
('Priya Sharma', 'Female', 'Neelam Sharma', 'Rajesh Sharma', '2000-05-20', 'Lucknow, Uttar Pradesh', '9876100002', 'priya.sharma02@example.com', 'Indian', 'ICSE'),
('Rahul Verma', 'Male', 'Meena Verma', 'Suresh Verma', '1999-11-10', 'Kanpur, Uttar Pradesh', '9876100003', 'rahul.verma03@example.com', 'Indian', 'CBSE'),
('Sneha Nair', 'Female', 'Anjali Nair', 'Prakash Nair', '2000-08-05', 'Kochi, Kerala', '9876100004', 'sneha.nair04@example.com', 'Indian', 'State Board'),
('Rohit Singh', 'Male', 'Kavita Singh', 'Akhilesh Singh', '1999-09-12', 'Varanasi, Uttar Pradesh', '9876100005', 'rohit.singh05@example.com', 'Indian', 'CBSE'),
('Ananya Gupta', 'Female', 'Shalini Gupta', 'Manoj Gupta', '2000-04-18', 'Delhi', '9876100006', 'ananya.gupta06@example.com', 'Indian', 'CBSE'),
('Vikram Mehta', 'Male', 'Rita Mehta', 'Arun Mehta', '1999-12-22', 'Mumbai, Maharashtra', '9876100007', 'vikram.mehta07@example.com', 'Indian', 'ICSE'),
('Pooja Joshi', 'Female', 'Kiran Joshi', 'Amit Joshi', '2000-02-28', 'Jaipur, Rajasthan', '9876100008', 'pooja.joshi08@example.com', 'Indian', 'CBSE'),
('Karan Malhotra', 'Male', 'Seema Malhotra', 'Deepak Malhotra', '2000-06-15', 'Chandigarh', '9876100009', 'karan.malhotra09@example.com', 'Indian', 'State Board'),
('Ritu Yadav', 'Female', 'Sushma Yadav', 'Naresh Yadav', '2000-03-19', 'Gurugram, Haryana', '9876100010', 'ritu.yadav10@example.com', 'Indian', 'CBSE'),
('Sandeep Rathi', 'Male', 'Alka Rathi', 'Mahesh Rathi', '1999-10-25', 'Meerut, Uttar Pradesh', '9876100011', 'sandeep.rathi11@example.com', 'Indian', 'CBSE'),
('Neha Kapoor', 'Female', 'Poonam Kapoor', 'Anil Kapoor', '2000-07-09', 'Pune, Maharashtra', '9876100012', 'neha.kapoor12@example.com', 'Indian', 'ICSE'),
('Arjun Mishra', 'Male', 'Jyoti Mishra', 'Sanjay Mishra', '2000-01-30', 'Patna, Bihar', '9876100013', 'arjun.mishra13@example.com', 'Indian', 'CBSE'),
('Shreya Desai', 'Female', 'Rekha Desai', 'Paresh Desai', '2000-11-11', 'Ahmedabad, Gujarat', '9876100014', 'shreya.desai14@example.com', 'Indian', 'State Board'),
('Nikhil Chauhan', 'Male', 'Sarita Chauhan', 'Virender Chauhan', '2000-05-03', 'Shimla, Himachal Pradesh', '9876100015', 'nikhil.chauhan15@example.com', 'Indian', 'CBSE'),
('Megha Rani', 'Female', 'Geeta Rani', 'Ajay Rani', '1999-08-27', 'Bhopal, Madhya Pradesh', '9876100016', 'megha.rani16@example.com', 'Indian', 'ICSE'),
('Deepak Soni', 'Male', 'Manju Soni', 'Ravi Soni', '2000-09-21', 'Indore, Madhya Pradesh', '9876100017', 'deepak.soni17@example.com', 'Indian', 'CBSE'),
('Divya Menon', 'Female', 'Latha Menon', 'Ramesh Menon', '2000-12-13', 'Thiruvananthapuram, Kerala', '9876100018', 'divya.menon18@example.com', 'Indian', 'State Board'),
('Aditya Jain', 'Male', 'Sunita Jain', 'Vivek Jain', '1999-04-08', 'Agra, Uttar Pradesh', '9876100019', 'aditya.jain19@example.com', 'Indian', 'CBSE'),
('Kavya Reddy', 'Female', 'Madhuri Reddy', 'Raghav Reddy', '2000-10-02', 'Hyderabad, Telangana', '9876100020', 'kavya.reddy20@example.com', 'Indian', 'ICSE'),
('Harsh Patel', 'Male', 'Jaya Patel', 'Kiran Patel', '2000-06-11', 'Surat, Gujarat', '9876100021', 'harsh.patel21@example.com', 'Indian', 'State Board'),
('Simran Kaur', 'Female', 'Amrita Kaur', 'Baljeet Kaur', '2000-09-14', 'Amritsar, Punjab', '9876100022', 'simran.kaur22@example.com', 'Indian', 'CBSE'),
('Manish Rawat', 'Male', 'Kamla Rawat', 'Dinesh Rawat', '1999-07-23', 'Dehradun, Uttarakhand', '9876100023', 'manish.rawat23@example.com', 'Indian', 'CBSE'),
('Anjali Chawla', 'Female', 'Vandana Chawla', 'Rohit Chawla', '2000-02-07', 'Delhi', '9876100024', 'anjali.chawla24@example.com', 'Indian', 'ICSE'),
('Aakash Tiwari', 'Male', 'Rakhi Tiwari', 'Vivek Tiwari', '2000-03-17', 'Allahabad, Uttar Pradesh', '9876100025', 'aakash.tiwari25@example.com', 'Indian', 'CBSE'),
('Tanvi Saxena', 'Female', 'Usha Saxena', 'Rakesh Saxena', '2000-01-22', 'Kanpur, Uttar Pradesh', '9876100026', 'tanvi.saxena26@example.com', 'Indian', 'State Board'),
('Mohit Bansal', 'Male', 'Savita Bansal', 'Rohit Bansal', '1999-05-19', 'Delhi', '9876100027', 'mohit.bansal27@example.com', 'Indian', 'CBSE'),
('Pallavi Kulkarni', 'Female', 'Smita Kulkarni', 'Anant Kulkarni', '2000-11-03', 'Nagpur, Maharashtra', '9876100028', 'pallavi.kulkarni28@example.com', 'Indian', 'ICSE'),
('Saurabh Yadav', 'Male', 'Neha Yadav', 'Arvind Yadav', '2000-08-29', 'Noida, Uttar Pradesh', '9876100029', 'saurabh.yadav29@example.com', 'Indian', 'CBSE'),
('Ishita Roy', 'Female', 'Reema Roy', 'Anirban Roy', '2000-07-06', 'Kolkata, West Bengal', '9876100030', 'ishita.roy30@example.com', 'Indian', 'State Board');


SELECT * FROM master;
ALTER TABLE master
ADD COLUMN total_fee NUMERIC(10,2) DEFAULT 0,
ADD COLUMN pending_fee NUMERIC(10,2) DEFAULT 0;

-- Update Master students with mixed fees
UPDATE master SET total_fee = 400000, pending_fee = 200000 WHERE student_id = 1;
UPDATE master SET total_fee = 420000, pending_fee = 420000 WHERE student_id = 2;
UPDATE master SET total_fee = 450000, pending_fee = 100000 WHERE student_id = 3;
UPDATE master SET total_fee = 410000, pending_fee = 410000 WHERE student_id = 4;
UPDATE master SET total_fee = 430000, pending_fee = 300000 WHERE student_id = 5;
UPDATE master SET total_fee = 400000, pending_fee = 400000 WHERE student_id = 6;
UPDATE master SET total_fee = 420000, pending_fee = 150000 WHERE student_id = 7;
UPDATE master SET total_fee = 450000, pending_fee = 450000 WHERE student_id = 8;
UPDATE master SET total_fee = 410000, pending_fee = 100000 WHERE student_id = 9;
UPDATE master SET total_fee = 430000, pending_fee = 430000 WHERE student_id = 10;
UPDATE master SET total_fee = 400000, pending_fee = 200000 WHERE student_id = 11;
UPDATE master SET total_fee = 420000, pending_fee = 420000 WHERE student_id = 12;
UPDATE master SET total_fee = 450000, pending_fee = 100000 WHERE student_id = 13;
UPDATE master SET total_fee = 410000, pending_fee = 410000 WHERE student_id = 14;
UPDATE master SET total_fee = 430000, pending_fee = 300000 WHERE student_id = 15;
UPDATE master SET total_fee = 400000, pending_fee = 400000 WHERE student_id = 16;
UPDATE master SET total_fee = 420000, pending_fee = 150000 WHERE student_id = 17;
UPDATE master SET total_fee = 450000, pending_fee = 450000 WHERE student_id = 18;
UPDATE master SET total_fee = 410000, pending_fee = 100000 WHERE student_id = 19;
UPDATE master SET total_fee = 430000, pending_fee = 430000 WHERE student_id = 20;
UPDATE master SET total_fee = 400000, pending_fee = 200000 WHERE student_id = 21;
UPDATE master SET total_fee = 420000, pending_fee = 420000 WHERE student_id = 22;
UPDATE master SET total_fee = 450000, pending_fee = 100000 WHERE student_id = 23;
UPDATE master SET total_fee = 410000, pending_fee = 410000 WHERE student_id = 24;
UPDATE master SET total_fee = 430000, pending_fee = 300000 WHERE student_id = 25;
UPDATE master SET total_fee = 400000, pending_fee = 400000 WHERE student_id = 26;
UPDATE master SET total_fee = 420000, pending_fee = 150000 WHERE student_id = 27;
UPDATE master SET total_fee = 450000, pending_fee = 450000 WHERE student_id = 28;
UPDATE master SET total_fee = 410000, pending_fee = 100000 WHERE student_id = 29;
UPDATE master SET total_fee = 430000, pending_fee = 430000 WHERE student_id = 30;






