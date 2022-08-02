
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DateCreated as varchar), Cast(UserID as varchar), Cast(PriorityID as varchar), Text)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignmentAssignment_Inter]
	)
Select * From hashData
