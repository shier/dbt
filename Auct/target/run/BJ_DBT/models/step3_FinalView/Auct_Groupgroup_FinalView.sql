create view "stg"."Auct_Groupgroup_FinalView__dbt_tmp" as
    
Select
	[GroupgroupID],[ParentGroupID],[ChildGroupID],[Created],[UpdateEventID] 
From stg.[Auct_Groupgroup_Incr] 
Where [dbt_valid_to] is null
