{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProvIDErName] as nvarchar(4000)) [ProviderName],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([Enabled] as bit) [Enabled] 
From stg.[AH_ListingTypeFeeprovIDErs_FinalView]