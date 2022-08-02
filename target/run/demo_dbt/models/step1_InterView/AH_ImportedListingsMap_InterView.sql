create view "stg"."AH_ImportedListingsMap_InterView__dbt_tmp" as
    
Select
	[localListingId] [LoCallistingID],
	[foreignListingId] [ForeignListingID]
From stg.[AH_ImportedListingsMap_Raw]
