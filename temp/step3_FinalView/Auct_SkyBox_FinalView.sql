{{ config(materialized='view',schema='stg')}}
Select
	[SkyBoxID],[AuctionSkyBoxNumber],[Name],[BidderID],[AuctionID] 
From stg.[Auct_SkyBox_Incr] 
Where [dbt_valid_to] is null