
Select
	[ID],[MediaID],[ListingID],[DisplayOrder],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_ListingMedias_Incr] 
Where [dbt_valid_to] is null