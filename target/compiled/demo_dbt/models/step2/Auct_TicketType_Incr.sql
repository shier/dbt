
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(Active as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TicketType_Inter]
	)
Select * From hashData
