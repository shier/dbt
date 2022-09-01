{{ config(materialized='view',schema='stg')}}
Select
	[TaxTypeID],[Name],[Created],[UpdateEventID],[TaxLevelID] 
From stg.[Auct_TaxTypes_Incr] 
Where [dbt_valid_to] is null