
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Sent_Date as varchar), Publication, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Request_Inter]
	)
Select * From hashData
