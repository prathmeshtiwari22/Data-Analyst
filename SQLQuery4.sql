/*
HAVING STATEMENT,UPDATE,DELETE,Aliasing,Partition By,CTES, TEMP TABLE
*/
--SELECT JobTitle ,AVG(Salary)
--from EmployeeDemo join EmployeeSalary on EmployeeDemo.EmployeeId = EmployeeSalary.EmployeeId
--group by JobTitle
--having  AVG(Salary)>76000
--order by AVG(Salary)
--select * from EmployeeDemo
--UPDATE EmployeeDemo
--set Age=52
--where EmployeeId=1011
--UPDATE EmployeeDemo
--set age=32,FirstName='Dominick' ,LastName='Mysterio'
--where EmployeeId=1012
--DELETE FROM EmployeeDemo
----where EmployeeId=1011

--SELECT Demo.EmployeeId,Sal.Salary  
--from EmployeeDemo Demo inner join EmployeeSalary Sal on Demo.EmployeeId=Sal.EmployeeId
--left join EMPLOYEEDEMO1 Demo1 on Demo.EmployeeId=Demo1.EmployeeId

--SELECT FirstName,LastName,Gender,Salary, count(Gender) over (partition by Gender) as TotalGender
--from EmployeeDemo join EmployeeSalary on EmployeeDemo.EmployeeId=EmployeeSalary.EmployeeId
--order by Salary

--WITH CTE_Employee AS (
--    SELECT 
--        FirstName,
--        LastName,
--        Gender,
--        Salary,
--        COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
--        COUNT(*) OVER (PARTITION BY Gender) AS TotalSalary
--    FROM EmployeeDemo
--    JOIN EmployeeSalary 
--    ON EmployeeDemo.EmployeeId = EmployeeSalary.EmployeeId
--    WHERE Salary > 45000
--)
--SELECT * 
--FROM CTE_Employee;


