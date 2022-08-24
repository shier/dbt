create view "stg"."Auct_TaxAssignments_InterView__dbt_tmp" as
    
Select
	[TAXASSIGNMENTID] [TaxAssignmentID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[CITYTAXRATESID] [CityTaxRatesID],
	[COUNTYTAXRATESID] [CountyTaxRatesID],
	[STATETAXRATESID] [StateTaxRatesID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_TaxAssignments_Raw]
