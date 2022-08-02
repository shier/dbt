
Select
	[TaxAssignmentID],[StateTaxRatesID],[UpdateEventID],[CustomerAccountID],[CityTaxRatesID],[CountyTaxRatesID],[Created] 
From stg.[Auct_TaxAssignments_Incr] 
Where [dbt_valid_to] is null