
Select
	cast([AuctionLocationID] as int) [AUCTIONLOCATIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([City] as nvarchar(100)) [CITY],
	cast([State] as nvarchar(50)) [STATE],
	cast([County] as nvarchar(100)) [COUNTY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AuctionLocation_FinalView]