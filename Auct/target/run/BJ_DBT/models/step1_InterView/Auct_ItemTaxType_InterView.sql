create view "dbo_stg"."Auct_ItemTaxType_InterView__dbt_tmp" as
    
Select
	[ITEMTAXTYPEID] [ItemTaxTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ItemTaxType_Raw]
