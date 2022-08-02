
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CarID as varchar), Cast(ReadingTypeID as varchar), Cast(Reading as varchar), Cast(ReadByContactID as varchar), Cast(UpdateEventID as varchar), Cast(DateRead as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ODOMeterReading_Inter]
	)
Select * From hashData
