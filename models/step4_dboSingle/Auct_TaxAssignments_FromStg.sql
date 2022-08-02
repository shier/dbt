{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaxAssignmentID] as int) [TaxAssignmentID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([CityTaxRatesID] as int) [CityTaxRatesID],
	cast([CountyTaxRatesID] as int) [CountyTaxRatesID],
	cast([StateTaxRatesID] as int) [StateTaxRatesID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_TaxAssignments_FinalView]