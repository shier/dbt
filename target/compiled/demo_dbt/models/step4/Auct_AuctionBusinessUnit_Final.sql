
Select
	[BusinessUnitID],[Created],[BusinessUnit],[City],[State],[County],[BusinessUnitDisplay] 
From stg.[Auct_AuctionBusinessUnit_Incr] 
Where [dbt_valid_to] is null