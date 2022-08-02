{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([MediaID] as int) [MediaID],
	cast([AuctionID] as int) [AuctionID],
	cast([AnticipatedDate] as datetime) [AnticIPatedDate],
	cast([PublishPhotos] as nvarchar(4000)) [PublishPhotos],
	cast([Galainvites] as int) [Galainvites],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaAuction_FinalView]