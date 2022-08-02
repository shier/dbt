{{ config(materialized='table',schema='dbo')}}
Select
	cast([Handle] as varchar(100)) [Handle],
	cast([VariantSKU] as varchar(64)) [SKU] 
From stg.[Mer_ShopifyProductSold_FinalView]