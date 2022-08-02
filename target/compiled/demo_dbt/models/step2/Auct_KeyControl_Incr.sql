
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Cast(ConsignmentID as varchar), Cast(CurrentKeyControlTransactionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_KeyControl_Inter]
	)
Select * From hashData
