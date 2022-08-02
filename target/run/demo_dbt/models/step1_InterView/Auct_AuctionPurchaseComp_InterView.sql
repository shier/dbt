create view "stg"."Auct_AuctionPurchaseComp_InterView__dbt_tmp" as
    
Select
	[PURCHASEAUCTIONID] [PurchaseAuctionID],
	[COMPEDAUCTIONID] [CompedAuctionID]
From stg.[Auct_AuctionPurchaseComp_Raw]
