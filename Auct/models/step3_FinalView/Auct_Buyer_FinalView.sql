{{ config(materialized='view',schema='stg')}}
Select
	[BuyerID],[ContactID],[CompanyID],[Created],[UpdateEventID] 
From stg.[Auct_Buyer_Incr] 
Where [dbt_valid_to] is null