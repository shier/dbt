create view "stg"."Auct_BidderType_FinalView__dbt_tmp" as
    
Select
	[BidderTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BidderType_Incr] 
Where [dbt_valid_to] is null
