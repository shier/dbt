
Select
	[ID],[EmailName],[CreatedOn],[UpdatedOn],[DeletedOn],[UserID] 
From stg.[AH_UserOptOut_Incr] 
Where [dbt_valid_to] is null