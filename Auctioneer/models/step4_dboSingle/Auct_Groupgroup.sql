{{ config(materialized='table',schema='dbo')}}
Select
	cast([GroupgroupID] as int) [GROUPGROUPID],
	cast([ParentGroupID] as int) [PARENTGROUPID],
	cast([ChildGroupID] as int) [CHILDGROUPID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Groupgroup_FinalView]