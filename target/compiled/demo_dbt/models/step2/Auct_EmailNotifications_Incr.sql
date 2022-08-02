
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Description, Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EmailNotifications_Inter]
	)
Select * From hashData
