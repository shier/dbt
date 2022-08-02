{{ config(materialized='view',schema='stg')}}
Select
	[CustomerAccountStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CustomerAccountStatus_Incr] 
Where [dbt_valid_to] is null