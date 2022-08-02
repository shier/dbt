
Select
	SQLDateStamp SqlDaTestamp,
	EndDTTM Enddttm,
	Id ID,
	ListingID ListingID,
	SourceListingID SourceListingID,
	cast(Origin as nvarchar(4000)) Origin
From AH_ListingEnddttmaudit_Raw