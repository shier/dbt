
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, PhotoFileName, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(ItemTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PhotoType_Inter]
	)
Select * From hashData
