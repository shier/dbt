create view "dbo_stg"."Auct_Groupgroup_InterView__dbt_tmp" as
    
Select
	[GROUPGROUPID] [GroupgroupID],
	[PARENTGROUPID] [ParentGroupID],
	[CHILDGROUPID] [ChildGroupID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Groupgroup_Raw]
