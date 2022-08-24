{{ config(materialized='view',schema='stg')}}
Select
	[GROUPGROUPID] [GroupgroupID],
	[PARENTGROUPID] [ParentGroupID],
	[CHILDGROUPID] [ChildGroupID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Groupgroup_Raw]
