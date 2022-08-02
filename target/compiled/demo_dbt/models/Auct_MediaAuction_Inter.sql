
Select
	ANTICIPATEDDATE AnticipatedDate,
	CREATED Created,
	MEDIAAUCTIONID MediaAuctionID,
	MEDIAID MediaID,
	AUCTIONID AuctionID,
	GALAINVITES Galainvites,
	UPDATEEVENTID UpdateEventID,
	cast(PUBLISHPHOTOS as nvarchar(4000)) PublishPhotos,
	cast(COMMENTS as nvarchar(4000)) Comments
From Auct_MediaAuction_Raw