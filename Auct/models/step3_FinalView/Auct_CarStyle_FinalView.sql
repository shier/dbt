{{ config(materialized='view',schema='stg')}}
Select
	[CarStyleID],[Name],[Created],[UpdateEventID],[Active] 
From stg.[Auct_CarStyle_Incr] 
Where [dbt_valid_to] is null