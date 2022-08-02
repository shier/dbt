
Select
	[CountryID],[CountryCode],[UpdateEventID],[DisplayOrder],[Created],[Name],[SynchID] 
From stg.[Auct_Country_Incr] 
Where [dbt_valid_to] is null