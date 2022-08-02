create view "stg"."Auct_AuctionBidderSkyBox_FinalView__dbt_tmp" as
    
Select
	[SkyBoxTicketNumber],[Active],[AuctionBidderID],[Created],[CreatedByUserID],[AuctionID] 
From stg.[Auct_AuctionBidderSkyBox_Incr] 
Where [dbt_valid_to] is null
