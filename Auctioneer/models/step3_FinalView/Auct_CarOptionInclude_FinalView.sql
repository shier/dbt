{{ config(materialized='view',schema='stg')}}
Select
	[CarOptionIncludeID],[SourceCarOptionID],[TargetCarOptionID],[Include],[Created],[UpdateEventID] 
From stg.[Auct_CarOptionInclude_Incr] 
Where [dbt_valid_to] is null