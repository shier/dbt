create view "stg"."Auct_AuctionPurchaseComp_FinalView__dbt_tmp" as
    
Select
	[PurchaseAuctionID],[CompedAuctionID] 
From stg.[Auct_AuctionPurchaseComp_Incr] 
Where [dbt_valid_to] is null
