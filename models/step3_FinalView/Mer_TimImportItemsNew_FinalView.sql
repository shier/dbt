{{ config(materialized='view',schema='stg')}}
Select
	[Upc],[Orig_Retail_Price],[Category],[SKU],[Item_Description],[Size] 
From [Mer_TimImportItemsNew_Incr]