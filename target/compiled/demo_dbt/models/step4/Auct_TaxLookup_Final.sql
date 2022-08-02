
Select
	[LookupID],[City],[StateProvince],[County],[ItemTaxTypeID],[Created],[TaxRatesID],[TaxType],[UpdateEventID],[TaxLevelID] 
From stg.[Auct_TaxLookup_Incr] 
Where [dbt_valid_to] is null