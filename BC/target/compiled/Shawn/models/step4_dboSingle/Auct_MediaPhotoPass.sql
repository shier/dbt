
Select
	cast([MediaPhotoPassID] as int) [MEDIAPHOTOPASSID],
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([PhotoPassNumber] as nvarchar(4000)) [PHOTOPASSNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaPhotoPass_FinalView]