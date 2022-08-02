
With hashData as (
		Select
			HASHBYTES('MD5', concat(Merchant_ID, Tax_Gl_No)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavShopifyTaxglno_Inter]
	)
Select * From hashData
