
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, ClassName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderProcessor_Inter]
	)
Select * From hashData
