{{ config(materialized='view',schema='stg')}}
Select
	[AuthenticStatusID],[Name],[BidGeneratorText],[Created],[UpdateEventID] 
From stg.[Auct_AuthenticStatus_Incr] 
Where [dbt_valid_to] is null