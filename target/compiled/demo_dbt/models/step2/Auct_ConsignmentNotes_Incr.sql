
With hashData as (
		Select
			HASHBYTES('MD5', Cast(ConsignmentID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignmentNotes_Inter]
	)
Select * From hashData
