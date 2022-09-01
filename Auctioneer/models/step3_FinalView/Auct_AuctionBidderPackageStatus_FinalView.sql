{{ config(materialized='view',schema='stg')}}
Select
	[AuctionBidderPackageStatusID],[Name],[Active] 
From stg.[Auct_AuctionBidderPackageStatus_Incr] 
Where [dbt_valid_to] is null