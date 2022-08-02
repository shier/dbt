
Select
	[RangeID],[Created],[ProjectedTime],[RangeNumber],[RangeStart],[RangeEnd],[ContactTypeID],[AuctionID],[UpdateEventID],[IsReserveLotFee],[RangeName] 
From stg.[Auct_Ranges_Incr] 
Where [dbt_valid_to] is null