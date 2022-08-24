{{ config(materialized='view',schema='stg')}}
Select
	[SaleStatusID],[Name],[Created],[UpdateEventID],[ClassName] 
From stg.[Auct_SaleStatus_Incr] 
Where [dbt_valid_to] is null