-- DDL COMMANDS

create database employees;
create database test_db;
show databases;
drop database test_db;
use employees;
show tables;

create table emp_details (
emp_id int primary key not null,
emp_name varchar(100) not null,
emp_age int not null,
emp_mail varchar(50)
);
describe emp_details;
select * from emp_details;
alter table emp_details add column emp_phone bigint not null;
alter table emp_details add column addr varchar(300) not null;
alter table emp_details rename column addr to emp_address;
alter table emp_details add column salary bigint not null;
alter table emp_details rename column salary to emp_salary;
alter table emp_details modify column emp_salary decimal not null;
alter table emp_details modify column emp_salary decimal default 0.00;
alter table emp_details drop column emp_salary;

insert into emp_details(emp_id, emp_name, emp_age, emp_mail, emp_phone, emp_address) values
(101, 'Arjun Mehta', 28, 'arjun.mehta@example.com', 9876543210, '123 Park Street, Kolkata, West Bengal'),
(102, 'Priya Sharma', 32, 'priya.sharma@example.com', 9123456789, '45 MG Road, Bengaluru, Karnataka'),
(103, 'Rohan Das', 24, 'rohan.das@example.com', 9988776655, '78 Salt Lake, Sector 5, Kolkata, West Bengal'),
(104, 'Ananya Iyer', 29, 'ananya.iyer@example.com', 8877665544, '12 Sunrise Hills, Jubilee Hills, Hyderabad, Telangana'),
(105, 'Kabir Singh', 35, 'kabir.singh@example.com', 7766554433, '89 Marine Drive, Mumbai, Maharashtra'),
(106, 'Sneha Patel', 26, 'sneha.patel@example.com', 9876543211, '56 GIDC Estate, Ahmedabad, Gujarat'),
(107, 'Rahul Verma', 31, 'rahul.verma@example.com', 9123456790, '102 Connaught Place, New Delhi'),
(108, 'Pooja Reddy', 27, 'pooja.reddy@example.com', 9988776656, '34 Madhapur, HiTech City, Hyderabad, Telangana'),
(109, 'Amit Joshi', 40, 'amit.joshi@example.com', 8877665545, '15 Kothrud, Pune, Maharashtra'),
(110, 'Divya Nair', 33, 'divya.nair@example.com', 7766554434, '77 MG Road, Kochi, Kerala'),
(111, 'Vikram Malhotra', 45, 'vikram.m@example.com', 9876543212, '88 Sector 17, Chandigarh'),
(112, 'Aditi Rao', 29, 'aditi.rao@example.com', 9123456791, '23 T Nagar, Chennai, Tamil Nadu'),
(113, 'Sandeep Kumar', 34, 'sandeep.k@example.com', 9988776657, '120 Gomti Nagar, Lucknow, Uttar Pradesh'),
(114, 'Meera Nair', 28, 'meera.nair@example.com', 8877665546, '45 Palayam, Thiruvananthapuram, Kerala'),
(115, 'Siddharth Roy', 30, 'sid.roy@example.com', 7766554435, '67 Gariahat Road, Kolkata, West Bengal'),
(116, 'Kriti Sharma', 25, 'kriti.s@example.com', 9876543213, '89 Vaishali Nagar, Jaipur, Rajasthan'),
(117, 'Abhishek Gupta', 32, 'abhishek.g@example.com', 9123456792, '14 Civil Lines, Kanpur, Uttar Pradesh'),
(118, 'Riya Sen', 27, 'riya.sen@example.com', 9988776658, '32 Ballygunge Circular Rd, Kolkata, West Bengal'),
(119, 'Manish Tiwari', 38, 'manish.t@example.com', 8877665547, '56 Saket, New Delhi'),
(120, 'Neha Gupta', 26, 'neha.g@example.com', 7766554436, '78 Vijay Nagar, Indore, Madhya Pradesh'),
(121, 'Deepak Mishra', 29, 'deepak.m@example.com', 9876543214, '90 Hazratganj, Lucknow, Uttar Pradesh'),
(122, 'Shalini Singh', 31, 'shalini.s@example.com', 9123456793, '43 Boring Road, Patna, Bihar'),
(123, 'Gaurav Saxena', 35, 'gaurav.s@example.com', 9988776659, '112 Malviya Nagar, Jaipur, Rajasthan'),
(124, 'Swati Mishra', 28, 'swati.m@example.com', 8877665548, '65 Shahpura, Bhopal, Madhya Pradesh'),
(125, 'Vivek Jain', 33, 'vivek.j@example.com', 7766554437, '23 C Scheme, Jaipur, Rajasthan'),
(126, 'Aishwarya Rai', 30, 'aishwarya.r@example.com', 9876543215, '45 Bandra West, Mumbai, Maharashtra'),
(127, 'Karan Johar', 36, 'karan.j@example.com', 9123456794, '88 Andheri West, Mumbai, Maharashtra'),
(128, 'Ishita Dutta', 24, 'ishita.d@example.com', 9988776660, '12 Jadavpur, Kolkata, West Bengal'),
(129, 'Varun Dhawan', 29, 'varun.d@example.com', 8877665549, '77 Juhu Scheme, Mumbai, Maharashtra'),
(130, 'Shraddha Kapoor', 27, 'shraddha.k@example.com', 7766554438, '99 Lokhandwala, Mumbai, Maharashtra'),
(131, 'Rajkummar Rao', 34, 'rajkummar.r@example.com', 9876543216, '54 Gurgaon Sector 45, Gurugram, Haryana'),
(132, 'Bhumi Pednekar', 31, 'bhumi.p@example.com', 9123456795, '12 Noida Sector 62, Noida, Uttar Pradesh'),
(133, 'Ayushmann Khurrana', 35, 'ayushmann.k@example.com', 9988776661, '34 Panchkula Sector 11, Chandigarh'),
(134, 'Yami Gautam', 28, 'yami.g@example.com', 8877665550, '76 Bilaspur Road, Chandigarh'),
(135, 'Vicky Kaushal', 32, 'vicky.k@example.com', 7766554439, '87 Versova, Mumbai, Maharashtra'),
(136, 'Taapsee Pannu', 29, 'taapsee.p@example.com', 9876543217, '23 Rohini Sector 9, New Delhi'),
(137, 'Kartik Aaryan', 30, 'kartik.a@example.com', 9123456796, '45 Gwalior Highway, Gwalior, Madhya Pradesh'),
(138, 'Kiara Advani', 26, 'kiara.a@example.com', 9988776662, '12 Worli Sea Face, Mumbai, Maharashtra'),
(139, 'Sidharth Malhotra', 33, 'sid.m@example.com', 8877665551, '65 Defence Colony, New Delhi'),
(140, 'Alia Bhatt', 27, 'alia.b@example.com', 7766554440, '34 Juhu Tara Road, Mumbai, Maharashtra'),
(141, 'Ranbir Kapoor', 38, 'ranbir.k@example.com', 9876543218, '55 Pali Hill, Mumbai, Maharashtra'),
(142, 'Deepika Padukone', 36, 'deepika.p@example.com', 9123456797, '88 Prabhadevi, Mumbai, Maharashtra'),
(143, 'Ranveer Singh', 36, 'ranveer.s@example.com', 9988776663, '12 Khar West, Mumbai, Maharashtra'),
(144, 'Anushka Sharma', 33, 'anushka.s@example.com', 8877665552, '43 Bangalore Palace Rd, Bengaluru, Karnataka'),
(145, 'Virat Kohli', 34, 'virat.k@example.com', 7766554441, '18 DLF Phase 1, Gurugram, Haryana'),
(146, 'Rohit Sharma', 35, 'rohit.s@example.com', 9876543219, '45 Borivali West, Mumbai, Maharashtra'),
(147, 'Hardik Pandya', 29, 'hardik.p@example.com', 9123456798, '77 Akota Road, Vadodara, Gujarat'),
(148, 'Komal Jha', 25, 'komal.jha@example.com', 9988776664, '23 Kankarbagh, Patna, Bihar'),
(149, 'Rishabh Pant', 26, 'rishabh.p@example.com', 8877665553, '90 Roorkee Cantt, Roorkee, Uttarakhand'),
(150, 'Shreyas Iyer', 28, 'shreyas.i@example.com', 7766554442, '12 Chembur East, Mumbai, Maharashtra'),
(151, 'Jasprit Bumrah', 30, 'jasprit.b@example.com', 9876543220, '43 Satellite Road, Ahmedabad, Gujarat'),
(152, 'Ravindra Jadeja', 34, 'ravindra.j@example.com', 9123456799, '56 Jamnagar Highway, Jamnagar, Gujarat'),
(153, 'Suryakumar Yadav', 32, 'surya.y@example.com', 9988776665, '88 BARC Colony, Mumbai, Maharashtra'),
(154, 'KL Rahul', 31, 'kl.rahul@example.com', 8877665554, '12 Mangalore Port Rd, Mangaluru, Karnataka'),
(155, 'Axar Patel', 29, 'axar.patel@example.com', 7766554443, '34 Nadiad Highway, Anand, Gujarat'),
(156, 'Yuzvendra Chahal', 32, 'yuzi.c@example.com', 9876543221, '67 Jind Bypass Road, Jind, Haryana'),
(157, 'Kuldeep Yadav', 28, 'kuldeep.y@example.com', 9123456800, '45 Unnao Road, Kanpur, Uttar Pradesh'),
(158, 'Bhuvaneshwar Kumar', 33, 'bhuvi.k@example.com', 9988776666, '12 Meerut Bypass, Meerut, Uttar Pradesh'),
(159, 'Mohammed Shami', 35, 'shami.m@example.com', 8877665555, '78 Amroha Village Road, Amroha, Uttar Pradesh'),
(160, 'Ravichandran Ashwin', 37, 'ashwin.r@example.com', 7766554444, '90 West Mambalam, Chennai, Tamil Nadu'),
(161, 'Cheteshwar Pujara', 35, 'pujara.c@example.com', 9876543222, '34 Kalawad Road, Rajkot, Gujarat'),
(162, 'Ajinkya Rahane', 35, 'rahane.a@example.com', 9123456801, '56 Dombivli East, Thane, Maharashtra'),
(163, 'Ishant Sharma', 36, 'ishant.s@example.com', 9988776667, '12 Patel Nagar, New Delhi'),
(164, 'Umesh Yadav', 34, 'umesh.y@example.com', 8877665556, '90 Nagpur Highway, Nagpur, Maharashtra'),
(165, 'Shikhar Dhawan', 37, 'shikhar.d@example.com', 7766554445, '43 Vikaspuri, New Delhi'),
(166, 'Dinesh Karthik', 38, 'dk.karthik@example.com', 9876543223, '12 Mylapore, Chennai, Tamil Nadu'),
(167, 'Sanju Samson', 29, 'sanju.s@example.com', 9123456802, '78 Vizhinjam Road, Thiruvananthapuram, Kerala'),
(168, 'Ishan Kishan', 25, 'ishan.k@example.com', 9988776668, '43 Bailey Road, Patna, Bihar'),
(169, 'Shubman Gill', 24, 'shubman.g@example.com', 8877665557, '12 Jalalabad Road, Fazilka, Punjab'),
(170, 'Prithvi Shaw', 24, 'prithvi.s@example.com', 7766554446, '56 Virar West, Thane, Maharashtra'),
(171, 'Ruturaj Gaikwad', 26, 'ruturaj.g@example.com', 9876543224, '89 Pimpri Chinchwad, Pune, Maharashtra'),
(172, 'Devdutt Padikkal', 23, 'devdutt.p@example.com', 9123456803, '12 Edappal Road, Malappuram, Kerala'),
(173, 'Venkatesh Iyer', 28, 'venky.iyer@example.com', 9988776669, '45 Vijay Nagar, Indore, Madhya Pradesh'),
(174, 'Deepak Chahar', 31, 'deepak.c@example.com', 8877665558, '12 Agra Highway, Agra, Uttar Pradesh'),
(175, 'Shardul Thakur', 31, 'shardul.t@example.com', 7766554447, '90 Palghar East, Thane, Maharashtra'),
(176, 'Prasidh Krishna', 27, 'prasidh.k@example.com', 9876543225, '34 Jayanagar, Bengaluru, Karnataka'),
(177, 'Mohammed Siraj', 29, 'siraj.m@example.com', 9123456804, '12 Towli Chowki, Hyderabad, Telangana'),
(178, 'Harshal Patel', 32, 'harshal.p@example.com', 9988776670, '56 Sanand Road, Ahmedabad, Gujarat'),
(179, 'Avesh Khan', 26, 'avesh.khan@example.com', 8877665559, '78 Indore Airport Rd, Indore, Madhya Pradesh'),
(180, 'Arshdeep Singh', 24, 'arshdeep.s@example.com', 7766554448, '12 Kharar Road, Mohali, Punjab'),
(181, 'Ravi Bishnoi', 23, 'ravi.b@example.com', 9876543226, '43 Jodhpur Bypass, Jodhpur, Rajasthan'),
(182, 'Washington Sundar', 24, 'washy.s@example.com', 9123456805, '15 Triplicane, Chennai, Tamil Nadu'),
(183, 'Shahbaz Ahmed', 28, 'shahbaz.a@example.com', 9988776671, '90 Mewat Road, Nuh, Haryana'),
(184, 'Rahul Tripathi', 32, 'rahul.t@example.com', 8877665560, '12 Cantonment Area, Pune, Maharashtra'),
(185, 'Jitesh Sharma', 30, 'jitesh.s@example.com', 7766554449, '43 Amravati Road, Nagpur, Maharashtra'),
(186, 'Mukesh Kumar', 30, 'mukesh.k@example.com', 9876543227, '12 Gopalganj Road, Gopalganj, Bihar'),
(187, 'Rinku Singh', 26, 'rinku.s@example.com', 9123456806, '78 Aligarh Highway, Aligarh, Uttar Pradesh'),
(188, 'Tilak Varma', 21, 'tilak.v@example.com', 9988776672, '12 Chandrayangutta, Hyderabad, Telangana'),
(189, 'Yashasvi Jaiswal', 22, 'yashasvi.j@example.com', 8877665561, '34 Bhadohi Road, Bhadohi, Uttar Pradesh'),
(190, 'Sai Sudharsan', 22, 'sai.s@example.com', 7766554450, '56 Alwarpet, Chennai, Tamil Nadu'),
(191, 'Jizat Khan', 25, 'jizat.k@example.com', 9876543228, '12 Malerkotla Rd, Sangrur, Punjab'),
(192, 'Nitish Rana', 29, 'nitish.r@example.com', 9123456807, '43 Preet Vihar, New Delhi'),
(193, 'Rahul Chahar', 24, 'rahul.c@example.com', 9988776673, '90 Bharatpur Highway, Bharatpur, Rajasthan'),
(194, 'Sandip Sharma', 30, 'sandip.s@example.com', 8877665562, '12 Patiala Bypass, Patiala, Punjab'),
(195, 'Vijay Shankar', 32, 'vijay.s@example.com', 7766554451, '78 Adyar, Chennai, Tamil Nadu');

insert into emp_details(emp_id, emp_name, emp_age, emp_mail, emp_phone, emp_address) values
(196, 'Shivam Dube', 30, 'shivam.d@example.com', 9876543229, '34 Andheri East, Mumbai, Maharashtra'),
(197, 'Manish Pandey', 34, 'manish.p@example.com', 9123456808, '90 Nainital Road, Haldwani, Uttarakhand'),
(198, 'Khaleel Ahmed', 25, 'khaleel.a@example.com', 9988776674, '12 Tonk Road, Tonk, Rajasthan'),
(199, 'Chetan Sakariya', 25, 'chetan.s@example.com', 8877665563, '43 Vartej Highway, Bhavnagar, Gujarat'),
(200, 'T Natarajan', 32, 'natrajan.t@example.com', 7766554452, '90 Chinnappampatti, Salem, Tamil Nadu');

update emp_details set emp_salary=emp_id*1222+4002 where emp_id>0;

truncate table emp_details;
drop table emp_details;