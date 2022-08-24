create view "stg"."Auct_ItemMake_InterView__dbt_tmp" as
    
Select
	[ITEMMAKEID] [ItemMakeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ITEMTAXTYPEID] [ItemTaxTypeID]
From stg.[Auct_ItemMake_Raw]
