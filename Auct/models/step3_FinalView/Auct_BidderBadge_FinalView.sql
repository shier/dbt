{{ config(materialized='view',schema='stg')}}
Select
	[BidderBadgeID],[BidderBadgeImageID],[BidderStatusID],[AuctionID] 
From stg.[Auct_BidderBadge_Incr] 
Where [dbt_valid_to] is null