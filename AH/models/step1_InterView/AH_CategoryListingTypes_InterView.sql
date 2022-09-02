{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CategoryId] [CategoryID],
	[ListingTypeId] [ListingTypeID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_CategoryListingTypes_Raw]
