{{ config(materialized='table',schema='dbo')}}
Select
	cast([PurchaseAuctionID] as int) [PurchaseAuctionID],
	cast([CompedAuctionID] as int) [CompedAuctionID] 
From stg.[Auct_AuctionPurchaseComp_FinalView]