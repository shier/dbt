{{ config(materialized='view',schema='stg')}}
Select
	[State],[Merchant_ID],[Tax_Gl_No] 
From stg.[Mer_NavShopifyTaxglno_Incr] 
Where [dbt_valid_to] is null