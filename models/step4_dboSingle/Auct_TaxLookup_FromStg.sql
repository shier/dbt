{{ config(materialized='table',schema='dbo')}}
Select
	cast([LookupID] as int) [LookupID],
	cast([TaxRatesID] as int) [TaxRatesID],
	cast([City] as nvarchar(4000)) [City],
	cast([StateProvince] as nvarchar(4000)) [StateProvince],
	cast([County] as nvarchar(4000)) [County],
	cast([TaxType] as int) [TaxType],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([TaxLevelID] as int) [TaxLevelID],
	cast([ItemTaxTypeID] as int) [ItemTaxTypeID] 
From stg.[Auct_TaxLookup_FinalView]