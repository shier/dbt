create view "stg"."AH_CategoryCustomFields_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[CategoryID],[CustomFieldID],[LastUpdatedUser] 
From stg.[AH_CategoryCustomFields_Incr] 
Where [dbt_valid_to] is null
