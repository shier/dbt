{{ config(materialized='view',schema='stg')}}
Select
	[ID],[AuctionID],[CompanyID],[Created],[UpdateEventID] 
From stg.[Auct_Acctcmpy_Incr] 
Where [dbt_valid_to] is null