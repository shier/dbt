{{ config(materialized='view',schema='stg')}}
Select
	[PRIVILEGEID] [PrivilegeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Privilege_Raw]
