{{ config(materialized='table',schema='dbo')}}
Select
	cast([DepartmentID] as int) [DepartmentID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([BCDepartmentCode] as nvarchar(4000)) [BCDepartmentCode] 
From stg.[Auct_Department_FinalView]