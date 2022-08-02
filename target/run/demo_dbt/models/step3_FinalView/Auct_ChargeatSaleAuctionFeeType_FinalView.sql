create view "stg"."Auct_ChargeatSaleAuctionFeeType_FinalView__dbt_tmp" as
    
Select
	[FeeTypeID],[Active],[AuctionID],[CreatedByUserID],[ItemTypeID] 
From stg.[Auct_ChargeatSaleAuctionFeeType_Incr] 
Where [dbt_valid_to] is null
