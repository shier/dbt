{{ config(materialized='view',schema='stg')}}
Select
	[GroupID],[PrivilegeID],[Deny],[Created],[UpdateEventID] 
From [Auct_GroupPrivilege_Incr] 
Where [dbt_valid_to] is null