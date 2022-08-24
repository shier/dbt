{{ config(materialized='view',schema='stg')}}
Select
	[MEDIAPHOTOPASSID] [MediaPhotoPassID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	cast([PHOTOPASSNUMBER] as nvarchar(4000)) [PhotoPassNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaPhotoPass_Raw]
