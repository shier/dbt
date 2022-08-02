{{ config(materialized='view',schema='stg')}}
Select
	[ITEMTAXTYPEID] [ItemTaxTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ItemTaxType_Raw]
