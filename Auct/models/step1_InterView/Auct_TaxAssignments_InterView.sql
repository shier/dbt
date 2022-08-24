{{ config(materialized='view',schema='stg')}}
Select
	[TAXASSIGNMENTID] [TaxAssignmentID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[CITYTAXRATESID] [CityTaxRatesID],
	[COUNTYTAXRATESID] [CountyTaxRatesID],
	[STATETAXRATESID] [StateTaxRatesID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_TaxAssignments_Raw]
