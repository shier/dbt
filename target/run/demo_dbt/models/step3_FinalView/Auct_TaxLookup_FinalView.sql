create view "stg"."Auct_TaxLookup_FinalView__dbt_tmp" as
    
Select
	[LookupID],[TaxRatesID],[City],[StateProvince],[County],[TaxType],[Created],[UpdateEventID],[TaxLevelID],[ItemTaxTypeID] 
From stg.[Auct_TaxLookup_Incr] 
Where [dbt_valid_to] is null
