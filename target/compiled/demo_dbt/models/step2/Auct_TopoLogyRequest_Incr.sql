
With hashData as (
		Select
			HASHBYTES('MD5', concat(Publication, Cast(Sent_Date as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TopoLogyRequest_Inter]
	)
Select * From hashData
