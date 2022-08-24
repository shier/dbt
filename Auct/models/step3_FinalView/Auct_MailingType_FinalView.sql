{{ config(materialized='view',schema='stg')}}
Select
	[MailingTypeID],[Name],[Subscribable],[Created],[UpdateEventID] 
From stg.[Auct_MailingType_Incr] 
Where [dbt_valid_to] is null