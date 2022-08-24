{{ config(materialized='view',schema='stg')}}
Select
	[AuctionBidderCompleteStatusID],[Name] 
From stg.[Auct_AuctionBidderCompleteStatus_Incr] 
Where [dbt_valid_to] is null