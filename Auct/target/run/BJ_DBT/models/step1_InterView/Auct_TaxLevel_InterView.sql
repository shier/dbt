create view "dbo_stg"."Auct_TaxLevel_InterView__dbt_tmp" as
    
Select
	[TAXLEVELID] [TaxLevelID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_TaxLevel_Raw]
