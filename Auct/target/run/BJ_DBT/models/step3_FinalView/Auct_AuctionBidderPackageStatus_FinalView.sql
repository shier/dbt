create view "stg"."Auct_AuctionBidderPackageStatus_FinalView__dbt_tmp" as
    
Select
	[AuctionBidderPackageStatusID],[Name],[Active] 
From stg.[Auct_AuctionBidderPackageStatus_Incr] 
Where [dbt_valid_to] is null
