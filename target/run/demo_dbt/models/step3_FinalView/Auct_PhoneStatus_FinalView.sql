create view "stg"."Auct_PhoneStatus_FinalView__dbt_tmp" as
    
Select
	[PhoneStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PhoneStatus_Incr] 
Where [dbt_valid_to] is null
