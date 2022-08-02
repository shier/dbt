{{ config(materialized='view',schema='stg')}}
Select
	[CountryID],[Name],[CountryCode],[Created],[UpdateEventID],[DisplayOrder],[SynchID] 
From stg.[Auct_Country_Incr] 
Where [dbt_valid_to] is null