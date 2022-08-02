
Select
	[AutomobiliaID],[Created],[ItemID],[UpdateEventID],[CustomerAccountID],[AuctionID],[AutomobiliaTypeID],[AutomobiliaConditionID],[Description],[Comments],[LotNumber] 
From stg.[Auct_Automobilia_Incr] 
Where [dbt_valid_to] is null