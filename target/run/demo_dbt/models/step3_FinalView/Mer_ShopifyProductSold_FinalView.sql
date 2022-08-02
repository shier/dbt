create view "stg"."Mer_ShopifyProductSold_FinalView__dbt_tmp" as
    
Select
	[Handle],[VariantSKU] 
From [Mer_ShopifyProductSold_Incr]
