{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([OldReserve] as numeric(19,4)) [OldReserve],
	cast([NewReserve] as numeric(19,4)) [NewReserve] 
From stg.[AH_ListingsReserveHistory_FinalView]