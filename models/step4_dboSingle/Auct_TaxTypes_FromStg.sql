{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaxTypeID] as int) [TaxTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([TaxLevelID] as int) [TaxLevelID] 
From stg.[Auct_TaxTypes_FinalView]