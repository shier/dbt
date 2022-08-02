create view "stg"."Auct_TaxTypes_FinalView__dbt_tmp" as
    
Select
	[TaxTypeID],[Name],[Created],[UpdateEventID],[TaxLevelID] 
From stg.[Auct_TaxTypes_Incr] 
Where [dbt_valid_to] is null
