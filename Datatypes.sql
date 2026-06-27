-- ==============================================================================================
-- SQL NUMERIC DATA TYPES QUICK REVISION NOTES
-- ==============================================================================================

-- TINYINT:   Takes 1 Byte. Range is -128 to 127 (Signed) or 0 to 255 (Unsigned).
-- SMALLINT:  Takes 2 Bytes. Range is -32,768 to 32,767 (Signed) or 0 to 65,535 (Unsigned).
-- MEDIUMINT: Takes 3 Bytes. Range is -8,388,608 to 8,388,607 (Signed) or 0 to 16,777,215 (Unsigned).
-- INT/INT:   Takes 4 Bytes. Range is approx. -2.14 Billion to 2.14 Billion (Signed) or 0 to 4.29 Billion (Unsigned).
-- BIGINT:    Takes 8 Bytes. Used for massive values up to 9.22 Quintillion (Signed) or 18.44 Quintillion (Unsigned).

-- FLOAT:     Takes 4 Bytes. Approximate floating-point number handling values between ±1.175E-38 to ±3.402E+38 and 0.
-- DOUBLE:    Takes 8 Bytes. Approximate floating-point with double precision, ranging from ±2.225E-308 to ±1.797E+308 and 0.

-- DECIMAL:   Storage varies. Exact fixed-point numeric type where custom Range is explicitly defined by precision (p) and scale (s).

show databases;
use employees;
show tables;
desc emp_Details;
select * from emp_details;
create table numerictable (
id mediumint primary key not null,
roll int not null,
reg bigint not null,
grades float,
fee_paid double not null,
fee_pending decimal(12,5) not null
);
desc numerictable;
alter table numerictable modify column reg bigint unique key;
insert into numerictable(id, roll, reg, grades, fee_paid, fee_pending) values
(1, 101, 500001, 61.91, 2547.17, 1926.95951);
insert into numerictable (id, roll, reg, grades, fee_paid, fee_pending) values
(2, 102, 500002, 86.54, 3793.82, 1083.78609),
(3, 103, 500003, 90.7, 2898.06, 200.38427),
(4, 104, 500004, 75.56, 715.49, 2332.40600),
(5, 105, 500005, 97.17, 2009.08, 773.51482),
(6, 106, 500006, 89.29, 1417.41, 446.15191),
(7, 107, 500007, 63.8, 2061.52, 1565.80410),
(8, 108, 500008, 97.89, 1448.75, 2390.25162),
(9, 109, 500009, 79.94, 4555.18, 2045.04548),
(10, 110, 500010, 62.56, 3418.44, 310.23320),
(11, 111, 500011, 55.75, 2279.82, 1933.75176),
(12, 112, 500012, 80.41, 1366.88, 2102.93679),
(13, 113, 500013, 95.71, 1567.51, 1120.48121),
(14, 114, 500014, 83.56, 4560.54, 316.53802),
(15, 115, 500015, 79.87, 4858.36, 1522.75058),
(16, 116, 500016, 87.06, 3987.3, 1267.78259),
(17, 117, 500017, 68.25, 3156.69, 1320.44808),
(18, 118, 500018, 70.6, 4343.77, 907.49715),
(19, 119, 500019, 76.78, 3926.76, 2034.54623),
(20, 120, 500020, 94.68, 3431.78, 631.33229),
(21, 121, 500021, 92.78, 4591.84, 1786.85910),
(22, 122, 500022, 89.25, 2811.11, 1233.70481),
(23, 123, 500023, 81.14, 1162.35, 1689.93921),
(24, 124, 500024, 93.4, 1241.17, 1884.69258),
(25, 125, 500025, 86.57, 1044.51, 126.80081),
(26, 126, 500026, 81.7, 1486.16, 774.64662),
(27, 127, 500027, 82.83, 3428.74, 1871.87273),
(28, 128, 500028, 80.5, 2001.83, 31.31819),
(29, 129, 500029, 60.52, 1367.73, 1313.20803),
(30, 130, 500030, 87.18, 1441.16, 974.61258),
(31, 131, 500031, 96.7, 2302.74, 1783.02260),
(32, 132, 500032, 82.71, 3468.8, 1191.77742),
(33, 133, 500033, 79.48, 3653.75, 402.81763),
(34, 134, 500034, 90.65, 4427.94, 117.75158),
(35, 135, 500035, 64.22, 1619.58, 235.84962),
(36, 136, 500036, 61.66, 3386.46, 307.52486),
(37, 137, 500037, 58.44, 4756.24, 1005.05408),
(38, 138, 500038, 79.28, 2633.56, 859.16308),
(39, 139, 500039, 75.49, 1373.91, 1449.34231),
(40, 140, 500040, 66.55, 1153.99, 521.70245);
select * from numerictable;
drop table numerictable;

