create view "stg"."AH_ImportedListingsMap_FinalView__dbt_tmp" as
    
Select
	[LoCallistingID],[ForeignListingID] 
From stg.[AH_ImportedListingsMap_Incr] 
Where [dbt_valid_to] is null
