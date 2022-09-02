{{ config(materialized='view',schema='stg')}}
Select
	[localListingId] [LoCallistingID],
	[foreignListingId] [ForeignListingID]
From stg.[AH_ImportedListingsMap_Raw]
