{{ config(materialized='view',schema='stg')}}
Select
	[ListingId] [ListingID],
	cast([ImportId] as nvarchar(4000)) [ImportID],
	cast([ImportSource] as nvarchar(4000)) [ImportSource],
	[ImportDate] [ImportDate],
	[Views] [Views]
From stg.[CC_ListingTrackLegacy_Raw]
