create view "stg"."AH_ListingTypes_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Name],[LastUpdatedUser] 
From stg.[AH_ListingTypes_Incr] 
Where [dbt_valid_to] is null
