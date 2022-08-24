{{ config(materialized='view',schema='stg')}}
Select
	[DEPARTMENTID] [DepartmentID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([BCDEPARTMENTCODE] as nvarchar(4000)) [BCDepartmentCode]
From stg.[Auct_Department_Raw]
