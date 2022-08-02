
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(Level as varchar), Name, Icon, ProcessorName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AddressTypes_Inter]
	)
Select * From hashData
