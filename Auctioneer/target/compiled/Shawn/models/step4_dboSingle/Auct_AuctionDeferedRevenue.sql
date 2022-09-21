
Select
	cast([DeferedPercentage] as numeric(18,6)) [DEFEREDPERCENTAGE],
	cast([ParentAuctionID] as int) [PARENTAUCTIONID],
	cast([DeferedAuctionID] as int) [DEFEREDAUCTIONID],
	cast([GlAccountNumber] as int) [GLACCOUNTNUMBER] 
From stg.[Auct_AuctionDeferedRevenue_FinalView]