
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreatedDate as varchar), Cast(LastloadedDate as varchar), Token, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Merchant_Inter]
	)
Select * From hashData
