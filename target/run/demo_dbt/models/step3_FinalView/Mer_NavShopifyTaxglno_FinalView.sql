create view "stg"."Mer_NavShopifyTaxglno_FinalView__dbt_tmp" as
    
Select
	[State],[Merchant_ID],[Tax_Gl_No] 
From stg.[Mer_NavShopifyTaxglno_Incr] 
Where [dbt_valid_to] is null
