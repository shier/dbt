
Select
	[BidderStatusID],[Name],[Processor],[UpdateEventID],[ProcessorID],[Active],[Created] 
From stg.[Auct_BidderStatus_Incr] 
Where [dbt_valid_to] is null