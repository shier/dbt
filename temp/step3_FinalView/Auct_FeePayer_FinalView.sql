{{ config(materialized='view',schema='stg')}}
Select
	[FeePayerID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_FeePayer_Incr] 
Where [dbt_valid_to] is null