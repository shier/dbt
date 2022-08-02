
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CanHaveChildren as varchar), Name, ImageURL, ClassName, Description, DeActiveImageURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EventType_Inter]
	)
Select * From hashData
