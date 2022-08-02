create view "stg"."Auct_BidIncrement_FinalView__dbt_tmp" as
    
Select
	[BidIncrementID],[IncrementValue],[Created],[UpdateEventID] 
From stg.[Auct_BidIncrement_Incr] 
Where [dbt_valid_to] is null
