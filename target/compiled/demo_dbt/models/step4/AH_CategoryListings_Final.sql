
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[ListingID],[CategoryID] 
From stg.[AH_CategoryListings_Incr] 
Where [dbt_valid_to] is null