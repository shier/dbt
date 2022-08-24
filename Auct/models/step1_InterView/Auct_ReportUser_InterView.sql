{{ config(materialized='view',schema='stg')}}
Select
	[REPORTID] [ReportID],
	[USERID] [UserID],
	cast([TITLE] as nvarchar(4000)) [Title],
	cast([CATEGORY] as nvarchar(4000)) [Category],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_ReportUser_Raw]
