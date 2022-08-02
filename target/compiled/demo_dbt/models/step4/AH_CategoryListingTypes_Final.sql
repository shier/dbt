
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[CategoryID],[ListingTypeID],[LastUpdatedUser] 
From stg.[AH_CategoryListingTypes_Incr] 
Where [dbt_valid_to] is null