
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Subscribable, Cast(Created as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MailingType_Inter]
	)
Select * From hashData
