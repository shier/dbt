{{ config(materialized='view',schema='stg')}}
Select
	[DeferedAuctionID],[DeferedPercentage],[ParentAuctionID],[GlAccountNumber] 
From stg.[Auct_AuctionDeferedRevenue_Incr] 
Where [dbt_valid_to] is null