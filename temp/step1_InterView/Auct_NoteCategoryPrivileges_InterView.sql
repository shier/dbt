{{ config(materialized='view',schema='stg')}}
Select
	[NOTECATEGORYID] [NoteCategoryID],
	[PRIVILEGEID] [PrivilegeID]
From stg.[Auct_NoteCategoryPrivileges_Raw]
