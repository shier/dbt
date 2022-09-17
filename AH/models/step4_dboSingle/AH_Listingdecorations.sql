{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([DecorationID] as int) [DecorationId],
	cast([ListingID] as int) [ListingId] 
From stg.[AH_Listingdecorations_FinalView]