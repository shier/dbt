
Select
	[ID],[CategoryID],[CustomFieldID],[DeletedOn],[CreatedOn],[UpdatedOn],[LastUpdatedUser] 
From stg.[AH_CategoryCustomFields_Incr] 
Where [dbt_valid_to] is null