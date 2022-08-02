create view "stg"."Auct_AuctionTypeBits_FinalView__dbt_tmp" as
    
Select
	[AuctionTypeBit],[Name],[Active] 
From stg.[Auct_AuctionTypeBits_Incr] 
Where [dbt_valid_to] is null
