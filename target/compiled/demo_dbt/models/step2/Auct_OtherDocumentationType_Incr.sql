
With hashData as (
		Select
			HASHBYTES('MD5', concat(Title, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OtherDocumentationType_Inter]
	)
Select * From hashData
