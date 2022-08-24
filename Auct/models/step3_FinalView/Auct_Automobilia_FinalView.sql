{{ config(materialized='view',schema='stg')}}
Select
	[AutomobiliaID],[LotNumber],[AutomobiliaTypeID],[AutomobiliaConditionID],[ItemID],[Description],[Created],[UpdateEventID],[CustomerAccountID],[AuctionID],[Comments] 
From stg.[Auct_Automobilia_Incr] 
Where [dbt_valid_to] is null