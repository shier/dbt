
Select
	cast([LotNumber] as numeric(180)) [LOTNUMBER],
	cast([AuctionBidRecordID] as int) [AUCTIONBIDRECORDID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_AuctionBidRecord_FinalView]