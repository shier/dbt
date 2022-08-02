{{ config(materialized='view',schema='stg')}}
Select
	[ContactMailingID],[MailingTypeID],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_ContactMailing_Incr] 
Where [dbt_valid_to] is null