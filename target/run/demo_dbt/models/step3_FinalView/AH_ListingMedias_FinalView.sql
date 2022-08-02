create view "stg"."AH_ListingMedias_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaID],[ListingID],[DisplayOrder] 
From stg.[AH_ListingMedias_Incr] 
Where [dbt_valid_to] is null
