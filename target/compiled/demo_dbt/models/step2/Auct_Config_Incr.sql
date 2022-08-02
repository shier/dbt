
With hashData as (
		Select
			HASHBYTES('MD5', concat(Stub1, Stub2, Cast(Created as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Config_Inter]
	)
Select * From hashData
