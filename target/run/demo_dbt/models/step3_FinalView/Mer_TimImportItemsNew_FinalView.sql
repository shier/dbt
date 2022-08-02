create view "stg"."Mer_TimImportItemsNew_FinalView__dbt_tmp" as
    
Select
	[Upc],[Orig_Retail_Price],[Category],[SKU],[Item_Description],[Size] 
From [Mer_TimImportItemsNew_Incr]
