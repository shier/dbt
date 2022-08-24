{{ config(materialized='view',schema='stg')}}
Select
	[PURCHASEAUCTIONID] [PurchaseAuctionID],
	[COMPEDAUCTIONID] [CompedAuctionID]
From stg.[Auct_AuctionPurchaseComp_Raw]
