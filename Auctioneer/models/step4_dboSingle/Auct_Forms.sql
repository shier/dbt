{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([FormID] as int) [FORMID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([DepartmentID] as int) [DEPARTMENTID],
	cast([DisplayName] as nvarchar(4000)) [DISPLAYNAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_Forms_FinalView]