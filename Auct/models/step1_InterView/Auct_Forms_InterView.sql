{{ config(materialized='view',schema='stg')}}
Select
	[FORMID] [FormID],
	[ACTIVE] [Active],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	[DEPARTMENTID] [DepartmentID],
	cast([DISPLAYNAME] as nvarchar(4000)) [DisplayName],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_Forms_Raw]
