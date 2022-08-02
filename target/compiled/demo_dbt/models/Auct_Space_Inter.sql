
Select
	cast(WIREDINTERNET as nvarchar(4000)) WiredInternet,
	cast(WIRELESSINTERNET as nvarchar(4000)) WirelessInternet,
	cast(NAME as nvarchar(4000)) Name,
	cast(PHONEIN as nvarchar(4000)) Phonein,
	CREATED Created,
	BOOTHID BoothID,
	SPACESIZEID SpaceSizeID,
	ALLOCATEDPOWER AllocatedPower,
	UPDATEEVENTID UpdateEventID,
	SPACEID SpaceID
From Auct_Space_Raw