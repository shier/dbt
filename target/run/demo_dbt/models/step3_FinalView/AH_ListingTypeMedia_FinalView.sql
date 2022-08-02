create view "stg"."AH_ListingTypeMedia_FinalView__dbt_tmp" as
    
Select
	[ID],[Enabled],[ListingTypeID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaassetName],[Scope] 
From stg.[AH_ListingTypeMedia_Incr] 
Where [dbt_valid_to] is null
