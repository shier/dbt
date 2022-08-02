create view "stg"."Auct_BlockBID_FinalView__dbt_tmp" as
    
Select
	[BlockBidID],[AskingBID],[HighBID],[DocketID],[Created],[UpdateEventID],[StartTime],[EndTime] 
From stg.[Auct_BlockBID_Incr] 
Where [dbt_valid_to] is null
