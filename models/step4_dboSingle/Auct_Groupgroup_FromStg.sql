{{ config(materialized='table',schema='dbo')}}
Select
	cast([GroupgroupID] as int) [GroupgroupID],
	cast([ParentGroupID] as int) [ParentGroupID],
	cast([ChildGroupID] as int) [ChildGroupID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Groupgroup_FinalView]