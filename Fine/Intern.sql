create table student_details(
    Regno varchar(8) primary key,
    sname varchar(60),
    dob date,
    batch numeric(4),
    department varchar(80),
    sem numeric(1), 
    email varchar(50), 
    contact numeric(10),
    programme varchar(50), 
    section varchar(10)
);

INSERT INTO student_details (Regno, sname, dob, batch, department, sem, email, contact, programme, section)
VALUES
    ('22IT1001', 'Alice Johnson', '2001-05-15', 2023, 'Information Technology', 4, 'alice.johnson@gmail.com', '1234567890', 'B.Tech',''),
    ('20IT002', 'Bob Smith', '2000-09-22', 2023, 'Information Technology', 7, 'bob.smith@gmail.com', '2345678901','B.Tech',''),
    ('19ME1002', 'Charlie Brown', '2002-02-10', 2019, 'Mechanical Engineering', 7, 'charlie.brown@gmail.com', '3456789012', 'M.Tech', ''),
    ('22CE2004', 'Diana Clark', '2001-11-30', 2024, 'Civil Engineering', 2, 'diana.clark@gmail.com', '4567890123', 'B.Tech', 'B'),
    ('21MB1005', 'Eva Martinez', '2003-07-18', 2023, '', 6, 'eva.martinez@gmail.com', '5678901234', 'MBA', 'A'),
    ('21CE1006', 'Frank Adams', '2000-03-25', 2022, 'Civil Engineering', 6, 'frank.adams@gmail.com', '6789012345', 'B.Tech', 'B'),
    ('21MT1007', 'Grace Lee', '2002-08-08', 2024, 'Mechatronics', 5, 'grace.lee@gmail.com', '7890123456', 'B.Tech', ''),
    ('20EI1001', 'Henry Wilson', '2001-12-05', 2023, 'Electronics & Instrumentation Engineering', 8, 'henry.wilson@gmail.com', '8901234567', 'B.Tech', 'A'),
    ('20IT1003', 'Ivy Taylor', '2002-04-20', 2022, 'Information Technology', 7, 'ivy.taylor@gmail.com', '9012345678','B.Tech', ''),
    ('21EC1010', 'Jack Davis', '2000-10-12', 2024, 'Electronics and Communication Engineering', 5, 'jack.davis@gmail.com', '0123456789', 'B.Tech', 'A');


CREATE TABLE faculty_details (
  FACULTY_ID varchar(10) NOT NULL,
  FNAME varchar(40) DEFAULT NULL,
  DEPT_ID varchar(5) DEFAULT NULL,
  DESIGNATION varchar(50) DEFAULT NULL,
  EMAIL varchar(50) DEFAULT NULL,
  PERMISSION varchar(11) NOT NULL
)

INSERT INTO `faculty_details` 
(`FACULTY_ID`, 'FNAME`, `DEPT_ID`, `DESIGNATION`, `EMAIL`, `PERMISSION`) VALUES
('1', 'Dr. S. Kanmani', 'IT', 'Professor', 'kanmani@pec.edu', '-'),
('10', 'Abdul Basith', 'IT', 'ASSOCIATE PROFESSOR', '', 'STAFF'),
('2', 'Dr. V. Geetha', 'IT', 'Professor', 'vgeetha@ptuniv.edu.in\r\n', 'STAFF'),
('3', 'DR.KARUNAKARAN', 'ADMIN', 'ASST.REGISTRAR', '', 'ADMIN'),
('4', 'DR.SARAVANAN', 'EC', 'PROFESSOR', 'SARAVANAN@PEC.EDU', '-'),
('6', 'Dr. V. Govindasamy', 'IT', 'PROFESSOR', '', 'HOD');


create table fine_details(
    fid varchar(8) primary key,
    Regno varchar(8),
    facultyID varchar(8),
    dateoffine date,
    fine_amount numeric(5),
    violation_id varchar(30),
    fstatus varchar(20),
);

INSERT INTO FINE_DETAILS (FID, Regno, facultyID, dateoffine, fine_amount, violation_id, fstatus)
 ('FID1', '22IT1001', '10', STR_TO_DATE('2023-01-15', 'YYYY-MM-DD'), 100, '1', 'Unpaid'),
 ('FID2', '20EI1001', '1', STR_TO_DATE('2023-02-20', 'YYYY-MM-DD'), 500, '2', 'Paid'),
 ('FID3', '22IT1001', '2', STR_TO_DATE('2023-03-10', 'YYYY-MM-DD'), 500, '2', 'Paid'),
 ('FID4', '21MT1007', '3', STR_TO_DATE('2023-04-05', 'YYYY-MM-DD'), 300, '6', Paid),
 ('FID5', '20IT1003', '4', STR_TO_DATE('2023-05-12', 'YYYY-MM-DD'), 100, '1', 'Paid'),
 ('FID6', '20IT1003', '3', STR_TO_DATE('2023-06-18', 'YYYY-MM-DD'), 500, '3', 'Unpaid'),
 ('FID7', '21EC1010', '1', STR_TO_DATE('2023-07-02', 'YYYY-MM-DD'), 5000, '5', Paid),
 ('FID8', '21ME1002', '6', STR_TO_DATE('2023-08-21', 'YYYY-MM-DD'), 500, '3', 'Unpaid'),
 ('FID9', '21EC1010', '4', STR_TO_DATE('2023-09-14', 'YYYY-MM-DD'), 500, '4', null),
 ('FID10', '21CH1005', '2', STR_TO_DATE('2023-10-30', 'YYYY-MM-DD'), 300, '6' Unpaid),
 ('FID10', '22IT1001', '2', STR_TO_DATE('2023-10-30', 'YYYY-MM-DD'), 100, '1', 'Paid');


create table violation(
    violation_id varchar(8) primary key, 
    codeOfConduct varchar(50), 
    fine_amt numeric(10),
    description varchar(80) 
);


INSERT INTO violation(violation_id, codeOfConduct, fine_amt, description) VALUES
('1', 'ID Card', 100, 'All students must wear their identity cards while on the campus.'),
('2', 'Dress Code', 500, 'Male students should wear shirt and full pants 
(Neat haircut with beard shaved).Female students should wear salwar kameez with duputta / churidar with dupatta / saree.'),
('3', 'Campus Driving', 500, 'Violation of seating and speed limits in campus driving'),
('4', 'Indecent Behaviour', 500, 'Indecent behaviour with opposite gender against our culture'),
('5', 'Ragging', 5000, 'Ragging within or outside the educational institution is prohibited. Ragging is an offence under Indian Penal Code'),
('6', 'Malpractice', 300, NULL);

