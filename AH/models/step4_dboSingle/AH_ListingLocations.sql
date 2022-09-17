{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([LocationID] as int) [LocationId],
	cast([ListingID] as int) [ListingId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_ListingLocations_FinalView]