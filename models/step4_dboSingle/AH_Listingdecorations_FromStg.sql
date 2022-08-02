{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DecorationID] as int) [DecorationID],
	cast([ListingID] as int) [ListingID] 
From stg.[AH_Listingdecorations_FinalView]