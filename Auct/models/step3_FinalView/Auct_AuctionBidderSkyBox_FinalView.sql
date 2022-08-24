{{ config(materialized='view',schema='stg')}}
Select
	[SkyBoxTicketNumber],[Active],[AuctionBidderID],[Created],[CreatedByUserID],[AuctionID] 
From stg.[Auct_AuctionBidderSkyBox_Incr] 
Where [dbt_valid_to] is null