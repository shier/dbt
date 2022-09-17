{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([MediaID] as int) [MediaId],
	cast([ListingID] as int) [ListingId],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[AH_ListingMedias_FinalView]