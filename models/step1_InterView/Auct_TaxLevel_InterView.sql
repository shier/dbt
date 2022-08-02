{{ config(materialized='view',schema='stg')}}
Select
	[TAXLEVELID] [TaxLevelID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_TaxLevel_Raw]
