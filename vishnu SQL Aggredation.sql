

create database Samples
use Samples
CREATE TABLE stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO stud(reg_no,name,department,year) VALUES
(173,'vishnu','Computer Science',4),
(122,'Rohith','BCA',3),
(124,'Sharma','Information Technology',3),
(130,'Srinivasan','Cyber Security',1);
SELECT * FROM stud;
UPDATE stud
SET name='sdf',
department='BCA',
year=3 WHERE reg_no =122;

INSERT INTO stud(reg_no,name,department,year)
VALUES (145,'sdfc','MSC CS',2);
SELECT * FROM stud;

ALTER TABLE stud
ADD phone_num VARCHAR(13);
UPDATE stud 
SET phone_num = '9876543321' WHERE reg_no = 122;
UPDATE stud
SET phone_num = '987659321' WHERE reg_no = 124;
UPDATE stud
 SET phone_num = '9025093193' WHERE reg_no = 130;
 UPDATE stud
SET phone_num = '9025093183' WHERE reg_no =173;

SELECT COUNT(*) AS tot_student FROM stud;
SELECT MAX(year) AS max_yr FROM stud;
SELECT MIN(year) AS min_yr FROM stud;
SELECT department,COUNT(*) AS dept_count FROM stud GROUP BY department;
SELECT department ,MAX(year) AS max_yr FROM stud
GROUP BY department;

SELECT * FROM stud
ORDER BY year ASC;
SELECT * FROM stud
ORDER BY name;

SELECT * FROM stud 
ORDER BY department DESC;

SELECT UPPRR(department) AS dep_upr FROM stud;
SELECT UPPER(name) AS name_up FROM stud;
SELECT LOWER(name) AS name_up FROM stud;
SELECT LEFT(name,2) AS srt FROM stud;
SELECT name,LENGTH(name) AS name_ln FROM stud;
SELECT CONCAT(name,' - ',department)AS combime
FROM stud;

SELECT name,year,year+1 AS nx_yr FROM stud;
SELECT reg_no,MOD(reg_no,2) AS odr FROM stud;

ALTER TABLE stud
ADD Date_Detail DATE;

SELECT * FROM stud;

UPDATE stud SET Date_Detail='2021-08-18' WHERE reg_no=122;
UPDATE stud SET Date_Detail='2022-09-19' WHERE reg_no=124;
UPDATE stud SET Date_Detail='2023-10-20' WHERE reg_no=130;
UPDATE stud SET Date_Detail='2024-11-21' WHERE reg_no=173;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM stud;
