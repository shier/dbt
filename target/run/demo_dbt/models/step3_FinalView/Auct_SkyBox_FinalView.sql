create view "stg"."Auct_SkyBox_FinalView__dbt_tmp" as
    
Select
	[SkyBoxID],[AuctionSkyBoxNumber],[Name],[BidderID],[AuctionID] 
From stg.[Auct_SkyBox_Incr] 
Where [dbt_valid_to] is null
