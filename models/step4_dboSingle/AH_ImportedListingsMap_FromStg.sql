{{ config(materialized='table',schema='dbo')}}
Select
	cast([LoCallistingID] as int) [LoCallistingID],
	cast([ForeignListingID] as int) [ForeignListingID] 
From stg.[AH_ImportedListingsMap_FinalView]