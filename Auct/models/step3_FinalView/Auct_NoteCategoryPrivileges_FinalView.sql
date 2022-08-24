{{ config(materialized='view',schema='stg')}}
Select
	[NoteCategoryID],[PrivilegeID] 
From stg.[Auct_NoteCategoryPrivileges_Incr] 
Where [dbt_valid_to] is null