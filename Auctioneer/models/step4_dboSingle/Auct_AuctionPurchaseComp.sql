{{ config(materialized='table',schema='dbo')}}
Select
	cast([PurchaseAuctionID] as int) [PURCHASEAUCTIONID],
	cast([CompedAuctionID] as int) [COMPEDAUCTIONID] 
From stg.[Auct_AuctionPurchaseComp_FinalView]