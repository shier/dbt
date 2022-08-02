{{ config(materialized='view',schema='stg')}}
Select
	[GroupgroupID],[ParentGroupID],[ChildGroupID],[Created],[UpdateEventID] 
From stg.[Auct_Groupgroup_Incr] 
Where [dbt_valid_to] is null