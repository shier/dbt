create view "stg"."Auct_AuctionDeferedRevenue_FinalView__dbt_tmp" as
    
Select
	[DeferedAuctionID],[DeferedPercentage],[ParentAuctionID],[GlAccountNumber] 
From stg.[Auct_AuctionDeferedRevenue_Incr] 
Where [dbt_valid_to] is null
