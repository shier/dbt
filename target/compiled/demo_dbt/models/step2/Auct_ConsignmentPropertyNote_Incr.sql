
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ConsignmentID as varchar), Note)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignmentPropertyNote_Inter]
	)
Select * From hashData
