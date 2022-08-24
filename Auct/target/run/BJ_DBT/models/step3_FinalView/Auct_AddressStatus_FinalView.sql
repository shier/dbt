create view "stg"."Auct_AddressStatus_FinalView__dbt_tmp" as
    
Select
	[AddressStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AddressStatus_Incr] 
Where [dbt_valid_to] is null
