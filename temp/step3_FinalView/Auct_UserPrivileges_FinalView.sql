{{ config(materialized='view',schema='stg')}}
Select
	[UsersID],[PrivilegeID] 
From [Auct_UserPrivileges_Incr] 
Where [dbt_valid_to] is null