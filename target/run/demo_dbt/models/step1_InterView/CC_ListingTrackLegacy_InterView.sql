create view "stg"."CC_ListingTrackLegacy_InterView__dbt_tmp" as
    
Select
	[ListingId] [ListingID],
	cast([ImportId] as nvarchar(4000)) [ImportID],
	cast([ImportSource] as nvarchar(4000)) [ImportSource],
	[ImportDate] [ImportDate],
	[Views] [Views]
From stg.[CC_ListingTrackLegacy_Raw]
