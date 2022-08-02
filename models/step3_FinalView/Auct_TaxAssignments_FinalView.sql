{{ config(materialized='view',schema='stg')}}
Select
	[TaxAssignmentID],[CustomerAccountID],[CityTaxRatesID],[CountyTaxRatesID],[StateTaxRatesID],[Created],[UpdateEventID] 
From stg.[Auct_TaxAssignments_Incr] 
Where [dbt_valid_to] is null