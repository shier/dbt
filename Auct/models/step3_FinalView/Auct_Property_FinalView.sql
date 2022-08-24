{{ config(materialized='view',schema='stg')}}
Select
	[PropertyID],[ConsignmentID],[PropertyTypeKey],[Description],[Created],[PropertySpace],[CurrentPropertyTransactionID],[GUIDStamp],[Active],[AuctionID] 
From stg.[Auct_Property_Incr] 
Where [dbt_valid_to] is null