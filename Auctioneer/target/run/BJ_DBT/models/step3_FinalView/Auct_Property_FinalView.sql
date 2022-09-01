create view "stg"."Auct_Property_FinalView__dbt_tmp" as
    
Select
	[PropertyID],[ConsignmentID],[PropertyTypeKey],[Description],[Created],[PropertySpace],[CurrentPropertyTransactionID],[GUIDStamp],[Active],[AuctionID] 
From stg.[Auct_Property_Incr] 
Where [dbt_valid_to] is null
