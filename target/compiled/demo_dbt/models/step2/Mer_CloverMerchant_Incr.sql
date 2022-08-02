
With hashData as (
		Select
			HASHBYTES('MD5', concat(Token, Cast(CreatedDate as varchar), Cast(LastloadedDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_CloverMerchant_Inter]
	)
Select * From hashData
