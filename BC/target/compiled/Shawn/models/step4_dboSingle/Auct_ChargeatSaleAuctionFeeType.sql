
Select
	cast([Active] as bit) [ACTIVE],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([ItemTypeID] as int) [ITEMTYPEID] 
From stg.[Auct_ChargeatSaleAuctionFeeType_FinalView]