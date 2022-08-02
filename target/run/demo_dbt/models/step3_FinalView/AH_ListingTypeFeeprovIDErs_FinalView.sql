create view "stg"."AH_ListingTypeFeeprovIDErs_FinalView__dbt_tmp" as
    
Select
	[ID],[ProvIDErName],[CreatedOn],[UpdatedOn],[DeletedOn],[ListingTypeID],[Enabled] 
From stg.[AH_ListingTypeFeeprovIDErs_Incr] 
Where [dbt_valid_to] is null
