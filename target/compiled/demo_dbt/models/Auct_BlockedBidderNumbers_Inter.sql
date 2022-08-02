
Select
	cast(COMMENTS as nvarchar(4000)) Comments,
	AUCTIONID AuctionID,
	AUCTIONBIDDERNUMBER AuctionBidderNumber,
	BLOCKEDBYUSERID BlockedByUserID
From Auct_BlockedBidderNumbers_Raw