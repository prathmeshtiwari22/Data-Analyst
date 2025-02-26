----/*
----string - TRIM,LTRIM,RTRIM,REPLACE,SUBSTRING,UPPER ,LOWER
----*/
----Create table EmployeeErrors (
----EmployeeID varchar(50),
----FirstName varchar(50),
----LastName varchar(50)
----);

----Insert into EmployeeErrors values ('  1004  ','Jim','Ross'),('  1005   ','Jack','Ryder'),('1006','chElsea','green-love')

----select * from EmployeeErrors

------ USING TRIM, LTRIM,RTRIM 
----SELECT EmployeeID ,TRIM(EmployeeID) as IDTRIM
----from EmployeeErrors

----SELECT EmployeeID ,LTRIM(EmployeeID) as IDTRIM
----from EmployeeErrors

----SELECT EmployeeID ,RTRIM(EmployeeID) as IDTRIM
----from EmployeeErrors
------USING REPLACE
----SELECT LastName,Replace(LastName, '-love','') as LastNameFixed
----from EmployeeErrors

------ USING SUBSTRING
----SELECT SUBSTRING(FirstName,1,3)
----from EmployeeErrors
------ UPPER LOWER