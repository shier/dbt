
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[LocationID],[ListingID] 
From stg.[AH_ListingLocations_Incr] 
Where [dbt_valid_to] is null