create view "stg"."AH_UserRoles_FinalView__dbt_tmp" as
    
Select
	[ID],[RoleID],[UserID] 
From stg.[AH_UserRoles_Incr] 
Where [dbt_valid_to] is null
