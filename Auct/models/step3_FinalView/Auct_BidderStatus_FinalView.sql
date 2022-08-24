{{ config(materialized='view',schema='stg')}}
Select
	[BidderStatusID],[Name],[Created],[UpdateEventID],[ProcessorID],[Active],[Processor] 
From stg.[Auct_BidderStatus_Incr] 
Where [dbt_valid_to] is null