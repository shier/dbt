{{ config(materialized='table',schema='dbo')}}
Select
	cast([Upc] as float) [Upc],
	cast([Orig_Retail_Price] as numeric(194)) [Orig_Retail_Price],
	cast([Category] as nvarchar(4000)) [Category],
	cast([SKU] as nvarchar(4000)) [SKU],
	cast([Item_Description] as nvarchar(4000)) [Item_Description],
	cast([Size] as nvarchar(4000)) [Size] 
From stg.[Mer_TimImportItemsNew_FinalView]