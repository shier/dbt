
Select
	cast(AUCTIONNAME as nvarchar(4000)) AuctionName,
	cast(DATERANGE as nvarchar(4000)) DateRange,
	cast(PREREGISTRATIONCUTOFFDATE as nvarchar(4000)) PreRegistrationCutoffDate,
	PREREGISTRATIONFEE PreRegistrationFee,
	BIDDERAPPLICATIONID BidderApplicationID,
	AUCTIONID AuctionID
From Auct_BidderApplication_Raw