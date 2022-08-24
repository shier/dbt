{{ config(materialized='view',schema='stg')}}
Select
	[AutomobiliaConditionID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AutomobiliaCondition_Incr] 
Where [dbt_valid_to] is null