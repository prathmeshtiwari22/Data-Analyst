------/*
------ UPPER AND LOWER , Stored Procedures,SUBQUERIES
------*/

--------SELECT FirstName ,Lower(FirstName)
--------from EmployeeDemo
--------SELECT FirstName ,Upper(FirstName)
--------from EmployeeDemo

--------CREATE PROCEDURE TEST AS
--------select * from EmployeeDemo

--------EXEC TEST


------CREATE PROCEDURE TEMP_EMPLOYEE
------AS
------CREATE TABLE #Temp_Employee
------(
------Jobtitle varchar(50),
------EmployeeperJob int,
------AvgAge int,
------AvgSal int
------)
------EXEC TEMP_EMPLOYEE @JoTitle='Salesman'

------INSERT INTO #Temp_Employee
------SELECT Jobtitle,count(Jobtitle),Avg(Age),Avg(Salary)
------from EmployeeDemo D join EmployeeSalary S on D.EmployeeId=S.EmployeeId group by JobTitle

------select * from #Temp_Employee

----SUBQUERY IN SELECT
--select EmployeeId,Salary ,(Select AVG(Salary) from EmployeeSalary ) as Avg_Sal from EmployeeSalary

----HOW IT WORKS ON PARTITION BY 
--select EmployeeId , Salary,Avg(Salary) over (partition by Salary) as AvgSal from EmployeeSalary

----IN FROM

--SELECT EmployeeDemo.EmployeeId,EmployeeDemo.LastName from EmployeeDemo where EmployeeId in
--( select EmployeeId from EmployeeSalary where EmployeeDemo.EmployeeId=EmployeeSalary.EmployeeId and Age>30)  


