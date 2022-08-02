
Select
	[TaxTypeID],[UpdateEventID],[TaxLevelID],[Created],[Name] 
From stg.[Auct_TaxTypes_Incr] 
Where [dbt_valid_to] is null