-- ==============================================================================================
-- SQL STRING & TEXT DATA TYPES QUICK REVISION NOTES
-- ==============================================================================================

-- CHAR(n):      Fixed-length string up to 255 chars; takes fixed 'n' bytes (right-padded with spaces). Best for static-length data like state codes.
-- VARCHAR(n):   Variable-length string up to 65,535 bytes; takes actual string length + 1-2 bytes prefix. Ideal for most text fields like names.
-- TINYTEXT:     Holds up to 255 bytes; takes length + 1 byte. Cannot have a default value; rarely used since VARCHAR is generally preferred.
-- TEXT:         Holds up to 65,535 bytes; takes length + 2 bytes. Used for long text (e.g., descriptions); requires a length prefix if indexed.
-- MEDIUMTEXT:   Holds up to 16,777,215 bytes (~16MB); takes length + 3 bytes. Best for large text documents (e.g., blog posts), but watch query performance.
-- LONGTEXT:     Holds up to 4GB; takes length + 4 bytes. Used for massive data dumps or file storage; use with extreme caution due to performance impacts.
-- ENUM:         Allows selecting a single value from a fixed list of up to 65,535 members; takes 1-2 bytes. Use VARCHAR if the list changes frequently.
-- SET:          Allows selecting multiple values from a fixed list of up to 64 members; takes 1, 2, 3, 4, or 8 bytes depending on list size.

