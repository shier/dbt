{{ config(materialized='view',schema='stg')}}
Select
	[FeeCategoryID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_FeeCategory_Incr] 
Where [dbt_valid_to] is null