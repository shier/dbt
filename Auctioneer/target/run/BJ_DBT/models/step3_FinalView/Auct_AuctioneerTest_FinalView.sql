create view "stg"."Auct_AuctioneerTest_FinalView__dbt_tmp" as
    
Select
	[AuctioneerTestID],[PostDate],[PostUser],[Function],[Operations],[Observations],[Comments],[CompletionDate] 
From stg.[Auct_AuctioneerTest_Incr] 
Where [dbt_valid_to] is null