show databases;
use employees;
show tables;
create table stringtable(
id int primary key not null,
regnum char(15) unique key not null,
name varchar(200) not null,
current_projects text,
review mediumtext,
detailed_data longtext,
contract enum('Active', 'Inactive') not null,
depts set('a','b','c','d','e','f') not null
);
alter table stringtable modify column depts set('a','b','c','d','e','f');
desc stringtable;
insert into stringtable(id, regnum, name, current_projects, review, detailed_data, contract, depts) values
(1, 'REG-00000000001', 'Liam Smith', 'Project Alpha, Project Gamma', 'Highly efficient team player.', 'Detailed performance logs and onboarding documentation complete.', 'Active', 'a,c'),
(2, 'REG-00000000002', 'Olivia Johnson', 'Project Beta', 'Consistently meets tight deadlines.', 'A comprehensive review of quarterly deliverables and system access records.', 'Inactive', 'b,d,f'),
(3, 'REG-00000000003', 'Noah Williams', 'Project Delta, Project Epsilon', 'Needs minor improvement in communication.', 'Full history of training completion and HR compliance sign-offs.', 'Active', 'a'),
(4, 'REG-00000000004', 'Emma Brown', 'Project Zeta', 'Exceptional problem-solving abilities.', 'System logs indicate high uptime contribution and code quality metrics.', 'Active', 'c,e'),
(5, 'REG-00000000005', 'Oliver Jones', 'Project Alpha', 'Excellent leadership skills demonstrated.', 'Archived assessment data from internal talent development review.', 'Inactive', 'b'),
(6, 'REG-00000000006', 'Ava Garcia', 'Project Gamma, Project Delta', 'Very proactive in handling critical bugs.', 'Full compliance tracking data and certification achievements attached.', 'Active', 'a,b,d'),
(7, 'REG-00000000007', 'Elijah Miller', 'Project Epsilon', 'Maintains great code standards.', 'Historical background check data along with initial contract agreements.', 'Active', 'e,f'),
(8, 'REG-00000000008', 'Charlotte Davis', 'Project Beta, Project Zeta', 'Adapts quickly to new frameworks.', 'Detailed onboarding feedback and peer review summaries from Q1.', 'Inactive', 'c'),
(9, 'REG-00000000009', 'William Rodriguez', 'Project Alpha', 'Strong technical execution.', 'Extended documentation regarding data warehouse migration involvement.', 'Active', 'a,f'),
(10, 'REG-00000000010', 'Sophia Martinez', 'Project Gamma', 'Great attention to product detail.', 'Full transcript of technical interview and subsequent promotional reviews.', 'Active', 'b,c,e'),
(11, 'REG-00000000011', 'James Hernandez', 'Project Delta', 'Dependable and punctual with code deployment.', 'Comprehensive analytical breakdown of project life cycle ownership.', 'Inactive', 'd'),
(12, 'REG-00000000012', 'Amelia Lopez', 'Project Epsilon, Project Zeta', 'Excellent documentation skills.', 'Detailed code coverage reports and repository administration logs.', 'Active', 'a,d,e'),
(13, 'REG-00000000013', 'Benjamin Gonzalez', 'Project Alpha, Project Beta', 'Brings positive energy to the workspace.', 'Onboarding portfolio review and milestone tracking information.', 'Active', 'b,f'),
(14, 'REG-00000000014', 'Isabella Wilson', 'Project Gamma', 'Solid architectural design contributions.', 'Deep dive into service optimization metrics and system log notes.', 'Inactive', 'c,d'),
(15, 'REG-00000000015', 'Lucas Anderson', 'Project Delta', 'Works well under high pressure.', 'Complete security audit trails and encrypted token deployment histories.', 'Active', 'a,b,c,d'),
(16, 'REG-00000000016', 'Mia Thomas', 'Project Epsilon', 'Consistently delivers clean code templates.', 'Performance enhancement records across legacy enterprise applications.', 'Active', 'f'),
(17, 'REG-00000000017', 'Henry Taylor', 'Project Zeta, Project Alpha', 'Strong foundational database skills.', 'Detailed logs from multi-region infrastructure setups and testing results.', 'Inactive', 'b,e'),
(18, 'REG-00000000018', 'Evelyn Moore', 'Project Beta', 'Outstanding client management presence.', 'Full documentation of external stakeholder meetings and feedback.', 'Active', 'c,f'),
(19, 'REG-00000000019', 'Alexander Jackson', 'Project Gamma, Project Delta', 'Very analytical approach to debugging.', 'Incident response history data and server patch application logs.', 'Active', 'a,e'),
(20, 'REG-00000000020', 'Harper Martin', 'Project Epsilon', 'Always eager to learn new stacks.', 'Training module completion certificates and advanced workshop transcripts.', 'Inactive', 'd,e,f'),
(21, 'REG-00000000021', 'Michael Lee', 'Project Zeta', 'Good coordination with product teams.', 'Cross-functional alignment feedback and agile sprint velocity data.', 'Active', 'b,c'),
(22, 'REG-00000000022', 'Camila Perez', 'Project Alpha', 'Great peer mentoring track record.', 'Mentorship logs, code review approvals, and internal seminar notes.', 'Active', 'a,d'),
(23, 'REG-00000000023', 'Ethan Thompson', 'Project Beta, Project Gamma', 'Fantastic documentation structural alignment.', 'Standard operating procedures authored and system design workflows.', 'Inactive', 'c,e,f'),
(24, 'REG-00000000024', 'Gianna White', 'Project Delta', 'Highly self-motivated developer.', 'Repository commit history analysis and security compliance logs.', 'Active', 'b,d'),
(25, 'REG-00000000025', 'Daniel Harris', 'Project Epsilon, Project Zeta', 'Focuses heavily on UI responsiveness.', 'Frontend rendering benchmarks and optimization strategy analysis data.', 'Active', 'a,f'),
(26, 'REG-00000000026', 'Luna Sanchez', 'Project Alpha', 'Excellent unit testing coverage rates.', 'Automated test suite reports and deployment pipeline configuration histories.', 'Inactive', 'c'),
(27, 'REG-00000000027', 'Matthew Clark', 'Project Beta', 'Strong cloud infrastructure architect.', 'AWS infrastructure diagrams description text and IAM policy setup data.', 'Active', 'b,e'),
(28, 'REG-00000000028', 'Ella Ramirez', 'Project Gamma, Project Epsilon', 'Reliable and communicative team lead.', 'Team scaling strategy briefs and quarterly management metrics.', 'Active', 'a,b,c'),
(29, 'REG-00000000029', 'Jackson Lewis', 'Project Delta', 'Exceptional execution on backend APIs.', 'REST endpoint design specifications and JSON payload schema tracking.', 'Inactive', 'd,f'),
(30, 'REG-00000000030', 'Elizabeth Robinson', 'Project Zeta', 'Handles legacy codebases smoothly.', 'Refactoring logs, code complexity charts, and optimization breakdowns.', 'Active', 'e'),
(31, 'REG-00000000031', 'Mason Walker', 'Project Alpha, Project Gamma', 'Always provides helpful code critiques.', 'Peer review comments archive and development workflow adjustment notes.', 'Active', 'a,c,e'),
(32, 'REG-00000000032', 'Sofia Young', 'Project Beta, Project Delta', 'Keeps project boards highly organized.', 'Jira velocity trends data and project management lifecycle analysis.', 'Inactive', 'b,f'),
(33, 'REG-00000000033', 'Sebastian Allen', 'Project Epsilon', 'Fast turnaround on hotfixes.', 'Production emergency patch logs and hotfix deployment histories.', 'Active', 'c,d,f'),
(34, 'REG-00000000034', 'Avery King', 'Project Zeta', 'Strong grasp of data security rules.', 'GDPR compliance verification data and internal security clearance documents.', 'Active', 'a,b'),
(35, 'REG-00000000035', 'Ethan Wright', 'Project Alpha', 'Writes clean, descriptive variables.', 'Code syntax audit summaries and styling standard adherence sheets.', 'Inactive', 'd,e'),
(36, 'REG-00000000036', 'Scarlett Scott', 'Project Beta, Project Gamma', 'Incredible cross-team collaborator.', 'Inter-departmental sync minutes and joint application design logs.', 'Active', 'a,b,f'),
(37, 'REG-00000000037', 'David Torres', 'Project Delta, Project Epsilon', 'Great debugging under strict deadlines.', 'System logs detailing memory leak resolution and optimization paths.', 'Active', 'c,d'),
(38, 'REG-00000000038', 'Madison Nguyen', 'Project Zeta', 'Maintains consistent delivery velocity.', 'Sprint performance tracking charts and delivery milestone logs.', 'Inactive', 'e,f'),
(39, 'REG-00000000039', 'Joseph Hill', 'Project Alpha, Project Beta', 'Excellent containerization practices.', 'Docker configuration tracking logs and Kubernetes deployment history details.', 'Active', 'a,c,d,f'),
(40, 'REG-00000000040', 'Chloe Flores', 'Project Gamma', 'Strong knowledge of NoSQL structures.', 'Database migration schema maps and architectural transformation documents.', 'Active', 'b,d,e');
insert into stringtable(id, regnum, name, current_projects, review, detailed_data, contract, depts) values
(41, 'REG-00000000041', 'Chloed Dolores', 'Project Gamma', 'Strong knowledge of NoSQL structures.', 'Database migration schema maps and architectural transformation documents.', 'Inactive', null);

