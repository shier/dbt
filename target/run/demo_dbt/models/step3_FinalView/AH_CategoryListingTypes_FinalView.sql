create view "stg"."AH_CategoryListingTypes_FinalView__dbt_tmp" as
    
Select
	[ID],[CategoryID],[ListingTypeID],[CreatedOn],[UpdatedOn],[DeletedOn],[LastUpdatedUser] 
From stg.[AH_CategoryListingTypes_Incr] 
Where [dbt_valid_to] is null
