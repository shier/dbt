
Select
	[ID],[UserID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[LastUpdatedUser] 
From stg.[AH_Watches_Incr] 
Where [dbt_valid_to] is null