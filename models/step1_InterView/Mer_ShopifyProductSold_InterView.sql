{{ config(materialized='view',schema='stg')}}
Select
	cast([Handle] as nvarchar(4000)) [Handle],
	cast([VariantSKU] as nvarchar(4000)) [VariantSKU]
From stg.[Mer_ShopifyProductSold_Raw]
