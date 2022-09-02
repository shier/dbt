create view "stg"."AH_Roles_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[LastUpdatedUser],[Name] 
From stg.[AH_Roles_Incr] 
Where [dbt_valid_to] is null
