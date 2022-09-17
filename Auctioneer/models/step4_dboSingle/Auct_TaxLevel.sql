{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaxLevelID] as int) [TAXLEVELID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_TaxLevel_FinalView]