{{ config(materialized='view',schema='stg')}}
Select
	[AutomobiliaTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_AutomobiliaType_Incr] 
Where [dbt_valid_to] is null