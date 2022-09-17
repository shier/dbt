{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([MediaID] as int) [MEDIAID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AnticipatedDate] as datetime) [ANTICIPATEDDATE],
	cast([PublishPhotos] as nvarchar(4000)) [PUBLISHPHOTOS],
	cast([Galainvites] as int) [GALAINVITES],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaAuction_FinalView]