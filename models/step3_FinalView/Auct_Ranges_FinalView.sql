{{ config(materialized='view',schema='stg')}}
Select
	[RangeID],[RangeName],[ContactTypeID],[AuctionID],[Created],[UpdateEventID],[ProjectedTime],[IsReserveLotFee],[RangeStart],[RangeEnd],[RangeNumber] 
From stg.[Auct_Ranges_Incr] 
Where [dbt_valid_to] is null