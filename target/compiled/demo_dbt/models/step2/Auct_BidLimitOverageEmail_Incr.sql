
With hashData as (
		Select
			HASHBYTES('MD5', Cast(IsActive as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidLimitOverageEmail_Inter]
	)
Select * From hashData
