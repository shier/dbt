{{ config(materialized='view',schema='stg')}}
Select
	[PurchaseAuctionID],[CompedAuctionID] 
From stg.[Auct_AuctionPurchaseComp_Incr] 
Where [dbt_valid_to] is null