{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Enabled] as bit) [Enabled],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([MediaassetName] as nvarchar(4000)) [MediaassetName],
	cast([Scope] as nvarchar(4000)) [Scope] 
From stg.[AH_ListingTypeMedia_FinalView]