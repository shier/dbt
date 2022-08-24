create view "stg"."Auct_MediaAuction_InterView__dbt_tmp" as
    
Select
	[MEDIAAUCTIONID] [MediaAuctionID],
	[MEDIAID] [MediaID],
	[AUCTIONID] [AuctionID],
	[ANTICIPATEDDATE] [AnticipatedDate],
	cast([PUBLISHPHOTOS] as nvarchar(4000)) [PublishPhotos],
	[GALAINVITES] [Galainvites],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaAuction_Raw]
