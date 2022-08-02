{{ config(materialized='view',schema='stg')}}
Select
	[BankAccountStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BankAccountStatus_Incr] 
Where [dbt_valid_to] is null