select * from stringtable;


-- ==============================================================================================
-- SQL DATE & TIME DATA TYPES QUICK REVISION NOTES
-- ==============================================================================================

-- DATE:        Takes 3 bytes. Stores date values from '1000-01-01' to '9999-12-31'. Ideal for dates without times (e.g., '2025-01-01').
-- DATETIME:    Takes 8 bytes. Stores date and time from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. Timezone-independent (e.g., '2025-01-08 12:00:00').
-- TIMESTAMP:   Takes 4 bytes. UTC-based timezone-dependent timestamp from '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC (e.g., '2025-01-08 12:00:00').
-- TIME:        Takes 3 bytes. Stores time values or intervals ranging from '-838:59:59' to '838:59:59' (e.g., '12:34:56').
-- YEAR:        Takes 1 byte. Stores year values from '1901' to '2155' (e.g., '2025').

-- ==============================================================================================
-- GUIDELINES FOR ADDING AND MODIFYING NULLABLE / NOT NULL COLUMNS
-- ==============================================================================================
-- PHASE 1: Adding new columns. Always start with NULL allowed if the table already contains data. 
--          Adding a NOT NULL column directly to an existing table with rows will cause an error 
--          unless a default value is specified, as SQL won't know what to put in the existing rows.

alter table stringtable add column birth date;
alter table stringtable add column joining datetime;
alter table stringtable add column leaving timestamp;
alter table stringtable add column best_performing_year year;

