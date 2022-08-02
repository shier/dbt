
Select
	ListingId ListingID,
	Views Views,
	ImportDate ImportDate,
	cast(ImportId as nvarchar(4000)) ImportID,
	cast(ImportSource as nvarchar(4000)) ImportSource
From CC_ListingTrackLegacy_Raw