{{ config(materialized='view',schema='stg')}}
Select
	[BlockBidID],[AskingBID],[HighBID],[DocketID],[Created],[UpdateEventID],[StartTime],[EndTime] 
From stg.[Auct_BlockBID_Incr] 
Where [dbt_valid_to] is null