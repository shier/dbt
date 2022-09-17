{{ config(materialized='table',schema='dbo')}}
Select
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([CategoryID] as int) [CategoryId] 
From stg.[AH_CategoryListings_FinalView]