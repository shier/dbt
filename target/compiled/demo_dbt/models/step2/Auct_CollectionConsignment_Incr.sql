
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ConsignmentID as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CollectionConsignment_Inter]
	)
Select * From hashData
