{{ config(materialized='view',schema='stg')}}
Select
	[Handle],[VariantSKU] 
From [Mer_ShopifyProductSold_Incr] 
Where [dbt_valid_to] is null