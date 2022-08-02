{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaxLevelID] as int) [TaxLevelID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_TaxLevel_FinalView]