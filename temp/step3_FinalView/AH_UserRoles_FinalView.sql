{{ config(materialized='view',schema='stg')}}
Select
	[ID],[RoleID],[UserID] 
From stg.[AH_UserRoles_Incr] 
Where [dbt_valid_to] is null