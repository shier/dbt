{{ config(materialized='view',schema='stg')}}
Select
	[ContactcontactID],[ContactTypeID],[CustomerAccountID],[ContactTitle],[Created],[UpdateEventID] 
From stg.[Auct_Contactcontact_Incr] 
Where [dbt_valid_to] is null