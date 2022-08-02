{{ config(materialized='view',schema='stg')}}
Select
	[ITEMMAKEID] [ItemMakeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ITEMTAXTYPEID] [ItemTaxTypeID]
From stg.[Auct_ItemMake_Raw]
