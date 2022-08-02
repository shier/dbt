
Select
	CREATED Created,
	AUCTIONID AuctionID,
	UPDATEEVENTID UpdateEventID,
	AUCTIONLOCATIONID AuctionLocationID,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTY as nvarchar(4000)) County
From Auct_AuctionLocation_Raw