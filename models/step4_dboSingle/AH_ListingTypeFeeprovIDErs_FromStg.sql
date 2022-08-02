{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ProvIDErName] as nvarchar(4000)) [ProvIDErName],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([Enabled] as bit) [Enabled] 
From stg.[AH_ListingTypeFeeprovIDErs_FinalView]