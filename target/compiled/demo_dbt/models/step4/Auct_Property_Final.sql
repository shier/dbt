
Select
	[PropertyID],[Created],[ConsignmentID],[PropertyTypeKey],[CurrentPropertyTransactionID],[AuctionID],[Description],[PropertySpace],[GUIDStamp],[Active] 
From stg.[Auct_Property_Incr] 
Where [dbt_valid_to] is null