{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([ListingID] as int) [ListingID],
	cast([CategoryID] as int) [CategoryID] 
From stg.[AH_CategoryListings_FinalView]