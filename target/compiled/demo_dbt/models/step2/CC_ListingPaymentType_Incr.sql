
With hashData as (
		Select
			HASHBYTES('MD5', Description) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingPaymentType_Inter]
	)
Select * From hashData
