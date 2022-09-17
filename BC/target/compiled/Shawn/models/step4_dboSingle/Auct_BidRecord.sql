
Select
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([AuctionID] as int) [AUCTIONID],
	cast([EndingBID] as int) [ENDINGBID],
	cast([ChangeTime] as DATETIME) [CHANGETIME] 
From stg.[Auct_BidRecord_FinalView]