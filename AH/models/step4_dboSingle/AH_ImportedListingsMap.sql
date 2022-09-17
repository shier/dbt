{{ config(materialized='table',schema='dbo')}}
Select
	cast([ForeignListingID] as int) [foreignListingId],
	cast([LoCallistingID] as int) [localListingId] 
From stg.[AH_ImportedListingsMap_FinalView]