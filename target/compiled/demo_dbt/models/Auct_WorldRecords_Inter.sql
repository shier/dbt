
Select
	AUCTIONID AuctionID,
	CREATED Created,
	cast(COMMENTS as nvarchar(4000)) Comments,
	LOTNUMBER LotNumber,
	WRSH Wrsh,
	WRSSCM Wrsscm,
	WRSP Wrsp
From Auct_WorldRecords_Raw