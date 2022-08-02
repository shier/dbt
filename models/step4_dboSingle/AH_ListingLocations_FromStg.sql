{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([LocationID] as int) [LocationID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_ListingLocations_FinalView]