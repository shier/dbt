{{ config(materialized='view',schema='stg')}}
Select
	[NexusID],[City],[State],[County],[Created],[OnlineBusinessUnitID],[Active] 
From stg.[Auct_Nexus_Incr] 
Where [dbt_valid_to] is null