
Select
	BIDDERABSENTEEID BidderAbsenteeID,
	AUCTIONBIDDERID AuctionBidderID,
	MAXIMUMBID MaximumBID,
	AUCTIONID AuctionID,
	LOTNUMBER LotNumber,
	cast(NOTES as nvarchar(4000)) Notes,
	cast(CONTACTINFO as nvarchar(4000)) ContactInfo,
	cast(OTHERCONTACTINFO as nvarchar(4000)) OtherContactInfo
From Auct_BidderAbsentee_Raw