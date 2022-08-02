{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([ProviderName] as nvarchar(4000)) [ProvIDErName],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ListingTypeId] [ListingTypeID],
	[Enabled] [Enabled]
From stg.[AH_ListingTypeFeeprovIDErs_Raw]
