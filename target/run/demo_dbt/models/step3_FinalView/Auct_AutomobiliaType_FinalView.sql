create view "stg"."Auct_AutomobiliaType_FinalView__dbt_tmp" as
    
Select
	[AutomobiliaTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AutomobiliaType_Incr] 
Where [dbt_valid_to] is null
