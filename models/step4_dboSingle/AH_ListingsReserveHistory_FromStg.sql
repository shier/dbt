{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([OldReserve] as numeric(194)) [OldReserve],
	cast([NewReserve] as numeric(194)) [NewReserve] 
From stg.[AH_ListingsReserveHistory_FinalView]