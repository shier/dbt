create view "stg"."Auct_TaxTypes_InterView__dbt_tmp" as
    
Select
	[TAXTYPEID] [TaxTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[TAXLEVELID] [TaxLevelID]
From stg.[Auct_TaxTypes_Raw]
