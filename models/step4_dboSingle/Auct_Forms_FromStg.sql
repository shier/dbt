{{ config(materialized='table',schema='dbo')}}
Select
	cast([FormID] as int) [FormID],
	cast([Active] as bit) [Active],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([DepartmentID] as int) [DepartmentID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_Forms_FinalView]