
Select
	cast([LookupID] as int) [LOOKUPID],
	cast([TaxRatesID] as int) [TAXRATESID],
	cast([City] as nvarchar(4000)) [CITY],
	cast([StateProvince] as nvarchar(4000)) [STATEPROVINCE],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([TaxType] as int) [TAXTYPE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([TaxLevelID] as int) [TAXLEVELID],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID] 
From stg.[Auct_TaxLookup_FinalView]