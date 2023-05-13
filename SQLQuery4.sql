--First create DATABASES

--Createing  First Tables,EmployeeDemographics
CREATE TABLE EmployeEdemographics
(EmplyeeID int, FirstName Varchar(50),
LastName varchar(50), 
Age int,
Gender varchar(50)
)

--Create Second table with name EmployeeSalary table
CREATE TABLE EmployeeSalary
(EmployeeID Int,
JobTitle Varchar(50),
Salary int)

--Open Table how its look like
--for this R.Click on Table and SELECt Top 1000 Rows

---INSERT DATA INTO TABEL 1,
INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasly', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT DATA INTO TABLE 2
INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman',  63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

--Video 2,sql Beginner--
--SELECT STATEMENT ;TOP,DISTINT,Count,AS,Max,Min,Avg--

--if we want see FirstName of data table
SELECT FirstName
FROM EmployeeDemographics

--IF we want see FirstName and LastName
--Both Names has to be separate through Comma-
SELECT FirstName, LastName
FROM EmployeEdemographics

--If we want see all Column in data Table
SELECT*
FROM EmployeeDemographics

--If we want see Top five of everything
SELECT TOP 5*
FROM EmployeeDemographics

--DISTINCT.When we want unique vale in a specific Column
SELECT DISTINCT(EmplyeeID)
FROM EmployeeDemographics

--COUNT .its will show all Non Null Values in a Column
SELECT COUNT(LastName)
FROM EmployeeDemographics
--IF column have no name we can use AS syntx for give name to it
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

--MAX ,we can find max value
SELECT MAX(Salary)
FROM EmployeeSalary

--MIN,we can find MIN value
SELECT MIN(Salary)
FROM EmployeeSalary

--AVG,What the average sallary of all employee
SELECT AVG(Salary)
FROM EmployeeSalary

--dbo syntx,
--if we want change SQLTutorial to Master
--then in FROM Syntx we have to mentioned DataBase then Table with dot dbo syntx
SELECT*
FROM SQLTutorial.dbo.EmployeeSalary

--SQLbasic v-3- WHERE STATEMENT
--<>, <,>, AND, Or, Like, Null, Not Null, In */

--WHERE Statment-- its help to limit the amount data and specify what type of data you want in return--
SELECT*
FROM EmployeEdemographics
WHERE Firstname= 'Jim'-- we specify where thing where first name is jim

-- symbol ,<>,Does not equal Jim,
SELECT*
FROM EmployeeDemographics
WHERE FirstName<> 'Jim'

--symbole <(less) or >(greater)
SELECT*
FROM EmployeeDemographics
WHERE Age> 30

--everything equal or greater than
SELECT*
FROM EmployeeDemographics
WHERE Age>= 30

--everyone whos age,equal or greater then 32 and whose gender is Male
SELECT*
FROM EmployeeDemographics
WHERE Age>= 32 AND Gender= 'Male'

--everyone whos age,equal or greater then 32 OR whose gender is Male
SELECT*
FROM EmployeeDemographics
WHERE Age>= 32 OR Gender= 'Male'

--LIKE SYNTX. Mostly if typically using for numeric but some time for text information as well-
--Suppose i Want evrybody whose LAstNAME start with 'S'
--WE cann do this only with LIKE SYNTX
SELECT*
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'
--'S%' is called WILDCARD.it show 