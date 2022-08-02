{{ config(materialized='view',schema='stg')}}
Select
	cast([STATE] as nvarchar(4000)) [State],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([TAX_GL_NO] as nvarchar(4000)) [Tax_Gl_No]
From stg.[Mer_NavShopifyTaxglno_Raw]
