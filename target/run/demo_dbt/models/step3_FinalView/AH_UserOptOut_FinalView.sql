create view "stg"."AH_UserOptOut_FinalView__dbt_tmp" as
    
Select
	[ID],[EmailName],[UpdatedOn],[DeletedOn],[CreatedOn],[UserID] 
From stg.[AH_UserOptOut_Incr] 
Where [dbt_valid_to] is null
