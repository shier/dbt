{{ config(materialized='view',schema='stg')}}
Select
	[AuctionBidRecordID],[LotNumber],[AuctionBidderNumber],[AuctionID],[Created] 
From stg.[Auct_AuctionBidRecord_Incr] 
Where [dbt_valid_to] is null