create view "stg"."Auct_AutomobiliaCondition_FinalView__dbt_tmp" as
    
Select
	[AutomobiliaConditionID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AutomobiliaCondition_Incr] 
Where [dbt_valid_to] is null
