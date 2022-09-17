{{ config(materialized='table',schema='dbo')}}
Select
	cast([Enabled] as bit) [Enabled],
	cast([ID] as int) [Id],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([MediaassetName] as nvarchar(4000)) [MediaAssetName],
	cast([Scope] as nvarchar(4000)) [Scope] 
From stg.[AH_ListingTypeMedia_FinalView]