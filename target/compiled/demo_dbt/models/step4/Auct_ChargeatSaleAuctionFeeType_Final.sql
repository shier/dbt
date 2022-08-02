
Select
	[FeeTypeID],[AuctionID],[CreatedByUserID],[ItemTypeID],[Active] 
From stg.[Auct_ChargeatSaleAuctionFeeType_Incr] 
Where [dbt_valid_to] is null