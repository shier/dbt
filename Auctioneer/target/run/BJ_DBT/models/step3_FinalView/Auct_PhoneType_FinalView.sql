create view "stg"."Auct_PhoneType_FinalView__dbt_tmp" as
    
Select
	[PhoneTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PhoneType_Incr] 
Where [dbt_valid_to] is null
