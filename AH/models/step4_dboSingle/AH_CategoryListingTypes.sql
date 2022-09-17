{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([CategoryID] as int) [CategoryId],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_CategoryListingTypes_FinalView]