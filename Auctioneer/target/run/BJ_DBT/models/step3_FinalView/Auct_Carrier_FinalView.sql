create view "stg"."Auct_Carrier_FinalView__dbt_tmp" as
    
Select
	[CarrierID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Carrier_Incr] 
Where [dbt_valid_to] is null