-- ----------------------------------------------------------------------------------------------
-- PHASE 2: Data Backfilling (Crucial Step)
--          Before enforcing NOT NULL, you MUST update any existing NULL values in these columns
--          to a valid date/time. If any row contains a NULL, the ALTER TABLE MODIFY statement 
--          in Phase 3 will fail.
--
-- Example Backfill:
-- UPDATE stringtable SET birth = '2000-01-01' WHERE birth IS NULL;
-- ----------------------------------------------------------------------------------------------

-- PHASE 3: Enforcing NOT NULL. Once all existing rows have valid data, safely apply the constraint.
alter table stringtable modify column birth date not null;
alter table stringtable modify column joining datetime not null;

UPDATE stringtable SET
    birth = CASE id
        WHEN 1 THEN '1990-05-14' WHEN 2 THEN '1985-08-22' WHEN 3 THEN '1993-11-02' WHEN 4 THEN '1988-01-30'
        WHEN 5 THEN '1995-07-19' WHEN 6 THEN '1991-03-11' WHEN 7 THEN '1982-12-05' WHEN 8 THEN '1994-09-25'
        WHEN 9 THEN '1987-04-17' WHEN 10 THEN '1992-06-08' WHEN 11 THEN '1989-10-14' WHEN 12 THEN '1996-02-23'
        WHEN 13 THEN '1984-11-11' WHEN 14 THEN '1993-05-29' WHEN 15 THEN '1990-08-04' WHEN 16 THEN '1997-01-15'
        WHEN 17 THEN '1983-03-21' WHEN 18 THEN '1995-12-12' WHEN 19 THEN '1986-07-07' WHEN 20 THEN '1998-09-02'
        WHEN 21 THEN '1991-04-26' WHEN 22 THEN '1988-10-09' WHEN 23 THEN '1994-02-14' WHEN 24 THEN '1992-11-30'
        WHEN 25 THEN '1985-05-03' WHEN 26 THEN '1996-06-18' WHEN 27 THEN '1989-01-22' WHEN 28 THEN '1993-07-11'
        WHEN 29 THEN '1981-08-15' WHEN 30 THEN '2000-03-05' WHEN 31 THEN '1990-10-28' WHEN 32 THEN '1995-04-01'
        WHEN 33 THEN '1987-12-19' WHEN 34 THEN '1992-02-27' WHEN 35 THEN '1986-09-14' WHEN 36 THEN '1997-11-08'
        WHEN 37 THEN '1983-06-25' WHEN 38 THEN '1999-05-17' WHEN 39 THEN '1991-01-09' WHEN 40 THEN '2002-10-12'
    END,
    joining = CASE id
        WHEN 1 THEN '2020-03-15 09:00:00' WHEN 2 THEN '2015-06-01 08:30:00' WHEN 3 THEN '2021-01-10 10:00:00' WHEN 4 THEN '2018-11-23 09:15:00'
        WHEN 5 THEN '2022-07-14 09:00:00' WHEN 6 THEN '2019-05-19 08:45:00' WHEN 7 THEN '2012-08-01 09:00:00' WHEN 8 THEN '2020-10-05 09:30:00'
        WHEN 9 THEN '2017-02-14 09:00:00' WHEN 10 THEN '2021-05-17 08:30:00' WHEN 11 THEN '2018-04-01 09:00:00' WHEN 12 THEN '2023-11-01 10:00:00'
        WHEN 13 THEN '2014-09-15 09:00:00' WHEN 14 THEN '2021-08-20 09:15:00' WHEN 15 THEN '2019-12-01 08:45:00' WHEN 16 THEN '2024-02-10 09:00:00'
        WHEN 17 THEN '2013-05-05 09:00:00' WHEN 18 THEN '2022-03-01 09:30:00' WHEN 19 THEN '2016-11-15 08:30:00' WHEN 20 THEN '2023-06-18 10:00:00'
        WHEN 21 THEN '2020-08-24 09:00:00' WHEN 22 THEN '2018-01-10 09:15:00' WHEN 23 THEN '2022-01-15 09:00:00' WHEN 24 THEN '2021-10-01 08:45:00'
        WHEN 25 THEN '2015-04-20 09:00:00' WHEN 26 THEN '2023-05-12 09:30:00' WHEN 27 THEN '2017-09-01 09:00:00' WHEN 28 THEN '2021-03-14 08:30:00'
        WHEN 29 THEN '2011-06-01 09:00:00' WHEN 30 THEN '2025-01-06 10:00:00' WHEN 31 THEN '2019-10-15 09:15:00' WHEN 32 THEN '2022-09-20 08:45:00'
        WHEN 33 THEN '2017-05-01 09:00:00' WHEN 34 THEN '2021-04-11 09:30:00' WHEN 35 THEN '2016-07-18 09:00:00' WHEN 36 THEN '2024-05-01 08:30:00'
        WHEN 37 THEN '2013-10-10 09:00:00' WHEN 38 THEN '2023-08-15 10:00:00' WHEN 39 THEN '2020-01-15 09:15:00' WHEN 40 THEN '2025-03-01 09:00:00'
    END,
    leaving = CASE id
        WHEN 2 THEN '2024-12-31 17:00:00' WHEN 5 THEN '2025-05-15 17:00:00' WHEN 8 THEN '2023-11-30 16:30:00' WHEN 11 THEN '2022-06-15 17:00:00'
        WHEN 14 THEN '2024-01-15 17:00:00' WHEN 17 THEN '2021-09-30 18:00:00' WHEN 20 THEN '2025-08-01 17:00:00' WHEN 23 THEN '2024-04-30 16:45:00'
        WHEN 26 THEN '2025-02-28 17:00:00' WHEN 29 THEN '2020-05-31 17:00:00' WHEN 32 THEN '2024-10-15 17:00:00' WHEN 35 THEN '2023-03-31 17:00:00'
        WHEN 38 THEN '2025-11-14 16:30:00'
        ELSE NULL -- Keeps active employees set to NULL natively
    END,
    best_performing_year = CASE id
        WHEN 1 THEN 2022 WHEN 2 THEN 2018 WHEN 3 THEN 2023 WHEN 4 THEN 2021
        WHEN 5 THEN 2023 WHEN 6 THEN 2022 WHEN 7 THEN 2015 WHEN 8 THEN 2022
        WHEN 9 THEN 2019 WHEN 10 THEN 2023 WHEN 11 THEN 2020 WHEN 12 THEN 2024
        WHEN 13 THEN 2017 WHEN 14 THEN 2022 WHEN 15 THEN 2021 WHEN 16 THEN 2025
        WHEN 17 THEN 2016 WHEN 18 THEN 2024 WHEN 19 THEN 2018 WHEN 20 THEN 2024
        WHEN 21 THEN 2022 WHEN 22 THEN 2020 WHEN 23 THEN 2023 WHEN 24 THEN 2023
        WHEN 25 THEN 2018 WHEN 26 THEN 2024 WHEN 27 THEN 2020 WHEN 28 THEN 2022
        WHEN 29 THEN 2015 WHEN 30 THEN 2025 WHEN 31 THEN 2021 WHEN 32 THEN 2023
        WHEN 33 THEN 2019 WHEN 34 THEN 2023 WHEN 35 THEN 2019 WHEN 36 THEN 2025
        WHEN 37 THEN 2017 WHEN 38 THEN 2024 WHEN 39 THEN 2022 WHEN 40 THEN 2025
    END
WHERE id BETWEEN 1 AND 40;

select * from stringtable;
drop table stringtable;