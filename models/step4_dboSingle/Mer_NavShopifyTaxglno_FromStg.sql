{{ config(materialized='table',schema='dbo')}}
Select
	cast([State] as nvarchar(4000)) [State],
	cast([Merchant_ID] as nvarchar(4000)) [Merchant_ID],
	cast([Tax_Gl_No] as nvarchar(4000)) [Tax_Gl_No] 
From stg.[Mer_NavShopifyTaxglno_FinalView]