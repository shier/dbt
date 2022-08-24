create view "stg"."Auct_BidderStatus_FinalView__dbt_tmp" as
    
Select
	[BidderStatusID],[Name],[Created],[UpdateEventID],[ProcessorID],[Active],[Processor] 
From stg.[Auct_BidderStatus_Incr] 
Where [dbt_valid_to] is null
