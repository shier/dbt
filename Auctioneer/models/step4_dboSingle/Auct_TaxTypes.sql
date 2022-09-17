{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaxTypeID] as int) [TAXTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([TaxLevelID] as int) [TAXLEVELID] 
From stg.[Auct_TaxTypes_FinalView]