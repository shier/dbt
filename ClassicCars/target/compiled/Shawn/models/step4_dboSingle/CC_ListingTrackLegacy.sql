
Select
	cast([ImportID] as nvarchar(4000)) [ImportID],
	cast([ImportSource] as nvarchar(4000)) [ImportSource],
	cast([ImportDate] as datetime) [ImportDate],
	cast([ListingID] as int) [ListingID],
	cast([Views] as int) [Views] 
From stg.[CC_ListingTrackLegacy_FinalView]