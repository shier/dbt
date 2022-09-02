{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[Enabled] [Enabled],
	[ListingTypeId] [ListingTypeID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([MediaAssetName] as nvarchar(4000)) [MediaassetName],
	cast([Scope] as nvarchar(4000)) [Scope]
From stg.[AH_ListingTypeMedia_Raw]
