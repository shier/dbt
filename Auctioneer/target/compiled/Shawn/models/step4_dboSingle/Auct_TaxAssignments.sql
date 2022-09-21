
Select
	cast([TaxAssignmentID] as int) [TAXASSIGNMENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([CityTaxRatesID] as int) [CITYTAXRATESID],
	cast([CountyTaxRatesID] as int) [COUNTYTAXRATESID],
	cast([StateTaxRatesID] as int) [STATETAXRATESID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_TaxAssignments_FinalView]