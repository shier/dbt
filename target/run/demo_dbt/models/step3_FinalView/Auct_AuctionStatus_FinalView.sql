create view "stg"."Auct_AuctionStatus_FinalView__dbt_tmp" as
    
Select
	[AuctionStatusID],[Active],[Name] 
From stg.[Auct_AuctionStatus_Incr] 
Where [dbt_valid_to] is null
