create view "stg"."AH_Watches_FinalView__dbt_tmp" as
    
Select
	[ID],[UserID],[ListingID],[DeletedOn],[CreatedOn],[UpdatedOn],[LastUpdatedUser] 
From stg.[AH_Watches_Incr] 
Where [dbt_valid_to] is null
