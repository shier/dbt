
Select
	BIDDERBADGEIMAGEID BidderBadgeImageID,
	BADGESIDEID BadgesIDEID,
	AUCTIONID AuctionID,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	ISDEFAULT IsDefault
From Auct_BidderBadgeImage_Raw