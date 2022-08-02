
With hashData as (
		Select
			HASHBYTES('MD5', DisplayName) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportBidder_Inter]
	)
Select * From hashData
